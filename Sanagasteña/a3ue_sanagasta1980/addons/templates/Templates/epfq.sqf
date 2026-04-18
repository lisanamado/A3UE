#include "..\script_component.hpp"
#include "epfq_Reb_Vehicle_Attributes.sqf"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "E.P. Facundo Quiroga"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\epfq.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "quiroga_marker"] call _fnc_saveToTemplate;

private _vehiclesLightUnarmed = [];
private _vehiclesLightArmed = [];
private _vehiclesAt = [];
private _vehiclesTruck = [];
private _vehicleAA = [];

private _vehiclesMedical = ["LIB_Zis6_Parm"];

private _vehiclesCivCar = ["walker_a3_datsun_2","walker_a3_uaz_civil","walker_a3_redbike"];
if (isClass (configFile >>  "CfgVehicles" >> "Aka_2CH_civ_bleu")) then {
    _vehiclesCivCar append [
        "Aka_2CH_civ_yellow"];};
private _vehiclesCivTruck = ["LIB_Zis5v","LIB_US6_Open"];

private _vehiclesBoat = ["C_Boat_Transport_02_F"];
private _vehiclesCivBoat = ["walker_A3_smallb_f", "C_Rubberboat"];

private _vehiclesPlane = [];
private _vehiclesCivPlane = [];
private _vehiclesCivHeli = [];

private _staticAT = [];
private _staticAA = [];

["staticMortars", []] call _fnc_saveToTemplate;
["staticMortarMagHE", ""] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;
["minesAT", ["ATMine_Range_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

["vehiclesBasic", _vehiclesLightUnarmed] call _fnc_saveToTemplate;

["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;
["vehiclesTruck", _vehiclesTruck] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;

["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;

["vehiclesCivTruck", _vehiclesCivTruck] call _fnc_saveToTemplate;
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;

["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclesPlane] call _fnc_saveToTemplate;
["vehiclesCivPlane", _vehiclesCivPlane] call _fnc_saveToTemplate;

["vehiclesCivHeli", _vehiclesCivHeli] call _fnc_saveToTemplate;
["vehiclesCivBoat", _vehiclesCivBoat] call _fnc_saveToTemplate;

["staticMGs", ["LIB_M1919_M2"]] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "B_RadioBag_01_wdl_F"] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "sgun_HunterShotgun_01_F",
    "sgun_HunterShotgun_01_sawedoff_F",
    "2Rnd_12Gauge_Slug",

    "sp_fwa_m1911","sp_fwa_7Rnd_45acp_m1911","sp_fwa_7Rnd_45acp_m1911_Tracer",

    "V_LIB_DAK_SniperBelt","V_LIB_GER_SniperBelt","V_LIB_GER_TankPrivateBelt","V_LIB_SOV_RAZV_MGBelt","V_LIB_SOV_RA_SniperVest","V_LIB_SOV_RAZV_SVTBelt","V_LIB_UK_P37_Crew",

    "B_LIB_SOV_RA_Rucksack","B_LIB_SOV_RA_Rucksack_Green","B_LIB_SOV_RA_Rucksack2","B_LIB_SOV_RA_Rucksack2_Green","B_LIB_SOV_RA_Rucksack2_Shinel","B_LIB_SOV_RA_Rucksack2_Shinel_Green","B_LIB_SOV_RA_GasBag","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green","B_LIB_UK_HSack","B_LIB_UK_HSack_Blanco","B_LIB_UK_HSack_Blanco_Cape","B_LIB_UK_HSack_Tea","B_LIB_US_Bandoleer","B_simc_US_Bandoleer_flak_556_1","B_simc_US_Bandoleer_flak_556_3","B_simc_US_asspack_machete","B_simc_pack_med_m3","B_claymore_sack","B_simc_US_Bandoleer_556_1","B_simc_US_Bandoleer_556_3","B_simc_US_Bandoleer_60_L","B_simc_US_Bandoleer_60_R","B_simc_US_Bandoleer_4cm",

    ["Binocular",9],
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3]
];

if (isClass (configFile >> "CfgVehicles" >> "clv_Mate_lleno_Caliente")) then {
    _initialRebelEquipment append [
        "clv_Mate_lleno_Caliente","clv_Mate_vacio","clv_Mate_lleno_Frio","clv_mate_con_yerba"
    ];
};

if (isClass (configFile >> "CfgWeapons" >> "Nikon_DSLR_HUD")) then {
    _initialRebelEquipment append [
        "Old_Camera_Color_HUD","Old_Camera_HUD"
    ];
};

if (isClass (configFile >> "CfgWeapons" >> "ACE_SpraypaintBlack")) then {
    _initialRebelEquipment append [
        "ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_SpraypaintWhite","ACE_SpraypaintYellow",
        "ace_flags_black","ace_flags_blue","ace_flags_green","ace_flags_orange","ace_flags_purple","ace_flags_red","ace_flags_white","ace_flags_yellow",
        ["ACE_Flashlight_Maglite_ML300L",9]
    ];
};

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "U_C_E_LooterJacket_01_F",
    "U_I_L_Uniform_01_tshirt_olive_F",
    "U_BG_Guerrilla_6_1",
    "U_BG_Guerilla1_1",
    "U_BG_Guerilla3_1",
    "U_I_C_Soldier_Bandit_3_F",
    "U_I_C_Soldier_Bandit_5_F",
    "U_I_C_Soldier_Para_5_F",
    "U_Simc_OG107_tee_MC",
    "U_Simc_OG107_tee_MC_weiss",
    "U_Simc_CDO",
    "U_Simc_tuck_alt",
    "U_simc_civ_jean_VTN_sub_trop",
    "U_simc_civ_jean_VTN_sub_tuck_trop"
];          //Uniforms given to Normal Rebels

if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _rebUniforms append [
        "U_B_CombatUniform_mcam_W",
        "WU_I_CombatUniform",
        "WU_B_T_Soldier_F",
        "WU_O_OfficerUniform_ocamo",
        "WU_O_T_Officer_F",
        "WU_I_OfficerUniform"
    ];    
    _initialRebelEquipment append [
        "WU_B_GEN_Soldier_F",
        "U_B_CombatUniform_mcam_tshirt_W",
        "max_female_U",
        "WU_B_HeliPilotCoveralls",
        "ParadeUniform_03_FF",
        "ParadeUniform_02_FF",
        "ParadeUniform_01_FF",
        "WU_I_HeliPilotCoveralls"
    ];
};

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["facewear",["G_Bandanna_Syndikat2","G_Bandanna_aviator","G_Balaclava_blk","G_Aviator","None","G_Squares","G_Bandanna_khk","G_Bandanna_oli",
    "G_LIB_Dust_Goggles",
	"G_LIB_Scarf2_B",
	"G_LIB_Scarf2_G",
	"G_LIB_Scarf_B",
	"G_LIB_Scarf_G",
	"G_Anduk_1"
    ]] call _fnc_saveToTemplate;

["headgear", ["","H_HeadBandage_stained_F","H_Beret_blk","H_Hat_Safari_olive_F","H_Hat_Safari_sand_F","H_LIB_CIV_Villager_Cap_1","H_LIB_CIV_Villager_Cap_2","H_LIB_CIV_Villager_Cap_3","H_LIB_CIV_Villager_Cap_4"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
private _faces = [
    "LivonianHead_9"
    , "RussianHead_5"
    , "AsianHead_A3_07"
    , "WhiteHead_20"
    , "WhiteHead_31"
    , "Sturrock"
    , "LivonianHead_4"
    , "LivonianHead_8"
    , "WhiteHead_30"
    , "GreekHead_A3_09"
    , "PersianHead_A3_03"
    , "LivonianHead_10"
    , "WhiteHead_21"
    , "GreekHead_A3_12"
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
    ];
if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _faces append [
        "max_faceWS1","max_faceWS2","max_faceWS3"];
};

"riojanames" call _fnc_saveNames;
["faces", _faces] call _fnc_saveToTemplate;
["voices", ["Male01FRE","Male02FRE","Male03FRE","Male01GRE","Male04GRE","Male06GRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", ["facewear"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
