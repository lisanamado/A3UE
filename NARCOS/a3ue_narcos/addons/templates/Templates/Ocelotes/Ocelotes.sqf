#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

////////////////////////////
//   Rivals Information   //
///////////////////////////

["name", "Ocelotes" ] call _fnc_saveToTemplate;
["nameLeader", "Tomás Farlunga"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////
["faces", [
    "PersianHead_A3_01"
    , "PersianHead_A3_02"
    , "AfricanHead_01"
    , "AfricanHead_03"
    , "AsianHead_A3_03"
    , "WhiteHead_20"
    , "WhiteHead_02"
    , "GreekHead_A3_13"
    , "TanoanHead_A3_03"
    , "GreekHead_A3_03"
    , "AsianHead_A3_04"
    , "TanoanHead_A3_05"
    , "GreekHead_A3_12"
    , "Mavros"
    , "TanoanHead_A3_07"
    , "TanoanHead_A3_06"
]] call _fnc_saveToTemplate; 
["voices", [
	"Male02FRE","Male03FRE","Male01FRE","male06gre", "Male04GRE", "Male06GRE", "Male05GRE"
]] call _fnc_saveToTemplate;

"SahraniNames" call _fnc_saveNames;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

private _lightArmedVehicles = [
    "CUP_I_Hilux_SPG9_IND_G_F","CUP_I_Hilux_armored_SPG9_IND_G_F",
    "I_G_Offroad_01_AT_F","I_G_Offroad_01_armed_F",
    "CUP_I_Datsun_PK_Random","CUP_I_Hilux_M2_IND_G_F",
    "CUP_B_LR_MG_CZ_W","CUP_O_LR_SPG9_TKA",
    "CUP_I_Hilux_BMP1_IND_G_F","CUP_I_Hilux_btr60_IND_G_F",
    "CUP_I_nM1025_M2_ION","CUP_I_nM1025_M240_ION","CUP_I_nM1025_Mk19_ION",
    "CUP_B_nM1025_SOV_M2_ION","CUP_B_nM1025_SOV_Mk19_ION",
    "CUP_I_Hilux_armored_BTR60_IND_G_F",
	"CUP_O_BRDM2_CSAT_T","CUP_O_BRDM2_HQ_CSAT_T"
];
private _lightUnarmedVehicles = [
    "CUP_O_Hilux_unarmed_TK_CIV","CUP_I_Hilux_armored_unarmed_IND_G_F",
	"I_G_Offroad_01_F","CUP_I_Datsun_4seat","CUP_C_Datsun","C_Offroad_01_F","CUP_C_SUV_TK","CUP_C_SUV_CIV"
];
private _vehiclesTrucks = [
	"CUP_B_MTVR_HIL",
	"CUP_B_MTVR_USMC",
    "C_Truck_02_covered_F",
    "CUP_C_Ural_Civ_03",
    "CUP_C_V3S_Covered_TKC"
];
//VEHICLES ADDED IF MODS ARE PRESENT
//BRAF
if (isClass (configFile >> "CfgVehicles" >> "BRAF_AM11_CFN")) then {
    _lightArmedVehicles pushBack "BRAF_AM11_Armed_CFN";
    _lightUnarmedVehicles pushBack "BRAF_AM11_CFN";
    _vehiclesTrucks pushBack "BRAF_Worker_CFN";
};
//Cytech Agrale and Armored Vehicle
if (isClass (configFile >> "CfgVehicles" >> "cytech_rt_amv")) then {
    _lightUnarmedVehicles append ["cytech_rt_amv_Camouflage","cytech_rt_amv_Desert",
	"cytech_rt_amv","cytech_rt_amv_Green","cytech_rt_agrale_blue","cytech_rt_agrale_Green"];
    _vehiclesTrucks pushBack "cytech_rt_agrale_blue";
};
//Toyota Hilux 2016
if (isClass (configFile >> "CfgVehicles" >> "rt_16Luxi_dirty")) then {
    _lightUnarmedVehicles append ["rt_16luxi_AFR", "rt_16luxi_ME_S","rt_16Luxi_dirty"];
    _lightArmedVehicles append ["rt_16Luxi_at", "rt_16Luxi_GMG", "rt_16Luxi_m2"];
};

["vehiclesRivalsLightArmed", _lightArmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", _vehiclesTrucks] call _fnc_saveToTemplate;
["vehiclesRivalsCars", _lightUnarmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", [
	"CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_B_Jackal2_L2A1_FIA","CUP_B_Jackal2_GMG_FIA",
	"CUP_B_BTR60_FIA"
	]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", ["CUP_I_Hilux_armored_BMP1_IND_G_F"]] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", [
    "B_Heli_Light_01_F",
    "CUP_I_UH1H_TK_GUE",
    "B_Heli_Light_01_dynamicLoadout_F"
	]] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", []] call _fnc_saveToTemplate;			

["staticLowWeapons", ["O_G_HMG_02_F"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_SPG9_AFU"]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_M252_US"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["CUP_HandGrenade_RGO","CUP_HandGrenade_M67"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["variants", [
    ["CUP_B_nM1025_SOV_M2_ION", ["MERDC_TV", 1]],
    ["CUP_B_nM1025_SOV_Mk19_ION", ["MERDC_TV", 1]],
    ["CUP_I_nM1025_M2_ION", ["MERDC_TV", 1]],
    ["CUP_I_nM1025_M240_ION", ["MERDC_TV", 1]],
    ["CUP_I_nM1025_Mk19_ION", ["MERDC_TV", 1]],

    ["CUP_B_LR_MG_CZ_W", ["GBW", 1]],
    ["CUP_O_LR_SPG9_TKA", ["GBW", 1]]
]]; call _fnc_saveToTemplate;

#include "..\NARCOS_Vehicle_Attributes.sqf"

//////////////////////////
//       Loadouts       //
//////////////////////////

private _militaryRISOptics = [
    "CUP_optic_AC11704_Black",
    "CUP_optic_Aimpoint_5000",
    "CUP_optic_G33_HWS_BLK",
    "CUP_optic_HoloBlack",
    "CUP_optic_ZeissZPoint_hex",
    "CUP_optic_Elcan_SpecterDR_coyote",
    ""
];
private _eliteRISOptics = [
    "CUP_optic_AC11704_Black",1,
    "CUP_optic_G33_HWS_BLK",1,
    "CUP_optic_ZeissZPoint_hex",1,
    "CUP_optic_Elcan_SpecterDR_coyote",1,
    "CUP_optic_Elcan_SpecterDR_KF_black",1,
    "optic_DMS",1,
    "CUP_optic_ACOG_TA648_308_RDS_Black",0.5,
    "",1
];
private _militiaRISOptics = [
    "CUP_optic_CompM2_low",1,
    "CUP_optic_CompM4",1,
	"CUP_optic_Eotech553_Black",1,
    "CUP_optic_HoloBlack",1,
    "CUP_optic_CompM2_Coyote",1,
    "",4
];
private _AKOptics = [
    "CUP_optic_1p63",1,
    "CUP_optic_PSO_3",0.1,
    "CUP_optic_OKP_7",0.8,
    "CUP_optic_Kobra",0.5,
    "CUP_optic_PSO_1_AK",0.7,
    "CUP_optic_PSO_1_1",0.2,
    "",2
];

/*
	["Weapon Classname", "Muzzle Classname", "Accessory Classname", "Scope Classname", ["Magazine Classname 1", "Magazine Classname 2"], ["GL Magazine Classname 1"], "Bipod Classname"]
*/
private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["rifles", [
    ["CUP_arifle_AKM","","","", ["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],4,
    ["CUP_arifle_M16A1","","","",["CUP_20Rnd_556x45_Stanag"],[],""],2,
    ["CUP_arifle_Galil_SAR_black","","","",["CUP_35Rnd_556x45_Galil_Mag"],[],""],2,
    ["CUP_sgun_AA12","","","",["CUP_20Rnd_B_AA12_Slug","CUP_20Rnd_B_AA12_Buck_00","CUP_20Rnd_B_AA12_Buck_0","CUP_20Rnd_B_AA12_Buck_00"],[],""],2,
    ["CUP_arifle_FNFAL5060","","","",["CUP_20Rnd_762x51_FNFAL_M"],[],""],3,
    ["CUP_arifle_FNFAL5060_railed","","",_militiaRISOptics,["CUP_30Rnd_762x51_FNFAL_M"],[],""],1,
    ["CUP_arifle_M16A2","","",_militiaRISOptics,[],[],""],1,
    ["CUP_arifle_Galil_SAR_black","","","",[],[],""],2
]];
_loadoutData set ["tunedRifles", [
    ["CUP_arifle_AK103","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,["CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],2,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],3,
    ["CUP_arifle_FNFAL_OSW_railed","","",_eliteRISOptics,["CUP_30Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_M4A1_SOMMOD_Grip_black","","CUP_acc_ANPEQ_15",_militaryRISOptics,["CUP_60Rnd_556x45_SureFire_Tracer_Green","CUP_60Rnd_556x45_SureFire"],[],""],3,
    ["CUP_arifle_AUG_A1","","","",["CUP_30Rnd_556x45_AUG"],[],""],0.5,
    ["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_60Rnd_556x45_SureFire_Tracer_Green","CUP_60Rnd_556x45_SureFire"],[],""],3,
    ["CUP_arifle_XM8_Carbine_FG_Rail_Fish","","",_eliteRISOptics,["CUP_30Rnd_556x45_XM8"],[],""],0.5
]];
_loadoutData set ["enforcerRifles", [
    ["CUP_arifle_AKMN_railed","","",_militiaRISOptics,["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],1,
    ["CUP_arifle_FNFAL5060_railed","","",_militaryRISOptics,["CUP_30Rnd_762x51_FNFAL_M"],[],""],3,
    ["CUP_arifle_Galil_SAR_black","","",_militiaRISOptics,["CUP_50Rnd_556x45_Green_Tracer_Galil_Mag","CUP_50Rnd_556x45_Galil_Mag"],[],""],2,
    ["CUP_arifle_M16A4_Grip","","",_militiaRISOptics,["CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],1
]];
_loadoutData set ["carbines", [
    ["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag"],[],""],1,
    ["CUP_Famas_F1","","","",["CUP_25Rnd_556x45_Famas"],[],""],0.1,
    ["CUP_smg_M3A1","","","",["CUP_30Rnd_45ACP_M3A1_BLK_M","CUP_30Rnd_45ACP_Green_Tracer_M3A1_GRN_M"],[],""],5,
    ["CUP_smg_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"],[],""],3,
    ["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5"],[],""],2,
    ["CUP_smg_MP5A5_Rail_VFG","","","",["CUP_30Rnd_9x19_MP5"],[],""],0.5,
    ["CUP_smg_UZI","","","",["CUP_32Rnd_9x19_UZI_M","CUP_72Rnd_9x19_UZI_M"],[],""],3
]];
_loadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],""],1,
    ["CUP_glaunch_M79","","","",["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],[],""],5,
    ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M"],[],""],2
]];
_loadoutData set ["machineGuns", [
	["CUP_arifle_RPK74","","",_AKOptics,["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],1,
	["CUP_lmg_M60","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],1,
	["CUP_lmg_FNMAG_RIS","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],2
]];
_loadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14","","","optic_DMS",["CUP_20Rnd_762x51_DMR"],[],""],2,
    ["CUP_srifle_LeeEnfield","","","CUP_optic_no23mk2",["CUP_10x_303_M"],[],""],3,
    ["CUP_srifle_CZ550","","","",["CUP_5x_22_LR_17_HMR_M"],[],""],1,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],""],1
]];
_loadoutData set ["lightATLaunchers", [
	["CUP_launch_M72A6_Special_Loaded","","","",["CUP_M72A6_M"]],2,
	["CUP_launch_RPG7V","","","",["CUP_PG7V_M","CUP_PG7VL_M","CUP_PG7VM_M","CUP_OG7_M"],[],""],1
]];
_loadoutData set ["lightHELaunchers", [
	["CUP_launch_RShG2_Loaded","","","",["CUP_RSHG2_M"]],2,
	["CUP_launch_RPG7V","","","",["CUP_TBG7V_M","CUP_OG7_M"],[],""],1
]];
_loadoutData set ["AALaunchers", [
	["CUP_launch_9K32Strela_Loaded","","","",["CUP_Strela_2_M"],[],""]
]];
_loadoutData set ["sidearms", [
    ["CUP_hgun_Glock17_blk","","","",["CUP_17Rnd_9x19_glock17"],[],""],2,
    ["CUP_hgun_PB6P9","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""],2,
    ["CUP_hgun_Compact","","","",["CUP_10Rnd_9x19_Compact"],[],""],2,
    ["CUP_hgun_TT","","","",["CUP_8Rnd_762x25_TT"],[],""],3,
    ["CUP_hgun_SWM327MP","","","",["CUP_8Rnd_357SW_M"],[],""],2,
    ["CUP_hgun_TEC9_FA","","","",["CUP_32Rnd_9x19_TEC9"],[],""],2,
    ["CUP_hgun_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M"],[],""],1
]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["IEDLandSmall_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["IEDLandBig_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_RGO","CUP_HandGrenade_M67"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData set ["facewear", ["G_Bandanna_Skull1"]];
_loadoutData set ["fullmask", ["G_Balaclava_Skull1"]];

_loadoutData set ["headgear", [
	"CUP_H_FR_BandanaWdl"
	, "CUP_H_FR_Bandana_Headset"
]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_PVS14"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", ["CUP_LRTV"]];


_loadoutData set ["uniforms", [
    "U_I_C_Soldier_Bandit_2_F"
    , "U_I_C_Soldier_Bandit_5_F"
    , "U_I_C_Soldier_Bandit_3_F"
    , "U_C_ArtTShirt_01_v6_F"
    , "U_C_Mechanic_01_F"
    , "U_C_E_LooterJacket_01_F"
]];
_loadoutData set ["heavyUniforms", [
    "U_BG_Guerilla1_1"
    , "U_BG_leader"
    , "U_I_C_Soldier_Para_5_F"
    , "U_I_C_Soldier_Para_4_F"
    , "U_I_C_Soldier_Para_2_F"
    , "U_I_C_Soldier_Para_1_F"
    , "U_I_E_Uniform_01_tanktop_F"
    , "U_I_L_Uniform_01_deserter_F"
    , "U_I_L_Uniform_01_tshirt_olive_F"
    , "U_BG_Guerilla1_2_F"
]];
_loadoutData set ["vests", [
    "CUP_V_I_RACS_Carrier_Rig_wdl_3"
    , "CUP_V_I_RACS_Carrier_Rig_3"
    , "CUP_V_B_RRV_Scout_CB"
    , "CUP_V_B_GER_Carrier_Rig_3_Brown"
    , "CUP_V_O_TK_Vest_2"
    , "V_BandollierB_khk"
    , "CUP_V_CZ_vest15"
    , "V_Pocketed_coyote_F"
    , "V_Pocketed_black_F"
    , "V_Pocketed_olive_F"
]];
_loadoutData set ["heavyVests", [
    "CUP_V_CZ_vest15"
    , "V_TacVest_camo"
    , "V_TacVest_oli"
    , "CUP_V_CZ_vest16"
    , "CUP_V_B_PASGT"
    , "CUP_V_B_PASGT_OD"
]];
_loadoutData set ["backpacks", [
    "B_AssaultPack_blk"
    , "B_AssaultPack_khk"
    , "B_AssaultPack_cbr"
    , "B_AssaultPack_rgr"
    , "B_AssaultPack_sgg"
    , "CUP_B_TacticalPack_CCE"
    , "B_TacticalPack_ocamo"
    , "CUP_B_TacticalPack_TTS"
    , "B_Kitbag_sgg"
    , "CUP_B_GER_Pack_Flecktarn"
]];
_loadoutData set ["helmets", [
    "CUP_H_HIL_HelmetACH_CCE"
    , "CUP_H_HIL_HelmetACH_ESS_TTS"
    , "CUP_H_USArmy_Helmet_ECH1_Black"
    , "CUP_H_USArmy_ECH_MARPAT"
    , "CUP_H_USArmy_Helmet_M1_btp"
    , "CUP_H_USArmy_Helmet_M1_plain_M81"
]];

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
_crewLoadoutData set ["vests", ["CUP_V_I_RACS_Carrier_Rig_wdl_3"
    , "CUP_V_I_RACS_Carrier_Rig_3"
    , "CUP_V_B_RRV_Scout_CB"
]];
_crewLoadoutData set ["helmets", ["H_Cap_oli_hs"
    , "H_Hat_Safari_olive_F"
    , "CUP_H_FR_Bandana_Headset"
    , "CUP_H_USA_Boonie_wdl"
    , "CUP_H_Booniehat_Rhodesian"
    , "CUP_H_USArmy_Boonie_hs_OCP"
]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", ["CUP_V_I_RACS_Carrier_Rig_wdl_3"
    , "CUP_V_I_RACS_Carrier_Rig_3"
    , "CUP_V_B_RRV_Scout_CB"
]];
_pilotLoadoutData set ["helmets", ["H_Cap_oli_hs"]];


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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
	[[[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
		[[[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[[[], 1.5, "facewear", 1]] call _fnc_setFacewear;
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
	[[[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
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
	[[[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
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
	[["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
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