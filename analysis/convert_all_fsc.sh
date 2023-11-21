# convert all


for type in nomask spherical loose corrected
  do
    ./fsc_cs2_to_emdbxml.sh BtCoV_HKU5_con1-5p93-P2_J360_fsc_iteration_004_after_fsc_mask_auto_tightening.txt ${type} 0.82 200
    ./fsc_cs2_to_emdbxml.sh BtCoV_HKU5_con2-6p42-P2_J363_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.82 200
    ./fsc_cs2_to_emdbxml.sh BtCoV_HKU5_con3-8p00-P2_J366_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.82 200
    ./fsc_cs2_to_emdbxml.sh BtCoV_HKU5_con4-7p29-P2_J369_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.82 200
    ./fsc_cs2_to_emdbxml.sh HCoV_NL63_con1-8p95-P3_J1248_fsc_iteration_002_after_fsc_mask_auto_tightening.txt ${type} 1.482 230
    ./fsc_cs2_to_emdbxml.sh HCoV_NL63_con2-8p42-P3_J1256_fsc_iteration_002_after_fsc_mask_auto_tightening.txt ${type} 1.482 230
    ./fsc_cs2_to_emdbxml.sh MERS_con1-6p89-P7_J314_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.82 360
    ./fsc_cs2_to_emdbxml.sh MERS_con2-6p37-P7_J315_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.82 360
    ./fsc_cs2_to_emdbxml.sh MERS_con3-6p44-P7_J316_fsc_iteration_004_after_fsc_mask_auto_tightening.txt ${type} 0.82 360
    ./fsc_cs2_to_emdbxml.sh SARS_CoV_2-4p74-P1_J791_fsc_iteration_008_after_fsc_mask_auto_tightening.txt ${type} 0.82 360 
    ./fsc_cs2_to_emdbxml.sh SARS_CoV_2_SL56_5bext-7p40-P3_J1305_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 0.741 512
    ./fsc_cs2_to_emdbxml.sh SARS_CoV_2_SL56_5cext-9p07-P3_J1245_fsc_iteration_004_after_fsc_mask_auto_tightening.txt ${type} 2.04 256
    ./fsc_cs2_to_emdbxml.sh SARS_CoV_2_SL56-7p83-P3_J1399_fsc_iteration_003_after_fsc_mask_auto_tightening.txt ${type} 1 420
    ./fsc_cs2_to_emdbxml.sh HCoV_229E-6p48-P18_J296_fsc_iteration_004_after_fsc_mask_auto_tightening.txt ${type} 1.482 216
    ./fsc_cs2_to_emdbxml.sh SARS_CoV_1-7p05-P18_J107_fsc_iteration_006_after_fsc_mask_auto_tightening.txt ${type} 0.86 380
  done