#include "..\..\script_component.hpp"

//Posibles variantes: FIAT- Fuerza Insurgente Argentina Troska - FAP - Fuerza Armada Peroncha - OGT - Organización Gorilona Terraplanista

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "FIA - Fuerza Insurgente Argentina"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\occ-inv\arg.paa)] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "a3a_flag_FIA"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////


private _vehiclesLightUnarmed = ["I_G_Offroad_01_F"];
private _vehiclesLightArmed = ["I_G_Offroad_01_armed_F"];
private _vehiclesAT = ["I_G_Offroad_01_AT_F"];

if (isClass (configFile >> "CfgVehicles" >> "rt_16Luxi_dirty")) then {
    _vehiclesLightUnarmed append ["rt_16luxi_AFR", "rt_16luxi_ME_S"];
    _vehiclesLightArmed pushBack "rt_16Luxi_m2";
    _vehiclesAT pushBack "rt_16Luxi_at";
};

["vehiclesBasic", ["I_E_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesTruck", ["Unimog416_big"]] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAT] call _fnc_saveToTemplate;

["vehiclesAA", []] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_O_C47_SLA"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV","CUP_C_CESSNA_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["UNIMOG_MEDICO"]] call _fnc_saveToTemplate;

["vehiclesCivTruck", ["C_Truck_02_transport_F", "C_Van_02_transport_F", "C_Van_02_vehicle_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Boat_Civil_01_F", "C_Rubberboat"]] call _fnc_saveToTemplate;
["staticMGs", ["I_G_HMG_02_high_F", "I_G_HMG_02_F"]] call _fnc_saveToTemplate;

private _AT = ["B_static_AT_F"];
if (isClass (configFile >> "CfgVehicles" >> "ace_dragon_staticAssembled")) then {
    _AT = ["ace_dragon_staticAssembled"];
    };
if (isClass (configFile >> "CfgVehicles" >> "CUP_I_SPG9_TK_GUE")) then {
    _AT = ["CUP_I_SPG9_TK_GUE"];
    };
["staticAT", _AT] call _fnc_saveToTemplate;
["staticAA", ["CLV_OERLIKON"]] call _fnc_saveToTemplate;

["staticMortars", ["I_G_Mortar_01_F"]] call _fnc_saveToTemplate;
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

    "acfaa_bhipower_base",

    "sgun_HunterShotgun_01_F",
    "sgun_HunterShotgun_01_sawedoff_F",
    "prpl_benelli_14_rail",15,
    "acfaa_fmk3",5,


    "acfaa_13Rnd_9x19_Mag",
    "2Rnd_12Gauge_Pellets",
    "2Rnd_12Gauge_Slug"
    "prpl_6Rnd_12Gauge_Pellets",
    "prpl_6Rnd_12Gauge_Slug",
    "acfaa_32Rnd_9x19_FMJ_Mag",
    
    "MiniGrenade",10,"SmokeShell",15

    "B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk",
    "V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_Rangemaster_belt",
    "Binocular",

    ["IEDUrbanSmall_Remote_Mag", 20], ["IEDLandSmall_Remote_Mag", 20], ["IEDUrbanBig_Remote_Mag", 5], ["IEDLandBig_Remote_Mag", 5],

    //UNIFORMS FOR PLAYERS
    //guerrilla-summer
    , "U_I_G_resistanceLeader_F"
    , "U_I_E_Uniform_01_tanktop_F"
    , "UCAC_CAMO_OLIVA_GUE"
    , "CUP_U_CRYE_ATACSFG_Roll"
    , "CUP_U_CRYE_BLK_Roll"
    , "U_B_CTRG_Soldier_3_Arid_F"
    , "U_B_CTRG_Soldier_2_F"
    , "U_B_CTRG_Soldier_2_Arid_F"
    , "U_B_CTRG_Soldier_3_F"
    , "U_I_L_Uniform_01_deserter_F"
    , "U_BG_Guerilla1_1"
    , "U_BG_Guerilla1_2_F"
    , "U_BG_Guerilla2_2"
    , "U_BG_Guerilla2_1"
    , "U_BG_Guerilla2_3"
    , "U_BG_leader"
    , "U_I_L_Uniform_01_tshirt_olive_F"
    //guerrilla-winter
    , "U_I_E_Uniform_01_sweater_F"
    , "U_B_CTRG_Soldier_F"
    , "U_B_CTRG_Soldier_Arid_F"
    , "U_B_CTRG_Soldier_urb_1_F"
    , "U_I_L_Uniform_01_camo_F"
    , "U_BG_Guerrilla_6_1"
    , "U_BG_Guerilla3_1"
    , "U_C_HunterBody_grn"
    //Paramilitary
    , "U_I_C_Soldier_Para_2_F"
    , "U_I_C_Soldier_Para_3_F"
    , "U_I_C_Soldier_Para_5_F"
    , "U_I_C_Soldier_Para_4_F"
    , "U_I_C_Soldier_Para_1_F"
    //bandits-summer
    , "U_I_C_Soldier_Bandit_4_F"
    , "U_I_C_Soldier_Bandit_1_F"
    , "U_I_C_Soldier_Bandit_2_F"
    , "U_I_C_Soldier_Bandit_5_F"
    , "U_I_C_Soldier_Bandit_3_F"
    //military
    , "U_I_ParadeUniform_01_AAF_decorated_F"
    , "U_O_ParadeUniform_01_CSAT_decorated_F"
    , "U_I_E_ParadeUniform_01_LDF_decorated_F"
    , "U_B_ParadeUniform_01_US_decorated_F"
    , "U_I_ParadeUniform_01_AAF_F"
    , "U_O_ParadeUniform_01_CSAT_F"
    , "U_I_E_ParadeUniform_01_LDF_F"
    , "U_B_ParadeUniform_01_US_F"
    , "U_C_Paramedic_01_F"
    //worker-overalls
    , "U_C_ConstructionCoverall_Black_F"
    , "U_C_ConstructionCoverall_Blue_F"
    , "U_C_ConstructionCoverall_Red_F"
    , "U_C_ConstructionCoverall_Vrana_F"
    //idap
    ,"U_C_IDAP_Man_cargo_F"
    , "U_C_IDAP_Man_Jeans_F"
    , "U_C_IDAP_Man_casual_F"
    , "U_C_IDAP_Man_shorts_F"
    , "U_C_IDAP_Man_Tee_F"
    , "U_C_IDAP_Man_TeeShorts_F"
    //misc
    , "U_Competitor"
    , "U_C_Driver_1_black"
    , "U_C_Driver_1_blue"
    , "U_C_Driver_2"
    , "U_C_Driver_1"
    , "U_C_Driver_1_green"
    , "U_C_Driver_1_orange"
    , "U_C_Driver_1_red"
    , "U_C_Driver_3"
    , "U_C_Driver_4"
    , "U_C_Driver_1_white"
    , "U_C_Driver_1_yellow"
    , "U_C_Scientist"
    , "U_C_Uniform_Scientist_01_formal_F"
    , "U_C_Uniform_Scientist_01_F"
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
//add sawed shotgun only if found
	if (isClass (configFile >> "CfgWeapons" >> "sgun_HunterShotgun_01_sawedoff_F")) then {
	_initialRebelEquipment append ["sgun_HunterShotgun_01_sawedoff_F"]
};
//add a camera if has hate's mod
	if (isClass (configFile >> "CfgWeapons" >> "Nikon_DSLR_HUD")) then {
	_initialRebelEquipment append ["Nikon_DSLR_HUD","Nikon_DSLR"]
};
//adds ACE items

if (A3A_hasACE) then {
    _initialRebelEquipment append ["ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_SpraypaintWhite","ACE_SpraypaintYellow"
        ,"ACE_UAVBattery"
        ,"ace_flags_black"
        ,"ace_flags_blue"
        ,"ace_flags_green"
        ,"ace_flags_orange"
        ,"ace_flags_purple"
        ,"ace_flags_red"
        ,"ace_flags_white"
        ,"ace_flags_yellow"];
};

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];


["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;


//UNIFORMS//

private _rebUniforms =  [
   , "U_I_G_resistanceLeader_F"
    , "U_I_E_Uniform_01_tanktop_F"
    , "UCAC_CAMO_OLIVA_GUE"
    , "CUP_U_CRYE_ATACSFG_Roll"
    , "CUP_U_CRYE_BLK_Roll"
    , "U_B_CTRG_Soldier_3_Arid_F"
    , "U_B_CTRG_Soldier_2_F"
    , "U_B_CTRG_Soldier_2_Arid_F"
    , "U_B_CTRG_Soldier_3_F"
    , "U_I_L_Uniform_01_deserter_F"
    , "U_BG_Guerilla1_1"
    , "U_BG_Guerilla1_2_F"
    , "U_BG_Guerilla2_2"
    , "U_BG_Guerilla2_1"
    , "U_BG_Guerilla2_3"
    , "U_BG_leader"
    , "U_I_L_Uniform_01_tshirt_olive_F"
    ,"UCAC_CAMO_OLIVA_GUE"
];
if (isClass (configFile >> "CfgVehicles" >> "U_B_CombatUniform_mcam_W")) then {
    _rebUniforms append = [
    "U_B_CombatUniform_mcam_W",
    "WU_I_CombatUniform_AR",    
    "WU_B_T_Soldier_F",
    "WU_O_T_Officer_F",
    "WU_O_OfficerUniform_ocamo"];
};

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal


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
    "H_Beret_blk"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////
private _faces = [
    "PersianHead_A3_01"
    , "PersianHead_A3_02"
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
];
if (isClass (configFile >> "CfgVehicles" >> "U_B_CombatUniform_mcam_W")) then {
    _faces append = [
    "Max_faceWS1",
    "Max_faceWS10",
    "Max_faceWS2",
    "Max_faceWS3",
    "Max_faceWS4",
    "Max_faceWS6",
    "Max_faceWS9"];
};

["faces", _faces] call _fnc_saveToTemplate;

private _voices [
    "Male04GRE", "Male02FRE","Male04GRE","Male06GRE","Male01FRE","Male03FRE"
]
if ((isClass (configFile >> "CfgVehicles" >> "U_B_CombatUniform_mcam_W")) && (isClass (configFile >> "CfgVehicles" >> "CUP_D_Female01_EN"))) then {
    _voices pushBack "CUP_D_Female01_EN";
};

["voices", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set [/*"petrosuniform",*/"uniforms", _rebUniforms];

//set a red neckscarf as identifier
_loadoutData set ["facewear", [
    "G_Bandanna_blk", 
    "G_Bandanna_aviator",
    "G_Bandanna_sport"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

///////////////////////
////   INSIGNIA   ////
/////////////////////
["insignia", ["Insignia_Guerrilla"]] call _fnc_saveToTemplate;

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