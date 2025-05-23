//////////////////////////
//   Side Information   //
//////////////////////////

// NEW IDEA FOR mod defined OPTIONAL itema: DEFINE FIRST "_modItem class' and then include those definitions in the arrays for save to template
//if (ModTruck is class then _ModTrucks = "ModTruck1","ModTruck2") else (_ModTrucks = "") ... Trucks = ["truck1", "truck2", _ModTrucks]
// that's intended to give the vehicle Templates' arrays optional items if they are loaded and nothing else if they are not. probably the correct it's not "" but something else meaning absence of entry rather than an entry with empty value


#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "Los Jaguares"] call _fnc_saveToTemplate;
["spawnMarkerName", "Jaguares al acecho"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\Jaguares\jaguares.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "Faction_CUP_Jaguares"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["smallBunker", "Land_BagBunker_Small_F"] call _fnc_saveToTemplate;
["sandbag", "Land_BagFence_Long_F"] call _fnc_saveToTemplate;
["sandbagRound", "Land_BagFence_Round_F"] call _fnc_saveToTemplate;

// vehicles can be placed in more than one category if they fit between both. Cost will be derived by the higher category


//REPLACED "vehiclesType" by _vehiclesType in order to make it a local variable, enabling the adding of vehicles to the list with append and pushback
//I provisionally made private definitions for each vehicle type, but they should be "pruned", as having so many makes template loading time longer.
private _vehiclesBasic = [
    "C_Quadbike_01_F"];			 // unarmed or armed, with 0-2 passengers
private _vehiclesLightUnarmed = [
    "CUP_I_Hilux_armored_unarmed_IND_G_F","I_G_Offroad_01_F","CUP_I_Datsun_4seat","CUP_C_Datsun","C_Offroad_01_F","CUP_C_SUV_TK","CUP_C_SUV_CIV"
]; 		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
private _vehiclesLightArmed = [
    "CUP_I_nM1025_M2_ION","CUP_I_nM1025_M240_ION","CUP_I_nM1025_Mk19_ION",
    "CUP_I_Hilux_armored_BTR60_IND_G_F",
    "CUP_I_Hilux_armored_SPG9_IND_G_F","CUP_I_Hilux_armored_M2_IND_G_F"
];              // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
private _vehiclesCars = [
    "CUP_O_Hilux_unarmed_TK_CIV","C_Offroad_01_F","C_Hatchback_01_sport_F","CUP_C_Golf4_Sport_random_Civ","CUP_C_Octavia_CIV"
]; 		 // vehicle that can carry only passengers
private _vehiclesTrucks = [
    "CUP_B_MTVR_HIL",
    "CUP_B_MTVR_USMC",
    "CUP_O_Ural_RU"
]; 		 // vehicle that can carry troops and cargoboxes
private _vehiclesCargoTrucks = [
    "C_Truck_02_transport_F",
    "CUP_C_Ural_Open_Civ_01",
    "CUP_O_Ural_Open_RU",
    "C_Van_01_transport_F"
]; 		 // vehicle that can carry only cargoboxes
private _vehiclesAmmoTrucks = [
    "CUP_I_T810_Reammo_LDF",
    "CUP_O_Ural_Reammo_SLA",
    "I_E_Truck_02_Ammo_F",
    "CUP_B_MTVR_Ammo_HIL"
]; 		 // wheeled vehicle with capability to rearm vehicles
private _vehiclesRepairTrucks = [
    "I_G_Offroad_01_repair_F",
    "C_Truck_02_box_F",
    "CUP_I_T810_Repair_LDF",
    "CUP_O_Ural_Repair_RU",
    "CUP_B_MTVR_Repair_HIL"
]; 		 // wheeled vehicle with capability to repair vehicles
private _vehiclesFuelTrucks = [
    "CUP_I_T810_Refuel_LDF",
    "C_Truck_02_fuel_F",
    "CUP_B_MTVR_Refuel_HIL"
]; 		 // wheeled vehicle with capability to refuel vehicles
private _vehiclesMedical = [
    "CUP_B_LR_Ambulance_CZ_W",
    "C_Van_02_medevac_F"
]; 		 // vehicle with capability to provide healing
private _vehiclesLightAPCs = [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_B_Jackal2_L2A1_FIA","CUP_B_Jackal2_GMG_FIA"
];              // armed, lightly armoured, with 6-8 passengers 
private _vehiclesAPCs = [
    "CUP_B_BTR80_FIA","CUP_B_BTR60_FIA",
    "CUP_O_BRDM2_CSAT_T","CUP_O_BRDM2_HQ_CSAT_T"
];                   // armed with enclosed turret, armoured, with 6-8 passengers
private _vehiclesAirborne = [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_O_BRDM2_CSAT_T","CUP_O_BRDM2_HQ_CSAT_T",
    "CUP_B_Jackal2_L2A1_FIA","CUP_B_Jackal2_GMG_FIA"
];               // airborne vehicles, could be with passenger seats or just a crew 
private _vehiclesIFVs = [
    "CUP_B_LAV25M240_USMC","CUP_B_LAV25_USMC","CUP_B_BTR80A_FIA","CUP_B_M1126_ICV_M2_Woodland",
    "CUP_O_BMP2_CSAT_T","CUP_O_BMP1_CSAT_T","CUP_O_BMP1P_CSAT_T","CUP_O_BMP3_CSAT_T"
];                   // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
private _vehiclesTanks = [
    "CUP_I_T55_TK_GUE","CUP_I_T72_NAPA","CUP_I_T34_TK_GUE","CUP_I_T34_NAPA","CUP_I_T55_NAPA","CUP_B_M60A3_USMC"
];                  // cannon armed, heavely armored, passengers will be ignored
private _vehiclesLightTanks = [
    "CUP_I_Hilux_armored_BMP1_IND_G_F","CUP_I_Hilux_armored_BTR60_IND_G_F","CUP_I_T34_TK_GUE"
];              // tanks with poor armor and weapons
private _vehiclesAA = [
    "CUP_I_Hilux_armored_igla_IND_G_F", "CUP_I_Hilux_armored_zu23_IND_G_F",
    "CUP_I_Hilux_igla_IND_G_F", "CUP_I_Hilux_M2_IND_G_F",
    "CUP_I_Ural_ZU23_NAPA"
];                     // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

private _vehiclesTransportBoats = ["CUP_B_LCU1600_USMC"]; 	// boat that can carry passengers and cargoboxes
private _vehiclesGunBoats = ["CUP_B_RHIB_HIL","CUP_B_RHIB2Turret_HIL"];               // armed boat, with passengers(?)
private _vehiclesPlanesCAS = ["CUP_I_CESSNA_T41_ARMED_ION","CUP_I_CESSNA_T41_ARMED_RACS"];              // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
private _vehiclesPlanesAA = ["CUP_I_CESSNA_T41_ARMED_ION","CUP_I_CESSNA_T41_ARMED_RACS"];               //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
private _vehiclesPlanesTransport = ["CUP_B_C130J_USMC","CUP_B_C47_USA","CUP_O_AN2_TK"]; 	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
private _vehiclesPlanesGunship = [
    "CUP_B_AC47_Spooky_USA",
    "CUP_I_412_Military_Armed_AT_PMC",
    "CUP_I_UH1H_gunship_TK_GUE",
    "CUP_I_CESSNA_T41_ARMED_ION",
    "CUP_I_CESSNA_T41_ARMED_RACS"
];      // planes like V-44X armed, AC-130 or pelican from OPTRE, used in GUNSHIP support
//probably can also be a helicopter
private _vehiclesHelisLight = [
    "B_Heli_Light_01_F",
    "CUP_I_412_Mil_Transport_PMC",
    "CUP_I_UH1H_TK_GUE",
    "CUP_B_UH1Y_UNA_USMC"
];             // ideally fragile & unarmed helis seating 4+
private _vehiclesHelisTransport = [
    "CUP_I_UH1H_armed_TK_GUE",
    "CUP_I_412_Military_Armed_PMC"
];         // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting
private _vehiclesHelisLightAttack = [
    "CUP_I_UH1H_gunship_TK_GUE",
    "B_Heli_Light_01_dynamicLoadout_F"
];       // Utility helis with fixed or door guns + rocket pods
private _vehiclesHelisAttack = [
    "CUP_I_412_Military_Armed_AT_PMC"
];            // Proper attack helis: Apache, Hind etc
private _vehiclesAirPatrol = [
    "CUP_I_UH1H_armed_TK_GUE",
    "CUP_I_UH1H_TK_GUE",
    "B_Heli_Light_01_dynamicLoadout_F",
    "CUP_I_CESSNA_T41_ARMED_ION",
    "CUP_I_CESSNA_T41_ARMED_RACS"
];          // preferably light helicopters(armed or unarmed), used in base patrol near bases

//Config special vehicles
private _vehiclesMilitiaLightArmed = [
    "CUP_I_Datsun_PK_Random","CUP_I_Hilux_M2_IND_G_F",
    "CUP_I_Hilux_armored_M2_IND_G_F","CUP_B_M151_M2_HIL",
    "CUP_I_Hilux_SPG9_IND_G_F","CUP_I_Hilux_armored_SPG9_IND_G_F",
    "I_G_Offroad_01_AT_F","I_G_Offroad_01_armed_F",
    "CUP_B_LR_MG_CZ_W","CUP_O_LR_SPG9_TKA",
    "CUP_I_Hilux_btr60_IND_G_F"
];      // same as _vehiclesLightArmed but for milita forces
private _vehiclesMilitiaTrucks = [
    "C_Truck_02_covered_F",
    "CUP_C_Ural_Civ_03",
    "CUP_C_V3S_Covered_TKC"
];          // same as _vehiclesTrucks but for milita forces
private _vehiclesMilitiaCars = [
    "CUP_C_LR_Transport_CTK","CUP_I_Hilux_unarmed_IND_G_F","CUP_I_Hilux_armored_unarmed_IND_G_F",
    "I_G_Offroad_01_F","CUP_I_Datsun_4seat","CUP_C_SUV_TK"
];            // same as private _vehiclesLightUnarmed but for milita forces
private _vehiclesMilitiaAPCs = [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION","CUP_B_nM1025_SOV_M2_ION"
];               // Militia APCs will be used at roadblocks and attacks at first 4 war levels
private _vehiclesPolice = [
    "CUP_C_SUV_TK","I_G_Offroad_01_F","CUP_O_Hilux_unarmed_TK_CIV","CUP_I_Datsun_PK_Random"
];                 // cars used by police forces

//VEHICLES ADDED IF MODS ARE PRESENT
//BRAF
/*if (isClass (configFile >> "CfgVehicles" >> "BRAF_AM11_CFN")) then {
    _vehiclesLightArmed pushBack "BRAF_AM11_Armed_CFN";
    _vehiclesLightUnarmed pushBack "BRAF_AM11_CFN";
    _vehiclesTrucks pushBack "BRAF_Worker_CFN";
    _vehiclesCargoTrucks pushBack "BRAF_Worker_Cargo_CFN";
    _vehiclesAmmoTrucks pushBack "BRAF_Worker_Ammo_CFN";
    _vehiclesFuelTrucks pushBack "BRAF_Worker_Fuel_CFN";
    _vehiclesRepairTrucks pushBack "BRAF_Worker_Repair_CFN";
    _vehiclesMedical pushBack "BRAF_Worker_Health_CFN";
    _vehiclesAPCs pushBack "braf_guarani_eb_remax","braf_guarani_eb_unarmed";
    _vehiclesTanks pushBack "BRAF_EE9_Cascavel_EB";
    _vehiclesPlanesAA pushBack "BRAF_A29_Super_Tucano";
};*/
//Cytech Agrale and Armored Vehicle
if (isClass (configFile >> "CfgVehicles" >> "cytech_rt_amv")) then {
    _vehiclesLightUnarmed append ["cytech_rt_amv_Camouflage","cytech_rt_amv_Desert"];
    _vehiclesMilitiaCars append ["cytech_rt_amv","cytech_rt_amv_Green","cytech_rt_agrale_blue","cytech_rt_agrale_Green"];
    _vehiclesMedical pushBack "cytech_rt_agrale_Rescue";
    _vehiclesTrucks pushBack "cytech_rt_agrale_blue";
};
//Toyota Hilux 2016
if (isClass (configFile >> "CfgVehicles" >> "rt_16Luxi_dirty")) then {
    _vehiclesLightUnarmed append ["rt_16luxi_AFR", "rt_16luxi_ME_S"];
    _vehiclesLightArmed append ["rt_16Luxi_at", "rt_16Luxi_GMG", "rt_16Luxi_m2"];
    _vehiclesMilitiaCars pushBack "rt_16Luxi_dirty";
    _vehiclesMilitiaLightArmed pushBack "rt_16Luxi_m2";
};

["vehiclesBasic", ["C_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesCars", _vehiclesCars] call _fnc_saveToTemplate;
["vehiclesTrucks", _vehiclesTrucks] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _vehiclesCargoTrucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _vehiclesAmmoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _vehiclesRepairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _vehiclesFuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _vehiclesLightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _vehiclesAPCs] call _fnc_saveToTemplate;
["vehiclesAirborne", _vehiclesAirborne] call _fnc_saveToTemplate;
["vehiclesIFVs", _vehiclesIFVs] call _fnc_saveToTemplate;
["vehiclesTanks", _vehiclesTanks] call _fnc_saveToTemplate;
["vehiclesLightTanks", _vehiclesLightTanks] call _fnc_saveToTemplate;
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate;

["vehiclesTransportBoats", _vehiclesTransportBoats] call _fnc_saveToTemplate;
["vehiclesGunBoats", _vehiclesGunBoats] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", _vehiclesPlanesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _vehiclesPlanesAA] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", _vehiclesPlanesTransport] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", _vehiclesPlanesGunship] call _fnc_saveToTemplate;

["vehiclesHelisLight", _vehiclesHelisLight] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _vehiclesHelisTransport] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _vehiclesHelisLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _vehiclesHelisAttack] call _fnc_saveToTemplate;
["vehiclesAirPatrol", _vehiclesAirPatrol] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", _vehiclesMilitiaLightArmed] call _fnc_saveToTemplate; 
["vehiclesMilitiaTrucks", _vehiclesMilitiaTrucks] call _fnc_saveToTemplate; 	
["vehiclesMilitiaCars", _vehiclesMilitiaCars] call _fnc_saveToTemplate; 		
["vehiclesMilitiaAPCs", _vehiclesMilitiaAPCs] call _fnc_saveToTemplate; 		
["vehiclesPolice", _vehiclesPolice] call _fnc_saveToTemplate; 			

["vehiclesArtillery", [
    "CUP_I_Hilux_armored_podnos_IND_G_F", "CUP_I_Hilux_armored_MLRS_IND_G_F","CUP_I_Hilux_podnos_IND_G_F"
]] call _fnc_saveToTemplate;              // wheeled or tracked vehicle with artillery cannon or rockets
["magazines", createHashMapFromArray [
    ["CUP_I_Hilux_armored_podnos_IND_G_F",["8Rnd_82mm_Mo_shells"]],
    ["CUP_I_Hilux_podnos_IND_G_F",["8Rnd_82mm_Mo_shells"]],
    ["CUP_I_Hilux_armored_MLRS_IND_G_F",["CUP_12Rnd_MLRS_HE"]]
]] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", []] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", ["I_UAV_01_F","I_UAV_06_F"]] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled

["staticMGs", ["CUP_B_M2StaticMG_US"]] call _fnc_saveToTemplate;                     // static machine guns
["staticAT", ["CUP_B_SPG9_AFU"]] call _fnc_saveToTemplate;                      // static anti-tank weapons 
["staticAA", ["CUP_B_ZU23_AFU","CUP_B_Igla_AA_pod_AFU"]] call _fnc_saveToTemplate;                      // static anti-aircraft weapons
["staticMortars", ["CUP_B_M252_HIL"]] call _fnc_saveToTemplate;                 // static mortars
["staticHowitzers", ["CUP_O_D30_RU"]] call _fnc_saveToTemplate;               // static howitzers

["vehicleRadar", ""] call _fnc_saveToTemplate;                  // vehicle with radar
["vehicleSam", ""] call _fnc_saveToTemplate;                    // vehicle with SAM

["howitzerMagazineHE", "CUP_30Rnd_122mmHE_D30_M"] call _fnc_saveToTemplate;            // explosive ammo for Howitzer

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;              // explosive ammo for mortars
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;           // smoke ammo for mortars
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", ["CUP_Mine"]] call _fnc_saveToTemplate;                   // anti-tank mines
["minefieldAPERS", ["APERSMine","APERSBoundingMine"]] call _fnc_saveToTemplate;                // anti-personal mines


//vehicle skins
["variants", [
    ["CUP_I_nM1025_M2_ION", ["Black", 1]],
    ["CUP_I_nM1025_M240_ION", ["Black", 1]],
    ["CUP_I_nM1025_Mk19_ION", ["Black", 1]],
    ["CUP_B_nM1025_SOV_M2_ION", ["Black", 1]],
    ["CUP_B_nM1025_SOV_Mk19_ION", ["Black", 1]],
    ["CUP_B_LR_Ambulance_CZ_W", ["CIV", 1]],
    ["CUP_B_LR_MG_CZ_W", ["CIV", 1]],
    ["CUP_O_LR_SPG9_TKA", ["CIV", 1]],
    ["CUP_I_CESSNA_T41_ARMED_ION", ["civ_07",1]],
    ["CUP_I_CESSNA_T41_ARMED_RACS", ["civ_14", 1]],
    ["CUP_B_AC47_Spooky_USA", ["EmeraldAirlines", 1]],
    ["CUP_B_C47_USA", ["GreyOrange", 1]]
]] call _fnc_saveToTemplate;

#include "..\NARCOS_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.
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

///////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", ["CUP_launch_M72A6_Special_Loaded","","","",["CUP_M72A6_M"]]];
_loadoutData set ["lightHELaunchers", ["CUP_launch_RShG2_Loaded","","","",["CUP_RSHG2_M"]]];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", []];

private _militiaRISOptics = [
    "CUP_optic_CompM2_low",1,
    "CUP_optic_CompM4",1,
    "CUP_optic_Eotech553_Black",1,
    "CUP_optic_HoloBlack",1,
    "CUP_optic_CompM2_Coyote",1,
    "",4
];
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
private _AKOptics = [
    "CUP_optic_1p63",1,
    "CUP_optic_PSO_3",0.1,
    "CUP_optic_OKP_7",0.8,
    "CUP_optic_Kobra",0.5,
    "CUP_optic_PSO_1_AK",0.7,
    "CUP_optic_PSO_1_1",0.2,
    "",2
];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_RGO","CUP_HandGrenade_M67"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", []];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["CUP_Vector21Nite"]];

_loadoutData set ["traitorUniforms", ["CUP_U_C_Tracksuit_02"]];
_loadoutData set ["traitorVests", ["CUP_V_B_JPC_Black_Light"]];
_loadoutData set ["traitorHats", ["CUP_H_RUS_K6_3_Shield_Down_black"]];

_loadoutData set ["officerUniforms", ["U_C_FormalSuit_01_khaki_F"]];
_loadoutData set ["officerVests", ["CUP_V_C_Police_Holster"]];
_loadoutData set ["officerHats", ["H_Hat_tan"]];
_loadoutData set ["officerMasks", ["G_Squares_Tinted"]];
_loadoutData set ["officerRifles", [
    ["CUP_arifle_AKS_Gold","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""]
]];
_loadoutData set ["officerSidearms", [
    ["CUP_hgun_TaurusTracker455_gold","","","",["CUP_6Rnd_45ACP_M"],[],""]
]];


_loadoutData set ["cloakUniforms", ["CUP_U_O_RUS_Ghillie"]];
_loadoutData set ["cloakRifles", [
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"],1,
    ["CUP_srifle_M24_blk","","","CUP_optic_LeupoldMk4_20x40_LRT",[],[],""],0.5
]];
_loadoutData set ["cloakCarbines", [
    ["CUP_arifle_M4A1_standard_short_dsrt","","",_militaryRISOptics,["CUP_30Rnd_556x45_Stanag"],[],""],
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,["CUP_20Rnd_762x51_FNFAL_M"],[],""]
]];
_loadoutData set ["cloakSidearms", []];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["longRangeRadios", ["CUP_B_Kombat_Radio_Olive"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", []];
_loadoutData set ["sniHats", []];
_loadoutData set ["facewear", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
_loadoutData set ["items_squadLeader_extras", []];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", ["ToolKit", "MineDetector"]];
_loadoutData set ["items_engineer_extras", ["ToolKit", "MineDetector"]];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", []];
_loadoutData set ["items_sniper_extras", []];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];
_loadoutData set ["masks", ["G_Balaclava_Flames1","G_Bandanna_OrangeFlame1"]];
_loadoutData set ["goggles", []];


///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", [
    "U_C_Poloshirt_blue"
    , "U_C_Poloshirt_burgundy"
    , "U_C_Poloshirt_salmon"
    , "U_OrestesBody"
    , "U_I_L_Uniform_01_tshirt_sport_F"
    , "CUP_U_C_Rocker_03"
    , "U_C_Uniform_Scientist_02_formal_F"
    , "U_C_Man_casual_6_F"
]];
_policeLoadoutData set ["masks", [
    "G_Balaclava_blk"
    , "G_Balaclava_lowprofile"
    , "G_Balaclava_Halloween_01"
    , "G_Balaclava_Skull1"
]];
_policeLoadoutData set ["vests", [
    "CUP_V_CDF_OfficerBelt"
    , "CUP_V_B_GER_Carrier_Rig_3_Brown"
    , "CUP_V_O_TK_Vest_2"
    , "V_BandollierB_khk"
    , "CUP_V_CZ_vest15"
    , "V_Pocketed_coyote_F"
    , "V_Pocketed_black_F"
    , "V_Pocketed_olive_F"
]];
_policeLoadoutData set ["helmets", [
    "H_Bandanna_surfer_blk"
    , "H_Bandanna_blu"
    , "H_Cap_blk"
    , "CUP_H_C_MAGA_01"
    , "H_Cap_blk_CMMG"
    , "CUP_H_USA_Cap_M81"
]];

_policeLoadoutData set ["PoliceGuns", [
    ["CUP_sgun_M1014_solidstock","","","",["CUP_8Rnd_12Gauge_Pellets_No00_Buck","CUP_8Rnd_12Gauge_Slug"],[],""],3,
    ["CUP_smg_M3A1","","","",["CUP_30Rnd_45ACP_M3A1_BLK_M","CUP_30Rnd_45ACP_Green_Tracer_M3A1_GRN_M"],[],""],3,
    ["CUP_sgun_CZ584","","","",["CUP_1Rnd_12Gauge_Pellets_No00_Buck","CUP_1Rnd_12Gauge_Pellets_No00_Buck","CUP_1Rnd_12Gauge_Slug"],["CUP_1Rnd_762x51_CZ584"],""],4,
    ["CUP_sgun_SPAS12","","","",["CUP_8Rnd_12Gauge_Pellets_No00_Buck","CUP_8Rnd_12Gauge_Pellets_No00_Buck","CUP_8Rnd_12Gauge_Slug"],[],""],1,
    ["sgun_HunterShotgun_01_sawedoff_F","","","",["CUP_2Rnd_12Gauge_Pellets_No00_Buck"],[],""],2,
    ["CUP_smg_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"],[],""],2,
    ["CUP_smg_UZI","","","",["CUP_32Rnd_9x19_UZI_M"],[],""],1
]];
_policeLoadoutData set ["sidearms", [
    ["CUP_hgun_TaurusTracker455","","","",["CUP_6Rnd_45ACP_M"],[],""],4,
    ["CUP_hgun_TEC9","","","",["CUP_32Rnd_9x19_TEC9"],[],""],4,
    ["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""],3
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["SlNVGs", ["CUP_NVG_PVS14", "CUP_NVG_HMNVS"]];
_militiaLoadoutData set ["uniforms", [
    "U_I_C_Soldier_Bandit_2_F"
    , "U_I_C_Soldier_Bandit_5_F"
    , "U_I_C_Soldier_Bandit_3_F"
    , "U_C_ArtTShirt_01_v6_F"
    , "U_C_ArtTShirt_01_v1_F"
    , "U_C_ArtTShirt_01_v4_F"
    , "U_C_ArtTShirt_01_v5_F"
    , "U_C_Uniform_Farmer_01_F"
    , "U_C_Mechanic_01_F"
    , "U_C_E_LooterJacket_01_F"
]];
_militiaLoadoutData set ["Slmasks", [
    "G_Bandanna_Skull2"
]];

_militiaLoadoutData set ["vests", [
    "CUP_V_I_RACS_Carrier_Rig_wdl_3"
    , "CUP_V_I_RACS_Carrier_Rig_3"
    , "CUP_V_B_RRV_Scout_CB"
]];
_militiaLoadoutData set ["Hvests", [
    "CUP_V_CZ_vest16"
    , "V_TacVest_blk"
    , "V_TacVest_khk"
    , "V_TacVest_camo"
]];
_militiaLoadoutData set ["glVests", [
    "CUP_V_O_SLA_M23_1_OD"
]];
_militiaLoadoutData set ["MedVests", [
    "V_TacVestIR_blk"
]];
_militiaLoadoutData set ["backpacks", [
    "B_FieldPack_ocamo"
    , "CUP_B_GER_Medic_Flecktarn"
    , "CUP_B_TacticalPack_CCE"
    , "CUP_B_CivPack_WDL"
    , "B_Kitbag_rgr"
]];
_militiaLoadoutData set ["slHat", ["H_Cap_marshal"]];
_militiaLoadoutData set ["helmets", [
    "H_Cap_oli_hs"
    , "H_Hat_Safari_olive_F"
    , "CUP_H_FR_Bandana_Headset"
    , "CUP_H_USA_Boonie_wdl"
    , "CUP_H_Booniehat_Rhodesian"
    , "CUP_H_USArmy_Boonie_hs_OCP"
    , "CUP_H_SLA_Boonie_URB"
    , "CUP_H_USArmy_Helmet_M1_btp"
    , "CUP_H_USArmy_Helmet_M1_plain_M81"
]];
_militiaLoadoutData set ["slRifles", [
    ["CUP_arifle_AKMN_railed","","",_militiaRISOptics,["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],"CUP_bipod_Harris_1A2_L_BLK"],1,
    ["CUP_arifle_FNFAL5060_railed","","",_militiaRISOptics,["CUP_20Rnd_762x51_FNFAL_M"],[],""],3,
    ["CUP_arifle_Galil_SAR_black","","",_militiaRISOptics,["CUP_35Rnd_556x45_Galil_Mag","CUP_35Rnd_556x45_Green_Tracer_Galil_Mag"],[],""],2,
    ["CUP_arifle_M16A4_Grip","","",_militiaRISOptics,["CUP_20Rnd_556x45_Stanag"],[],""],1
]];
_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_AKM","","","",["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],4,
    ["CUP_arifle_M16A1","","","",["CUP_20Rnd_556x45_Stanag"],[],""],2,
    ["CUP_arifle_Galil_SAR_black","","","",["CUP_35Rnd_556x45_Galil_Mag"],[],""],2,
    ["CUP_sgun_AA12","","","",["CUP_20Rnd_B_AA12_Buck_0","CUP_20Rnd_B_AA12_Buck_0","CUP_20Rnd_B_AA12_Slug","CUP_20Rnd_B_AA12_HE"],[],""],2,
    ["CUP_arifle_FNFAL5060","","","",["CUP_20Rnd_762x51_FNFAL_M"],[],""],3,
    ["CUP_arifle_FNFAL5060_railed","","",_militiaRISOptics,["CUP_20Rnd_762x51_FNFAL_M"],[],""],1,
    ["CUP_arifle_M16A2","","",_militiaRISOptics,["CUP_20Rnd_556x45_Stanag"],[],""],1
]];
_militiaLoadoutData set ["carbines", [
    ["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag"],[],""],1,
    ["CUP_arifle_FNFAL_OSW_railed","","","",["CUP_20Rnd_762x51_FNFAL_M"],[],""],1,
    ["CUP_Famas_F1","","","",["CUP_25Rnd_556x45_Famas"],[],""],0.1
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",["CUP_20Rnd_556x45_Stanag"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],""],1,
    ["CUP_glaunch_M79","","","",["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],[],""],5,
    ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M"],[],""],2
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_M3A1","","","",["CUP_30Rnd_45ACP_M3A1_BLK_M","CUP_30Rnd_45ACP_Green_Tracer_M3A1_GRN_M"],[],""],5,
    ["CUP_smg_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"],[],""],3,
    ["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5"],[],""],2,
    ["CUP_smg_MP5A5_Rail_VFG","","","",["CUP_30Rnd_9x19_MP5"],[],""],0.5,
    ["CUP_smg_UZI","","","",["CUP_32Rnd_9x19_UZI_M"],[],""],3
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_arifle_RPK74","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],1,
    ["CUP_lmg_M60","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],1,
    ["CUP_lmg_FNMAG_RIS","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],2
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14","","","optic_DMS",["CUP_20Rnd_762x51_DMR"],[],""],2,
    ["CUP_srifle_LeeEnfield","","","CUP_optic_no23mk2",["CUP_10x_303_M"],[],""],3,
    ["CUP_srifle_CZ550","","","",["CUP_5x_22_LR_17_HMR_M"],[],""],1,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],""],1
]];
_militiaLoadoutData set ["sniperRifles", [
    ["CUP_srifle_LeeEnfield","","","CUP_optic_no23mk2",["CUP_10x_303_M"],[],""],3,
    ["CUP_srifle_CZ550","","","",["CUP_5x_22_LR_17_HMR_M"],[],""],2
]];
_militiaLoadoutData set ["sidearms", [
    ["CUP_hgun_TEC9_FA","","","",["CUP_32Rnd_9x19_TEC9"],[],""],2,
    ["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""],3,
    ["CUP_hgun_PB6P9","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""],2
]];

_militiaLoadoutData set ["lightATLaunchers", ["CUP_launch_M72A6_Special_Loaded","","","",["CUP_M72A6_M"]]];
_militiaLoadoutData set ["lightHELaunchers", ["CUP_launch_RShG2_Loaded","","","",["CUP_RSHG2_M"]]];
_militiaLoadoutData set ["ATLaunchers", ["CUP_launch_RPG7V","","","",["CUP_PG7V_M","CUP_PG7VL_M","CUP_PG7VM_M","CUP_OG7_M"],[],""]];
_militiaLoadoutData set ["missileATLaunchers", ["CUP_launch_Mk153Mod0_blk","","","",["CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M"]]];
_militiaLoadoutData set ["AALaunchers", ["CUP_launch_RPG7V","","","",["CUP_PG7V_M","CUP_PG7VL_M","CUP_PG7VM_M"],[],""]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["NVGs", ["CUP_NVG_PVS14", "CUP_NVG_HMNVS"]];
_militaryLoadoutData set ["slHat", ["H_Cap_headphones"]];
_militaryLoadoutData set ["Slmasks", ["CUP_PMC_Facewrap_Skull"]];
_militaryLoadoutData set ["uniforms", [
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
_militaryLoadoutData set ["vests", [
    "CUP_V_CZ_vest15"
    , "V_TacVest_camo"
    , "V_TacVest_oli"
    , "CUP_V_CZ_vest16"
]];
_militaryLoadoutData set ["Hvests", [
    "CUP_V_B_PASGT_CCE"
    , "CUP_V_B_PASGT"
    , "CUP_V_B_PASGT_OD"
    , "V_TacVest_camo"
]];
_militaryLoadoutData set ["glVests", [
    "V_HarnessO_brn"
]];
_militaryLoadoutData set ["backpacks", [
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
_militaryLoadoutData set ["helmets", [
    "CUP_H_HIL_HelmetACH_CCE"
    , "CUP_H_HIL_HelmetACH_ESS_TTS"
    , "CUP_H_USArmy_Helmet_ECH1_Black"
    , "CUP_H_USArmy_ECH_MARPAT"
    , "CUP_H_USArmy_Helmet_M1_btp"
    , "CUP_H_USArmy_Helmet_M1_plain_M81"
    , "CUP_H_USArmy_Boonie_hs_OEFCP"
    , "H_Booniehat_oli"
    , "CUP_H_SLA_Boonie"
    , "H_Booniehat_eaf"
    , "CUP_H_FR_BoonieMARPAT"
    , "CUP_H_CZ_Hat02"
    , "CUP_H_Ger_Boonie_desert"
]];

_militaryLoadoutData set ["slRifles", [
    ["CUP_arifle_M4A1_SOMMOD_hex","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],[],""],0.5,
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,["CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"],4,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],3,
    ["CUP_arifle_Galil_SAR_black","","","",["CUP_50Rnd_556x45_Green_Tracer_Galil_Mag","CUP_50Rnd_556x45_Galil_Mag"],[],""],2
]];
_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_M16A4_Grip","","",_militaryRISOptics,[],[],""],2,
    ["CUP_arifle_AKM","","","",["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],5,
    ["CUP_arifle_M16A1","","",_militiaRISOptics,["CUP_20Rnd_556x45_Stanag"],[],""],3,
    ["CUP_arifle_AKS","","",_AKOptics,["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],2,
    ["CUP_arifle_FNFAL5062_railed","","",_militiaRISOptics,["CUP_20Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_FNFAL_railed_woodland","","",_militiaRISOptics,["CUP_20Rnd_762x51_FNFAL_Woodland_M","CUP_20Rnd_762x51_FNFAL_Woodland_M","CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"],3,
    ["CUP_arifle_FNFAL5060_railed","","",_militaryRISOptics,["CUP_30Rnd_762x51_FNFAL_M"],[],""],2,
    ["CUP_arifle_M4A1","","","",["CUP_30Rnd_556x45_Stanag"],[],""],3,
    ["CUP_arifle_M16A2","","",_militaryRISOptics,["CUP_20Rnd_556x45_Stanag"],[],""],1,
    ["CUP_arifle_Galil_SAR_black","","","",["CUP_50Rnd_556x45_Green_Tracer_Galil_Mag","CUP_50Rnd_556x45_Galil_Mag"],[],""],2
]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_M4A1_standard_short_dsrt","","",_militiaRISOptics,["CUP_30Rnd_556x45_Stanag"],[],""],2,
    ["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag"],[],""],2,
    ["CUP_Famas_F1","","","",["CUP_25Rnd_556x45_Famas"],[],""],0.2,
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,["CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],""],1,
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_30Rnd_556x45_XM8"],[],""],0.2
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],""],
    ["CUP_arifle_M4A1_GL_carryhandle","","","",["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],""],
    ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M"],[],""]
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_bizon","","",_AKOptics,["CUP_64Rnd_9x19_Bizon_M"],[],""],1,
    ["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5"],[],""],4,
    ["CUP_smg_MP5A5_Rail_VFG","","",_militaryRISOptics,["CUP_30Rnd_9x19_MP5"],[],""],1.5,
    ["CUP_smg_vityaz_vfg_top_rail","","","",["CUP_30Rnd_9x19AP_Vityaz"],[],""],2
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_FNMAG_RIS","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],2,
    ["CUP_lmg_M60","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],2,
    ["CUP_lmg_m249_SQuantoon","","","",["CUP_100Rnd_TE4_Red_Tracer_556x45_M249"],[],""],1,
    ["CUP_arifle_RPK74","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],1,
    ["CUP_lmg_m249_pip1","","","",["CUP_100Rnd_TE4_Red_Tracer_556x45_M249"],[],""],2,
    ["CUP_lmg_Pecheneg_B50_vfg","","",_AKOptics,["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M"],[],""],2
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",["CUP_10Rnd_762x54_SVD_M"],[],""],1,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"],3
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M24_blk","","","CUP_optic_LeupoldMk4_20x40_LRT",["CUP_5Rnd_762x51_M24"],[],""],1,
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",["CUP_10Rnd_762x54_SVD_M"],[],""],0.5
]];
_militaryLoadoutData set ["sidearms", [
    ["CUP_hgun_Glock17_blk","","","",["CUP_17Rnd_9x19_glock17"],[],""],2,
    ["CUP_hgun_PB6P9","","","",["CUP_8Rnd_9x18_Makarov_M"],[],""],2,
    ["CUP_hgun_Compact","","","",["CUP_10Rnd_9x19_Compact","CUP_18Rnd_9x19_Phantom"],[],""],2,
    ["CUP_hgun_TT","","","",["CUP_8Rnd_762x25_TT"],[],""],3,
    ["CUP_hgun_SWM327MP","","","",["CUP_8Rnd_357SW_M"],[],""],2,
    ["CUP_hgun_TEC9_FA","","","",["CUP_32Rnd_9x19_TEC9"],[],""],2,
    ["CUP_hgun_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"],[],""],1
]];

_militaryLoadoutData set ["lightATLaunchers", ["CUP_launch_M136_Loaded","","","",["CUP_M136_M"]]];
_militaryLoadoutData set ["lightHELaunchers", ["CUP_launch_RPG7V","","","CUP_optic_PGO7V",["CUP_TBG7V_M","CUP_OG7_M"],[],""]];
_militaryLoadoutData set ["ATLaunchers", ["CUP_launch_RPG7V","","","CUP_optic_PGO7V",["CUP_PG7V_M","CUP_PG7VL_M","CUP_PG7VM_M","CUP_PG7VR_M"],[],""]];
_militaryLoadoutData set ["missileATLaunchers", ["CUP_launch_Mk153Mod0_blk","","","CUP_optic_SMAW_Scope",["CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M"],[],""]];
_militaryLoadoutData set ["AALaunchers",["CUP_launch_9K32Strela_Loaded","","","",["CUP_Strela_2_M"],[],""]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["CUP_NVG_PVS15_black"]];
_eliteLoadoutData set ["Slmasks", ["CUP_PMC_Facewrap_Skull"]];
_eliteLoadoutData set ["slHat", ["CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_EP_Tan"]];
_eliteLoadoutData set ["masks", ["CUP_G_RUS_Ratnik_Balaclava_Desert_3"]];
_eliteLoadoutData set ["uniforms", [
    "CUP_I_B_PARA_Unit_10"
    , "CUP_I_B_PARA_Unit_6"
    , "CUP_I_B_PARA_Unit_9"
    , "CUP_I_B_PARA_Unit_4"
    , "CUP_I_B_PARA_Unit_1"
    , "CUP_I_B_PARA_Unit_3"
    , "CUP_I_B_PARA_Unit_11"
    , "CUP_I_B_PARA_Unit_13"
    , "CUP_I_B_PARA_Unit_15"
    , "CUP_I_B_PARA_Unit_14"
]];
_eliteLoadoutData set ["vests", [
    "CUP_V_B_PASGT_CCE"
    , "CUP_V_B_PASGT"
]];
_eliteLoadoutData set ["Hvests", [
    "CUP_V_B_JPC_Black_Light"
    , "CUP_V_B_JPC_Fleck_Light"
]];
_eliteLoadoutData set ["glVests", [
    "CUP_V_B_Eagle_SPC_GL"
]];
_eliteLoadoutData set ["helmets", [
    "CUP_H_HIL_HelmetACH_ESS_TTS"
    , "CUP_H_USArmy_Helmet_ECH1_Black"
    , "CUP_H_Ger_M92_Black"
    , "CUP_H_PASGTv2_NVG_TPattern"
    , "CUP_H_RUS_K6_3_Shield_Up_black"
    , "CUP_H_RUS_K6_3_Shield_Down_black"
    , "CUP_H_SLA_Boonie_URB"
    , "CUP_H_Booniehat_TTS"
]];
_eliteLoadoutData set ["binoculars", ["CUP_Vector21Nite"]];
_eliteLoadoutData set ["rangefinders", ["CUP_LRTV"]];
_eliteLoadoutData set ["backpacks", [
    "B_ViperLightHarness_blk_F"
    , "B_TacticalPack_blk"
    , "CUP_B_USPack_Black"
]];
_eliteLoadoutData set ["atBackpacks", ["B_Carryall_blk"]];


_eliteLoadoutData set ["slRifles", [
    ["CUP_arifle_SBR_black","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_eliteRISOptics,["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green","CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],2,
    ["CUP_arifle_M4A1_SOMMOD_hex","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_60Rnd_556x45_SureFire_Tracer_Green","CUP_60Rnd_556x45_SureFire"],[],"CUP_bipod_Harris_1A2_L_BLK"],2,
    ["CUP_arifle_AK109","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_AKOptics,["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],""],3,
    ["CUP_arifle_M4_MOE_BW","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_10Rnd_50BW_Mag_M4_M"],[],""],1
]];
_eliteLoadoutData set ["rifles", [
    ["CUP_arifle_AK103","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,["CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],2,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],"CUP_bipod_Harris_1A2_L_BLK"],3,
    ["CUP_arifle_FNFAL_OSW_railed","","",_eliteRISOptics,["CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_762x51_FNFAL_M","CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_M4A1_SOMMOD_Grip_black","","CUP_acc_ANPEQ_15",_militaryRISOptics,["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],[],"CUP_bipod_Harris_1A2_L_BLK"],3,
    ["CUP_arifle_AUG_A1","","","",["CUP_30Rnd_556x45_AUG"],[],""],0.5,
    ["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_60Rnd_556x45_SureFire_Tracer_Green","CUP_60Rnd_556x45_SureFire"],[],""],3,
    ["CUP_arifle_XM8_Carbine_FG_Rail_Fish","","","",_eliteRISOptics,["CUP_30Rnd_556x45_XM8"],[],""],0.5,
    ["CUP_arifle_M4_MOE_BW","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_10Rnd_50BW_Mag_M4_M"],[],""],0.5
]];
_eliteLoadoutData set ["carbines", [
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_30Rnd_556x45_XM8"],[],""],1,
    ["CUP_Famas_F1","","","",["CUP_25Rnd_556x45_Famas"],[],""],0.2,
    ["CUP_arifle_AK104","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,["CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_762x39_AK103_bakelite_M","CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],[],""],3,
    ["CUP_arifle_SBR_black","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_militaryRISOptics,["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],[],""],2,
    ["CUP_arifle_M4_MOE_BW","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_10Rnd_50BW_Mag_M4_M"],[],""],1
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M"],[],""],
    ["CUP_glaunch_M32","","","",["CUP_6Rnd_HE_M203"],[],""],
    ["CUP_arifle_M4A1_GL_carryhandle","","","",["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","CUP_1Rnd_SmokeGreen_GP25_M","CUP_1Rnd_SmokeRed_GP25_M"],""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["CUP_lmg_m249_para_gl","","",_militaryRISOptics,["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"],[],""],0.5,
    ["CUP_lmg_m249_pip1","","",_eliteRISOptics,["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"],[],""],2.5,
    ["CUP_lmg_Pecheneg_B50_vfg","","",_AKOptics,["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M"],[],""],2,
    ["CUP_lmg_Mk48","","",_eliteRISOptics,["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],2
]];
_eliteLoadoutData set ["SMGs", [
    ["CUP_smg_bizon","","",_AKOptics,["CUP_64Rnd_9x19_Bizon_M"],[],""],
    ["CUP_smg_MP5A5_Rail_VFG","","",_militaryRISOptics,["CUP_30Rnd_9x19_MP5"],[],""],
    ["CUP_smg_MP7","","",_militaryRISOptics,["CUP_40Rnd_46x30_MP7"],[],""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","","CUP_SVD_camo_g","CUP_optic_PSO_3",["CUP_10Rnd_762x54_SVD_M"],[],""],3,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"],1,
    ["CUP_srifle_M14_DMR","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"],2
]];
_eliteLoadoutData set ["sniperRifles", [
    ["CUP_srifle_G22_blk","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_5Rnd_762x67_G22"],[],"CUP_bipod_VLTOR_Modpod_black"],
    ["CUP_srifle_M107_Pristine","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107","ACE_10Rnd_127x99_Mag","ACE_10Rnd_127x99_AMAX_Mag","ACE_10Rnd_127x99_API_Mag"],[],""]
]];
_eliteLoadoutData set ["sidearms", [
    ["CUP_hgun_Deagle","","","",["CUP_7Rnd_50AE_Deagle"],[],""],3,
    ["CUP_hgun_Glock17_blk","","","",["CUP_17Rnd_9x19_glock17"],[],""],5,
    ["CUP_hgun_MP7","","","",["CUP_20Rnd_46x30_MP7"],[],""],1,
    ["CUP_hgun_MicroUzi","","","",["CUP_30Rnd_9x19_UZI"],[],""],2,
    ["CUP_hgun_Mac10","","","",["CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_45ACP_Green_Tracer_MAC10_M"],[],""],3,
    ["CUP_hgun_SWM327MP","","","",["CUP_8Rnd_357SW_M"],[],""],3
]];
_eliteLoadoutData set ["lightATLaunchers", ["CUP_launch_M136_Loaded","","","",["CUP_M136_M"]]];
_eliteLoadoutData set ["lightHELaunchers", ["CUP_launch_Mk153Mod0_blk","","","",["CUP_SMAW_NE_M"],[],""]];
_eliteLoadoutData set ["ATLaunchers",["CUP_launch_Mk153Mod0_blk","","","CUP_optic_SMAW_Scope",["CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M"],[],""]];
_eliteLoadoutData set ["missileATLaunchers", ["CUP_launch_M47","","","",["CUP_Dragon_EP1_M"]]];
_eliteLoadoutData set ["AALaunchers", ["CUP_launch_FIM92Stinger_Loaded","","","",["CUP_Stinger_M",1]]];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", ["CUP_NVG_PVS15_black"]]; 
_sfLoadoutData set ["uniforms", ["CUP_I_B_PMC_Unit_24"]];
_sfLoadoutData set ["vests", ["CUP_V_PMC_CIRAS_Black_Veh"]];
_sfLoadoutData set ["Hvests", ["CUP_V_PMC_CIRAS_Black_TL"]];
_sfLoadoutData set ["glVests", ["CUP_V_PMC_CIRAS_Black_Grenadier"]];
_sfLoadoutData set ["helmets", ["CUP_H_OpsCore_Black_SF"]];
_sfLoadoutData set ["masks", ["CUP_G_ESS_BLK_Scarf_Face_Blk"]];
_sfLoadoutData set ["goggles", ["CUP_G_ESS_BLK_Scarf_Blk"]];
_sfLoadoutData set ["binoculars", ["CUP_LRTV","CUP_SOFLAM"]];
_sfLoadoutData set ["backpacks", ["B_AssaultPack_blk"]];
_sfLoadoutData set ["atBackpacks", ["B_Carryall_blk"]];

_sfLoadoutData set ["slRifles", [
    ["CUP_arifle_SBR_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green","CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],
    ["CUP_arifle_mk18_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_AN_PAS_13c1",["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green","CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],
    ["CUP_arifle_AK109","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Tan_L","CUP_optic_GOSHAWK",["CUP_30Rnd_Subsonic_762x39_AK103_bakelite_M"],[],""]
]];
_sfLoadoutData set ["rifles", [
    ["CUP_arifle_SBR_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green","CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],
    ["CUP_arifle_mk18_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green","CUP_100Rnd_556x45_BetaCMag_ar15"],[],""],
    ["CUP_arifle_AK109","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,["CUP_30Rnd_Subsonic_762x39_AK103_bakelite_M"],[],""],
    ["CUP_arifle_XM8_Carbine_FG_Rail_Fish","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_30Rnd_556x45_XM8"],[],""]
]];
_sfLoadoutData set ["carbines", [
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_30Rnd_556x45_XM8"],[],""],
    ["CUP_arifle_M4_MOE_BW","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,["CUP_10Rnd_50BW_Mag_M4_M"],[],""],
    ["CUP_arifle_AK104","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,["CUP_30Rnd_Subsonic_762x39_AK103_bakelite_M"],[],""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_mk18_m203_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_militaryRISOptics,["CUP_30Rnd_556x45_EMAG_Tan","CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Green"],["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","CUP_1Rnd_HEDP_M203","UGL_FlareGreen_F","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"],""],
    ["CUP_arifle_AK103_GL","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Black_L",_AKOptics,["CUP_30Rnd_Subsonic_762x39_AK103_bakelite_M"],["CUP_1Rnd_HE_GP25_M","CUP_1Rnd_HE_GP25_M","CUP_1Rnd_HE_GP25_M","CUP_1Rnd_HE_GP25_M","CUP_IlumFlareRed_GP25_M","CUP_1Rnd_SMOKERED_GP25_M","CUP_1Rnd_SMOKEGREEN_GP25_M"],""]
]];
_sfLoadoutData set ["machineGuns", [
    ["CUP_lmg_m249_para_gl","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"],[],""],0.5,
    ["CUP_lmg_Mk48","muzzle_snds_H_MG","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""],1
]];
_sfLoadoutData set ["SMGs", [
    ["SMG_03_TR_camo","muzzle_snds_570","CUP_acc_ANPEQ_15_Black",_militaryRISOptics,["50Rnd_570x28_SMG_03"],[],""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","CUP_muzzle_snds_KZRZP_SVD","CUP_SVD_camo_g","CUP_optic_PSO_3",["CUP_10Rnd_762x54_SVD_M"],[],""],
    ["CUP_srifle_M14_DMR","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_20Rnd_762x51_DMR","CUP_20Rnd_762x51_DMR","ACE_20Rnd_762x51_M993_AP_Mag"],[],"CUP_bipod_VLTOR_Modpod_black"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M107_Pristine","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107","ACE_10Rnd_127x99_Mag","ACE_10Rnd_127x99_AMAX_Mag","ACE_10Rnd_127x99_API_Mag"],[],""]
]];
_sfLoadoutData set ["sidearms", [
    ["CUP_hgun_Deagle","","","",["CUP_7Rnd_50AE_Deagle"],[],""],3,
    ["CUP_hgun_MP7","","","",["CUP_40Rnd_46x30_MP7"],[],""],1,
    ["CUP_hgun_MicroUzi","","","",["CUP_30Rnd_9x19_UZI"],[],""],2
]];
_eliteLoadoutData set ["lightATLaunchers", ["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1]]];
_eliteLoadoutData set ["lightHELaunchers", 
    ["CUP_launch_Mk153Mod0_blk","","","",["CUP_SMAW_NE_M"],[],""]];
_eliteLoadoutData set ["ATLaunchers",
    ["CUP_launch_Mk153Mod0_blk","","","CUP_optic_SMAW_Scope",["CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M"],[],""]];
_sfLoadoutData set ["missileATLaunchers", ["CUP_launch_M47","","","",["CUP_Dragon_EP1_M"]]];
_sfLoadoutData set ["AALaunchers", ["CUP_launch_FIM92Stinger_Loaded","","","",["CUP_Stinger_M",1]]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", [
    "U_I_C_Soldier_Bandit_2_F"
    , "U_C_Mechanic_01_F"
    , "U_C_HunterBody_grn"
    , "U_C_E_LooterJacket_01_F"
]];
_crewLoadoutData set ["vests", ["CUP_V_I_RACS_Carrier_Rig_wdl_3"]];
_crewLoadoutData set ["helmets", ["H_Cap_oli_hs"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["CUP_U_C_Pilot_01"]];
_pilotLoadoutData set ["vests", ["CUP_V_I_RACS_Carrier_Rig_3"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_B"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.
private _squadLeaderTemplate = {

    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["slHat"] call _fnc_setHelmet;
    ["Slmasks"] call _fnc_setFacewear;
    ["backpacks"] call _fnc_setBackpack;

    ["slRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
//CKECK if this works. 10% of rifleman should get a lightHELauncher
    if (random 1 < 0.1) then {
        [["lightHELaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    };
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

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

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    [["Medvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["carbines","SMGs"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

//THIS SHOULD MAKE missileATLaunchers 5% of the time, CHECK IF WORKS
    if (random 1 < 0.05) then {
        [["missileATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    } else {
        ["ATLaunchers"] call _fnc_setLauncher;
    };
//ORIGINAL SCRIPT[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
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
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["AALaunchers"] call _fnc_setLauncher;
    ["launcher", 3] call _fnc_addMagazines;
//    };
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

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

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

private _marksmanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
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
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["sniperRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 7] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    [selectRandomWeighted [[], 0.75, "helmets", 1]] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["masks"] call _fnc_setFacewear;

    ["PoliceGuns"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["masks"] call _fnc_setFacewear;

    [selectRandom ["SMGs"]] call _fnc_setPrimary;
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
    ["uniforms"] call _fnc_setUniform;
    ["masks"] call _fnc_setFacewear;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "masks", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;
    ["officerMasks"] call _fnc_setFacewear;

    ["officerRifles"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["officerSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _patrolSniperTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["cloakmasks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["cloakUniforms"] call _fnc_setUniform;

    ["cloakRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakmasks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["cloakUniforms"] call _fnc_setUniform;

    ["cloakCarbines"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs","SlNVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
