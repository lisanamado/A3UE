//ION Rival faction for CUP//
//Woodland

#include "..\..\script_component.hpp"

["name", "ION"] call _fnc_saveToTemplate;
["nameLeader", "Xavier Sperts"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////

["faces", [
	"Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08",
"WhiteHead_09","WhiteHead_10","WhiteHead_12","WhiteHead_13",
"WhiteHead_17","WhiteHead_18","WhiteHead_19","WhiteHead_20"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG",
"Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG",
"Male12ENG", "Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB",
"Male05ENGB", "Male01ENGFRE", "Male02ENGFRE"
]] call _fnc_saveToTemplate;

"EnglishMen" call _fnc_saveNames;

["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", [
    "CUP_B_nM1025_SOV_Mk19_ION_WIN"
    , "CUP_B_nM1025_SOV_M2_ION_WIN"
    , "CUP_I_FENNEK_HMG_ION"
    , "CUP_I_FENNEK_GMG_ION"
    , "CUP_I_MATV_HMG_ION"
    , "CUP_I_MATV_GMG_ION"
    , "CUP_I_RG31_M2_W_GC_ION"
    , "CUP_I_RG31_Mk19_W_ION"
    , "CUP_I_RG31E_M2_W_ION"
	, "CUP_I_SUV_Armored_ION"
	, "CUP_I_Tigr_M_233114_KORD_ION_WIN"
	, "CUP_I_Tigr_M_233114_PK_ION_WIN"
]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", [
    "I_G_Van_01_transport_F"
]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", [
    "CUP_I_SUV_ION"
    , "CUP_I_nM1025_Unarmed_ION_WIN"
    , "CUP_I_MATV_ION"
    , "CUP_I_FENNEK_ION"
	, "CUP_I_Tigr_M_233114_ION_WIN"
]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", [
	"CUP_I_BTR80_ION"
    , "CUP_I_BTR80A_ION"
	, "CUP_B_FV432_Bulldog_GB_W_RWS"
]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", [
	"CUP_B_FV510_GB_W"
	, "CUP_B_FV510_GB_W_SLAT"
	, "CUP_B_Challenger2_2CS_BAF"
]] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", [
    "CUP_I_412_Military_Armed_PMC"
    , "CUP_I_412_Military_Armed_AT_PMC"
    , "CUP_I_412_dynamicLoadout_PMC"
    , "CUP_I_412_Mil_Transport_PMC"
    , "CUP_I_412_Mil_Utility_PMC"
    , "CUP_I_412_Military_Radar_PMC"
    , "CUP_I_MH6M_ION"
    , "CUP_I_MH6M_ION_OBS"
]] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", ["CUP_B_USMC_DYN_MQ9"]] call _fnc_saveToTemplate;

["variants", [
    ["I_G_Van_01_transport_F", ["Black",1]],
    ["CUP_I_MATV_HMG_ION", ["PMC_2",1]],
    ["CUP_I_MATV_GMG_ION", ["PMC_2",1]],
    ["CUP_I_MATV_ION", ["PMC_2",1]],
    ["CUP_I_FENNEK_ION", ["PMC_2",1]],
    ["CUP_I_FENNEK_HMG_ION", ["PMC_2",1]],
    ["CUP_I_FENNEK_GMG_ION", ["PMC_2",1]]	

]] call _fnc_saveToTemplate;



["staticLowWeapons", ["B_HMG_02_F", "B_HMG_01_F", "B_GMG_01_F"]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_M252_US"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["HandGrenade", "MiniGrenade"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["CUP_MineE"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
private _rifles = [
    ["CUP_arifle_M4A1_standard_winter", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_M4A1_standard_winter", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_AK101_railed", "", "CUP_acc_Flashlight", "", ["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Green_Tracer_556x45_AK"], [], ""],
    ["CUP_arifle_AK101_railed", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Green_Tracer_556x45_AK"], [], ""],
    ["CUP_arifle_M16A4_Base", "", "", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_M4A3_black", "", "", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_M4A3_black", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""]
];
private _tunedRifles = [
    ["CUP_arifle_HK417_12", "", "CUP_acc_ANPEQ_2_Flashlight_Black_L", "CUP_optic_Elcan_reflex", ["CUP_20Rnd_762x51_HK417"], [], "CUP_bipod_VLTOR_Modpod_black"],
    ["CUP_arifle_M4A3_black", "", "CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
    ["CUP_arifle_mk18_black ", "", "CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L", "CUP_optic_AC11704_Coyote", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],  
    ["CUP_arifle_AK19_VG_winter", "muzzle_snds_M", "CUP_acc_ANPEQ_2_camo", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_Tracer_Red_AK19_M"], [], ""],
    ["CUP_arifle_HK416_Black", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""]
];
private _enforcerRifles = [
    ["CUP_arifle_M4A1_SOMMOD_Grip_snow", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_M4A1_SOMMOD_Grip_snow", "", "", "CUP_optic_AC11704_Black", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_HK416_Black", "", "", "CUP_optic_AC11704_Black", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag"], [], ""],
    ["CUP_arifle_G36KA3_grip", "", "CUP_acc_ANPEQ_2_camo", "CUP_optic_Elcan_SpecterDR_KF_RMR_coyote", ["CUP_30Rnd_556x45_G36_hex", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36"], [], ""],
    ["CUP_arifle_HK417_12", "CUP_muzzle_snds_socom762rc", "", "CUP_optic_AIMM_MICROT1_BLK", ["CUP_20Rnd_762x51_HK417"], [], ""],
    ["CUP_arifle_AK19_winter", "", "CUP_acc_ANPEQ_2_camo", "CUP_optic_Elcan_reflex", ["CUP_30Rnd_556x45_Tracer_Red_AK19_M", "CUP_30Rnd_556x45_AK19_M"], [], ""]
];
private _carbines = [
    ["CUP_arifle_M4A1_standard_short_black", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_M4A1_standard_short_black", "", "", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_arifle_AK102_railed", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Green_Tracer_556x45_AK"], [], ""],
	["CUP_arifle_AK102_railed", "", "", "", ["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Green_Tracer_556x45_AK"], [], ""],
    ["CUP_arifle_G36CA3_afg", "", "", "CUP_optic_AC11704_Black", ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_hex"], [], ""],
    ["CUP_arifle_Mk16_CQC", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], [], ""],
    ["CUP_smg_MP5A5", "", "", "CUP_optic_AC11704_Black", ["CUP_30Rnd_9x19_MP5", "CUP_30Rnd_Yellow_Tracer_9x19_MP5"], [], ""],
    ["CUP_arifle_X95", "", "", "", ["CUP_30Rnd_556x45_X95", "CUP_30Rnd_556x45_X95_Tracer_Red"], [], ""],
    ["CUP_smg_MP7", "", "", "CUP_optic_AC11704_Black", ["CUP_40Rnd_46x30_MP7", "CUP_40Rnd_46x30_MP7_Red_Tracer"], [], ""],
	["CUP_arifle_mk18_black", "", "", "CUP_optic_G33_HWS_BLK", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], [], ""],
	["CUP_smg_p90_black", "muzzle_snds_570", "", "CUP_optic_MicroT1", ["CUP_50Rnd_570x28_Red_Tracer_P90_M"], [], ""],
    ["CUP_smg_EVO", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_9x19_EVO"], [], ""]
];
private _gls = [
    ["CUP_arifle_Mk16_STD_EGLM", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203"], ""],
    ["CUP_arifle_AK101_GL_railed", "", "", "CUP_optic_HoloBlack", ["CUP_30Rnd_556x45_AK"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
	["CUP_arifle_mk18_m203_black", "", "", "CUP_optic_G33_HWS_BLK", ["CUP_30Rnd_556x45_Emag_Tracer_Red"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203"], ""],
    ["CUP_arifle_M4A1_BUIS_GL", "", "", "", ["CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green"], ["CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203"], ""]
];
private _mgs = [
	["CUP_lmg_Mk48", "", "", "CUP_optic_CompM2_Black", ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], [], ""],
	["CUP_arifle_MG36", "", "", "CUP_optic_Elcan_SpecterDR_KF_RMR_coyote", ["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag"], [], ""],
    ["CUP_arifle_HK_M27_VFG", "", "", "", ["CUP_60Rnd_556x45_SureFire", "CUP_60Rnd_556x45_SureFire_Tracer_Green"], [], ""],
    ["CUP_lmg_minimi_railed", "", "", "CUP_optic_Elcan_SpecterDR_black_PIP", ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249"], [], ""]
];

private _marksmanRifles = [
    ["CUP_srifle_Mk18_blk", "", "", "CUP_optic_LeupoldMk4_pip", ["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR"], [], "CUP_bipod_Harris_1A2_L_BLK"],
	["CUP_srifle_RSASS_Winter", "CUP_muzzle_snds_socom762rc", "", "CUP_optic_LeupoldM3LR", ["CUP_20Rnd_762x51_B_M110","CUP_20Rnd_TE1_Green_Tracer_762x51_M110" ], [], "CUP_bipod_Harris_1A2_L_BLK"],
    ["CUP_arifle_HK417_20", "CUP_muzzle_snds_socom762rc", "", "CUP_optic_LeupoldM3LR", ["CUP_20Rnd_762x51_HK417", "CUP_20Rnd_TE1_Green_Tracer_762x51_HK417"], [], "CUP_bipod_Harris_1A2_L_BLK"],
    ["CUP_srifle_Mk12SPR", "", "", "CUP_optic_HensoldtZO_low", ["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["CUP_srifle_M2010_winter", "", "", "", "CUP_optic_LeupoldM3LR", ["CUP_5Rnd_762x67_M2010_M"], [], "CUP_bipod_Harris_1A2_L_BLK"],
    ["CUP_arifle_Mk20_black", "", "", "CUP_optic_LeupoldM3LR", ["CUP_20Rnd_762x51_B_SCAR_bkl", "CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR_bkl"], [], "CUP_bipod_Harris_1A2_L_BLK"]
];

private _rpgs = [
    ["CUP_launch_M72A6", "", "", "", [""], [], ""],
    ["CUP_launch_Mk153Mod0_blk", "", "", "CUP_optic_SMAW_Scope", ["CUP_SMAW_HEAA_M", "CUP_SMAW_HEDP_M"], [], ""],
    ["CUP_launch_Mk153Mod0_blk", "", "", "", ["CUP_SMAW_HEAA_M", "CUP_SMAW_NE_M"], [], ""]
];

private _pistols = [
    ["CUP_hgun_Colt1911", "", "", "", ["CUP_7Rnd_45ACP_1911"], [], ""],
	["CUP_hgun_Duty", "", "", "", ["CUP_16Rnd_9x19_cz75"], [], ""],
	["CUP_hgun_Deagle", "", "", "", ["CUP_7Rnd_50AE_Deagle"], [], ""]
];

_loadoutData set ["rifles", _rifles];
_loadoutData set ["tunedRifles", _tunedRifles];
_loadoutData set ["enforcerRifles", _enforcerRifles];
_loadoutData set ["carbines", _carbines];
_loadoutData set ["grenadeLaunchers", _gls];
_loadoutData set ["machineGuns", _mgs];
_loadoutData set ["marksmanRifles", _marksmanRifles];
_loadoutData set ["lightATLaunchers", _rpgs];
_loadoutData set ["lightHELaunchers", [
    ["CUP_launch_M136", "", "", "", [""], [], ""]
]];
_loadoutData set ["AALaunchers", [
    ["CUP_launch_FIM92Stinger", "", "", "", [""], [], ""]
]];
_loadoutData set ["sidearms", _pistols];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["IEDLandSmall_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["IEDLandBig_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//check and add
_loadoutData set ["facewear", [
	"G_Aviator",
	"G_Spectacles_Tinted",
	"G_Lowprofile",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset"
]];

_loadoutData set ["fullmask", [	"CUP_H_RUS_Ratnik_Balaclava_6M21_Winter_3", "CUP_H_RUS_Ratnik_Balaclava_6M21_Winter_2", "G_Balaclava_blk"]];

//check and add
_loadoutData set ["headgear", [
	"H_Cap_blk_ION"
	, "CUP_H_PMC_Beanie_Headphones_Winter"
	]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_PVS15_green"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", ["Rangefinder"]];


_loadoutData set ["uniforms", [
      "CUP_I_B_PMC_Unit_28"
    , "CUP_I_B_PMC_Unit_18"
    , "CUP_I_B_PMC_Unit_25"
    , "CUP_I_B_PMC_Unit_26"
]];

private _helmets = [
	"CUP_H_OpsCore_Black"
	, "CUP_H_OpsCore_Covered_UCP_SF"
	, "CUP_H_PASGTv2_winter"
	, "CUP_H_CDF_H_PASGT_SNW"
	, "CUP_H_USArmy_MICH_GCOVERED_Headset_UCP"
];

_loadoutData set ["offuniforms", ["CUP_I_B_PMC_Unit_27"]];
_loadoutData set ["vests", [
	"CUP_V_CPC_Fastbelt_rngr"
	, "CUP_V_CPC_weaponsbelt_rngr"
	, "CUP_V_CPC_Fast_rngr"
	, "CUP_V_I_RACS_Carrier_Rig_wdl_2"
	, "CUP_V_I_RACS_Carrier_Rig_wdl_3"
	, "CUP_V_B_GER_Carrier_Rig"
	]];
_loadoutData set ["heavyVests", [
	"CUP_V_PMC_CIRAS_Black_TL"
	, "CUP_V_B_Armatus_BB_Black"
	]];
_loadoutData set ["backpacks", [
	"B_AssaultPack_sgg"
	, "CUP_B_US_Assault_OEFCP"
	, "B_Carryall_khk"
	]];
_loadoutData set ["helmets", _helmets];
_loadoutData set ["crewHelmets", ["H_HeadSet_black_F"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadleader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", ["V_BandollierB_blk"]];
_crewLoadoutData set ["helmets", ["H_HeadSet_black_F"]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", ["V_BandollierB_blk"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetFighter_B"]];

// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _cellLeaderTemplate = {
	if (random 100 > 60) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 5] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _mercenaryTemplate = {
	["helmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles", "tunedRifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _enforcerTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[["enforcerRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _partisanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["backpacks"] call _fnc_setBackpack;
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 3] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _minutemanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

  	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _saboteurTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 2] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _oppressorTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sharpshooterTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _crewTemplate = {
	["crewHelmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["carbines"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _commanderTemplate = {
	[selectRandomWeighted ["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

///////////////////////
//  Rivals Units     //
///////////////////////
private _prefix = "militia";
private _unitTypes = [
	["CellLeader", _cellLeaderTemplate, [], [_prefix, true]],
	["Mercenary", _mercenaryTemplate, [], [_prefix, true]],
	["Minuteman", _minutemanTemplate, [], [_prefix, true]],
	["Enforcer", _enforcerTemplate, [], [_prefix, true]],
	["Partisan", _partisanTemplate, [], [_prefix, true]],
	["Saboteur", _saboteurTemplate, [], [_prefix, true]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix, true]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix, true]],
	["SpecialistAT", _atTemplate, [], [_prefix, true]],
	["SpecialistAA", _aaTemplate, [], [_prefix, true]],
	["Oppressor", _oppressorTemplate, [], [_prefix, true]],
	["Sharpshooter", _sharpshooterTemplate, [], [_prefix, true]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////
[_prefix, [["Crew", _crewTemplate, [], [_prefix, true]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Pilot", _crewTemplate, [], [_prefix, true]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Commander", _commanderTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _unarmedTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
