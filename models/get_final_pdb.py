from sys import argv
from glob import glob
import pandas as pd
from biopandas.pdb import PandasPdb
from os import system,rename

folder = argv[1]

pdb_to_combine = {}

for pdb_f in glob(f'{folder}/*[0-9].pdb'):

    # unvirtualize 5' phosphate
    pdb_full = f"{pdb_f[:-4]}_5ph.pdb"
    if "FINISHED" in pdb_f:
        pdb_index = int(pdb_f.rsplit('.',3)[1])
    else:
        pdb_index = int(pdb_f.rsplit('.',2)[1])
    pdb_to_combine[pdb_index] = pdb_full
    pdb = PandasPdb().read_pdb(pdb_f)
    res0 = pdb.df["ATOM"].iloc[0].residue_number
    system(f"rna_graft.linuxgccrelease -s {pdb_f} {pdb_f} -unvirtualize_phosphate_res {res0} >> rosetta.out")
    rename("graft.pdb",pdb_full)

    # get Q scores and convert to b_factor
    Q_file = glob(f'{pdb_f}__Q__*.csv')[0]
    cols = ['atom_name','residue_number','residue_name','x_coord','y_coord','z_coord','Qscore']
    Qs = pd.read_csv(Q_file,names=cols)
    Qs["b_factor"] = 150*(1-Qs.Qscore)
    Qs["residue_number"] = Qs.residue_number.apply(lambda x: int(x.split('.')[0]))

    # get new pdb and reassign b_factors
    pdb = PandasPdb().read_pdb(pdb_full)
    header = pdb.df["OTHERS"].iloc[[-3,-2]]
    pdb.df["OTHERS"] = pdb.df["OTHERS"].iloc[[-1]]
    pdb.df["ATOM"] = pdb.df["ATOM"].merge(Qs[['atom_name','residue_number','b_factor']], 
        how='left', on=['atom_name','residue_number'],suffixes=(None,"_"))
    pdb.df["ATOM"]["b_factor"] = pdb.df["ATOM"]["b_factor_"].fillna(0)
    pdb.df["ATOM"].drop("b_factor_",axis=1)
    pdb.to_pdb(pdb_full)

# name
out = "_".join(folder.split("/")[:-1])+".pdb"
f = open(out,'w')
header['text'] = header.record_name + header.entry
for text in header.text:
    f.write(text+"\n")
for i in range(1,11):
    f.write(f"MODEL        {i-1}\n")
    for line in open(pdb_to_combine[i]):
        f.write(line)
    f.write("ENDMDL\n")
