#include "..\script_component.hpp"

//////////////////////////
//       Vehicles       //
//////////////////////////    

private _civCarsWithWeights = ["LandRover_TK_CIV_EP1",0.5,
        "walker_a3_redbike",1,
        "walker_a3_uaz_civil",2,
        "walker_a3_datsun_2",2,
        "walker_a3_c_datsun",1,
        "walker_a3_gaz",1,
        "walker_a3_gazblue",1,
        "walker_a3_gaztred",0.2,
        "walker_a3_lada_red",2,
        "walker_a3_lada",2,
        "walker_a3_s1203_green",1,
        "walker_a3_s1203",1,
        "walker_a3_skodovka",1,
        "walker_a3_skodovka_2",1,
        "Aka_2CH_civ_bleu",1,
        "Aka_2CH_civ_rouge",1,
        "Aka_2CH_civ_yellow",1,
        "Renault_4_666Teddy667_base",2];

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;

private _vehiclesCivIndustrial = [
    "C_Truck_02_transport_F", 0.5
    ,"C_Truck_02_covered_F", 0.5
    ,"C_Tractor_01_F", 0.3
    ];

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesCivIndustrial append [
        "walker_a3_apextruckOV",0.8,
        "walker_a3_tractor",0.3,
        "walker_a3_tractor_1",1,
        "walker_a3_buscity",0.2,
        "walker_a3_ikarus",0.1,
        "walker_a3_ikarusCIV",0.1
        ];};

["vehiclesCivIndustrial", _vehiclesCivIndustrial] call _fnc_saveToTemplate;             //this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

private _vehiclesCivBoat = [
    "C_Rubberboat", 1.0                    // rescue boat         // RHIB
    ];

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesCivBoat = [
        "walker_A3_smallb_f",2,
        "walker_A3_smallb_e",1,
        "walker_A3_boat_f",1
    ];};

["vehiclesCivBoat", _vehiclesCivBoat] call _fnc_saveToTemplate;             //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

private _vehiclesCivRepair = [
    "C_Truck_02_box_F", 0.1
    ];

["vehiclesCivRepair", _vehiclesCivRepair] call _fnc_saveToTemplate;            //this line determines civilian repair vehicles

private _vehiclesCivMedical = [];

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesCivMedical append [
        "walker_a3_s1203amb",0.3
    ];};

["vehiclesCivMedical", _vehiclesCivMedical] call _fnc_saveToTemplate;        //this line determines civilian medic vehicles

private _vehiclesCivFuel = ["C_Truck_02_fuel_F", 0.1];

["vehiclesCivFuel", _vehiclesCivFuel] call _fnc_saveToTemplate;            //this line determines civilian fuel vehicles

private _vehiclesCivHeli = [];
["vehiclesCivHeli", _vehiclesCivHeli] call _fnc_saveToTemplate;

private _vehiclesCivPlanes = [];

["vehiclesCivPlanes", _vehiclesCivPlanes] call _fnc_saveToTemplate;

/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "$"] call _fnc_saveToTemplate;
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
    , "WhiteHead_07"
];
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

["faces", _faces] call _fnc_saveToTemplate;

"Patagonames" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
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
	,"U_LIB_CIV_Worker_2",
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
    "U_simc_swetr1_suka_trop"
];          //Uniforms given to Normal Civs

private _pressUniforms = [
    "U_B_GEN_Commander_F",
    "WU_B_GEN_Commander_F"
];            //Uniforms given to Press/Journalists

private _workerUniforms = [
    "U_C_WorkerCoveralls",
    "U_C_ConstructionCoverall_Black_F",
    "U_C_ConstructionCoverall_Blue_F",
    "U_C_ConstructionCoverall_Red_F",
    "U_C_ConstructionCoverall_Vrana_F"
];           //Uniforms given to Workers at Factories/Resources

["uniforms", _civUniforms + _pressUniforms + _workerUniforms] call _fnc_saveToTemplate;

private _civhats = [
    "H_Cap_blu",
    "H_Cap_MaldenTours",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_tan",
    "H_Hat_brown",
    "H_Hat_Safari_olive_F",
    "H_Hat_Safari_sand_F",
    "H_StrawHat_dark",
    "H_Cap_Black_IDAP_F",
    "H_Cap_Orange_IDAP_F",
    "H_Cap_White_IDAP_F",
    "H_HeadBandage_stained_F",
    "H_Booniehat_dgtl",
    "H_Bandanna_surfer"
];

private _pressH = ["H_PASGT_neckprot_blue_press_F"];
private _pressV = ["V_Press_F"];
private _workerH = [
    "H_Construction_basic_orange_F",
    "H_Construction_earprot_orange_F",
    "H_Construction_basic_red_F",
    "H_Construction_basic_vrana_F",
    "H_Construction_earprot_vrana_F",
    "H_Construction_basic_white_F",
    "H_Construction_earprot_white_F",
    "H_Construction_basic_yellow_F",
    "H_Construction_earprot_yellow_F"
];            //Headgear given to Workers at Factories/Resources

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", _pressV];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["pressHelmets", _pressH];
_loadoutData set ["workerHelmets", _workerH];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;