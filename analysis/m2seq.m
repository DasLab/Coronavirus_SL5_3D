%% 
run_m2seq_plots('../data/m2seq/M2Seq_5UTR_SARS/SL5trunc-DMS_SL5trunc.reactivity.rdat', '../data/m2seq/M2Seq_5UTR_SARS/SL5trunc-NM_SL5trunc.reactivity.rdat', 'sars2m2seq','sars2m2seq',100,159,1,1,0,'',1)
run_m2seq_plots('../data/m2seq/M2Seq_5UTR_SARS/SL5-6-DMS_SL5-6.reactivity.rdat', '../data/m2seq/M2Seq_5UTR_SARS/SL5-6-NM_SL5-6.reactivity.rdat', 'sars256m2seq','sars256m2seq',100,159,1,1,0,'',1)

%% 
run_m2seq_plots('../data/m2seq/SL5_SARS_CoV_2_RTB000_Marathon_Bicine_3pct_DMS_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_SARS_CoV_2_RTB001_Marathon_Bicine_nomod_RH_NovaSeq_2023_06_06.rdat', 'sars2dms', 'sars2dms', 100, 127, 1, 27, 20, '', 1)
run_m2seq_plots('../data/m2seq/SL5_SARS_CoV_2_RTB002_SSII_Hepes_2A3_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_SARS_CoV_2_RTB003_SSII_Hepes_nomod_RH_NovaSeq_2023_06_06.rdat', 'sars2shape', 'sars2shape', 100, 127, 1, 27, 20, '', 0)

%% 
run_m2seq_plots('../data/m2seq/SL5_BtCoV_HKU5_RTB000_Marathon_Bicine_3pct_DMS_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_BtCoV_HKU5_RTB001_Marathon_Bicine_nomod_RH_NovaSeq_2023_06_06.rdat', 'btcovdms','btcovdms',100,160,1,27,20,'',1)
run_m2seq_plots('../data/m2seq/SL5_BtCoV_HKU5_RTB002_SSII_Hepes_2A3_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_BtCoV_HKU5_RTB003_SSII_Hepes_nomod_RH_NovaSeq_2023_06_06.rdat', 'btcovshape','btcovshape',100,160,1,27,20,'',0)

%%
run_m2seq_plots('../data/m2seq/SL5_MERS_GCadded_RTB000_Marathon_Bicine_3pct_DMS_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_MERS_GCadded_RTB001_Marathon_Bicine_nomod_RH_NovaSeq_2023_06_06.rdat', 'mersdms','mersdms',100,178,1,27,20,'',1)
run_m2seq_plots('../data/m2seq/SL5_MERS_GCadded_RTB002_SSII_Hepes_2A3_RH_NovaSeq_2023_06_06.rdat', '../data/m2seq/SL5_MERS_GCadded_RTB003_SSII_Hepes_nomod_RH_NovaSeq_2023_06_06.rdat', 'mersshape','mersshape',100,178,1,27,20,'',0)

