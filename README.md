# Investigations of the coronavirus SL5 RNA domain

This repository accompanies the publication 

```Kretsch, Rachael C., Lily Xu, Ivan N. Zheludev, Xueting Zhou, Rui Huang, Grace Nye, Shanshan Li, Kaiming Zhang, Wah Chiu, and Rhiju Das. 2024. “Tertiary Folds of the SL5 RNA from the 5′ Proximal Region of SARS-CoV-2 and Related Coronaviruses.” Proceedings of the National Academy of Sciences 121 (10): e2320493121.```

Analysis scripts, including M2-seq analysis, modeling, angle analysis, and model validation can be found in [analysis/](analysis).

Secondary structures were drawn in [RiboDraw](https://github.com/ribokit/RiboDraw), the scripts can be found in [ribodraw_figures](ribodraw_figures).

The primary structure files can be found with PDB accession codes listed below. All modeling results can be found in [models/](models), additionally the scripts to combine structures are included. 

Visuals of the cryo-EM maps and models was done in chimeraX. The scripts to create these figures can be found in [chimerax_figures/](chimerax_figures).

[graph_figures/](graph_figures) contains the code to create graphs of the data in this paper including the ERRASER2 analysis, potting M2-seq matrices, plotting the base-pair probability for HCoV-229E, plotting the distance and angles of SL5 models, and calcualting a plotting sequence identity. Each notebook has the code to reach the data, make the figure, and displays the graph created. Some graphs are slightly cosmetically reformatted from this raw graph in the final figures but no substantive changes were made.

##  Data Availability

The raw sequencing reads can be found at NIH Sequence Read Archive with BioProject accession number [PRJNA1039878](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1039878), with each individual FASTQ found in with the [SRA](https://www.ncbi.nlm.nih.gov/sra) listed in this table. Additionally, the processed reactivity profiles can be found in the [RMDB](https://rmdb.stanford.edu/).

| Construct                | Experiment             | Chemical modifier | Reverse transcriptase | SRA         | RMDB                                                         |
| ------------------------ | ---------------------- | ----------------- | --------------------- | ----------- | ------------------------------------------------------------ |
| SARS-CoV-2 SL5 domain    | “scarless” M2-seq      | No modification   | TGIRT-III             | [SRR26810680](https://www.ncbi.nlm.nih.gov/sra/SRX22507801[accn]) | [COVSL5_NOM_0002](https://rmdb.stanford.edu/detail/COVSL5_NOM_0002) |
| SARS-CoV-2 SL5 domain    | “scarless” M2-seq      | DMS modified      | TGIRT-III             | [SRR26810681](https://www.ncbi.nlm.nih.gov/sra/SRX22507800[accn]) | [COVSL5_DMS_0002](https://rmdb.stanford.edu/detail/COVSL5_DMS_0002) |
| SARS-CoV-2 SL5-6 domains | “scarless” M2-seq      | No modification   | TGIRT-III             | [SRR26810682](https://www.ncbi.nlm.nih.gov/sra/SRX22507799[accn]) | [COVSL5_NOM_0001](https://rmdb.stanford.edu/detail/COVSL5_NOM_0001) |
| SARS-CoV-2 SL5-6 domains | “scarless” M2-seq      | DMS modified      | TGIRT-III             | [SRR26810683](https://www.ncbi.nlm.nih.gov/sra/SRX22507798[accn]) | [COVSL5_DMS_0001](https://rmdb.stanford.edu/detail/COVSL5_DMS_0001) |
| SARS-CoV-2 SL5 domain    | “large-library” M2-seq | No modification   | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5CV2_NOM_0001](https://rmdb.stanford.edu/detail/SL5CV2_NOM_0001) |
| SARS-CoV-2 SL5 domain    | “large-library” M2-seq | DMS modified      | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5CV2_DMS_0001](https://rmdb.stanford.edu/detail/SL5CV2_DMS_0001) |
| SARS-CoV-2 SL5 domain    | “large-library” M2-seq | No modification   | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5CV2_NOM_0002](https://rmdb.stanford.edu/detail/SL5CV2_NOM_0002) |
| SARS-CoV-2 SL5 domain    | “large-library” M2-seq | 2A3 modifed       | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5CV2_2A3_0001](https://rmdb.stanford.edu/detail/SL5CV2_2A3_0001) |
| MERS SL5 domain          | “large-library” M2-seq | No modification   | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5MER_NOM_0001](https://rmdb.stanford.edu/detail/SL5MER_NOM_0001) |
| MERS SL5 domain          | “large-library” M2-seq | DMS modified      | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5MER_DMS_0001](https://rmdb.stanford.edu/detail/SL5MER_DMS_0001) |
| MERS SL5 domain          | “large-library” M2-seq | No modification   | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5MER_NOM_0002](https://rmdb.stanford.edu/detail/SL5MER_NOM_0002) |
| MERS SL5 domain          | “large-library” M2-seq | 2A3 modifed       | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5MER_2A3_0001](https://rmdb.stanford.edu/detail/SL5MER_2A3_0001) |
| BtCoV-HKU5 SL5 domain    | “large-library” M2-seq | No modification   | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5HKU_NOM_0001](https://rmdb.stanford.edu/detail/SL5HKU_NOM_0001) |
| BtCoV-HKU5 SL5 domain    | “large-library” M2-seq | DMS modified      | MarathonRT            | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5HKU_DMS_0001](https://rmdb.stanford.edu/detail/SL5HKU_DMS_0001) |
| BtCoV-HKU5 SL5 domain    | “large-library” M2-seq | No modification   | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5HKU_NOM_0002](https://rmdb.stanford.edu/detail/SL5HKU_NOM_0002) |
| BtCoV-HKU5 SL5 domain    | “large-library” M2-seq | 2A3 modifed       | SuperScript II        | [SRR26827601](https://www.ncbi.nlm.nih.gov/sra/SRX22524118[accn]) | [SL5HKU_2A3_0001](https://rmdb.stanford.edu/detail/SL5HKU_2A3_0001) |

We are in the process of uploading the cryo-EM movies and particle stacks to [EMPIAR](https://www.ebi.ac.uk/empiar/). The cryo-EM maps can be found in [EMDB](https://www.ebi.ac.uk/emdb/) with the accession codes listed in the table. The models can be found in the [PDB](https://www.rcsb.org/) with the accession codes listed in the table, or in this repository.

| Construct                                                    | EMPIAR | EMDB                                              | PDB                                         |
| ------------------------------------------------------------ | ------ | ------------------------------------------------- | ------------------------------------------- |
| SARS-CoV-2 SL5 domain                                        | 11827    | [EMD-42818](https://www.ebi.ac.uk/emdb/EMD-42818) | [8UYS](https://www.rcsb.org/structure/8uys) |
| SARS-CoV-2 SL5-6 domains                                     | [11813](https://www.ebi.ac.uk/empiar/EMPIAR-11813/)    | [EMD-42821](https://www.ebi.ac.uk/emdb/EMD-42821) | N/A                                         |
| SARS-CoV-2 SL5-6 domains, SL5b extended                      | [11834](https://www.ebi.ac.uk/empiar/EMPIAR-11834/)    | [EMD-42820](https://www.ebi.ac.uk/emdb/EMD-42820) | N/A                                         |
| SARS-CoV-2 SL5-6 domains, SL5c extended                      | [11814](https://www.ebi.ac.uk/empiar/EMPIAR-11814/)    | [EMD-42819](https://www.ebi.ac.uk/emdb/EMD-42819) | N/A                                         |
| SARS-CoV-2 SL5-6 domains, SL6 extended and SL5a, SL5b, and SL5c removed | [11838](https://www.ebi.ac.uk/empiar/EMPIAR-11838/)    | N/A                                               | N/A                                         |
| SARS-CoV-1 SL5 domain                                        | [11815](https://www.ebi.ac.uk/empiar/EMPIAR-11815/)    | [EMD-42816](https://www.ebi.ac.uk/emdb/EMD-42816) | [8UYP](https://www.rcsb.org/structure/8uyp) |
| MERS SL5 domain conformation 1                               | [11837](https://www.ebi.ac.uk/empiar/EMPIAR-11837/)    | [EMD-42809](https://www.ebi.ac.uk/emdb/EMD-42809) | [8UYK](https://www.rcsb.org/structure/8uyk) |
| MERS SL5 domain conformation 2                               | [11837](https://www.ebi.ac.uk/empiar/EMPIAR-11837/)    | [EMD-42810](https://www.ebi.ac.uk/emdb/EMD-42810) | [8UYL](https://www.rcsb.org/structure/8uyl) |
| MERS SL5 domain conformation 3                               | [11837](https://www.ebi.ac.uk/empiar/EMPIAR-11837/)    | [EMD-42811](https://www.ebi.ac.uk/emdb/EMD-42811) | [8UYM](https://www.rcsb.org/structure/8uym) |
| BtCoV-HKU5 SL5 domain conformation 1                         | [11836](https://www.ebi.ac.uk/empiar/EMPIAR-11836/)    | [EMD-42801](https://www.ebi.ac.uk/emdb/EMD-42801]) | [8UYE](https://www.rcsb.org/structure/8uye) |
| BtCoV-HKU5 SL5 domain conformation 2                         | [11836](https://www.ebi.ac.uk/empiar/EMPIAR-11836/)    | [EMD-42805](https://www.ebi.ac.uk/emdb/EMD-42805) | [8UYG](https://www.rcsb.org/structure/8uyg) |
| BtCoV-HKU5 SL5 domain conformation 3                         | [11836](https://www.ebi.ac.uk/empiar/EMPIAR-11836/)    | [EMD-42802](https://www.ebi.ac.uk/emdb/EMD-42802) | N/A                                         |
| BtCoV-HKU5 SL5 domain conformation 4                         | [11836](https://www.ebi.ac.uk/empiar/EMPIAR-11836/)    | [EMD-42808](https://www.ebi.ac.uk/emdb/EMD-42808) | [8UYJ](https://www.rcsb.org/structure/8uyj) |
| HCoV-229E SL5 domain                                         | 11835    | [EMD-42803](https://www.ebi.ac.uk/emdb/EMD-42803) | N/A                                         |
| HCoV-NL63 SL5 domain conformation 1                          | [11848](https://www.ebi.ac.uk/empiar/EMPIAR-11848/)    | [EMD-42813](https://www.ebi.ac.uk/emdb/EMD-42813) | N/A                                         |
| HCoV-NL63 SL5 domain conformation 2                          | [11848](https://www.ebi.ac.uk/empiar/EMPIAR-11848/)    | [EMD-42814](https://www.ebi.ac.uk/emdb/EMD-42814) | N/A                                         |

