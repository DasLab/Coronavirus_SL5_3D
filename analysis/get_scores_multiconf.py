from casp_rna_em.run_metric_programs import run_phenix_clashscore,run_phenix_rna_validate,run_phenix_cc,run_atomic_inclusion,run_tempy,run_Qscore
from tqdm import tqdm
from glob import glob
import pandas as pd

chimera_location = '/home/groups/rhiju/rkretsch/chimera_1.15'
mapq_script = '/home/groups/rhiju/rkretsch/CASP15_RNA_EM/mapq/mapq/mapq_cmd.py'
phenix_location = '/home/groups/rhiju/rkretsch/phenix/phenix-1.18.2-3874/build/bin/'
chimerax_location = '/home/groups/rhiju/rkretsch/chimerax-1.3/bin/'

l1=['auto-drrafter_erraser','auto-drrafter_only']
l2=['MERS']
l3=['conf1','conf2','conf3']
maps=['../../maps/MERS_con1-6p89-cryosparc_P1_J318_map_sharp.mrc',
'../../maps/MERS_con2-6p37-cryosparc_P1_J320_map_sharp.mrc',
'../Coronavirus_SL5/maps/MERS_con3-6p44-cryosparc_P1_J323_map_sharp.mrc']
res=[6.89,6.37,6.44]
thresh=[0.24,0.23,0.25]
l4=['icSHAPE_eternafold','libraryDMS','librarySHAPE']

for a1 in l1:
    for a2 in l2:
        for a3,emmap,resolution,threshold in zip(l3,maps,res,thresh):
            for a4 in l4:
                if a1 == 'auto-drrafter_erraser':
                    pdbs = glob(f'../../models/{a1}/{a2}/{a3}/{a4}/*_all_models_all_fits_FINAL_R?.out.??.pdbFINISHED_1.pdb') + glob(f'../../models/{a1}/{a2}/{a3}/{a4}/*_all_models_all_fits_FINAL_R?.out.?.pdbFINISHED_1.pdb')
                else:
                    pdbs = glob(f'../../models/{a1}/{a2}/{a3}/{a4}/*_all_models_all_fits_FINAL_R?.out.??.pdb') + glob(f'../../models/{a1}/{a2}/{a3}/{a4}/*_all_models_all_fits_FINAL_R?.out.?.pdb')
                out_file_prefix = f'{a1}_{a2}_{a3}_{a4}'

                single_scores = {}
                per_residue_scores = {}
                per_threshold_scores = {}

                for pdb in tqdm(pdbs):
                    print(pdb)
                    score_dict = {}
                    score_dict.update(run_Qscore(pdb, emmap, mapq_script, chimera_location, resolution))
                    score_dict.update(run_phenix_clashscore(
                        pdb, phenix_location=phenix_location))
                    score_dict.update(run_phenix_rna_validate(
                        pdb, phenix_location=phenix_location))
                    score_dict.update(run_phenix_cc(
                                pdb, emmap, resolution=resolution,
                                phenix_location=phenix_location))
                    score_dict.update(run_atomic_inclusion(
                        pdb, emmap, threshold, chimerax_location))
                    score_dict.update(run_tempy(pdb, emmap, resolution))

                    single_score = {
                        key: score_dict[key] for key in score_dict if "per_residue" not in key and "per_threshold" not in key}
                    per_residue_score = {key: score_dict[key]
                                         for key in score_dict if "per_residue" in key}
                    per_threshold_score = {key: score_dict[key]
                                           for key in score_dict if "per_threshold" in key}

                    model_name = pdb.rsplit(".", 1)[0].rsplit('/', 1)[-1]
                    single_scores[model_name] = single_score
                    per_residue_scores[model_name] = per_residue_score
                    per_threshold_scores[model_name] = per_threshold_score

                df = pd.DataFrame(single_scores).transpose()
                df.index.name = 'pdb'
                df = df.reset_index()
                df['emmap'] = emmap.rsplit('/', 1)[-1]
                df.to_csv(f"{out_file_prefix}_scores.csv", index=False)

                per_res = pd.DataFrame(per_residue_scores).transpose()
                per_res.index.name = 'model'
                if len(per_res.columns) > 0:
                    per_res = per_res.explode(list(per_res.columns))
                per_res.to_csv(f"{out_file_prefix}_per_residue.csv")

                per_thr = pd.DataFrame(per_threshold_scores).transpose()
                per_thr.index.name = 'model'
                if len(per_thr.columns) > 0:
                    per_thr = per_thr.explode(list(per_thr.columns))
                per_thr.to_csv(f"{out_file_prefix}_per_threshold.csv")
