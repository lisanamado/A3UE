//This is my previous BLN faction adapted to standard rebel equipment,
//similar to the ones you'll get in regular Antistasi Ultimate rebel factions

//It's meant to be a latin-american civilian-in-arms faction,
//including female soldiers, spanish radio voiceovers, and a really basic initial arsenal.
//It is not possible to assign bodies and faces in two sepparate classes, so female and male bodies and heads are going to mix
//I've chosen bodies and jackets trying to make this not to obvious. Think of them as strong women and slim man. Or just transgender people, use your imagination :D.


#include "..\..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BLN (standard version)"] call _fnc_saveToTemplate;

["flag", "Flag_BLNe"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BLN\oktubre.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_BLN"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////


["vehiclesBasic", ["I_E_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_I_Hilux_armored_unarmed_NAPA"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_O_Hilux_armored_M2_TK_INS"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_V3S_Open_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_O_Hilux_armored_SPG9_TK_INS"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_O_Hilux_armored_zu23_TK_INS", "CUP_I_Datsun_AA_Random"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_C_DC3_CIV"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_B_LR_Ambulance_CZ_D"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_O_Hilux_unarmed_CR_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412", "CUP_C_Mi17_Civilian_RU","CUP_C_Merlin_HC3_CIV_Lux"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["CUP_C_Fishing_Boat_Chernarus"]] call _fnc_saveToTemplate;

["staticMGs", ["O_G_HMG_02_high_F", "O_G_HMG_02_F"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_I_SPG9_NAPA"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_I_2b14_82mm_NAPA"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate; //this line determines explosives needed for breaching Tanks -- Example: [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] -- Array, can use Multiple

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////


["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "B_RadioBag_01_wdl_F"] call _fnc_saveToTemplate;

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
//I made this values higher
["animations", [
    ["vehClass", ["animsource_example_1", 0.5, "animsource_example_2", 0.75]]
]] call _fnc_saveToTemplate;

["variants", [
    ["CUP_B_AC47_Spooky_USA", ["SLAWoodland",1]]
]] call _fnc_saveToTemplate;


///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [

    "CUP_hgun_TaurusTracker455",
    "CUP_hgun_TT",

    "CUP_sgun_CZ584",
    "sgun_HunterShotgun_01_sawedoff_F",

    "CUP_sgun_slamfire",
    "CUP_srifle_Mosin_Nagant",
    "CUP_srifle_LeeEnfield",
    "CUP_srifle_LeeEnfield_rail",

    "CUP_smg_M3A1_blk",

    ["CUP_launch_M72A6_Special", 50],

    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", 
    "CUP_1Rnd_12Gauge_Pellets_No3_Buck", 
    "CUP_6Rnd_45ACP_M", 
    "CUP_1Rnd_762x51_CZ584",
    "CUP_2Rnd_12Gauge_Pellets_No0_Buck",
    "CUP_5Rnd_762x54_Mosin_M",
    "CUP_10x_303_M",
    "CUP_6Rnd_762x51_R700",
    "CUP_30Rnd_45ACP_M3A1_BLK_M",
    "CUP_8Rnd_762x25_TT",

    "CUP_HandGrenade_RGD5", "SmokeShell",

    ["IEDUrbanSmall_Remote_Mag", 10], 
    ["IEDLandSmall_Remote_Mag", 10], 
    ["IEDUrbanBig_Remote_Mag", 3], 
    ["IEDLandBig_Remote_Mag", 3],

    //I preferred jackets over vests to dissemble the bodies unmatching faces. They should look light, as for tropical climate
    "CUP_V_OI_TKI_Jacket2_02", 
    "CUP_V_OI_TKI_Jacket2_03", 
    "CUP_V_OI_TKI_Jacket2_01", 
    "CUP_V_OI_TKI_Jacket3_04", 
    "CUP_V_OI_TKI_Jacket3_02", 
    "CUP_V_OI_TKI_Jacket3_03", 
    "CUP_V_OI_TKI_Jacket3_05",
    "CUP_V_OI_TKI_Jacket3_06", 
    "CUP_V_OI_TKI_Jacket3_01",

    "B_FieldPack_cbr", 
    "B_FieldPack_khk", 
    "B_FieldPack_oli", 
    "B_AssaultPack_cbr",
    "B_AssaultPack_rgr",
    "B_AssaultPack_khk",

    "Binocular"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr", "tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "tf_anprc155";
    _initialRebelEquipment pushBack "tf_anprc155_coyote";
};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr", "TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {
    _initialRebelEquipment pushBack "TFAR_anprc155";
    _initialRebelEquipment pushBack "TFAR_anprc155_coyote";
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;


//UNIFORMS

private _rebUniforms =  [
// female uniforms:
    "U_B_CombatUniform_mcam_W",
    "WU_I_CombatUniform_AR",    
    "U_B_CombatUniform_mcam_tshirt_W",
    "WU_B_T_Soldier_AR_F",
    "WU_B_T_Soldier_F",
    "WU_B_HeliPilotCoveralls",
// male uniforms:
    "U_BG_Guerrilla_6_1",
    "CUP_I_B_PARA_unit_3",
    "CUP_I_B_PARA_unit_6",
    "CUP_I_B_PARA_unit_14",
    "CUP_I_B_PARA_unit_5"
];          

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal



//HEADGEAR

["headgear", [
    "CUP_H_Booniehat_CCE",
    "CUP_H_Booniehat_Rodhesian",
    "CUP_H_SLA_Boonie",
    "CUP_H_C_Beret_01",
    "CUP_H_C_Beret_02",
    "H_ShemagOpen_tan",
    "H_Bandanna_sgg",
    "H_Cap_grn",
    "H_Beret_blk",
    "CUP_H_ChDKZ_Beret",
    ""

]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

//I added english female voice, spanish voice, and male greek English voices.
//They seem to work or not as they please, got to investigate on it

["faces", [
    
    "Max_faceWS1",
    "Max_faceWS10",
    "Max_faceWS2",
    "Max_faceWS3",
    "Max_faceWS4",
    "Max_faceWS6",
    "Max_faceWS9",
    "PersianHead_A3_01",
    "PersianHead_A3_02",
    "AfricanHead_01",
    "AfricanHead_03",
    "AsianHead_A3_03",
    "WhiteHead_20",
    "WhiteHead_02"

]] call _fnc_saveToTemplate;
["voices", ["cup_d_female01_en", "MALEO1ESPA", "male06gre"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

//set a red neckscarf as identifier
_loadoutData set ["facewear", [
     "CUP_FR_NeckScarf5", 
    "CUP_G_Scarf_Face_Red"
]];

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