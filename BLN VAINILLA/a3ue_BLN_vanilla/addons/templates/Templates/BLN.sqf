#include "..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BLN"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\BLNf.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "BLN_marker"] call _fnc_saveToTemplate;

private _vehiclesLightUnarmed = ["I_G_Offroad_01_F"];
private _vehiclesLightArmed = ["I_G_Offroad_01_armed_F"];
private _vehiclesAt = ["I_G_Offroad_01_AT_F"];
private _vehiclesTruck = ["I_G_Van_01_transport_F"];
private _vehicleAA = [];

private _vehiclesMedical = ["a3a_Van_02_black_medevac_F"];

private _vehiclesCivCar = ["C_Offroad_01_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_SUV_01_F"];
private _vehiclesCivTruck = ["C_Truck_02_transport_F","C_Van_01_transport_F"];

private _vehiclesBoat = ["C_Boat_Transport_02_F"];
private _vehiclesCivBoat = ["C_Boat_Civil_01_F", "C_Rubberboat"];

private _vehiclesPlane = ["I_C_Plane_Civil_01_F"];
private _vehiclesCivPlane = [];
private _vehiclesCivHeli = ["C_Heli_Light_01_civil_F"];

private _staticAT = ["I_static_AT_F"];
private _staticAA = ["I_static_AA_F"];

["staticMortars", ["I_G_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

if (_hasApex) then {
    _vehiclesCivCar pushBack "C_Offroad_02_unarmed_F";
    _vehiclesLightUnarmed pushBack "I_C_Offroad_02_unarmed_F";
    _vehiclesLightArmed pushBack "I_C_Offroad_02_LMG_F";
    _vehiclesAt pushBack "I_C_Offroad_02_AT_F";
};

if (_hasWs) then {
  _vehicleAA append ["I_Tura_Truck_02_aa_lxWS"];
  _staticAA = ["I_Tura_ZU23_lxWS"];
};

//NOT WORKING
if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesLightUnarmed = ["walker_a3_datsun_1","walker_a3_hilux_1"];
    _vehiclesLightArmed = ["walker_a3_hiluxhmg_1"];
    _vehiclesCivCar = ["walker_a3_uaz_civil","walker_a3_skodovka","walker_a3_gazblue","walker_a3_datsun","walker_a3_v_hilux"];
    _vehiclesMedical = ["walker_a3_s1203amb"];
    _vehiclesCivBoat pushBack "walker_A3_smallb_f";
};

if (isClass (configFile >> "CfgVehicles" >> "ace_dragon_staticAssembled")) then {
    _staticAT = ["ace_dragon_staticAssembled"];
};

if (isClass (configFile >> "CfgVehicles" >> "CLV_OERLIKON")) then {
     _staticAA = ["CLV_OERLIKON"];
};

if (isClass (configFile >> "CfgVehicles" >> "sab_c2a_1_2")) then {
    _vehiclesPlane pushBack "sab_c2a_1_2";
};

if (isClass (configFile >> "CfgVehicles" >> "CUP_I_Hilux_armored_unarmed_NAPA")) then {
    _vehiclesLightUnarmed = ["CUP_I_Hilux_armored_unarmed_NAPA"];
    _vehiclesLightArmed = ["CUP_O_Hilux_armored_M2_TK_INS","CUP_I_Datsun_PK"];
    _vehiclesAt = ["CUP_O_Hilux_armored_SPG9_TK_INS"];
    _vehicleAA = ["CUP_O_Hilux_armored_zu23_TK_INS"];
    _vehiclesTruck = ["CUP_V3S_Open_NAPA"];
    _vehiclesMedical = ["CUP_B_UAZ_AMB_AFU"];
    _vehiclesCivTruck = ["CUP_C_Ural_Civ_03"];
    _vehiclesCivCar = ["CUP_C_Skoda_CR_CIV","CUP_C_Datsun","CUP_O_Hilux_unarmed_CR_CIV"];
    _vehiclesPlane = ["CUP_O_C47_SLA"];
    _vehiclesCivPlane append ["CUP_C_AN2_CIV","CUP_C_CESSNA_CIV"];
    _vehiclesCivHeli append ["CUP_C_412","CUP_I_Merlin_HC3_PMC_Lux_3C"];
    _vehiclesCivBoat pushBack "CUP_C_Fishing_Boat_Chernarus";
    _staticAT = ["CUP_I_SPG9_TK_GUE"];
    _staticAA = ["CUP_I_ZU23_TK_GUE"];
};

["vehiclesBasic", ["I_G_Quadbike_01_F"]] call _fnc_saveToTemplate;

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

["staticMGs", ["I_G_HMG_02_high_F", "I_G_HMG_02_F"]] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;

#include "BLN_Reb_Vehicle_Attributes.sqf"

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "B_RadioBag_01_wdl_F"] call _fnc_saveToTemplate;

//classname, price, type, availability condition
private _shopWs = if (_hasWs) then {
    [
        ["I_UAV_02_lxWS", 3500, "UAV", {tierWar > 2}], 
        ["I_G_UAV_02_IED_lxWS", 4500, "UAV", {tierWar > 3}],
        ["I_G_Offroad_01_armor_base_lxWS", 4500, "UNARMEDCAR", {true}],
        ["I_G_Offroad_01_armor_armed_lxWS", 4500, "ARMEDCAR", {true}],
        ["I_G_Offroad_01_armor_AT_lxWS", 4500, "ARMEDCAR", {true}]
    ]
} else {
    []
};

private _vehiclesBlackMarket = _shopWs + [
    ["I_UAV_01_F", 2000, "UAV", {true}],
    ["I_LT_01_AA_F", 7500, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["I_APC_Wheeled_03_cannon_F", 15000, "APC", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],
    ["B_Heli_Light_01_dynamicLoadout_F", 25000, "HELI", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}]
];
["blackMarketStock", _vehiclesBlackMarket] call _fnc_saveToTemplate;

["variants", [
    ["I_APC_Wheeled_03_cannon_F", ["Guerilla_01",1]],
    ["I_LT_01_AA_F", ["Indep_Olive",1]]
]] call _fnc_saveToTemplate;


///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    ["sgun_HunterShotgun_01_F", 54],
    ["sgun_HunterShotgun_01_sawedoff_F", 42],
    ["2Rnd_12Gauge_Pellets",321],
    ["2Rnd_12Gauge_Slug",48],

    ["hgun_Pistol_heavy_02_F",4],["6Rnd_45ACP_Cylinder",131],

    ["hgun_Pistol_Signal_F",3],["6Rnd_RedSignal_F",15],

    ["V_Pocketed_coyote_F",62],["V_Pocketed_olive_F",48],["V_Pocketed_black_F",71],
    ["V_BandollierB_blk",35],["V_BandollierB_cbr",51],["V_BandollierB_khk",84],["V_BandollierB_oli",56],["V_BandollierB_rgr",24],["V_BandollierB_ghex_F",12],

    ["B_FieldPack_cbr",56],["B_FieldPack_khk",28],["B_FieldPack_oli", 74],

    ["Binocular",33],
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    ["acc_flashlight",22],["acc_flashlight_smg_01",16],["acc_flashlight_pistol",21]
];

if (isClass (configFile >> "CfgWeapons" >> "sp_fwa_l9a1_hipower")) then {
    _initialRebelEquipment append [
        ["sp_fwa_m1911",11],["sp_fwa_7Rnd_45acp_m1911",219],["sp_fwa_7Rnd_45acp_m1911_Tracer",134],
        ["sp_fwa_smg_mk7a4sterling",2],["sp_fwa_15Rnd_9x19_L2A3_Sterling",283],
        ["sp_fwa_smg_sten_mk2",1],["sp_fwa_32Rnd_9x19_sten",245],
        ["sp_fwa_enfield_no5",1],["sp_fwa_10Rnd_303_No4",71],
        ["sp_fwa_m38_carcano",4],["sp_fwa_6Rnd_65carcano_m38",246],
        ["sp_fwa_smg_thompson_m1a1",1],["sp_fwa_20Rnd_45acp_thompson_m1a1_Tracer",95]
    ];
};

if (isClass (configFile >> "CfgWeapons" >> "CUP_hgun_TaurusTracker455")) then {
    _initialRebelEquipment append [
    "CUP_sgun_CZ584",
    ["CUP_srifle_Remington700", 5],
    ["CUP_srifle_CZ550", 1],

    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", 
    "CUP_1Rnd_12Gauge_Pellets_No3_Buck", 
    "CUP_5x_22_LR_17_HMR_M",
    "CUP_6Rnd_45ACP_M", 
    "CUP_1Rnd_762x51_CZ584",
    "CUP_2Rnd_12Gauge_Pellets_No0_Buck",
    "CUP_6Rnd_762x51_R700",

    "CUP_V_OI_TKI_Jacket2_02", 
    "CUP_V_OI_TKI_Jacket2_03", 
    "CUP_V_OI_TKI_Jacket2_01", 
    "CUP_V_OI_TKI_Jacket3_04", 
    "CUP_V_OI_TKI_Jacket3_02", 
    "CUP_V_OI_TKI_Jacket3_03", 
    "CUP_V_OI_TKI_Jacket3_05",
    "CUP_V_OI_TKI_Jacket3_06", 
    "CUP_V_OI_TKI_Jacket3_01",

    "CUP_B_AlicePack_Khaki", 
    "CUP_B_AlicePack_OD", 
    "CUP_B_CivPack_WDL", 
    "CUP_B_HikingPack_Civ",

   "CUP_acc_Zenit_2DS"

    //UNIFORMS FOR PLAYERS
    //guerrilla-summer
    , "U_I_G_resistanceLeader_F"
    , "U_I_E_Uniform_01_tanktop_F"
    , "CUP_U_CRYE_BLK_Full"
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
    , "CUP_U_I_GUE_Woodland1"
    , "CUP_U_I_GUE_Flecktarn"
    //guerrilla-winter
    , "CUP_U_O_CHDKZ_Bardak"
    , "U_I_E_Uniform_01_sweater_F"
    , "CUP_U_CRYE_ATACSAU_Full"
    , "CUP_U_CRYE_ATACSFG_Full"
    , "CUP_U_CRYE_BLK_Full"
    , "U_B_CTRG_Soldier_F"
    , "U_B_CTRG_Soldier_Arid_F"
    , "U_B_CTRG_Soldier_urb_1_F"
    , "U_I_L_Uniform_01_camo_F"
    , "U_BG_Guerrilla_6_1"
    , "U_BG_Guerilla3_1"
    , "U_C_HunterBody_grn"
    , "CUP_U_I_GUE_Anorak_01"
    , "CUP_U_I_GUE_Anorak_03"
    , "CUP_U_I_GUE_Anorak_02"
    , "CUP_U_I_GUE_WorkU_01"
    , "CUP_U_I_GUE_WorkU_02"
    , "CUP_U_I_GUE_Flecktarn2"
    , "CUP_U_I_GUE_Flecktarn3"
    , "CUP_U_I_GUE_Flecktarn4"
    , "CUP_U_C_Woodlander_03"
    , "CUP_U_C_Woodlander_04"
    //Paramilitary
    , "CUP_I_B_PARA_Unit_2"
    , "CUP_I_B_PARA_Unit_4"
    , "CUP_I_B_PARA_Unit_5"
    , "CUP_I_B_PARA_Unit_6"
    , "CUP_I_B_PARA_Unit_7"
    , "CUP_I_B_PARA_Unit_8"
    , "CUP_I_B_PARA_Unit_11"
    , "CUP_I_B_PARA_Unit_12"
    , "CUP_I_B_PARA_Unit_13"
    , "CUP_I_B_PARA_Unit_14"
    , "U_I_C_Soldier_Para_2_F"
    , "U_I_C_Soldier_Para_3_F"
    , "U_I_C_Soldier_Para_5_F"
    , "U_I_C_Soldier_Para_4_F"
    , "U_I_C_Soldier_Para_1_F"
    //Partisans
    , "CUP_U_O_Partisan_TTsKO"
    , "CUP_U_O_Partisan_TTsKO_Mixed"
    , "CUP_U_O_Partisan_VSR_Mixed1"
    , "CUP_U_O_Partisan_VSR_Mixed2"
    //bandits-summer
    , "U_I_C_Soldier_Bandit_4_F"
    , "U_I_C_Soldier_Bandit_1_F"
    , "U_I_C_Soldier_Bandit_2_F"
    , "U_I_C_Soldier_Bandit_5_F"
    , "U_I_C_Soldier_Bandit_3_F"
    //military
    , "CUP_U_USNavy_LHD_crew_Blue"
    , "CUP_U_USNavy_LHD_crew_Brown"
    , "CUP_U_USNavy_LHD_crew_Green"
    , "CUP_U_USNavy_LHD_crew_Red"
    , "CUP_U_USNavy_LHD_crew_Violet"
    , "CUP_U_USNavy_LHD_crew_White"
    , "CUP_U_USNavy_LHD_crew_Yellow"
    , "CUP_U_B_USArmy_PilotOverall"
    , "CUP_U_B_USMC_PilotOverall"
    , "U_I_ParadeUniform_01_AAF_decorated_F"
    , "U_O_ParadeUniform_01_CSAT_decorated_F"
    , "U_I_E_ParadeUniform_01_LDF_decorated_F"
    , "U_B_ParadeUniform_01_US_decorated_F"
    , "U_I_ParadeUniform_01_AAF_F"
    , "U_O_ParadeUniform_01_CSAT_F"
    , "U_I_E_ParadeUniform_01_LDF_F"
    , "U_B_ParadeUniform_01_US_F"
    //medics
    , "CUP_U_C_AirMedic_orange_01"
    , "CUP_U_C_AirMedic_red_01"
    , "CUP_U_C_AirMedic_yellow_01"
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
    , "CUP_U_C_Priest_01"
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
    , "CUP_U_C_Fireman_01"
    , "U_C_Scientist"
    , "U_C_Uniform_Scientist_01_formal_F"
    , "U_C_Uniform_Scientist_01_F"
    ];
};

if (isClass (configFile >> "CfgVehicles" >> "clv_Mate_lleno_Caliente")) then {
    _initialRebelEquipment append [
        "clv_Mate_lleno_Caliente","clv_Mate_vacio","clv_Mate_lleno_Frio","clv_mate_con_yerba"
    ];
};

if (isClass (configFile >> "CfgWeapons" >> "Nikon_DSLR_HUD")) then {
    _initialRebelEquipment append [
        "Nikon_DSLR_HUD","Old_Camera_Color_HUD","Old_Camera_HUD","Hate_Smartphone_HUD"
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
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

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

private _dlcUniforms = [
        "U_I_L_Uniform_01_tshirt_black_F",
        "U_I_L_Uniform_01_tshirt_olive_F",
        "U_I_L_Uniform_01_tshirt_skull_F",
        "U_I_L_Uniform_01_tshirt_sport_F"
];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

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
    _dlcUniforms append [
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

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["facewear",["G_Bandanna_Syndikat2","G_Bandanna_sport","G_Bandanna_aviator","G_Balaclava_blk","G_Aviator","G_Lady_Blue","None","G_Spectacles","G_Squares","G_Spectacles_Tinted"]] call _fnc_saveToTemplate;

["headgear", ["H_Beret_blk"]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
private _faces = [
"PersianHead_A3_01", "GreekHead_A3_02", "GreekHead_A3_03", "AfricanHead_02", "PersianHead_A3_02", "WhiteHead_17", "WhiteHead_20","TanoanHead_A3_02","AsianHead_A3_05","TanoanHead_A3_04",
"AsianHead_A3_04","TanoanHead_A3_06","AsianHead_A3_07","WhiteHead_24","WhiteHead_25","WhiteHead_26","LivonianHead_6","RussianHead_5","GreekHead_A3_13","Barklem"
];
if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _faces = [
        "max_faceWS1","max_faceWS2","max_faceWS3","max_faceWS4","max_faceWS5","max_faceWS6","max_faceWS7","max_faceWS8","max_faceWS9","max_faceWS10",
        "Barklem","WhiteHead_24","GreekHead_A3_12","RussianHead_5","WhiteHead_31","AsianHead_A3_04","TanoanHead_A3_04","AsianHead_A3_05","WhiteHead_15","PersianHead_A3_01"
    ];
};

"BLNames" call _fnc_saveNames;
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
