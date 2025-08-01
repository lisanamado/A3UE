private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

//////////////////////////
//       Vehicles       //
//////////////////////////    

private _civCarsWithWeights = [
    "C_Quadbike_01_F", 0.3
    ,"C_Hatchback_01_F", 1.0
    ,"C_Hatchback_01_sport_F", 0.3
    ,"C_Offroad_01_F", 1.0
    ,"C_SUV_01_F", 1.0
    ,"C_Offroad_01_covered_F", 0.1
];

if (_hasLawsOfWar) then {
    _civCarsWithWeights append ["C_Van_02_vehicle_F", 1.0,"C_Van_02_transport_F", 0.2];};

if (_hasApex) then {
    _civCarsWithWeights append ["C_Offroad_02_unarmed_F", 1.0];};

if (_hasContact) then {
    _civCarsWithWeights append ["C_Offroad_01_comms_F", 0.1];};

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _civCarsWithWeights append [
        "walker_a3_redbike",1,
        "walker_a3_uaz_civil",2,
        "walker_a3_datsun_2",2,
        "walker_a3_c_datsun",1,
        "walker_a3_gaz",1,
        "walker_a3_gazblue",1,
        "walker_a3_gaztred",0.2,
        "walker_a3_golfblue",0.5,
        "walker_a3_golf",0.5,
        "walker_a3_gtigolf",0.4,
        "walker_a3_hatch",1,
        "walker_a3_hatch_red",1,
        "walker_a3_hatch_green",1,
        "walker_a3_c_hilux",1,
        "walker_a3_v_hilux",1,
        "walker_a3_hilux",1,
        "walker_a3_lada_red",2,
        "walker_a3_lada",2,
        "walker_a3_octavia_black",1,
        "walker_a3_octavia",1,
        "walker_a3_s1203_green",1,
        "walker_a3_s1203",1,
        "walker_a3_sedan",1,
        "walker_a3_sedan_blue",1,
        "walker_a3_sedan_red",1,
        "walker_a3_skodovka",1,
        "walker_a3_skodovka_2",1,
        "walker_a3_SUV",1
        ];};

["vehiclesCivCar", _civCarsWithWeights] call _fnc_saveToTemplate;

private _vehiclesCivIndustrial = [
    "C_Van_01_transport_F", 1.0
    ,"C_Van_01_box_F", 0.8
    ,"C_Truck_02_transport_F", 0.5
    ,"C_Truck_02_covered_F", 0.5
    ,"C_Tractor_01_F", 0.3
    ,"C_IDAP_Truck_02_water_F",0.1,
    "C_IDAP_Van_02_vehicle_F",0.1,
    "C_IDAP_Van_02_transport_F",0.1,
    "C_IDAP_Offroad_01_F",0.1,
    "C_IDAP_Truck_02_F",0.1
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
    "C_Boat_Civil_01_rescue_F", 0.1            // motorboats
    ,"C_Boat_Civil_01_F", 1.0
    ,"C_Rubberboat", 1.0                    // rescue boat
    ,"C_Boat_Transport_02_F", 0.5            // RHIB
    ,"C_Scooter_Transport_01_F", 0.5
    ];

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesCivBoat = [
        "walker_A3_smallb_f",2,
        "walker_A3_smallb_e",1,
        "walker_A3_boat_f",1
    ];};

["vehiclesCivBoat", _vehiclesCivBoat] call _fnc_saveToTemplate;             //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

private _vehiclesCivRepair = [
    "C_Offroad_01_repair_F", 0.3
    ,"C_Van_02_service_F", 0.1                // orange
    ,"C_Truck_02_box_F", 0.1
    ];

["vehiclesCivRepair", _vehiclesCivRepair] call _fnc_saveToTemplate;            //this line determines civilian repair vehicles

private _vehiclesCivMedical = ["C_Van_02_medevac_F",0.1,"C_IDAP_Van_02_medevac_F",0.1];

if (isClass (configFile >> "CfgVehicles" >> "walker_a3_hilux_1")) then {
    _vehiclesCivMedical append [
        "walker_a3_s1203amb",0.3
    ];};

["vehiclesCivMedical", _vehiclesCivMedical] call _fnc_saveToTemplate;        //this line determines civilian medic vehicles

private _vehiclesCivFuel = ["C_Van_01_fuel_F", 0.2,"C_Truck_02_fuel_F", 0.1];

["vehiclesCivFuel", _vehiclesCivFuel] call _fnc_saveToTemplate;            //this line determines civilian fuel vehicles

private _vehiclesCivHeli = ["C_Heli_Light_01_civil_F",0.5, "C_IDAP_Heli_Transport_02_F",0.1];
["vehiclesCivHeli", _vehiclesCivHeli] call _fnc_saveToTemplate;

private _vehiclesCivPlanes = ["C_Plane_Civil_01_F",0.5,"C_Plane_Civil_01_F",0.1];

["vehiclesCivPlanes", _vehiclesCivPlanes] call _fnc_saveToTemplate;

/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "$"] call _fnc_saveToTemplate;
private _faces = [
"PersianHead_A3_01", "GreekHead_A3_02", "GreekHead_A3_03", "AfricanHead_02", "PersianHead_A3_02", "WhiteHead_17", "WhiteHead_20","TanoanHead_A3_02","AsianHead_A3_05","TanoanHead_A3_04",
"AsianHead_A3_04","TanoanHead_A3_06","AsianHead_A3_07","WhiteHead_24","WhiteHead_25","WhiteHead_26","LivonianHead_6","RussianHead_5","GreekHead_A3_13","Barklem"
];
if (isClass (configFile >> "CfgWeapons" >> "WU_I_OfficerUniform")) then {
    _faces = [
        "TanoanHead_A3_03","TanoanHead_A3_04","AfricanHead_02","PersianHead_A3_02","AfricanHead_03","TanoanHead_A3_08","max_faceWS2","max_faceWS3","max_faceWS4","max_faceWS5","max_faceWS6","max_faceWS10",
        "LivonianHead_6","TanoanHead_A3_05","PersianHead_A3_03","TanoanHead_A3_01","TanoanHead_A3_06","AfricanHead_01"
    ];
};

["faces", _faces] call _fnc_saveToTemplate;

"AfroMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "tenue_Jacket_black",
    "tenue_Jacket_blue",
    "tenue_Jacket_brown",
    "tenue_Jacket_camo",
    "tenue_Jacket_green",
    "tenue_Jacket_black_white",
    "tenue_Jacket_orange",
    "tenue_Jacket_red",
    "tenue_Jacket_superman",
    "tenue_Jacket_white",
    "tenue_Suit_beige",
    "tenue_Suit_beige2",
    "tenue_Suit_black",
    "tenue_Suit_blue",
    "tenue_Suit_cyan",
    "tenue_Suit_maroon",
    "tenue_Suit_purple",
    "tenue_Suit_red",
    "tenue_Suit_white",
    "tenue_track_black",
    "tenue_track_blue",
    "tenue_track_orange",
    "tenue_track_red",
    "tenue_track_white"
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
    "U_C_ConstructionCoverall_Vrana_F",
    "tenue_Pilot_larkin",
    "tenue_Worker_black",
    "tenue_Worker_blue",
    "tenue_Worker_green",
    "tenue_Worker_orange",
    "tenue_Worker_pink",
    "tenue_Worker_red"
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