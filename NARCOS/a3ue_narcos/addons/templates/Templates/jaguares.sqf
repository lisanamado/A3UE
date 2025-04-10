//////////////////////////
//   Side Information   //
//////////////////////////

//Example on how to use mod content
//If CUP
/* if (isClass (configFile >> "cfgVehicles" >> "CUP_ZSU23_Base")) then {
    #include "..\MOD_content\CUP\Vanilla_AAF\Vehicles_AAF.sqf"
}; */


//or like this

//Example on how to use mod content
/* if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
	_gunship pushBack "vnx_b_air_ac119_01_01";
  	_transportplanes append ["vnx_b_air_ac119_02_01","vnx_b_air_ac119_02_02"];
	_planesCAS pushBack "vnx_b_air_ac119_04_01";
}; */

/*
// Note: muzzle, rail, sight, and bipod slots can be either a string for a specific item, or an array for a list of items. Arrays can be defined separately from weapons.
// Arrays (both for attachments and for the larger lists of weapons) can either be a regular list or a weighted list that alternates between item and weight.
// See https://community.bistudio.com/wiki/selectRandomWeighted for details.
// If a given spawn list is made a weighted list, make sure that anything that adds to that list (e.g. optional DLC compatibility) is also a weighted list, or everything breaks.
// Everything in this also applies to e.g. uniforms and equipment, but does NOT apply to vehicles.

// Example of a weighted spawn list, with attachments and etc, using all possible methods of declaring lists:

_sfM4Optics = ["optic_holo", 2, "optic_acog", 1, "", 1]; //weighted list - 50% chance holo, 25% chance acog, 25% chance nothing
_sfM4Attachments = ["flashlight", ""]; //unweighted list, even distribution between flashlight or nothing
_sfLoadoutData set ["rifles", [
    ["rifle_m4a1", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 2,
    ["rifle_m4a1_camo", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 1 //2:1 ratio of regular and camo M4s
]]; 
_sfM4Optics append ["optic_thermal", 0.1]; //this works even if done after the optics lists are applied since _sfM4Optics is stored as a reference, which is useful for DLC/mod compats

*/

#include "..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "Los Jaguares"] call _fnc_saveToTemplate;
["spawnMarkerName", "Jaguares al acecho"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\jaguares.paa)] call _fnc_saveToTemplate;
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
["vehiclesBasic", ["C_Quadbike_01_F","C_Hatchback_01_sport_F","CUP_C_Golf4_Sport_random_Civ","C_Offroad_01_covered_F","CUP_C_Octavia_CIV"]] call _fnc_saveToTemplate;			 // unarmed or armed, with 0-2 passengers
["vehiclesLightUnarmed", [
    "CUP_I_Hilux_unarmed_IND_G_F","CUP_I_Hilux_armored_unarmed_IND_G_F","I_G_Offroad_01_F","CUP_I_Datsun_4seat","CUP_C_Datsun","C_Offroad_01_F","CUP_C_SUV_TK","CUP_C_SUV_CIV"
]] call _fnc_saveToTemplate;		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", [
    "CUP_I_nM1025_M2_ION","CUP_I_nM1025_M240_ION","CUP_I_nM1025_Mk19_ION",
    "CUP_B_nM1025_SOV_M2_ION","CUP_B_nM1025_SOV_Mk19_ION",
    "CUP_I_Hilux_armored_BMP1_IND_G_F", "CUP_I_Hilux_armored_BTR60_IND_G_F"
]] call _fnc_saveToTemplate;             // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesCars", [
    "C_Offroad_01_F","C_Quadbike_01_F","C_Hatchback_01_sport_F","CUP_C_Golf4_Sport_random_Civ","CUP_C_Octavia_CIV"
]] call _fnc_saveToTemplate;		 // vehicle that can carry only passengers

["vehiclesTrucks", [
    "CUP_B_MTVR_HIL",
    "CUP_B_MTVR_USMC",
    "CUP_O_Ural_RU"
]] call _fnc_saveToTemplate;		 // vehicle that can carry troops and cargoboxes
["vehiclesCargoTrucks", [
    "C_Truck_02_transport_F",
    "CUP_C_Ural_Open_Civ_01",
    "CUP_O_Ural_Open_RU",
    "C_Van_01_transport_F"
]] call _fnc_saveToTemplate;		 // vehicle that can carry only cargoboxes
["vehiclesAmmoTrucks", [
    "CUP_I_T810_Reammo_LDF",
    "CUP_O_Ural_Reammo_SLA",
    "I_E_Truck_02_Ammo_F",
    "CUP_B_M113A3_Reammo_olive_USA",
    "CUP_B_MTVR_Ammo_HIL"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to rearm vehicles
["vehiclesRepairTrucks", [
    "I_G_Offroad_01_repair_F",
    "C_Truck_02_box_F",
    "CUP_I_T810_Repair_LDF",
    "CUP_O_Ural_Repair_RU",
    "CUP_B_MTVR_Repair_HIL"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to repair vehicles
["vehiclesFuelTrucks", [
    "CUP_I_T810_Refuel_LDF",
    "C_Truck_02_fuel_F",
    "CUP_B_MTVR_Refuel_HIL"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to refuel vehicles
["vehiclesMedical", [
    "CUP_B_LR_Ambulance_CZ_W",
    "C_Van_02_medevac_F"
]] call _fnc_saveToTemplate;		 // vehicle with capability to provide healing
["vehiclesLightAPCs", [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_B_Jackal2_L2A1_FIA","CUP_B_Jackal2_GMG_FIA"
]] call _fnc_saveToTemplate;             // armed, lightly armoured, with 6-8 passengers 
["vehiclesAPCs", [
    "CUP_B_MTLB_pk_FIA","CUP_B_BTR80_FIA","CUP_B_BTR60_FIA","CUP_B_BTR80A_FIA",
    "CUP_B_M1126_ICV_M2_Woodland","CUP_B_M1126_ICV_MK19_Woodland",
    "CUP_B_M113A1_USA","CUP_B_M113A3_USA"
]] call _fnc_saveToTemplate;                  // armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAirborne", [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_O_BRDM2_CSAT_T","CUP_O_BRDM2_HQ_CSAT_T",
    "CUP_B_Jackal2_L2A1_FIA","CUP_B_Jackal2_GMG_FIA"
]] call _fnc_saveToTemplate;              // airborne vehicles, could be with passenger seats or just a crew 
["vehiclesIFVs", [
    "CUP_B_LAV25M240_USMC","CUP_B_LAV25_USMC",
    "CUP_O_BMP2_CSAT_T","CUP_O_BMP1_CSAT_T","CUP_O_BMP1P_CSAT_T","CUP_O_BMP3_CSAT_T"
]] call _fnc_saveToTemplate;                  // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesTanks", [
    "CUP_I_T55_NAPA","CUP_I_T55_TK_GUE",
    "CUP_I_T72_NAPA"
]] call _fnc_saveToTemplate;                 // cannon armed, heavely armored, passengers will be ignored
["vehiclesLightTanks", [
    "CUP_I_T34_TK_GUE","CUP_I_T34_NAPA",
    "CUP_I_T55_NAPA","CUP_I_T55_TK_GUE"
]] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", [
    "CUP_I_Hilux_armored_igla_IND_G_F", "CUP_I_Hilux_armored_zu23_IND_G_F",
    "CUP_I_Hilux_igla_IND_G_F", "CUP_I_Hilux_M2_IND_G_F",
    "CUP_I_Datsun_AA_Random", "CUP_I_Ural_ZU23_NAPA","CUP_B_M163_Vulcan_USA"
]] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", ["CUP_B_LCU1600_USMC"]] call _fnc_saveToTemplate;	// boat that can carry passengers and cargoboxes
["vehiclesGunBoats", ["CUP_B_RHIB_HIL","CUP_B_RHIB2Turret_HIL"]] call _fnc_saveToTemplate;              // armed boat, with passengers(?)
//["vehiclesAmphibious", []] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)
["vehiclesPlanesCAS", ["CUP_I_CESSNA_T41_ARMED_ION"]] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", ["CUP_I_CESSNA_T41_ARMED_ION"]] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
["vehiclesPlanesTransport", ["CUP_B_C130J_USMC","CUP_B_C47_USA","CUP_O_AN2_TK"]] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently
["vehiclesPlanesGunship", [
    "CUP_B_AC47_Spooky_USA",
    "CUP_I_412_Military_Armed_AT_PMC",
    "CUP_I_UH1H_gunship_TK_GUE",
    "CUP_I_CESSNA_T41_ARMED_ION"
]] call _fnc_saveToTemplate;     // planes like V-44X armed, AC-130 or pelican from OPTRE, used in GUNSHIP support
//probably can also be a helicopter
["vehiclesHelisLight", [
    "B_Heli_Light_01_F",
    "CUP_I_412_Mil_Transport_PMC",
    "CUP_I_UH1H_TK_GUE",
    "CUP_B_UH1Y_UNA_USMC"
]] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", [
    "CUP_I_UH1H_armed_TK_GUE",
    "CUP_B_CH47F_GB",
    "CUP_I_412_Military_Armed_PMC"
]] call _fnc_saveToTemplate;        // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", [
    "CUP_I_UH1H_gunship_TK_GUE",
    "B_Heli_Light_01_dynamicLoadout_F"
]] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", [
    "CUP_I_412_Military_Armed_AT_PMC"
]] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc
["vehiclesAirPatrol", [
    "CUP_I_UH1H_armed_TK_GUE",
    "CUP_I_UH1H_TK_GUE",
    "B_Heli_Light_01_dynamicLoadout_F",
    "CUP_I_CESSNA_T41_ARMED_ION"
]] call _fnc_saveToTemplate;             // preferably light helicopters(armed or unarmed), used in base patrol near bases

["vehiclesArtillery", [
    "CUP_I_Hilux_armored_podnos_IND_G_F", "CUP_I_Hilux_armored_MLRS_IND_G_F",
    "CUP_I_Hilux_podnos_IND_G_F"
]] call _fnc_saveToTemplate;             // wheeled or tracked vehicle with artillery cannon or rockets
["magazines", createHashMapFromArray [
    ["CUP_I_Hilux_armored_podnos_IND_G_F",["8Rnd_82mm_Mo_shells"]],
    ["CUP_I_Hilux_podnos_IND_G_F",["8Rnd_82mm_Mo_shells"]],
    ["CUP_I_Hilux_armored_MLRS_IND_G_F",["CUP_12Rnd_MLRS_HE"]]
]] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", []] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", ["I_UAV_01_F","I_UAV_06_F"]] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled

//Config special vehicles
["vehiclesMilitiaLightArmed", [
    "CUP_I_Hilux_SPG9_IND_G_F","CUP_I_Hilux_armored_SPG9_IND_G_F",
    "I_G_Offroad_01_AT_F","I_G_Offroad_01_armed_F",
    "CUP_I_Datsun_PK_Random",
    "CUP_B_LR_MG_CZ_W","CUP_O_LR_SPG9_TKA",
    "CUP_I_Hilux_BMP1_IND_G_F","CUP_I_Hilux_btr60_IND_G_F"
]] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", [
    "C_Truck_02_covered_F",
    "CUP_C_Ural_Civ_03",
    "CUP_C_V3S_Covered_TKC"
]] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", [
    "CUP_C_LR_Transport_CTK","CUP_I_Hilux_unarmed_IND_G_F","CUP_I_Hilux_armored_unarmed_IND_G_F",
    "I_G_Offroad_01_F","CUP_I_Datsun_4seat","CUP_C_Datsun","C_Offroad_01_F","CUP_C_SUV_TK","CUP_C_SUV_CIV"
]] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces
["vehiclesMilitiaAPCs", [
    "CUP_B_LR_Special_CZ_W","CUP_I_SUV_Armored_ION",
    "CUP_B_nM1025_SOV_Mk19_ION","CUP_B_nM1025_SOV_M2_ION",
    "CUP_O_BRDM2_CSAT_T","CUP_O_BRDM2_HQ_CSAT_T"
]] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", [
    "CUP_C_SUV_TK","I_G_Offroad_01_F","CUP_I_Hilux_unarmed_IND_G_F"
]] call _fnc_saveToTemplate;                // cars used by police forces

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
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;                // anti-personal mines

//TO BE TESTED, SHOULD ADD VEHICLES IF BRAZIL MOD LOADED
if (isClass (configFile >> "cfgVehicles" >> "BRAF_AM11_CFN")) then {
    _vehiclesLightArmed pushBach "BRAF_AM11_Armed_CFN";
    _vehiclesLightUnarmed pushBack "BRAF_AM11_CFN";
    _vehiclesTrucks pushBack "BRAF_Worker_CFN";
    _vehiclesCargoTrucks pushBack "BRAF_Worker_Cargo_CFN";
    _vehiclesAmmoTrucks pushBack "BRAF_Worker_Ammo_CFN";
    _vehiclesFuelTrucks pushBack "BRAF_Worker_Fuel_CFN";
    _vehiclesRepairTrucks pushBack "BRAF_Worker_Repair_CFN";
    _vehiclesMedical pushBack "BRAF_Worker_Health_CFN";
    _vehiclesLightAPCs pushBack "braf_guarani_eb_unarmed";
    _vehiclesAPCs pushBack "braf_guarani_eb_remax";
    _vehiclesLightTanks pushBack "BRAF_EE9_Cascavel_EB";
};

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
    ["CUP_I_CESSNA_T41_ARMED_ION", ["civ_14", 1]],
    ["CUP_B_AC47_Spooky_USA", ["EmeraldAirlines", 1]],
    ["CUP_B_C47_USA", ["GreyOrange", 1]]
]];

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

["sfVoices", [
    "Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG"
]] call _fnc_saveToTemplate;
["sfFaces", [
    "Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_05"
]] call _fnc_saveToTemplate;
["eliteVoices", [
    "Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG"
]] call _fnc_saveToTemplate;
["eliteFaces", [
    "WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09"
]] call _fnc_saveToTemplate;


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

_loadoutData set ["lightATLaunchers", ["CUP_launch_M72A6_Special"]];
_loadoutData set ["lightHELaunchers", ["CUP_launch_RShG2"]];
_loadoutData set ["ATLaunchers", [["CUP_launch_RPG7V","","","",["CUP_PG7V_M","CUP_PG7VL_M","CUP_PG7VM_M","CUP_OG7_M","CUP_PG7VR_M","CUP_TBG7V_M"],[],""]]];
_loadoutData set ["missileATLaunchers", ["CUP_launch_M47"]];
_loadoutData set ["AALaunchers", ["CUP_launch_FIM92Stinger","CUP_launch_Igla","CUP_launch_9K32Strela"]];
_loadoutData set ["sidearms", []];

_militaryRISOptics = [
    "CUP_optic_AC11704_Black",
    "CUP_optic_Aimpoint_5000",
    "CUP_optic_G33_HWS_BLK",
    "CUP_optic_HoloBlack",
    "CUP_optic_ZeissZPoint_hex",
    "CUP_optic_Elcan_SpecterDR_coyote",
    ""
];
_eliteRISOptics = [
    "CUP_optic_AC11704_Black",1,
    "CUP_optic_G33_HWS_BLK",1,
    "CUP_optic_ZeissZPoint_hex",1,
    "CUP_optic_Elcan_SpecterDR_coyote",1,
    "CUP_optic_Elcan_SpecterDR_KF_black",1,
    "optic_DMS",1,
    "CUP_optic_ACOG_TA648_308_RDS_Black",0.5,
    "",1
];
_militiaRISOptics = [
    "CUP_optic_CompM2_low",1,
    "CUP_optic_CompM4",1,
    "CUP_optic_Eotech553",1,
    "CUP_optic_HoloBlack",1,
    "CUP_optic_CompM2_Coyote",1,
    "",4
];
_AKOptics = [
    "CUP_optic_1p63",1,
    "CUP_optic_PSO_3",0.1,
    "CUP_optic_OKP_7",0.8,
    "CUP_optic_Kobra",0.5,
    "CUP_optic_PSO_1_AK",0.7,
    "CUP_optic_PSO_1_1",0.2,
    "",2
];

private _AKMags = selectRandomWeighted [
    ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],0.1,
    ["CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],0.5,
    ["CUP_30Rnd_762x39_AK47_M"],1.5,
    ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"],1,
    ["CUP_30Rnd_Subsonic_762x39_AK103_bakelite_M"],0.25
];
private _M1014Mags = selectRandomWeighted [
    ["CUP_8Rnd_12Gauge_Pellets_No00_Buck"],1.5,
    ["CUP_8Rnd_12Gauge_Slug"],1,
    ["CUP_8Rnd_12Gauge_HE"],0.5
];
private _UziMags = selectRandomWeighted [
    ["CUP_32Rnd_9x19_UZI_M"],1,
    ["CUP_72Rnd_9x19_UZI_M"],0.25
];
private _FALMags = selectRandomWeighted [
    ["CUP_20Rnd_762x51_FNFAL_M"],1,
    ["CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_Woodland_M"],0.75,
    ["CUP_30Rnd_762x51_FNFAL_M"],0.5,
    ["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],0.25
];
private _GalilMags = selectRandomWeighted [
    ["CUP_35Rnd_556x45_Galil_Mag"],1,
    ["CUP_35Rnd_556x45_Green_Tracer_Galil_Mag"],0.5,
    ["CUP_50Rnd_556x45_Galil_Mag"],0.25,
    ["CUP_50Rnd_556x45_Green_Tracer_Galil_Mag"],0.25
];
private _M4Mags = selectRandomWeighted [
    ["CUP_30Rnd_556x45_Stanag"],1,
    ["CUP_30Rnd_556x45_Stanag_Mk16_woodland_Tracer_Green"],0.5,
    ["CUP_60Rnd_556x45_SureFire"],0.25,
    ["CUP_60Rnd_556x45_SureFire_Tracer_Green"],0.25
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
_loadoutData set ["NVGs", ["CUP_NVG_PVS14", "CUP_NVG_HMNVS"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["CUP_Vector21Nite"]];

_loadoutData set ["traitorUniforms", ["CUP_U_C_Tracksuit_02"]];
_loadoutData set ["traitorVests", ["CUP_V_B_JPC_Black_Light"]];
_loadoutData set ["traitorHats", ["CUP_H_RUS_K6_3_Shield_Down_black"]];

_loadoutData set ["officerUniforms", ["U_C_FormalSuit_01_khaki_F"]];
_loadoutData set ["officerVests", ["CUP_V_C_Police_Holster"]];
_loadoutData set ["officerHats", ["H_Hat_tan"]];
_loadoutData set ["officerMasks", ["G_Squares_Tinted"]]
_loadoutData set ["officerRifles", ["CUP_arifle_AKS_Gold"]];
_loadoutData set ["officerSidearms", ["CUP_hgun_TaurusTracker455_gold"]];


_loadoutData set ["cloakUniforms", ["CUP_U_O_RUS_Ghillie"]];
_loadoutData set ["cloakVests", ["CUP_V_B_PASGT_no_bags"]];
_loadoutData set ["cloakRifles", [
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],"CUP_bipod_Harris_1A2_L"],1,
    ["CUP_srifle_M24_blk","","","CUP_optic_LeupoldMk4_20x40_LRT",[],[],""],0.5,
]];
_loadoutData set ["cloakCarbines", [
    ["CUP_arifle_M4A1_standard_short_dsrt","","",_militaryRISOptics,[],[],""],
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,[],[],""]
]];
_loadoutData set ["cloakSidearms", []];
_loadoutData set ["cloakmasks", ["G_Balaclava_Flames1"]];

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
    , "G_Balaclava_BlueStrips"
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
    ["CUP_sgun_M1014_solidstock","","","",_M1014Mags,[],""],3,
    ["CUP_smg_M3A1","","","",[],[],""],3,
    ["CUP_sgun_CZ584","","","",[],[],""],4,
    ["CUP_sgun_SPAS12","","","",_M1014Mags,[],""],1,
    ["sgun_HunterShotgun_01_sawedoff_F","","","",[],[],""],2,
    ["CUP_smg_Mac10","","","",[],[],""],2,
    ["CUP_smg_UZI","","","",_UziMags,[],""],1
]];
_policeLoadoutData set ["sidearms", [
    ["CUP_hgun_TaurusTracker","","","",[],[],""],4,
    ["CUP_hgun_TEC9","","","",[],[],""],4,
    ["CUP_hgun_Makarov","","","",[],[],""],3
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
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
/*_militiaLoadoutData set ["Slmasks", [
    "G_Bandanna_Skull2"
]];
_militiaLoadoutData set ["masks", [
    "G_Bandanna_aviator"
    , "G_Bandanna_khk"
    , "G_Bandanna_blk"
    , "G_Bandanna_oli"
    , "G_Bandanna_sport"
    , "G_Bandanna_beast"
    , "G_Bandanna_BlueFlame1"
    , "G_Bandanna_BlueFlame2"
    , "G_Bandanna_OrangeFlame1"
    , "G_Bandanna_shades"
    , "G_Bandanna_Vampire_01"
]];*/
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
    ["CUP_arifle_AKMN_railed","","",_militiaRISOptics,_AKMags,[],""],1,
    ["CUP_arifle_FNFAL5060_railed","","",_militiaRISOptics,_FALMags,[],""],3,
    ["CUP_arifle_Galil_SAR_black","","",_militiaRISOptics,_GalilMags,[],""],2,
    ["CUP_arifle_M16A4_Grip","","",_militiaRISOptics,[],[],""],1
]];
_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_AKM","","","",_AKMags,[],""],3,
    ["CUP_arifle_M16A1","","","",[],[],""],2,
    ["CUP_sgun_AA12","","","",["CUP_20Rnd_B_AA12_Slug","CUP_20Rnd_B_AA12_Buck_00","CUP_20Rnd_B_AA12_Buck_0","CUP_20Rnd_B_AA12_Buck_00"],[],""],2,
    ["CUP_arifle_FNFAL5060","","","",_FALMags,[],""],3,
    ["CUP_arifle_FNFAL5060_railed","","",_militiaRISOptics,_FALMags,[],""],1,
    ["CUP_arifle_M16A2","","",_militiaRISOptics,[],[],""],1
]];

_militiaLoadoutData set ["carbines", [
    ["CUP_arifle_Colt727","","","",_M4Mags,[],""],1,
    ["CUP_arifle_FNFAL_OSW_railed","","","",_FALMags,[],""],1,
    ["CUP_Famas_F1","","","",[],[],""],0.1
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",[],[],""],1,
    ["CUP_glaunch_M79","","","",[],[],""],5,
    ["CUP_glaunch_6G30","","","",[],[],""],2
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_M3A1","","","",[],[],""],5,
    ["CUP_smg_Mac10","","","",[],[],""],3,
    ["CUP_smg_MP5A5","","","",[],[],""],2,
    ["CUP_smg_MP5A5_Rail_VFG","","","",[],[],""],0.5,
    ["CUP_smg_UZI","","","",_UziMags,[],""],3
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_arifle_RPK74","","","",[],[],""],1,
    ["CUP_lmg_M60","","","",[],[],""],1,
    ["CUP_lmg_FNMAG_RIS","","","",[],[],""],2
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14","","","optic_DMS",[],[],""],2,
    ["CUP_srifle_LeeEnfield","","","CUP_optic_no23mk2",[],[],""],3,
    ["CUP_srifle_CZ550","","","",[],[],""],2,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],""],1
]];
_militiaLoadoutData set ["sidearms", [
    ["CUP_hgun_TEC9_FA","","","",[],[],""],2,
    ["CUP_hgun_Makarov","","","",[],[],""],3,
    ["CUP_hgun_PB6P9","","","",[],[],""],2
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["slHat", ["H_Cap_headphones"]];
/*_militaryLoadoutData set ["Slmasks", ["CUP_PMC_Facewrap_Skull"]];
_militaryLoadoutData set ["masks", [
    "CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Ember"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Dark"
    , "CUP_PMC_Facewrap_Black"
    , "CUP_PMC_Facewrap_Ranger"
    , "CUP_PMC_Facewrap_Red"
    , "CUP_PMC_Facewrap_Smilie"
    , "CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset"
    , "CUP_G_PMC_Facewrap_Tan_Glasses_Ember"
    , "CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset"
    , "CUP_G_PMC_Facewrap_Tropical_Glasses_Ember"
    , "CUP_PMC_Facewrap_Tropical"
]];*/
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
    ["CUP_arifle_M4_MOE_BW","","",_militaryRISOptics,_M4Mags,[],""],1,
    ["CUP_arifle_M4A1_SOMMOD_hex","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,_M4Mags,[],""],0.5,
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,_FALMags,[],"CUP_bipod_FNFAL"],4,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,_AKMags,[],""],3
]];
_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_M16A4_Grip","","",_militaryRISOptics,_M4Mags,[],""],2,
    ["CUP_arifle_AKM","","","",_AKMags,[],""],5,
    ["CUP_arifle_M16A1","","",_militiaRISOptics,_FALMags,[],""],3,
    ["CUP_arifle_AKS","","",_AKOptics,_AKMags,[],""],2,
    ["CUP_arifle_FNFAL5062_railed","","",_militiaRISOptics,_FALMags,[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_FNFAL_railed_woodland","","",_militiaRISOptics,_FALMags,[],"CUP_bipod_FNFAL"],3,
    ["CUP_arifle_FNFAL5060_railed","","",_militaryRISOptics,["CUP_30Rnd_762x51_FNFAL_M"],[],""],2,
    ["CUP_arifle_M4A1","","","",_M4Mags,[],""],3,
    ["CUP_arifle_M16A2","","",_militaryRISOptics,[],[],""],1
]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_M4A1_standard_short_dsrt","","",_militiaRISOptics,_M4Mags,[],""],2,
    ["CUP_arifle_Colt727","","","",[],[],""],2,
    ["CUP_Famas_F1","","","",[],[],""],0.2,
    ["CUP_arifle_FNFAL_OSW_railed","","",_militaryRISOptics,_FALMags,[],""],1,
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,[],[],""],0.3
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",[],[],""],
    ["CUP_arifle_M4A1_GL_carryhandle","","","",[],[],""],
    ["CUP_glaunch_6G30","","","",[],[],""]
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_bizon","","","_AKOptics",[],[],""],1,
    ["CUP_smg_MP5A5","","","",[],[],""],4,
    ["CUP_smg_MP5A5_Rail_VFG","","",_militaryRISOptics,[],[],""],1.5,
    ["CUP_smg_vityaz_vfg_top_rail","","","",[],[],""],2
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_FNMAG_RIS","","","",[],[],""],2,
    ["CUP_lmg_M60","","","",[],[],""],2,
    ["CUP_lmg_m249_SQuantoon","","","",[],[],""],1,
    ["CUP_arifle_RPK74","","","",[],[],""],1,
    ["CUP_lmg_m249_pip1","","","",[],[],""],2,
    ["CUP_lmg_Pecheneg_B50_vfg","","",_AKOptics,[],[],""],2
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",[],[],""],1,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],"CUPF_bipod_Harris_1A2_L"],3
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M24_blk","","","CUP_optic_LeupoldMk4_20x40_LRT",[],[],""],1,
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",[],[],""],0.5
]];
_militaryLoadoutData set ["sidearms", [
    ["CUP_hgun_Glock17_blk","","","",[],[],""],2,
    ["CUP_hgun_PB6P9","","","",[],[],""],2,
    ["CUP_hgun_Compact","","","",[],[],""],2,
    ["CUP_hgun_TT","","","",[],[],""],3,
    ["CUP_hgun_SWM327MP","","","",[],[],""],2,
    ["CUP_hgun_TEC9_FA","","","",[],[],""],2,
    ["CUP_hgun_Mac10","","","",[],[],""],1
]];
_militaryLoadoutData set ["lightATLaunchers", ["CUP_launch_M136"]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["CUP_NVG_PVS15_black"]];
//_eliteLoadoutData set ["Slmasks", ["CUP_G_ESS_RGR_Facewrap_Skull"]];
_eliteLoadoutData set ["SlHat", ["CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_EP_Tan"]];
_eliteLoadoutData set ["masks", [
    "CUP_G_RUS_Ratnik_Balaclava_Desert_3"
    /*"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Ember"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Dark"
    , "CUP_G_ESS_BLK_Facewrap_Black_GPS"
    , "CUP_G_ESS_BLK_Scarf_Face_Blk"
    , "CUP_G_ESS_RGR_Facewrap_Tropical"
    , "CUP_G_ESS_KHK_Facewrap_Tan"*/
]];
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

_eliteLoadoutData set ["sidearms", [
    ["CUP_hgun_Deagle","","","",[],[],""],3,
    ["CUP_hgun_Glock17_blk","","","",[],[],""],5,
    ["CUP_hgun_MP7","","","",[],[],""],1,
    ["CUP_hgun_MicroUzi","","","",[],[],""],2,
    ["CUP_hgun_Mac10","","","",[],[],""],3,
    ["CUP_hgun_SWM327MP","","","",[],[],""],3
]];
_eliteLoadoutData set ["slRifles", [
    ["CUP_arifle_SBR_black","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_eliteRISOptics,_M4Mags,[],""],2,
    ["CUP_arifle_M4A1_SOMMOD_hex","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,_M4Mags,[],""],2,
    ["CUP_arifle_AK109","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_AKOptics,_AKMags,[],""],3
]];
_eliteLoadoutData set ["rifles", [
    ["CUP_arifle_AK103","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,_AKMags,[],""],2,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,_AKMags,[],""],3,
    ["CUP_arifle_FNFAL_OSW_railed","","",_eliteRISOptics,_FALMags,[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_M4A1_SOMMOD_Grip_black","","CUP_acc_ANPEQ_15",_militaryRISOptics,_M4Mags,[],""],3,
    ["CUP_arifle_AUG_A1","","","",[],[],""],0.5,
    ["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,_M4Mags,[],""],3,
    ["CUP_arifle_XM8_Carbine_FG_Rail_Fish","","",_eliteRISOptics,[],[],""],0.5
]];
_eliteLoadoutData set ["carbines", [
    ["CUP_arifle_M4_MOE_BW","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,_M4Mags,[],""],3,
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,[],[],""],1,
    ["CUP_Famas_F1","","","",[],[],""],0.2,
    ["CUP_arifle_AK104","","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,_AKMags,[],""],3
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["CUP_glaunch_6G30","","","",[],[],""],1,
    ["CUP_glaunch_M32","","","",[],[],""],1,
    ["CUP_arifle_AK103_GL","","",_AKOptics,_AKMags,[],""],1,
    ["CUP_arifle_M4A1_GL_carryhandle","","","",_M4Mags,[],""],1
]];
_eliteLoadoutData set ["machineGuns", [
    ["CUP_lmg_m249_para_gl","","",_militaryRISOptics,[],[],""],0.5,
    ["CUP_lmg_m249_pip1","","",_eliteRISOptics,[],[],""],2.5,
    ["CUP_lmg_Pecheneg_B50_vfg","","",_AKOptics,[],[],""],2,
    ["CUP_lmg_Mk48","","",_eliteRISOptics,[],[],""],2
]];
_eliteLoadoutData set ["SMGs", [
    ["CUP_smg_bizon","","",_AKOptics,[],[],""],
    ["CUP_smg_MP5A5_Rail_VFG","","",_militaryRISOptics,[],[],""],
    ["CUP_smg_MP7","","",_militaryRISOptics,[],[],""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","","CUP_SVD_camo_g","CUP_optic_PSO_3",[],[],""],3,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],"CUP_bipod_Harris_1A2_L"],1,
    ["CUP_srifle_M14_DMR","","","CUP_optic_LeupoldMk4_25x50_LRT",[],[],"CUP_bipod_Harris_1A2_L"],2
]];
_eliteLoadoutData set ["sniperRifles", [
    ["CUP_srifle_G22_blk","","","CUP_optic_LeupoldMk4_25x50_LRT",[],[],"CUP_bipod_VLTOR_Modpod_black"],
    ["CUP_srifle_M107_Pristine","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107","ACE_10Rnd_127x99_Mag","ACE_10Rnd_127x99_AMAX_Mag","ACE_10Rnd_127x99_API_Mag"],[],""]
]];
_eliteLoadoutData set ["ATLaunchers",
    ["CUP_launch_Mk153Mod0_blk","","","CUP_optic_SMAW_Scope",["CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M","CUP_SMAW_NE_M"],[],""]];

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
    ["CUP_arifle_SBR_od","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,_M4Mags,[],""],
    ["CUP_arifle_mk18_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_AN_PAS_13c1",_M4Mags,[],""],
    ["CUP_arifle_AK109","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Tan_L","CUP_optic_GOSHAWK",_AKMags,[],""]
]];
_sfLoadoutData set ["rifles", [
    ["CUP_arifle_SBR_od","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,_M4Mags,[],""],
    ["CUP_arifle_mk18_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,_M4Mags,[],""],
    ["CUP_arifle_AK109","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_eliteRISOptics,_AKMags,[],""],
    ["CUP_arifle_XM8_Carbine_FG_Rail_Fish","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,[],[],""]
]];
_sfLoadoutData set ["carbines", [
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,[],[],""],
    ["CUP_arifle_M4_MOE_BW","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Tan_L",_militaryRISOptics,_M4Mags,[],""],
    ["CUP_arifle_AK104","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_2_Flashlight_Black_L",_AKOptics,_AKMags,[],""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_mk18_m203_black","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_militaryRISOptics,_M4Mags,[],""],
    ["CUP_arifle_AK103_GL","CUP_muzzle_snds_socom762rc","CUP_acc_ANPEQ_15_Flashlight_Black_L",_AKOptics,_AKMags,[],""]
]];
_sfLoadoutData set ["machineGuns", [
    ["CUP_lmg_m249_para_gl","muzzle_snds_M","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,[],[],""],0.5,
    ["CUP_lmg_Mk48","muzzle_snds_B","CUP_acc_ANPEQ_15_Flashlight_Black_L",_eliteRISOptics,[],[],""],1
]];
_sfLoadoutData set ["SMGmuzzle_snds_Bs", [
    ["SMG_03_TR_camo","muzzle_snds_570","CUP_acc_ANPEQ_15_Black",_militaryRISOptics,[],[],""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD","CUP_muzzle_snds_KZRZP_SVD","CUP_SVD_camo_g","CUP_optic_PSO_3",[],[],""],
    ["CUP_srifle_M14_DMR","","","CUP_optic_LeupoldMk4_25x50_LRT",[],[],"CUP_bipod_VLTOR_Modpod_black"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M107_Pristine","","","CUP_optic_LeupoldMk4_25x50_LRT",["CUP_10Rnd_127x99_M107","ACE_10Rnd_127x99_Mag","ACE_10Rnd_127x99_AMAX_Mag","ACE_10Rnd_127x99_API_Mag"],[],""]
]];
_sfLoadoutData set ["sidearms", [
    ["CUP_hgun_Deagle","","","",[],[],""],3,
    ["CUP_hgun_MP7","","","",[],[],""],1,
    ["CUP_hgun_MicroUzi","","","",[],[],""],2
]];

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
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    ["slHat"] call _fnc_setHelmet;
    [["Slmasks", "masks"] call _fnc_fallback] call _fnc_setFacewear;
    ["backpacks"] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
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
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

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

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
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
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
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

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
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
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["masks"] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
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
    ["NVGs"] call _fnc_addNVGs;
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

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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
    ["sniHats"] call _fnc_setHelmet;
    ["cloakmasks"] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakmasks"] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    ["NVGs"] call _fnc_addNVGs;
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
