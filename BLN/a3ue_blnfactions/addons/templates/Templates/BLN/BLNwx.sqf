//This is my previous BLN faction with extra rebel equipment than the usual rebels, for an easier start

//It's meant to be a latin-american civilian-in-arms faction,
//including female soldiers, spanish radio voiceovers, and a really basic initial arsenal.
//It is not possible to assign bodies and faces in two sepparate classes, so female and male bodies and heads are going to mix
//I've chosen bodies and jackets trying to make this not to obvious. Think of them as strong women and slim man. Or just transgender people, use your imagination :D.


#include "..\..\script_component.hpp"

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BLN"] call _fnc_saveToTemplate;

["flag", "Flag_BLNwx"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BLN\BLNfB.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "flag_FIA"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

//check how vehicles work, I'll probably change the HIL vics

["vehiclesBasic", ["I_E_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_B_LR_Transport_CZ_W"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["a3u_cup_lr_mg_wl"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["a3u_cup_mtvr_wl"]] call _fnc_saveToTemplate;
["vehiclesAT", ["a3u_cup_m1036_tow_olive"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_B_M163_Vulcan_USA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_I_CESSNA_T41_ARMED_RACS","CUP_O_C47_SLA"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["a3u_cup_cessna"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_B_LR_Ambulance_CZ_D"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_C_LR_Transport_CTK"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["C_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["CUP_C_Fishing_Boat_Chernarus"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_US", "CUP_B_M2StaticMG_MiniTripod_US"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_TOW_TriPod_US"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_B_CUP_Stinger_AA_pod_US"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_B_L16A2_BAF_WDL"]] call _fnc_saveToTemplate;
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


///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [

    "CUP_hgun_Glock17_blk",
    "CUP_hgun_M9",

    "CUP_sgun_CZ584",
    "sgun_HunterShotgun_01_sawedoff_F",
    
    "CUP_arifle_FNFAL5061_wooden",
    "CUP_arifle_XM16E1",
    "CUP_srifle_M14",
    "CUP_srifle_LeeEnfield",
    "CUP_srifle_LeeEnfield_rail",

    "CUP_smg_M3A1_blk",
    "CUP_smg_Mac10",

    ["CUP_launch_M72A6_Special", 50],
    ["CUP_launch_FIM92Stinger", 5],

    "CUP_17Rnd_9x19_glock17",
    "CUP_15Rnd_9x19_M9",

    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", 
    "CUP_1Rnd_12Gauge_Pellets_No3_Buck", 
    "CUP_1Rnd_762x51_CZ584",
    "CUP_2Rnd_12Gauge_Pellets_No0_Buck",

    "CUP_10Rnd_762x51_FNFAL_M",
    "CUP_20Rnd_556x45_Stanag",
    "10Rnd_Mk14_762x51_Mag",

    "CUP_10x_303_M",
    "CUP_30Rnd_45ACP_M3A1_BLK_M",
    "CUP_30Rnd_45ACP_MAC10_M",
    "CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",

    "CUP_HandGrenade_M67", "SmokeShell",
    
    ["IEDUrbanSmall_Remote_Mag", 10], 
    ["IEDLandSmall_Remote_Mag", 10], 

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
    "CUP_B_HikingPack_Civ",

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

//experimental: add sawed shotgun only if found
	if (isClass (configFile >> "CfgWeapons" >> "sgun_HunterShotgun_01_sawedoff_F")) then {
	_initialRebelEquipment append ["sgun_HunterShotgun_01_sawedoff_F"]
};
//add a camera if has hate's mod
	if (isClass (configFile >> "CfgWeapons" >> "Nikon_DSLR_HUD")) then {
	_initialRebelEquipment append ["Nikon_DSLR_HUD","Nikon_DSLR"]
};
//add spraypaint if using ACE
	if (isClass (configFile >> "CfgWeapons" >> "ACE_SpraypaintBlack")) then {
	_initialRebelEquipment append ["ACE_SpraypaintBlack"]
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;


//UNIFORMS

private _rebUniforms =  [
    "U_BG_Guerrilla_6_1",
    "CUP_I_B_PARA_Unit_3",
    "CUP_I_B_PARA_Unit_10",
    "CUP_I_B_PARA_Unit_9",
    "CUP_I_B_PARA_Unit_15",

    "U_B_CombatUniform_mcam_W",
    "WU_I_CombatUniform_AR",    
    "WU_B_T_Soldier_F",
    "WU_O_T_Officer_F",
    "WU_O_OfficerUniform_ocamo"
];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

//HEADGEAR

["headgear", [
    "CUP_H_Booniehat_CCE",
    "CUP_H_Booniehat_TTS",
    "CUP_H_USMC_BOONIE_WDL",
    "CUP_H_SLA_Boonie",
    "CUP_H_C_Beret_01",
    "CUP_H_C_Beret_02",
    "H_ShemagOpen_tan",
    "H_Bandanna_sgg",
    "H_Cap_grn",
    "H_Beret_blk",
    ""
]] call _fnc_saveToTemplate;

/*//Special outfit for Petros
["Puniform", ["U_I_L_Uniform_01_camo_F"]] call _fnc_saveToTemplate;
["Pheadgear", ["CUP_H_ChDKZ_Beret"]] call _fnc_saveToTemplate;
*/
///////////////////////
////   INSIGNIA   ////
/////////////////////
["insignia", ["BLN"]] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

//I added english female voice, spanish voice, and male greek English voices.

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

/*private _PetrosTemplate = {
    ["uniform"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;
    ["headgear"] call _fnc_setHeadgear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};*/

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