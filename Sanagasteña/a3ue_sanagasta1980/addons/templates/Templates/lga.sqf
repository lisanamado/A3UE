////////////////////////////
//   Rivals Information   //
///////////////////////////
#include "..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "F.A.C.O.N." ] call _fnc_saveToTemplate;
["nameLeader", "Ramón Reinafé"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
["faces", [
    "LivonianHead_9"
    , "RussianHead_5"
    , "AsianHead_A3_07"
    , "WhiteHead_20"
    , "WhiteHead_31"
    , "Sturrock"
    , "LivonianHead_4"
    , "LivonianHead_8"
    , "WhiteHead_30"
    , "TanoanHead_A3_01"
    , "GreekHead_A3_09"
    , "PersianHead_A3_03"
    , "LivonianHead_10"
    , "WhiteHead_21"
    , "GreekHead_A3_12"
    , "TanoanHead_A3_05"
    , "RussianHead_3"
    , "WhiteHead_16"
    , "PersianHead_A3_02"
    , "WhiteHead_26"
    , "GreekHead_A3_11"
    , "WhiteHead_07"
	, "LIB_Walter_IF"
    , "LIB_PersianHead_01_Dirt"
    , "LIB_GreekHead_02_Camo"
    , "LIB_AsianHead_01_Dirt"
    , "LIB_WhiteHead_20_Camo"
    , "LIB_AsianHead_03_Camo"
    , "LIB_WhiteHead_15_Dirt"
    , "LIB_WhiteHead_14_Camo"
    , "LIB_PersianHead_03_Dirt"
    , "LIB_WhiteHead_12_Camo"
    , "LIB_WhiteHead_21_Camo"
    , "LIB_WhiteHead_19_Dirt"
    , "LIB_O_Colonel_Dirt"
    , "LIB_Miller_Camo"
    , "LIB_WhiteHead_11_Dirt"
    , "LIB_WhiteHead_16_Dirt"
    , "LIB_WhiteHead_09_Dirt"
    , "LIB_WhiteHead_08_Dirt"
    , "LIB_WhiteHead_07_Camo"
    , "LIB_Kerry_Camo"
    , "LIB_WhiteHead_06_Camo"
    , "LIB_WhiteHead_03_Dirt"
    , "LIB_WhiteHead_05_Dirt"
    , "LIB_WhiteHead_18_Camo"
    , "LIB_WhiteHead_02_Camo"
    , "LIB_Otto_IF"
    , "LIB_aleksei_IF"
	]] call _fnc_saveToTemplate;
["voices", ["Male01FRE","Male03FRE","Male02FRE"]] call _fnc_saveToTemplate;
"riojanames" call _fnc_saveNames;
#include "arsenal.sqf"

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", [
    "UNI_UK_Willys_MB_M1919_D",
    "LIB_UK_DR_Willys_MB_M1919",
    "LIB_UK_Willys_MB_M1919"
]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", [
    "walker_a3_apextruckOV"
]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", [
	"walker_a3_datsun_1"
	,"walker_a3_datsun_3"
	,"walker_a3_datsun_4"
	,"walker_a3_c_landrover"
	,"walker_a3_uaz"
	,"LandRover_TK_CIV_EP1"
	,"LIB_Willys_MB"
	,"LIB_Willys_MB_Hood"
	,"UNI_UK_Willys_MB_D"
	,"LIB_UK_DR_Willys_MB_Hood"
]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", []] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", []] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", []] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", []] call _fnc_saveToTemplate;			

["staticLowWeapons", ["LIB_M1919_M2","O_G_HMG_02_F","O_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", []] call _fnc_saveToTemplate;
["staticMortars", []] call _fnc_saveToTemplate;

["mortarMagazineHE", ""] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["LIB_F1"]] call _fnc_saveToTemplate;
["mortarAmmo", []] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

/*
	["Weapon Classname", "Muzzle Classname", "Accessory Classname", "Scope Classname", ["Magazine Classname 1", "Magazine Classname 2"], ["GL Magazine Classname 1"], "Bipod Classname"]
*/
private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["rifles", [_escopeta,_carcano,_mini14,_enfield,_mauser,_springfield,_m1garand]];
_loadoutData set ["tunedRifles", [_m1garandS,_m1S,_mauser,_carcano]];
_loadoutData set ["enforcerRifles", [_m2P,_m2S,_m1C,_m1S,_mini14,_recortada]];
_loadoutData set ["carbines", [_recortada,_tommy,_CHIsterling15,_CHIsterling32,_CHIsterlingMADERAIL15,_CHIsterlingMADERAIL32]];
_loadoutData set ["grenadeLaunchers", [_m1GL,_m2GL,_springfieldGL]];
_loadoutData set ["machineGuns", [_browning50b
	,["sp_fwa_aa52", "", "sp_fwa_acc_machinegun_linkhide", "", ["sp_fwa_50Rnd_765_french_mag_turret","sp_fwa_50Rnd_765_french_mag","sp_fwa_50Rnd_765_french_mag_ball"], [], ""]
	,["sp_fwa_fm2429", "", "", "", ["sp_fwa_25Rnd_75x54_fm2429_Tracer"], [], ""]
]];
_loadoutData set ["marksmanRifles", [_mauserS,_springfieldS]];
_loadoutData set ["lightATLaunchers",[
	["LIB_M1A1_Bazooka", "", "", "", ["LIB_1Rnd_60mm_M6"], [], ""]
]];
_loadoutData set ["lightHELaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", _fwPistols];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["IEDLandSmall_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["IEDLandBig_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["LIB_F1","ACE_M14","LIB_M39","LIB_US_Mk_2","LIB_No82","LIB_Rg42"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData set ["facewear", [
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_shades",
	"G_Bandanna_blk",
	"G_LIB_Binoculars",
	"G_LIB_Dust_Goggles",
	"G_LIB_Scarf2_B",
	"G_LIB_Scarf2_G",
	"G_LIB_Scarf_B",
	"G_LIB_Scarf_G",
	"G_Anduk_1"
]];
_loadoutData set ["fullmask", []];

_loadoutData set ["headgear", [
    "H_Bandanna_cbr",
    "H_Bandanna_camo",
    "H_Bandanna_khk",
    "H_Booniehat_tan",
	"H_HeadBandage_stained_F",
"","H_Beret_blk","H_Hat_Safari_olive_F","H_Hat_Safari_sand_F","H_LIB_CIV_Villager_Cap_1","H_LIB_CIV_Villager_Cap_2","H_LIB_CIV_Villager_Cap_3","H_LIB_CIV_Villager_Cap_4"
]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", []];
_loadoutData set ["NVGs", ["LIB_GER_Gloves4","LIB_GER_Gloves2","LIB_GER_Gloves3","LIB_Headwrap","LIB_Headwrap_gloves","claysac_flak_addon","nomex_1_fold_addon","nomex_2_fold_addon","nomex_3_addon","illegal_canteen_addon","sns_hair","bandolier_556_addon_low","m60_band_addon_R","botol_regt_addon","anduk_1_addon","anduk_2_addon"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", []];


_loadoutData set ["uniforms", [
    "U_LIB_CIV_Villager_1"
	,"U_LIB_CIV_Villager_4"
	,"U_LIB_CIV_Villager_2"
	,"U_LIB_CIV_Villager_3"
	,"U_LIB_CIV_Woodlander_1"
	,"U_LIB_CIV_Woodlander_2"
	,"U_LIB_CIV_Woodlander_3"
	,"U_LIB_CIV_Woodlander_4"
	,"U_LIB_CIV_Worker_3"
	,"U_LIB_CIV_Worker_4"
	,"U_LIB_CIV_Worker_1"
	,"U_LIB_CIV_Worker_2"
    ,"U_LIB_CIV_Assistant"
    ,"U_LIB_CIV_Citizen_1"
    ,"U_LIB_CIV_Citizen_2"
    ,"U_LIB_CIV_Citizen_3"
    ,"U_LIB_CIV_Citizen_4"
    ,"U_LIB_CIV_Citizen_5"
    ,"U_LIB_CIV_Citizen_6"
    ,"U_LIB_CIV_Citizen_7"
    ,"U_LIB_CIV_Citizen_8"
    ,"U_LIB_CIV_Functionary_4"
    ,"U_LIB_CIV_Functionary_2",
    "U_simc_civ_jean_blau_dunkel_tuck_trop",
    "U_simc_civ_jean_blau_tuck_trop",
    "U_simc_civ_jean_blau_dunkel",
    "U_simc_civ_jean_blau_dunkel_tuck",
    "U_simc_civ_jean_blau",
    "U_simc_civ_jean_blau_tuck",
    "U_simc_civ_jean_grun",
    "U_simc_civ_jean_grun_tuck",
    "U_simc_civ_jean_rot",
    "U_simc_civ_jean_rot_ligt_tuck",
    "U_simc_civ_jean_rot_tuck",
    "U_simc_civ_jean_rot_tuck_trop",
    "U_simc_civ_jean_weiss",
    "U_simc_civ_jean_weiss_dunkel",
    "U_simc_civ_jean_weiss_dunkel_tuck",
    "U_simc_civ_jean_weiss_tuck",
    "U_simc_civ_jean_khk",
    "U_simc_civ_jean_khk_tuck",
    "U_simc_swetr1_felix_trop",
    "U_simc_swetr1_trop",
    "U_simc_swetr1_amogus",
    "U_simc_swetr1_ua",
    "U_simc_swetr1_ninamori_trop",
    "U_simc_swetr1_suka_trop",
    "U_simc_swetr1_simc",
    "U_simc_swetr1_simc_trop",
    "U_simc_surf",
    "U_Simc_vc_black_1",
    "U_Simc_vc_black_1_trop",
    "U_Simc_vc_black_2_trop",
    "U_Simc_vc_blau_1",
    "U_Simc_vc_blau_1_trop",
    "U_Simc_vc_blau_2",
    "U_Simc_vc_blau_2_trop"
    ,"U_C_Poloshirt_blue"
    ,"U_C_Poloshirt_salmon"
    ,"U_C_Poloshirt_stripped"
    ,"U_BG_Guerilla3_1"
    ,"U_Marshal"
    ,"U_I_C_Soldier_Bandit_4_F"
    ,"U_I_C_Soldier_Bandit_1_F"
    ,"U_I_C_Soldier_Bandit_3_F"
    ,"U_C_Man_casual_3_F"
    ,"U_C_Uniform_Farmer_01_F"
]];
_loadoutData set ["heavyUniforms", [
	"sns_m58_uniform",
	"sns_m58_vis_uniform",
	"U_Simc_SF_TS_jean",
	"U_Simc_regenkot",
	"U_I_C_Soldier_Para_5_F"
]];

_loadoutData set ["offuniforms", ["sns_m58_vis_uniform"]];
_loadoutData set ["vests", ["V_LIB_DAK_SniperBelt","V_LIB_GER_SniperBelt","V_LIB_GER_TankPrivateBelt","V_LIB_SOV_RAZV_MGBelt","V_LIB_SOV_RA_SniperVest","V_LIB_SOV_RAZV_SVTBelt","V_LIB_UK_P37_Crew"]];
_loadoutData set ["heavyVests", ["V_LIB_UK_P37_Holster_Blanco","V_LIB_UK_P37_Rifleman_Blanco","V_LIB_UK_P37_Heavy_Blanco","V_LIB_UK_P37_Officer_Blanco","V_LIB_US_AB_Vest_Bar"]];
_loadoutData set ["backpacks", ["B_LIB_GER_Backpack","B_LIB_GER_Tonister34_cowhide","B_LIB_UK_HSack_Blanco","B_LIB_US_Backpack","B_LIB_US_Backpack_Mk2","B_LIB_SOV_RA_Rucksack","B_LIB_SOV_RA_Rucksack_Green","B_LIB_SOV_RA_Rucksack2","B_LIB_SOV_RA_Rucksack2_Green","B_LIB_SOV_RA_Rucksack2_Shinel","B_LIB_SOV_RA_Rucksack2_Shinel_Green","B_LIB_SOV_RA_GasBag","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green","B_LIB_UK_HSack","B_LIB_UK_HSack_Blanco","B_LIB_UK_HSack_Blanco_Cape","B_LIB_UK_HSack_Tea","B_LIB_US_Bandoleer"]];
_loadoutData set ["helmets", []];
_loadoutData set ["crewHelmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData set ["items_squadleader_extras", []];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", []];
_loadoutData set ["items_engineer_extras", []];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", []];
_loadoutData set ["items_sniper_extras", []];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", ["V_BandollierB_oli"]];
_crewLoadoutData set ["helmets", ["H_Tank_black_F"]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", ["V_BandollierB_oli"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_O"]];


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