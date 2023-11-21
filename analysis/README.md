# Analysis of reactivity, models, and sequences

The M2-seq analysis was conducted using the commands in [m2seq.m](m2seq.m) which use the scripte [run_m2seq_plots.m](run_m2seq_plots.m). 1D reacitivity data can be found in [m2seq/](m2seq).

All command used for modeling, auto-DRRAFTER and ERRASER2 can be found in [autodrrafter_commands.txt](autodrrafter_commands.txt), with the inputs found in [models/modeling_inputs/](../models/modeling_inputs/).

Convergence was calculated using the command below, and tabulated in [convergence/](convergence).

``` 
drrafter_error_estimation.default.linuxgccrelease -s *.pdb -mute core -rmsd_nosuper true --per_residue_convergence true | awk '{print $NF}'
```

Stereochemical and map-fit validation metrics were calculated using the [https://github.com/DasLab/CASP15_RNA_EM](https://github.com/DasLab/CASP15_RNA_EM), example scripts are [get_scores_singleconf.py](get_scores_singleconf.py) and [get_scores_multiconf.py](get_scores_multiconf.py). Results can be found in [map_to_model/](map_to_model).

Inter-helical and hinge angles were calculated in pymol using the commands [angle_scripts.txt](angle_scripts.txt) which use the script [get_all_angles.py](get_all_angles.py).

FSC-curves were prepared with [convert_all_fsc.sh](convert_all_fsc.sh) using the script [fsc_cs2_to_emdbxml.sh](https://github.com/simonfromm/miscEM/blob/master/fsc_cryosparc2_to_emdb-xml.sh).

For descriptions of secondary structure across the coronavirus SL5s [get_secstruct_info.py](get_secstruct_info.py) was used.
