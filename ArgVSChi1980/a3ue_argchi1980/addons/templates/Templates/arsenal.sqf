//ARRAY FOR OPTICS, BIPODS AND STABLE magazines
//FAL
_fwFALscopes = [
	"sp_fwa_scope_fal_fn_factory",10
	,"sp_fwa_scope_fal_oipabl58",10
];
_fwM16scopes = [
	"",10
	,"sp_fwa_scope_ar_colt3x20",10
	,"sp_fwa_scope_ar_colt4x20",10
];

//////////PISTOLS////////////
 _fwPistols = [
	["sp_fwa_l9a1_hipower", "", "", "", ["sp_fwa_20Rnd_9mm_HiPower"], [], ""],10
	,["sp_fwa_l9a1_hipower_wood", "", "", "", ["sp_fwa_13Rnd_9mm_HiPower"], [], ""],20
	,["sp_fwa_m1911", "", "", "", [], [], ""],30
];

//////////RIFLES
	_ARGfal = ["sp_fwa_fal_fmap", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer"], [], ""];
	_ARGfalS = ["sp_fwa_fal_fmap", "", "", "sp_fwa_scope_fal_fn_factory", ["sp_fwa_10Rnd_762_FAL_Metric"], [], ""];
	_ARGfalSF = ["sp_fwa_fal_fmap", "", "", _fwFALscopes, ["sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""];
	_ARGfalIR = ["sp_fwa_fal_fmap", "", "sp_fwa_illuminator_eltro_b8v_ir", "sp_fwa_scope_eltro_b8v_ir_scope", ["sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""];
	
	_ARGmfal = ["ACFAA_FNFAL", "", "", "", ["acfaa_20Rndfal_762x51_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""];
	_ARGmfalAP = ["ACFAA_FNFAL", "", "", "", ["acfaa_20rnd_762x51_993_AP_fal_Mag"], [], ""];
	_ARGmfalPARA = ["ACFAA_FNFAL_PARA", "", "", "", ["acfaa_20Rndfal_762x51_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""];
	_ARGmfalPARAAP = ["ACFAA_FNFAL_PARA", "", "", "", ["acfaa_20rnd_762x51_993_AP_fal_Mag"], [], ""];

	_ARGfap = ["ACFAA_FNFAP", "", "", "", ["acfaa_20Rndfal_762x51_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""];

	_ARGengrasadora = ["sp_fwa_smg_m3a1", "", "", "", ["sp_fwa_30Rnd_45acp_m3a1_Tracer"], [], ""];
	_ARGFMK = ["acfaa_fmk3", "", "", "", ["acfaa_32Rnd_9x19_FMJ_Mag"], [], ""];
	_ARGFMK45 = ["acfaa_fmk3", "", "", "", ["acfaa_45Rnd_9x19_FMK3_Mag"], [], ""];
	_ARGFMK45sil = ["acfaa_fmk3", "", "", "", ["acfaa_45Rnd_9x19_FMK3_Mag"], [], "muzzle_snds_L"];

	_falGL = ["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer"], ["sp_fwa_1rnd_riflegrenade_energa_at","sp_fwa_1rnd_riflegrenade_mas_ap"], ""];

	_FALO = ["sp_fwa_falo_factory_50_42_bipod", "", "", "", ["sp_fwa_30Rnd_Straight_762_FAL_Metric"], [], "sp_fwa_bipod_falo"];
	_FALOs = ["sp_fwa_falo_factory_50_42_bipod", "", "", _fwFALscopes, ["sp_fwa_30Rnd_Straight_762_FAL_Metric"], [], "sp_fwa_bipod_falo"];

	_M16 = ["sp_fwa_ar15_645_a2", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], ""];
	_M16S = ["sp_fwa_ar15_645_a2", "", "", _fwM16scopes, ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], "sp_fwa_bipod_ar15_clipon"];
	_M16C = ["sp_fwa_723_CAR15", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], [], ""];
	_M16GL = ["sp_fwa_ar15_705_m16a2_m203", "", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball","sp_fwa_20Rnd_556_Armalite_Tracer"], ["1Rnd_HE_Grenade_shell"], ""];
	_M16sil = ["sp_fwa_ar15_645_a2", "sp_fwa_muzzle_sionicsmaw556", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball"], [], ""];
	_M16Csil = ["sp_fwa_723_CAR15", "sp_fwa_muzzle_sionicsmaw556", "", "", ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball"], [], ""];
	_M16Ssil = ["sp_fwa_ar15_645_a2", "", "", _fwM16scopes, ["sp_fwa_20Rnd_556_Armalite","sp_fwa_20Rnd_556_Armalite_Ball"], [], "sp_fwa_bipod_ar15_clipon"];

	_MP5 = ["acfaa_mp5a3_base", "", "", "", ["acfaa_32Rnd_9x19_FMJ_Mag"], [], ""];
	_MP5sil = ["acfaa_mp5a3_base", "muzzle_snds_L", "", "", ["acfaa_32Rnd_9x19_FMJ_Mag"], [], ""];

	_FNmag50 = ["sp_fwa_mag58", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_762_mag_turret"], [], ""];
	_FNmag100 = ["sp_fwa_mag58", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_100Rnd_762_mag_turret"], [], ""];
	_FNmag200 = ["sp_fwa_mag58", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_200Rnd_762_mag_turret"], [], ""];

	_browning50b = ["sp_fwa_m1919a4_browning", "sp_fwa_acc_machinegun_linkhide", "", "", ["sp_fwa_50Rnd_3006_mag_ball"], [], "sp_fwa_acc_bipod_browning"];
	_browning100b = ["sp_fwa_m1919a4_browning", "sp_fwa_acc_machinegun_linkhide", "", "", ["sp_fwa_100Rnd_3006_mag_ball"], [], "sp_fwa_acc_bipod_browning"];
	_browning200b = ["sp_fwa_m1919a4_browning", "sp_fwa_acc_machinegun_linkhide", "", "", ["sp_fwa_200Rnd_3006_mag_ball"], [], "sp_fwa_acc_bipod_browning"];

	_escopeta = ["sgun_HunterShotgun_01_F", "", "", "", ["2Rnd_12Gauge_Slug"], [], ""];
	_recortada = ["sgun_HunterShotgun_01_sawedoff_F", "", "", "", ["2Rnd_12Gauge_Slug"], [], ""];

	_carcano = ["sp_fwa_m38_carcano", "", "", "", ["sp_fwa_6Rnd_65carcano_m38"], [], ""];
	_mini14 = ["sp_fwa_ruger_mini14", "", "", "", ["sp_fwa_20Rnd_556_Ruger_Mini14"], [], ""];

	_enfield = ["sp_fwa_enfield_no5_walnut", "", "", "", ["sp_fwa_stripper_5rnd_303"], [], ""];
	_mauser = ["sp_fwa_kar_98k", "", "", "", ["sp_fwa_5Rnd_792x57_K98"], [], ""];
	_springfield = ["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_5Rnd_3006_M1903"], [], ""];

	_mauserS = ["sp_fwa_kar_98k", "", "", "sp_fwa_scope_zf39", ["sp_fwa_5Rnd_792x57_K98"], [], ""];
	_springfieldS = ["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_5Rnd_3006_M1903"], [], ""];

	_springfieldGL = ["sp_fwa_m1903a1_unertl", "", "", "", ["sp_fwa_5Rnd_3006_M1903"], ["sp_fwa_1rnd_riflegrenade_m9a1_at","sp_fwa_1rnd_riflegrenade_mas_ap"], ""];

	_tommy = ["sp_fwa_smg_thompson_m1928", "", "", "", ["sp_fwa_20Rnd_45acp_thompson_m1a1_Tracer","sp_fwa_50Rnd_45acp_thompson_m1a1_Tracer"], [], ""];

	_m1 = ["sp_fwa_m1carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m1C = ["sp_fwa_m1_advisor_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m1S = ["sp_fwa_m1carbine", "", "", "sp_fwa_scope_m1_m84", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m1GL = ["sp_fwa_m1carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], ["sp_fwa_1rnd_riflegrenade_m31_at","sp_fwa_1rnd_riflegrenade_mas_ap"], ""];

	_m2 = ["sp_fwa_m2carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m2P = ["sp_fwa_m2a1_carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m2S = ["sp_fwa_m2carbine", "", "", "sp_fwa_scope_m1_m84", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], [], ""];
	_m2SF = ["sp_fwa_m2carbine_m3", "sp_fwa_muzzle_m1_flash_hider", "", "", ["sp_fwa_30Rnd_30Carbine_m1","sp_fwa_30Rnd_30Carbine_m1_tracer"], [], ""];
	_m2IR = ["sp_fwa_m2carbine_m3", "sp_fwa_muzzle_m1_flash_hider", "sp_fwa_illuminator_m3_ir", "sp_fwa_scope_m3_ir_scope", ["sp_fwa_30Rnd_30Carbine_m1"], [], ""];
	_m2GL = ["sp_fwa_m2carbine", "", "", "", ["sp_fwa_15Rnd_30Carbine_m1","sp_fwa_15Rnd_30Carbine_m1_tracer"], ["sp_fwa_1rnd_riflegrenade_m31_at","sp_fwa_1rnd_riflegrenade_mas_ap"], ""];

	_m1garand = ["sp_fwa_m1_garand", "", "", "", ["sp_fwa_8Rnd_3006_Garand","sp_fwa_8Rnd_3006_Garand_Tracer"], [], ""];
	_m1garandS = ["sp_fwa_m1_garand", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""];

	_CHIsig = ["sp_fwa_sig510_4", "", "", "", ["sp_fwa_20rnd_762x51_sig5104","sp_fwa_20rnd_762x51_sig5104_tracer"], [], ""];
	_CHIsigTRIP = ["sp_fwa_sig510_4", "", "", "", ["sp_fwa_20rnd_762x51_sig5104","sp_fwa_20rnd_762x51_sig5104_tracer"], [], "sp_fwa_acc_bipod_stgw57_forward"];
	_CHIsigS = ["sp_fwa_sig510_4", "", "", "", ["sp_fwa_5rnd_762x51_sig5104"], [], "sp_fwa_acc_bipod_stgw57_forward"];
	_CHIsigIR = ["sp_fwa_sig510_4", "", "sp_fwa_illuminator_stgw_ir", "sp_fwa_scope_stgw_ir_scope", ["sp_fwa_20rnd_762x51_sig5104"], [], ""];
	_CHIsigGL = ["sp_fwa_sig510_4", "", "", "", ["sp_fwa_20rnd_762x51_sig5104"], ["sp_fwa_1rnd_riflegrenade_sig_at","sp_fwa_1rnd_riflegrenade_sig_ap"], ""];

	_CHIfal = ["sp_fwa_fal_factory_50_00", "", "", "", ["sp_fwa_20Rnd_762_FAL_Metric","sp_fwa_20Rnd_762_FAL_Metric_Tracer"], [], ""];
	_CHIfalS = ["sp_fwa_fal_factory_50_00", "", "", "sp_fwa_scope_fal_fn_factory", ["sp_fwa_10Rnd_762_FAL_Metric"], [], ""];
	_CHIfalSF = ["sp_fwa_fal_factory_50_00", "", "", _fwFALscopes, ["sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""];
	_CHIfalIR = ["sp_fwa_fal_factory_50_00", "", "sp_fwa_illuminator_eltro_b8v_ir", "sp_fwa_scope_eltro_b8v_ir_scope", ["sp_fwa_30Rnd_Curved_762_FAL_Metric"], [], ""];

	_CHIsterling15 = ["sp_fwa_smg_sterling", "", "", "", ["sp_fwa_15Rnd_9x19_L2A3_Sterling_Tracer"], [], ""];
	_CHIsterling32 = ["sp_fwa_smg_sterling", "", "", "", ["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer"], [], ""];
	_CHIsterlingSIL32 = ["sp_fwa_smg_mk5sterling", "", "", "", ["sp_fwa_32Rnd_9x19_L2A3_Sterling"], [], ""];
	_CHIsterlingMADERAIL15 = ["sp_fwa_smg_mk7a8sterling_stock_beech", "", "", "", ["sp_fwa_15Rnd_9x19_L2A3_Sterling_Tracer"], [], ""];
	_CHIsterlingMADERAIL32 = ["sp_fwa_smg_mk7a8sterling_stock_beech", "", "", "", ["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer"], [], ""];

//LANZADORES
	_CarlosGustavoAT = ["sp_fwa_m2_carlGustav", "", "", "", ["sp_fwa_carlg_1rnd_heat"], [], ""];
	_CarlosGustavoAP = ["sp_fwa_m2_carlGustav", "", "", "", ["sp_fwa_carlg_1rnd_he"], [], ""];
	_CarlosGustavoSAT = ["sp_fwa_m2_carlGustav_no78", "", "", "", ["sp_fwa_carlg_1rnd_heat"], [], ""];
	_CarlosGustavoSAP = ["sp_fwa_m2_carlGustav_no78", "", "", "", ["sp_fwa_carlg_1rnd_he"], [], ""];
	_MRIat = ["sp_fwa_m67", "", "", "", ["sp_fwa_m67_1rnd_heat"], [], ""];
	_MRIap = ["sp_fwa_m67", "", "", "", ["sp_fwa_m67_1rnd_he","sp_fwa_m67_1rnd_ap"], [], ""];
	_LAW = ["sp_fwa_m72a1_law_loaded", "", "", "", [], [], ""];