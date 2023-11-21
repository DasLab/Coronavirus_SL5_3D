%%
%% BtCoV-HKU5
load_drawing('BtCoV-HKU5_SL5.mat');

setup_domain(  'A:187-209 A:303-321','SL5' );
color_drawing black SL5 
setup_domain(  'A:210-254','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:255-281','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:282-302','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('BtCoV-HKU5_SL5_domain.svg');
export_drawing('BtCoV-HKU5_SL5_domain.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/bHKU5_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:187-321',DMS);
export_drawing('BtCoV-HKU5_SL5_sun_icSHAPE.svg');
export_drawing('BtCoV-HKU5_SL5_sun_icSHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/btcovdms/1D_DMS_normalized.csv");
DMS = DMS(1:135);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:187-321',DMS);
export_drawing('BtCoV-HKU5_SL5_libraryDMS.svg');
export_drawing('BtCoV-HKU5_SL5_libraryDMS.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/btcovshape/1D_SHAPE_normalized.csv");
DMS = DMS(1:135);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:187-321',DMS);
export_drawing('BtCoV-HKU5_SL5_librarySHAPE.svg');
export_drawing('BtCoV-HKU5_SL5_librarySHAPE.png');

%%
load_drawing('MERS_SL5.mat');

setup_domain(  'A:205-227 A:321-339','SL5' );
color_drawing black SL5 
setup_domain(  'A:228-271','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:272-299','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:300-320','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('MERS_SL5_domain.svg');
export_drawing('MERS_SL5_domain.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/MERS_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:205-339',DMS);
export_drawing('MERS_SL5_sun_icSHAPE.svg');
export_drawing('MERS_SL5_sun_icSHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/mersshape/1D_SHAPE_normalized.csv");
DMS = DMS(1:135);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:205-339',DMS);
export_drawing('MERS_SL5_librarySHAPE.svg');
export_drawing('MERS_SL5_lubrarySHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/mersdms/1D_DMS_normalized.csv");
DMS = DMS(1:135);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:205-339',DMS);
export_drawing('MERS_SL5_libraryDMS.svg');
export_drawing('MERS_SL5_lubraryDMS.png');

%%
load_drawing('SARS-CoV-1_SL5.mat');

setup_domain(  'A:150-181 A:262-292','SL5' );
color_drawing black SL5 
setup_domain(  'A:182-226','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:227-251','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:252-261','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('SARS-CoV-1_SL5_domain.svg');
export_drawing('SARS-CoV-1_SL5_domain.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/SARS1_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:150-292',DMS);
export_drawing('SARS-CoV-1_SL5_sun_icSHAPE.svg');
export_drawing('SARS-CoV-1_SL5_sun_icSHAPE.png');

%%
load_drawing('SARS-CoV-2_SL5.mat');

setup_domain(  'A:159-182 A:263-282','SL5' );
color_drawing black SL5 
setup_domain(  'A:183-227','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:228-252','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:253-262','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('SARS2_SL5_domain.svg');
export_drawing('SARS2_SL5_domain.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/SARS2C_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2C_SL5_sun_icSHAPE.svg');
export_drawing('SARS2C_SL5_sun_icSHAPE.png');


color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/SARS2T_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2T_SL5_sun_icSHAPE.svg');
export_drawing('SARS2T_SL5_sun_icSHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/SARS2invivo_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invivo_SL5_sun_icSHAPE.svg');
export_drawing('SARS2invivo_SL5_sun_icSHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../data/Sun_icSHAPE/SARS2invitro_sun_icSHAPE.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invitro_SL5_sun_icSHAPE.svg');
export_drawing('SARS2invitro_SL5_sun_icSHAPE.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/sars2dms/1D_DMS_normalized.csv");
DMS = DMS(6:129);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invitro_SL5_libraryDMS.svg');
export_drawing('SARS2invitro_SL5_libraryDMS.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/sars2shape/1D_SHAPE_normalized.csv");
DMS = DMS(6:129);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invitro_SL5_librarySHAPE.svg');
export_drawing('SARS2invitro_SL5_librarySHAPE.png');
%%
color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/sars2m2seq/1D_DMS_normalized.csv");
%DMS = [DMS(2:124);NaN];
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invitro_SL5_m2seq.svg');
export_drawing('SARS2invitro_SL5_m2seq.png');

color_drawing black
set_artboards
DMS = csvread("../analysis/m2seq/sars256m2seq/1D_DMS_normalized.csv");
DMS = DMS(12:135);
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
color_rings_by_float_data('A:159-282',DMS);
export_drawing('SARS2invitro_SL56_m2seq.svg');
export_drawing('SARS2invitro_SL56_m2seq.png');
%% HCoV-229E
load_drawing('HCoV-229E_SL5.mat');

setup_domain(  'A:153-167 A:280-292','SL5' );
color_drawing black SL5 
setup_domain(  'A:168-222','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:223-248','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:249-279','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('HCoV-229E_SL5_domain.svg');
export_drawing('HCoV-229E_SL5_domain.png');

%% HCoV-NL63
load_drawing('HCoV-NL63_2.mat');

setup_domain(  'A:137-167 A:271-296','SL5' );
color_drawing black SL5 
setup_domain(  'A:168-215','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:216-241','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:242-271','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('HCoV-NL63_SL5_2_domain.svg');
export_drawing('HCoV-NL63_SL5_2_domain.png');

%% alternative coloring
setup_domain('A:137-296', 'SL5')
setup_domain('A:168-207','SL5a')
color_drawing blue SL5a
setup_domain('A:216-239','SL5b')
color_drawing orange SL5b
setup_domain('A:242-271','SL5c')
color_drawing red SL5c

hide_domain_label( 'SL5' )
hide_domain_label( 'SL5a' )
hide_domain_label( 'SL5b' )
hide_domain_label( 'SL5c' )

%% HCoV-NL63
load_drawing('HCoV-NL63_1.mat');

setup_domain(  'A:137-167 A:271-296','SL5' );
color_drawing black SL5 
setup_domain(  'A:168-215','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:216-241','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:242-271','SL5c' ); 
color_drawing red SL5c 
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
export_drawing('HCoV-NL63_SL5_1_domain.svg');
export_drawing('HCoV-NL63_SL5_1_domain.png');
%%
load_drawing('SARS-CoV-2_SL5-6.mat');

setup_domain(  'A:148-182 A:263-301','SL5' );
color_drawing black SL5 
setup_domain(  'A:183-227','SL5a' ); 
color_drawing blue SL5a 
setup_domain(  'A:228-252','SL5b' );
color_drawing orange SL5b 
setup_domain(  'A:253-262','SL5c' ); 
color_drawing red SL5c 
setup_domain(  'A:302-343','SL6' ); 
color_drawing forest SL6
hide_domain_label( 'SL5' );
hide_domain_label( 'SL5a' );
hide_domain_label( 'SL5b' );
hide_domain_label( 'SL5c' );
hide_domain_label( 'SL6' );
export_drawing('SARS2_SL5-6_domain.svg');
export_drawing('SARS2_SL5-6_domain.png');

%% TODO import this data into github
color_drawing black
set_artboards
DMS = csvread("~/Desktop/Das_Lab/M2Seq_5UTR_SARS/5truncresults/1D_DMS_normalized.csv");
DMS(DMS<0)=0.0;
DMS(DMS>1)=1.0;
DMS(isnan(DMS))=-99.0;
export_drawing('SARS2_SL5_DMS.svg');
export_drawing('SARS2_SL5_DMS.png');
