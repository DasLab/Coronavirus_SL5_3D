%% Create the layouts



%% BtCov-HKU5 (from icSHAPE)
resnum_string = 'A:187-321';
sequence =  'GGAGCAUCGUGUCUCAAGUGCUUCACGGUCACAAUAUACCGUUUCGUCGGGUGCGUGGCAAUUCGGUGCACAUCAUGUCUUUCGUGGCUGGUGUGGCUCCUCAAGGUGCGAGGGGCAAGUAUAGAGCAGAACUCC';
secstruct = '((((..((.((.(((..(((((((((((((((..(((.(((......)))))).)))))....).)))(((((((.(((......))))))))))(((((((.......))))))))))))).))))))).))))';
tag = 'BtCoV-HKU5_SL5';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('BtCoV-HKU5_SL5.mat');



%% MERS icSHAPE, eternafold
resnum_string = 'A:205-339';
sequence = 'GGAGCGUCGUGUCUCUUGUACGUCUCGGUCACAAUACACGGUUUCGUCCGGUGCGUGGCAAUUCGGGGCACAUCAUGUCUUUCGUGGCUGGUGUGACCGCGCAAGGUGCGCGCGGUACGUAUCGAGCAGCGCUCC';
secstruct = '(((((((..((.(((..(((((((((((((((..(((.(((......)))))).)))))....)))).(((((((.(((......))))))))))(((((((.......))))))))))))).))))))))))))';
tag = 'MERS_SL5';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('MERS_SL5.mat');



%% SARS-CoV-1 icSHAPE
resnum_string = 'A:150-292';
sequence = 'GGUUGACAAGAAACGAGUAACUCGUCCCUCUUCUGCAGACUGCUUACGGUUUCGUCCGUGUUGCAGUCGAUCAUCAGCAUACCUAGGUUUCGUCCGGGUGUGACCGAAAGGUAAGAUGGAGAGCCUUGUUCUUGGUGUCAACC';
secstruct = '(((((((((((.(((((...(((.(((.(((((((..((((((.(((((......)))))..))))))......)))(((((((.((......)))))))))(((....))))))).)))))).))))))))))...))))))';
tag = 'SARS-CoV-1_SL5';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('SARS-CoV-1_SL5.mat');


%% SARS-CoV-2 icSHAPE
resnum_string = 'A:159-282';
sequence = 'GGACACGAGUAACUCGUCUAUCUUCUGCAGGCUGCUUACGGUUUCGUCCGUGUUGCAGCCGAUCAUCAGCACAUCUAGGUUUCGUCCGGGUGUGACCGAAAGGUAAGAUGGAGAGCCUUGUCCC';
secstruct = '((..(((((...(((.(((((((((((..((((((.(((((......)))))..))))))......)))(((((((.((......)))))))))(((....)))))))))))))).))))).))';
tag = 'SL5';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing('SL5');
%%
save_drawing('SARS-CoV-2_SL5.mat');


%% HCoV-229E manual
resnum_string = 'A:153-292';
sequence = 'GGAAGCAAGUGCUGUGUGUUCUAGUCUAAGGGUUUCGUGUUCCGUCACGAGAUUCCAUUCUACAAACGCCUUACGCGAGGUUCUGUCUCGUGUUUGUGUGGAAGCAAAGUUUUGUCUUUGUGGAAACCAGUAACUGUUCC';
secstruct = '((((.(.(((((((.(((((.(((.....((((((((((......))))))))))....)))..)))))...(((((((.......)))))))..........((((((......))))))......)))).))))))))';
tag = 'HCoV-229E_SL5';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('HCoV-229E_SL5.mat');

%% SARS-CoV-2 SL56
resnum_string = 'A:148-343';
sequence = 'UGUCGUUGACAGGACACGAGUAACUCGUCUAUCUUCUGCAGGCUGCUUACGGUUUCGUCCGUGUUGCAGCCGAUCAUCAGCACAUCUAGGUUUCGUCCGGGUGUGACCGAAAGGUAAGAUGGAGAGCCUUGUCCCUGGUUUCAACGAGAAAACACACGUCCAACUCAGUUUGCCUGUUUUACAGGUUCGCGACGUG';
secstruct = '..(((((((((((..(((((...(((.(((((((((((..((((((.(((((......)))))..))))))......)))(((((((.((......)))))))))(((....)))))))))))))).))))).))))...))))))).......((((((...........((((((...))))))....))))))';
tag = 'SARS-CoV-2_SL5-6';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('SARS-CoV-2_SL5-6.mat');

%% NL63
resnum_string = 'A:137-296';
sequence =  'GGUAAACUGGUUAGGCAAGUGUUGUAUUUUCUGUGUCUAAGCACUGGUGAUUCUGUUCACUAGUGCAUACAUUGAUAUUUAAGUGGUGUUCCGUCACUGCUUAUUGUGGAAGCAACGUUCUGUCGUUGUGGAAACCAAUAACUGCUAACCAUGUUUUACC';
secstruct = '((((.((((((((.(((.((((((.......(((((....((((((((((......)))))))))))))))........(((((((((......)))))))))..((....((((((......))))))....))))))).)))))))))).))..))))';
tag = 'HCoV-NL63';
initialize_files(sequence, secstruct, resnum_string, tag);
initialize_drawing(tag);
%%
save_drawing('HCoV-NL63_1.mat');
%%
save_drawing('HCoV-NL63_2.mat');