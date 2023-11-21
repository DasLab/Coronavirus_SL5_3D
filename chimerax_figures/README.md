# Atomic model and map figures

This folder contains the code to create figures of models and maps using ChimeraX.

The scripts for each figure can be found here which assume maps are in a maps folder and models organize in a models folder.

For the depiction of convergence and Q-score and convergence on the models, the B-factor column must be changed, this is accomplished by running [get_pdbs_convergence_qscore.ipynb](get_pdbs_convergence_qscore.ipynb). This script will also output the ChimeraX scripts to be run to image these models. The images of models and map are created with commands in [code_for_modeling_supp.txt](code_for_modeling_supp.txt).

Finally, the local resolution, calculated in CryoSPARC, was displayed in ChimeraX using the color sample command with the blue:white:red palette.
