#include "..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "ELW"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\mapu.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "elw_marker"] call _fnc_saveToTemplate;

private _vehiclesLightUnarmed = [];
private _vehiclesLightArmed = [];
private _vehiclesAt = [];
private _vehiclesTruck = [];
private _vehicleAA = [];

private _vehiclesMedical = [];

private _vehiclesCivCar = ["walker_a3_datsun_2","Aka_2CH_civ_yellow"];
private _vehiclesCivTruck = ["C_Truck_02_transport_F"];

private _vehiclesBoat = ["C_Boat_Transport_02_F"];
private _vehiclesCivBoat = ["C_Boat_Civil_01_F", "C_Rubberboat"];

private _vehiclesPlane = [];
private _vehiclesCivPlane = [];
private _vehiclesCivHeli = [];

private _staticAT = [];
private _staticAA = [];

["staticMortars", []] call _fnc_saveToTemplate;
["staticMortarMagHE", ""] call _fnc_saveToTemplate;
["staticMortarMagSmoke", ""] call _fnc_saveToTemplate;
["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

["vehiclesBasic", []] call _fnc_saveToTemplate;

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

["staticMGs", ["O_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
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
    "2Rnd_12Gauge_Pellets",
    "2Rnd_12Gauge_Slug",

    "sp_fwa_m1911","sp_fwa_7Rnd_45acp_m1911","sp_fwa_7Rnd_45acp_m1911_Tracer",

    "V_Pocketed_coyote_F","V_Pocketed_olive_F","V_Pocketed_black_F",
    "V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","V_BandollierB_ghex_F",

    "B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli",

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
    "U_I_L_Uniform_01_camo_F",
    "U_BG_Guerrilla_6_1",
    "U_BG_Guerilla1_1",
    "U_BG_Guerilla3_1",
    "U_BG_leader",
    "U_C_HunterBody_grn"
];          //Uniforms given to Normal Rebels

if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _rebUniforms append [
        "U_B_CombatUniform_mcam_W",
        "WU_I_CombatUniform",
        "WU_B_T_Soldier_F",
        "WU_B_GEN_Commander_F",
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
        "WU_B_Wetsuit",
        "WU_B_Wetsuit2",
        "WU_I_HeliPilotCoveralls"
    ];
};

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["facewear",["G_Bandanna_Syndikat2","G_Bandanna_sport","G_Bandanna_aviator","G_Balaclava_blk","G_Aviator","G_Lady_Blue","None","G_Spectacles","G_Squares","G_Spectacles_Tinted"]] call _fnc_saveToTemplate;

["headgear", ["H_Beret_blk"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

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
    , "WhiteHead_07"];
if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _faces = [
        "max_faceWS1","max_faceWS2","max_faceWS3",
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
    ];
};

"Patagonames" call _fnc_saveNames;
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
