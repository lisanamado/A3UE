//wheightedlist mags
/*_USDrifleGrenades = ["sp_fwa_1rnd_riflegrenade_mas_dp" /*selectRandomWeighted [
	["sp_fwa_1rnd_riflegrenade_mas_dp"],10
	,["sp_fwa_1rnd_riflegrenade_energa_at"],8
	,["sp_fwa_1rnd_riflegrenade_m31_at"],8
	,["sp_fwa_1rnd_riflegrenade_m9a1_at"],10
	,["sp_fwa_1rnd_riflegrenade_mas_at_l"],8
	,["sp_fwa_1rnd_riflegrenade_mas_ap"],15
	,["sp_fwa_1rnd_riflegrenade_mas_at_s"],10
];
_fw75MGmags = ["sp_fwa_100Rnd_75_french_mag_turret" /*selectRandomWeighted [
	["sp_fwa_100Rnd_75_french_mag_turret"],10
	,["sp_fwa_100Rnd_75_french_mag"],10
	,["sp_fwa_100Rnd_75_french_mag_ball"],10
	,["sp_fwa_200Rnd_75_french_mag_turret"],5
	,["sp_fwa_200Rnd_75_french_mag"],5
	,["sp_fwa_200Rnd_75_french_mag_ball"],5
	,["sp_fwa_50Rnd_765_french_mag_turret"],5
	,["sp_fwa_50Rnd_765_french_mag"],5
	,["sp_fwa_50Rnd_765_french_mag_ball"],5
];
_fw762MGmags = ["sp_fwa_100Rnd_762_mag_turret" /*selectRandomWeighted [
	["sp_fwa_100Rnd_762_mag_turret"],10
	,["sp_fwa_100Rnd_762_mag"],10
	,["sp_fwa_100Rnd_762_mag_ball"],10
	,["sp_fwa_200Rnd_762_mag_turret"],5
	,["sp_fwa_200Rnd_762_mag"],5
	,["sp_fwa_200Rnd_762_mag_ball"],5
	,["sp_fwa_50Rnd_762_mag_turret"],5
	,["sp_fwa_50Rnd_762_mag"],5
	,["sp_fwa_50Rnd_762_mag_ball"],5
];
_fwM14mags = ["sp_fwa_10Rnd_762_M14_Ball" /*selectRandomWeighted [
	["sp_fwa_10Rnd_762_M14_Ball"],10
	,["sp_fwa_10Rnd_762_M14_Tracer"],2
	,["sp_fwa_20Rnd_762_M14"],5
	,["sp_fwa_20Rnd_762_M14_Ball"],5
	,["sp_fwa_20Rnd_762_M14_Tracer"],2
];
//AK
_USDAKmags = selectRandomWeighted [
	["30Rnd_762x39_AK12_Mag_F"],10
	,["30Rnd_762x39_AK12_Mag_Tracer_F"],5
	,["75Rnd_762x39_Mag_F"],1
	,["75Rnd_762x39_Mag_Tracer_F"],1
];
_fwFAL51020mags = selectRandomWeighted [
	["sp_fwa_10Rnd_762_FAL_Metric"],10
	,["sp_fwa_10Rnd_762_FAL_Metric_Ball"],5
	,["sp_fwa_10Rnd_762_FAL_Metric_Tracer"],5
	,["sp_fwa_20Rnd_762_FAL_Metric"],10
	,["sp_fwa_20Rnd_762_FAL_Metric_Ball"],5
	,["sp_fwa_20Rnd_762_FAL_Metric_Tracer"],5
	,["sp_fwa_5Rnd_762_FAL_Metric"],2
];

//M1-M2CARBINES
/*_fwM1mags = selectRandomWeighted [
	["sp_fwa_15Rnd_30Carbine_m1"],10
	,["sp_fwa_15Rnd_30Carbine_m1_ball"],5
	,["sp_fwa_15Rnd_30Carbine_m1_tracer"],5
	,["sp_fwa_30Rnd_30Carbine_m1"],10
	,["sp_fwa_30Rnd_30Carbine_m1_Ball"],5
	,["sp_fwa_30Rnd_30Carbine_m1_tracer"],5
];
//BROWNING HI-POWER
/*_fwBHPmags = selectRandomWeighted [
	["sp_fwa_13Rnd_9mm_HiPower"],15
	,["sp_fwa_13Rnd_9mm_HiPower_Tracer"],5
	,["sp_fwa_20Rnd_9mm_HiPower"],5
	,["sp_fwa_20Rnd_9mm_HiPower_Tracer"],5
];
//HANDMORTAR
_fwHandMortarmags = selectRandomWeighted [
	["sp_fwa_2inch_he_mag"],10
	,["sp_fwa_2inch_flare_mag"],5
	,["sp_fwa_2inch_signal_multi_red_mag"],5
	,["sp_fwa_2inch_wp_mag"],5
	,["sp_fwa_2inch_smoke_mag"],5
];*/
//ARRAY FOR OPTICS, BIPODS AND STABLE magazines
 _USDHoloOptics = 
    ["optic_Yorris"
    ,"optic_Aco"
    ,"optic_Holosight"
    ,"acfaa_microt1_hi"];
 _USDRifOptics = 
    ["optic_Arco"
    ,"optic_DMS"
    ,"optic_Hamr"];
 _USDMMOptics = 
    ["optic_SOS"
    ,"optic_KHS_blk"
    ,"optic_AMS"];
 _USDSniOptics = 
    ["optic_LRPS"];
 _USDSpecOptics = 
    ["optic_NVS"
    ,"optic_tws"
    ,"optic_tws_mg"];
//FAL
_fwFALscopes = [
	"",10
	,"sp_fwa_scope_fal_fn_factory",10
	,"sp_fwa_scope_fal_oipabl58",10
	,"sp_fwa_scope_eltro_b8v_ir_scope",1
];
_fwM16scopes = [
	"",10
	,"sp_fwa_scope_ar_colt3x20",10
	,"sp_fwa_scope_ar_colt4x20",10
];
/*
_fwM16bipods = [
	"",10
	,"sp_fwa_bipod_ar15_clipon",5
	,"sp_fwa_bipod_m60",2
];
 _fwM1630rnds = [
	"sp_fwa_30Rnd_556_Armalite","sp_fwa_30Rnd_556_Armalite_Ball","sp_fwa_30Rnd_556_Armalite_Tracer"
];
 _fwM1620rnds = [
	"sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"
];
 _fwAR1020rnds = [
	"sp_fwa_20Rnd_762_ar10","sp_fwa_20Rnd_762_ar10_Ball","sp_fwa_20Rnd_762_ar10_Tracer"
];
 _fwAR1830rnds = [
	"sp_fwa_30Rnd_556_Ar18","sp_fwa_30Rnd_556_Ar18_Ball","sp_fwa_30Rnd_556_Ar18_Tracer"
];
_fwAlpinernds = [
	"sp_fwa_20rnd_762_bm59","sp_fwa_20rnd_762_bm59_ball","sp_fwa_20rnd_762_bm59_tracer"
];
 _fwFAL30rnds = [
	"sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"
];
//MAS49/56
 _fwMAS49rnds = [
	"sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"
];
_USDunderbarrelGrenades = [
	"1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"];
*/




//////////PISTOLS////////////
 _fwPistols = [
	["sp_fwa_l9a1_hipower", "", "", "", ["sp_fwa_20Rnd_9mm_HiPower"], [], ""],10
	,["sp_fwa_l9a1_hipower_wood", "", "", "", ["sp_fwa_13Rnd_9mm_HiPower"], [], ""],20
	,["sp_fwa_m1911", "", "", "", [], [], ""],30
	,["sp_fwa_2InchMortar", "", "", "", ["sp_fwa_2inch_he_mag","sp_fwa_2inch_smoke_mag","sp_fwa_2inch_signal_multi_red_mag"], [], ""],10
];

//////////MILITIA
 _fwaRiflesMilitia = [
	["sp_fwa_fal_bgs_a", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer","sp_fwa_20Rnd_762_FAL_Metric_Ball"], [], ""],1
	,["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],2
	,["sp_fwa_sig510_4", "", "", "", ["sp_fwa_20rnd_762x51_sig5104"], [], ""],1
	,["arifle_AKM_F", "", "", "", ["30Rnd_762x39_AK12_Mag_F"], [], ""],1
	,["sp_fwa_scope_garand_m84", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""],1
];
 _fwaCarbinesMilitia = [
	["arifle_AKS_F", "", "", "", ["30Rnd_545x39_Mag_Tracer_F"], [], ""],1
	,["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],1
	,["sp_fwa_m1_advisor_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer","sp_fwa_15Rnd_30Carbine_m1_ball"], [], ""],1
	,["sp_fwa_m2a1_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer","sp_fwa_15Rnd_30Carbine_m1_ball"], [], ""],3
];
 _fwaGLsMilitia = [
	["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], ["sp_fwa_1rnd_riflegrenade_mas_dp","sp_fwa_1rnd_riflegrenade_energa_at"], ""],1
	,["sp_fwa_fal_bgs_a", "", "", "", ["sp_fwa_10Rnd_762_FAL_Metric","sp_fwa_10Rnd_762_FAL_Metric_Ball","sp_fwa_10Rnd_762_FAL_Metric_Tracer"], ["sp_fwa_1rnd_riflegrenade_mas_ap","sp_fwa_1rnd_riflegrenade_mas_at_l","sp_fwa_1rnd_riflegrenade_mas_at_s"], ""],1
];
 _fwaSMGsMilitia = [
	["sp_fwa_smg_sterling", "", "", "", ["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer"], [], ""],1
	,["sp_fwa_smg_mat49", "", "", "", ["sp_fwa_32Rnd_9x19_MAT49_Tracer"], [], ""],3
];
 _fwaMGsMilitia = [
	["sp_fwa_m1919a4_browning", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_3006_mag_turret"], [], ""],3
	,["sp_fwa_aa52", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_765_french_mag_turret","sp_fwa_50Rnd_765_french_mag","sp_fwa_50Rnd_765_french_mag_ball"], [], ""],2
	,["sp_fwa_fm2429", "", "", "", ["sp_fwa_25Rnd_75x54_fm2429_Tracer"], [], ""],1
	,["sp_fwa_fal_t48_falo_bipod", "", "", "", ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""],1
];
 _fwaMMriflesMilitia = [
	["sp_fwa_mas_49_56", "", "", "sp_fwa_acc_mas_scope_hood_s", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],2
	,["sp_fwa_m1_garand", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""],1
];
 _fwaSniperMilitia = [
	["sp_fwa_enfield_l42_beech", "", "", "sp_fwa_no32", ["sp_fwa_10Rnd_762_L42"], [], ""],2
	,["sp_fwa_kar_98k_laminate", "", "", "sp_fwa_scope_zf39", ["sp_fwa_5Rnd_792x57_K98"], [], ""],1
];

//////////MILITARY
 _fwaRiflesMilitary = [
	["sp_fwa_fal_bgs_a", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer","sp_fwa_20Rnd_762_FAL_Metric_Ball"], [], ""],1
	,["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],2
	,["sp_fwa_sig510_4", "", "", "", ["sp_fwa_20rnd_762x51_sig5104"], [], ""],1
	,["arifle_AKM_F", "", "", "", ["30Rnd_762x39_AK12_Mag_F"], [], ""],3
	,["sp_fwa_scope_garand_m84", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""],1	
	,["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer","sp_fwa_20Rnd_762_FAL_Metric_Ball"], [], ""],5
	,["sp_fwa_ar15_645_a2", "", "", "", ["sp_fwa_30Rnd_556_Armalite","sp_fwa_30Rnd_556_Armalite_Ball","sp_fwa_30Rnd_556_Armalite_Tracer"], [], ""],2
	,["sp_fwa_fn_modelDA1", "", "", "", ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""],3
	,["sp_fwa_fal_t48_falo_bipod", "", "", "", ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""],2
];
 _fwaCarbinesMilitary = [
	["arifle_AKS_F", "", "", "", ["30Rnd_545x39_Mag_Tracer_F"], [], ""],3
	,["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],1
	,["sp_fwa_m1_advisor_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer","sp_fwa_15Rnd_30Carbine_m1_ball"], [], ""],1
	,["sp_fwa_m2a1_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer","sp_fwa_15Rnd_30Carbine_m1_ball"], [], ""],3
	,["sp_fwa_723_CAR15", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], ""],5
	,["sp_fwa_ruger_mini14", "", "", "", ["sp_fwa_20Rnd_556_Ruger_Mini14"], [], ""],2
	,["bg21_famas_HG", "", "", "", ["25Rnd_556x45_famas"], [], ""],2
	,["bg21_famas1", "", "", "", ["25Rnd_556x45_famas"], [], ""],4
	,["sp_fwa_m2carbine_m3","","","sp_fwa_scope_m1_m84",["sp_fwa_30Rnd_30Carbine_m1_tracer","sp_fwa_30Rnd_30Carbine_m1_Ball","sp_fwa_30Rnd_30Carbine_m1"],[],""],5
];
 _fwaGLMilitary = [
	["sp_fwa_mas_49_56", "", "", "", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], ["sp_fwa_1rnd_riflegrenade_mas_dp","sp_fwa_1rnd_riflegrenade_energa_at"], ""],1
	,["sp_fwa_fal_bgs_a", "", "", "", ["sp_fwa_10Rnd_762_FAL_Metric","sp_fwa_10Rnd_762_FAL_Metric_Ball","sp_fwa_10Rnd_762_FAL_Metric_Tracer"], ["sp_fwa_1rnd_riflegrenade_mas_ap","sp_fwa_1rnd_riflegrenade_mas_at_l","sp_fwa_1rnd_riflegrenade_mas_at_s"], ""],1
	,["sp_fwa_ar15_603_m16a1_m203", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],5
	,["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_10Rnd_762_FAL_Metric","sp_fwa_10Rnd_762_FAL_Metric_Ball","sp_fwa_10Rnd_762_FAL_Metric_Tracer"], ["sp_fwa_1rnd_riflegrenade_m31_at","sp_fwa_1rnd_riflegrenade_mas_ap","sp_fwa_1rnd_riflegrenade_mas_dp","sp_fwa_1rnd_riflegrenade_mas_at_l"], ""],5
];
 _fwaSMGsMilitary = [
	["sp_fwa_smg_sterling", "", "", "", ["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer"], [], ""],1
	,["sp_fwa_smg_mat49", "", "", "", ["sp_fwa_32Rnd_9x19_MAT49_Tracer"], [], ""],3
	,["sp_fwa_m1_advisor_carbine", "", "", "", ["sp_fwa_30Rnd_30Carbine_m1_tracer","sp_fwa_30Rnd_30Carbine_m1_Ball","sp_fwa_30Rnd_30Carbine_m1"], [], ""],3
	,["sp_fwa_smg_m3a1", "", "", "", ["sp_fwa_30Rnd_45acp_m3a1_Tracer"], [], ""],2
	,["sp_fwa_smg_carlg_m45", "", "", "", ["sp_fwa_36Rnd_9mm_carlg_m45_Tracer"], [], ""],2
];
 _fwaMGsMilitary = [
	["sp_fwa_m1919a4_browning", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_3006_mag_turret"], [], ""],3
	,["sp_fwa_aa52", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_765_french_mag_turret","sp_fwa_50Rnd_765_french_mag","sp_fwa_50Rnd_765_french_mag_ball"], [], ""],2
	,["sp_fwa_fm2429", "", "", "", ["sp_fwa_25Rnd_75x54_fm2429_Tracer"], [], ""],1
	,["sp_fwa_aa_nf1", "", "", "", ["sp_fwa_100Rnd_75_french_mag_turret","sp_fwa_100Rnd_75_french_mag","sp_fwa_100Rnd_75_french_mag_ball"], [], ""],10
	,["sp_fwa_mag58", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_762_mag_turret","sp_fwa_50Rnd_762_mag","sp_fwa_50Rnd_762_mag_ball"], [], ""],7
	,["sp_fwa_m60", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_75_french_mag_turret","sp_fwa_100Rnd_75_french_mag","sp_fwa_100Rnd_75_french_mag_ball"], [], ""],5
];
 _fwaMMriflesMilitary = [
	["sp_fwa_mas_49_56", "", "", "sp_fwa_acc_mas_scope_hood_s", ["sp_fwa_10rnd_75_mas49","sp_fwa_10rnd_75_mas49_ball","sp_fwa_10rnd_75_mas49_tracer"], [], ""],2
	,["sp_fwa_m1_garand", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""],1	
	,["sp_fwa_fal_factory_50_00", "", "", _fwFALscopes, ["sp_fwa_5Rnd_762_FAL_Metric","sp_fwa_10Rnd_762_FAL_Metric_Ball"], [], "sp_fwa_acc_bipod_fal"],5
	,["sp_fwa_ar15_645_a2", "", "", _fwM16scopes, ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], "sp_fwa_bipod_ar15_clipon"],10
];
 _fwaSniperMilitary = [
	["sp_fwa_enfield_l42_beech", "", "", "sp_fwa_no32", ["sp_fwa_10Rnd_762_L42"], [], ""],2
	,["sp_fwa_kar_98k_laminate", "", "", "sp_fwa_scope_zf39", ["sp_fwa_5Rnd_792x57_K98"], [], ""],1
	,["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_stripper_5rnd_3006"], [], ""],5
];

//////////ELITE
 _fwaRiflesElite = [
	["arifle_AKM_F", "", "", "", ["30Rnd_762x39_AK12_Mag_F"], [], ""],3
	,["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer","sp_fwa_20Rnd_762_FAL_Metric_Ball"], [], ""],5
	,["sp_fwa_fn_modelDA1", "", "", "", ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""],3
	,["sp_fwa_fal_t48_falo_bipod", "", "", "", ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""],2
	,["sp_fwa_fal_factory_50_63", "", "", _fwFALscopes, ["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball","sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer","sp_fwa_30Rnd_Curved_762_FAL_Metric"], ["sp_fwa_1rnd_riflegrenade_m31_at"], ""],10
	,["sp_fwa_ar15_645_a2", "", "", _fwM16scopes, ["sp_fwa_30Rnd_556_Armalite","sp_fwa_30Rnd_556_Armalite_Ball","sp_fwa_30Rnd_556_Armalite_Tracer"], [], ""],10
	,["sp_fwa_bm59_mk3_alpine", "", "", "", ["sp_fwa_20rnd_762_bm59","sp_fwa_20rnd_762_bm59_ball","sp_fwa_20rnd_762_bm59_tracer"], [], ""],5
	,["sp_fwa_ar10_porto_od", "", "", "sp_fwa_scope_ar_delft3x25", ["sp_fwa_20Rnd_762_ar10","sp_fwa_20Rnd_762_ar10_Ball","sp_fwa_20Rnd_762_ar10_Tracer"], [], ""],2
];
 _fwaCarbinesElite = [
	["arifle_AKS_F", "", "", "", ["30Rnd_545x39_Mag_Tracer_F"], [], ""],4
	,["sp_fwa_723_CAR15", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], ""],5
	,["sp_fwa_ruger_mini14", "", "", "", ["sp_fwa_20Rnd_556_Ruger_Mini14"], [], ""],2
	,["bg21_famas_HG", "", "", "", ["25Rnd_556x45_famas"], [], ""],10
	,["bg21_famas1", "", "", "", ["25Rnd_556x45_famas"], [], ""],5
	,["sp_fwa_m2carbine_m3","","","sp_fwa_scope_m1_m84",["sp_fwa_30Rnd_30Carbine_m1_tracer","sp_fwa_30Rnd_30Carbine_m1_Ball","sp_fwa_30Rnd_30Carbine_m1"],[],""],5
	,["sp_fwa_733_CAR15", "", "", "", ["sp_fwa_30Rnd_556_Armalite","sp_fwa_30Rnd_556_Armalite_Ball","sp_fwa_30Rnd_556_Armalite_Tracer"], [], ""],10
	,["sp_fwa_ar18_shorty", "", "", "", ["sp_fwa_30Rnd_556_Ar18","sp_fwa_30Rnd_556_Ar18_Ball","sp_fwa_30Rnd_556_Ar18_Tracer"], [], ""],4
];
 _fwaGLElite = [
	["sp_fwa_ar15_603_m16a1_m203", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],5
	,["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_10Rnd_762_FAL_Metric","sp_fwa_10Rnd_762_FAL_Metric_Ball","sp_fwa_10Rnd_762_FAL_Metric_Tracer"], ["sp_fwa_1rnd_riflegrenade_m31_at","sp_fwa_1rnd_riflegrenade_mas_ap","sp_fwa_1rnd_riflegrenade_mas_dp","sp_fwa_1rnd_riflegrenade_mas_at_l"], ""],5
	,["sp_fwa_ar15_705_m16a2_m203", "", "", "", ["sp_fwa_30Rnd_556_Armalite","sp_fwa_30Rnd_556_Armalite_Ball","sp_fwa_30Rnd_556_Armalite_Tracer"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],10
];
 _fwaMGsElite = [
	["sp_fwa_m1919a4_browning", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_3006_mag_turret"], [], ""],3
	,["sp_fwa_aa52", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_765_french_mag_turret","sp_fwa_50Rnd_765_french_mag","sp_fwa_50Rnd_765_french_mag_ball"], [], ""],2
	,["sp_fwa_fm2429", "", "", "", ["sp_fwa_25Rnd_75x54_fm2429_Tracer"], [], ""],1
	,["sp_fwa_aa_nf1", "", "", "", ["sp_fwa_100Rnd_75_french_mag_turret","sp_fwa_100Rnd_75_french_mag","sp_fwa_100Rnd_75_french_mag_ball"], [], ""],10
	,["sp_fwa_mag58", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_762_mag_turret","sp_fwa_50Rnd_762_mag","sp_fwa_50Rnd_762_mag_ball"], [], ""],7
	,["sp_fwa_m60", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_75_french_mag_turret","sp_fwa_100Rnd_75_french_mag","sp_fwa_100Rnd_75_french_mag_ball"], [], ""],5
	,["sp_fwa_mg3", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_75_french_mag_turret","sp_fwa_100Rnd_75_french_mag","sp_fwa_100Rnd_75_french_mag_ball"], [], ""],5
];
 _fwaMMriflesElite = [
	["sp_fwa_ar15_645_a2", "", "", _fwM16scopes, ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], "sp_fwa_bipod_ar15_clipon"],2
	,["sp_fwa_m21", "", "", "sp_fwa_acc_m21_art1_redfield_scope", ["sp_fwa_20Rnd_762_M14","sp_fwa_20Rnd_762_M14_Ball","sp_fwa_20Rnd_762_M14_Tracer"], [], ""],5
	,["sp_fwa_bm59_mk3_alpine", "", "", "sp_fwa_scope_bm59_diavari", ["sp_fwa_20rnd_762_bm59","sp_fwa_20rnd_762_bm59_ball","sp_fwa_20rnd_762_bm59_tracer"], [], ""],10
];
 _fwaSniperElite = [
	["sp_fwa_enfield_l42_beech", "", "", "sp_fwa_no32", ["sp_fwa_10Rnd_762_L42"], [], ""],2
	,["sp_fwa_kar_98k_laminate", "", "", "sp_fwa_scope_zf39", ["sp_fwa_5Rnd_792x57_K98"], [], ""],1
	,["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_stripper_5rnd_3006"], [], ""],5
	,["sp_fwa_m21", "", "", "sp_fwa_acc_m21_art1_redfield_scope", ["sp_fwa_10Rnd_762_M14_Ball","sp_fwa_10Rnd_762_M14_Ball","sp_fwa_10Rnd_762_M14_Tracer"], [], ""],10
	,["sp_fwa_bm59_mk3_alpine", "", "", "sp_fwa_scope_bm59_diavari", ["sp_fwa_20rnd_762_bm59","sp_fwa_20rnd_762_bm59_ball","sp_fwa_20rnd_762_bm59_tracer"], [], ""],5
];

////////////SF
 _USDsfRifles = [
	["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "ACE_acc_pointer_green", _USDHoloOptics, ["30Rnd_580x42_Mag_F"], [], ""],10
	,["arifle_CTAR_ghex_F", "muzzle_snds_58_ghex_F", "ACE_acc_pointer_green", _USDRifOptics, ["30Rnd_580x42_Mag_F"], [], ""],5
	,["arifle_AK12_lush_F", "muzzle_snds_B", "ACE_acc_pointer_green", _USDHoloOptics, ["30rnd_762x39_AK12_Lush_Mag_F"], [], ""],10
	,["arifle_AK12_lush_F", "muzzle_snds_B", "ACE_acc_pointer_green", _USDRifOptics, ["30rnd_762x39_AK12_Lush_Mag_F"], [], ""],5
];