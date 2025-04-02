//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "Los Jaguares"] call _fnc_saveToTemplate;
["spawnMarkerName", "Los Jaguares al acecho"] call _fnc_saveToTemplate;

["flag", ""] call _fnc_saveToTemplate;
["flagTexture", ""] call _fnc_saveToTemplate;
["flagMarkerType", ""] call _fnc_saveToTemplate;

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
["vehiclesBasic", []] call _fnc_saveToTemplate;			 // unarmed or armed, with 0-2 passengers
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", []] call _fnc_saveToTemplate;             // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesTrucks", []] call _fnc_saveToTemplate;		 // vehicle that can carry troops and cargoboxes
["vehiclesCargoTrucks", []] call _fnc_saveToTemplate;		 // vehicle that can carry only cargoboxes
["vehiclesAmmoTrucks", []] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to rearm vehicles
["vehiclesRepairTrucks", []] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to repair vehicles
["vehiclesFuelTrucks", []] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to refuel vehicles
["vehiclesMedical", []] call _fnc_saveToTemplate;		 // vehicle with capability to provide healing
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;             // armed, lightly armoured, with 6-8 passengers 
["vehiclesAPCs", []] call _fnc_saveToTemplate;                  // armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAirborne", []] call _fnc_saveToTemplate;              // airborne vehicles, could be with passenger seats or just a crew 
["vehiclesIFVs", []] call _fnc_saveToTemplate;                  // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesTanks", []] call _fnc_saveToTemplate;                 // cannon armed, heavely armored, passengers will be ignored
["vehiclesLightTanks", []] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", []] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", []] call _fnc_saveToTemplate;	// boat that can carry passengers and cargoboxes
["vehiclesGunBoats", []] call _fnc_saveToTemplate;              // armed boat, with passengers(?)
//["vehiclesAmphibious", []] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)

["vehiclesPlanesCAS", []] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", []] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
["vehiclesPlanesTransport", []] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently
["vehiclesPlanesGunship", []] call _fnc_saveToTemplate;     // planes like V-44X armed, AC-130 or pelican from OPTRE, used in GUNSHIP support
//probably can also be a helicopter

["vehiclesHelisLight", []] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", []] call _fnc_saveToTemplate;        // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting

// Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", []] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", []] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc

["vehiclesAirPatrol", []] call _fnc_saveToTemplate;             // preferably light helicopters(armed or unarmed), used in base patrol near bases

["vehiclesArtillery", []] call _fnc_saveToTemplate;             // wheeled or tracked vehicle with artillery cannon or rockets
["magazines", createHashMapFromArray []] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", []] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", []] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled

//Config special vehicles
["vehiclesMilitiaLightArmed", []] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", []] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", []] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces

["vehiclesMilitiaAPCs", []] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", []] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", []] call _fnc_saveToTemplate;                     // static machine guns
["staticAT", []] call _fnc_saveToTemplate;                      // static anti-tank weapons 
["staticAA", []] call _fnc_saveToTemplate;                      // static anti-aircraft weapons
["staticMortars", []] call _fnc_saveToTemplate;                 // static mortars
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

//SLAT cages, camo nets, logs, doors etc
["animations", [
    ["vehClass", ["animsourcefromgarage1", 0.3, "animsourcefromgarage2", 0.25, "animsourcefromgarage3", 0.3, "animsourcefromgarage4", 0.3]],
    ["", []]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;

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

#include "CUP_Vehicle_Attributes.sqf"

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
    "Male02FRE","Male03FRE","Male04FRE","Male01FRE","male06gre", "Male04GRE", "Male06GRE", "Male05GRE"
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

["insignia", []] call _fnc_saveToTemplate;
["sfInsignia", []] call _fnc_saveToTemplate;
["milInsignia", []] call _fnc_saveToTemplate;
["polInsignia", []] call _fnc_saveToTemplate;
["eliteInsignia", []] call _fnc_saveToTemplate;

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

_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["lightHELaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", [
        ["CUP_hgun_M1911","","","",[],[],""],4,
    ["CUP_hgun_Glock17_blk","","","",[],[],""],2,
    ["CUP_hgun_PB6P9","","","",[],[],""],2,
    ["CUP_hgun_Makarov","","","",[],[],""],3,
    ["CUP_hgun_TaurusTracker","","","",[],[],""],4,
    ["CUP_hgun_Compact","","","",[],[],""],2,
    ["CUP_hgun_TT","","","",[],[],""],3,
    ["CUP_hgun_SWM327MP","","","",[],[],""],2,
    ["CUP_hgun_Mac10","","","",[],[],""],1,
    ["CUP_hgun_TEC9_FA","","","",[],[],""],2,
    ["CUP_hgun_TEC9","","","",[],[],""],4
]];

_loadoutData set ["ATMines", []];
_loadoutData set ["APMines", []];
_loadoutData set ["lightExplosives", []];
_loadoutData set ["heavyExplosives", []];

_loadoutData set ["antiInfantryGrenades", []];
_loadoutData set ["smokeGrenades", []];
_loadoutData set ["signalsmokeGrenades", []];


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
    if (isClass (configFile >> "CfgWeapons" >> "ACE_Yardage450")) then {
  	rangefinders append ["ACE_Yardage450"];
};

_loadoutData set ["traitorUniforms", []];
_loadoutData set ["traitorVests", []];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", ["CUP_U_C_Profiteer_02"]];
_loadoutData set ["officerVests", ["CUP_V_C_Police_Holster"]];
_loadoutData set ["officerHats", ["H_Hat_grey"]];
_loadoutData set ["officerRifle", ["CUP_arifle_AKS_Gold"]];

_loadoutData set ["cloakUniforms", []];
_loadoutData set ["cloakVests", []];
_loadoutData set ["cloakRifles", []];
_loadoutData set ["cloakCarbines", []];
_loadoutData set ["cloakSidearms", []];
_loadoutData set ["cloakmasks", []];

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

_loadoutData set ["masks", []];
_loadoutData set ["goggles", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

// The two empty lists are for magazines - leave them empty for whatever the weapon's default mag is, or fill them for a given ratio (i.e. ["tracer", "regular", "regular"]). 
// The second list is for underbarrel mags.

// Note: muzzle, rail, sight, and bipod slots can be either a string for a specific item, or an array for a list of items. Arrays can be defined separately from weapons.
// Arrays (both for attachments and for the larger lists of weapons) can either be a regular list or a weighted list that alternates between item and weight.
// See https://community.bistudio.com/wiki/selectRandomWeighted for details.
// If a given spawn list is made a weighted list, make sure that anything that adds to that list (e.g. optional DLC compatibility) is also a weighted list, or everything breaks.
// Everything in this also applies to e.g. uniforms and equipment, but does NOT apply to vehicles.

// Example of a weighted spawn list, with attachments and etc, using all possible methods of declaring lists:
/*
_sfM4Optics = ["optic_holo", 2, "optic_acog", 1, "", 1]; //weighted list - 50% chance holo, 25% chance acog, 25% chance nothing
_sfM4Attachments = ["flashlight", ""]; //unweighted list, even distribution between flashlight or nothing
_sfLoadoutData set ["rifles", [
    ["rifle_m4a1", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 2,
    ["rifle_m4a1_camo", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 1 //2:1 ratio of regular and camo M4s
]]; 
_sfM4Optics append ["optic_thermal", 0.1]; //this works even if done after the optics lists are applied since _sfM4Optics is stored as a reference, which is useful for DLC/mod compats

*/

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", [
    "U_C_Poloshirt_blue"
    , "U_C_Poloshirt_burgundy"
    , "U_C_Poloshirt_salmon"
    , "U_C_Poloshirt_tricolour"
    , "U_OrestesBody"
    , "U_I_L_Uniform_01_tshirt_sport_F"
    , "U_C_Mechanic_01_F"
    , "CUP_U_C_Rocker_03"
    , "U_C_Uniform_Scientist_02_formal_F"
    , "U_C_Man_casual_6_F"
    , "U_C_Man_casual_4_F"
    , "CUP_U_C_Villager_01"
    , "CUP_U_C_Villager_02"
    , "CUP_U_C_Worker_03"
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
    , "H_Beret_blk"
    , "CUP_H_USMC_BOONIE_WDL"
    , "CUP_H_USArmy_Boonie_OCP"
    , "H_Cap_blk"
    , "CUP_H_C_MAGA_01"
    , "H_Cap_blk_CMMG"
    , "CUP_H_USA_Cap_M81"
    , "CUP_H_C_Fireman_Helmet_01"
    , "H_Construction_basic_black_F"
    , "H_Helmet_Skate"
]];

_policeLoadoutData set ["PoliceGuns", [
    ["CUP_sgun_M1014_solidstock","","","",[],[],""],3,
    ["CUP_smg_M3A1","","","",[],[],""],3,
    ["CUP_sgun_CZ584","","","",[],[],""],4,
    ["CUP_sgun_SPAS12","","","",[],[],""],1,
    ["sgun_HunterShotgun_01_sawedoff_F","","","",[],[],""],4,
    ["CUP_smg_Mac10","","","",[],[],""],2,
    ["CUP_smg_UZI","","","",[],[],""],1
]];
_policeLoadoutData set ["sidearms", []];

_AKOptics [
    "CUP_optic_1p63",1,
    , "CUP_optic_PSO_3",0.1,
    , "CUP_optic_OKP_7",0.8,
    , "CUP_optic_Kobra",0.5,
    , "CUP_optic_PSO_1_AK",0.7,
    , "CUP_optic_PSO_1_1",0.2,
    , "",2
];

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
    , "CUP_U_C_Worker_02"
    , "U_C_Uniform_Farmer_01_F"
    , "U_C_Mechanic_01_F"
    , "U_C_HunterBody_grn"
    , "U_C_E_LooterJacket_01_F"
]];
_militiaLoadoutData set ["Slmasks", [
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
_militiaLoadoutData set ["slHat", ["H_Beret_blk"]];
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
_militiaRISOptics [
    "CUP_optic_CompM2_low",1,
    , "CUP_optic_CompM4",1,
    , "CUP_optic_Eotech553",1,
    , "CUP_optic_HoloBlack",1,
    , "CUP_optic_CompM2_Coyote",1,
    , "",4
];
_militiaLoadoutData set ["slRifles", [
    ["CUP_arifle_AKMN_railed","","","_militiaRISOptics",[],[],""],1,
    ["CUP_arifle_FNFAL5060_railed","","","_militiaRISOptics",[],[],""],3,
    ["CUP_arifle_Galil_SAR_black","","","_militiaRISOptics",[],[],""],2,
    ["CUP_arifle_M16A4_Grip","","","_militiaRISOptics",[],[],""],1
]];
_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_AKM","","","",[],[],""],3,
    ["CUP_arifle_M16A1","","","",[],[],""],2,
    ["CUP_sgun_AA12","","","",["CUP_20Rnd_B_AA12_Slug","CUP_20Rnd_B_AA12_Buck_00","CUP_20Rnd_B_AA12_Buck_0","CUP_20Rnd_B_AA12_Buck_00"],[],""],2,
    ["CUP_arifle_FNFAL5060","","","",[],[],""],3,
    ["CUP_arifle_FNFAL5060_railed","","","_militiaRISOptics",["CUP_30Rnd_762x51_FNFAL_M"],[],""]1,
    ["CUP_arifle_M16A2","","","_militiaRISOptics",[],[],""],1
]];
_militiaLoadoutData set ["carbines", [
    ["CUP_arifle_Colt727","","","",[],[],""],1,
    ["CUP_arifle_FNFAL_OSW_railed","","","",[],[],""],1,
    ["CUP_Famas_F1","","","",[],[],""],0.25,
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16wA1GL_FS","","","",[],[],""],1,
    ["CUP_glaunch_M79","","","",[],[],""],6,
    ["CUP_glaunch_6G30","","","",[],[],""],1
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_M3A1","","","",[],[],""],5,
    ["CUP_smg_Mac10","","","",[],[],""],3,
    ["CUP_smg_MP5A5","","","",[],[],""],2,
    ["CUP_smg_MP5A5_Rail_VFG","","","",[],[],""],0.5,
    ["CUP_smg_UZI","","","",[],[],""],3
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_lmg_M60E4_jungle","","","",[],[],""],0.5,
    ["CUP_lmg_M60","","","",[],[],""],1,
    ["CUP_lmg_FNMAG_RIS","","","",[],[],""],2
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14","","","optic_DMS",[],[],""],2,
    ["CUP_srifle_LeeEnfield","","","CUP_optic_no23mk2",[],[],""],3,
    ["CUP_srifle_CZ550","","","",[],[],""],2,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],""],1
]];
_militiaLoadoutData set ["sidearms", []];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["Slmasks", ["CUP_PMC_Facewrap_Skull"]];
_militaryLoadoutData set ["slHat", ["CUP_H_USA_Cap_PUNISHER_DEF"]];
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
    , "CUP_H_USArmy_Helmet_M1_plain_M81"
]];
_militaryLoadoutData set ["uniforms", [
    "U_I_G_resistanceLeader_F"
    , "U_BG_Guerilla1_1"
    , "U_BG_leader"
    , "U_C_HunterBody_grn"
    , "U_I_C_Soldier_Para_5_F"
    , "U_I_C_Soldier_Para_4_F"
    , "U_I_C_Soldier_Para_2_F"
    , "U_I_C_Soldier_Para_1_F"
    , "U_I_E_Uniform_01_tanktop_F"
    , "U_I_L_Uniform_01_deserter_F"
    , "U_I_L_Uniform_01_tshirt_olive_F"
    , "U_BG_Guerilla1_2_F"
    , "CUP_U_O_Partisan_VSR_Mixed1"
    , "CUP_U_O_Partisan_VSR_Mixed2"
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

_militiaRISOptics [
    "CUP_optic_AC11704_Black",1,
    , "CUP_optic_Aimpoint_5000",1,
    , "CUP_optic_G33_HWS_BLK",1,
    , "CUP_optic_HoloBlack",1,
    , "CUP_optic_ZeissZPoint_hex",1,
    , "CUP_optic_Elcan_SpecterDR_coyote",0.5,
    , "",2
];

_militaryLoadoutData set ["slRifles", [
    ["CUP_arifle_M4_MOE_BW","","_militaryRISOptics","",[],[],""],1,
    ["CUP_arifle_M4A1_SOMMOD_hex","CUP_acc_ANPEQ_15_Flashlight_Tan_L","_militaryRISOptics","",[],[],""],0.5,
    ["CUP_arifle_FNFAL_OSW_railed","","_militaryRISOptics","",[],[],""],4,
    ["CUP_arifle_M4A1_Aimpoint_GL","","_militaryRISOptics","",[],[],""],2,
    ["CUP_arifle_AKMN_railed","","CUP_acc_ANPEQ_15_Flashlight_Tan_L","_militaryRISOptics",[],[],""],3
]];
_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_M16A4_Grip","","_militaryRISOptics","",[],[],""],2,
    ["CUP_arifle_AKM","","","",[],[],""],5,
    ["CUP_arifle_M16A1","","","",[],[],""],3,
    ["CUP_arifle_AKS","","","_AKOptics",[],[],""],2,
    ["CUP_arifle_FNFAL5062_railed","","","",[],[],"CUP_bipod_FNFAL"],2,
    ["CUP_arifle_FNFAL_railed_woodland","","","",[],[],"CUP_bipod_FNFAL"],3,
    ["CUP_arifle_FNFAL5060_railed","","","_militaryRISOptics",["CUP_30Rnd_762x51_FNFAL_M"],[],""]2,
    ["CUP_arifle_M4A1","","","",[],[],""],3,
    ["CUP_arifle_M16A2","","","_militaryRISOptics",[],[],""],1
]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_M4A1_standard_short_dsrt","","","",[],[],""],2,
    ["CUP_arifle_Colt727","","","",[],[],""],2,
    ["CUP_Famas_F1","","","",[],[],""],0.25,
    ["CUP_arifle_FNFAL_OSW_railed","","","_militaryRISOptics",[],[],""],1,
    ["CUP_arifle_XM8_Compact_FG_Rail_Green","","CUP_acc_ANPEQ_15_Flashlight_Tan_L","_militaryRISOptics",[],[],""],0.1
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_M16A1GL_FS","","","",[],[],""],1,
    ["CUP_arifle_M4A1_GL_carryhandle","","","",[],[],""],1,
    ["CUP_glaunch_6G30","","","",[],[],""],1
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_bizon","","","_AKOptics",[],[],""],1,
    ["CUP_smg_MP5A5","","","",[],[],""],4,
    ["CUP_smg_MP5A5_Rail_VFG","","","_militaryRISOptics",[],[],""],1.5,
    ["CUP_smg_vityaz_vfg_top_rail","","","",[],[],""],2,
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_FNMAG_RIS","","","",[],[],""],2,
    ["CUP_lmg_M60","","","",[],[],""],2,
    ["CUP_lmg_m249_SQuantoon","","","",[],[],""],1,
    ["CUP_lmg_M60E4_jungle","","","",[],[],""],0.5,
    ["CUP_lmg_m249_pip1","","","",[],[],""],2,
    ["CUP_lmg_PKM_front_rail_B50_vfg","","","",[],[],""],2
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_arifle_Gewehr1_railed","","","CUP_optic_SUSAT",[],[],"CUP_bipod_FNFAL"],2,
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",[],[],""],1,
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",[],[],"CUP_bipod_Harris_1A2_L"],3
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M24_blk","","","CUP_optic_LeupoldMk4_20x40_LRT",[],[],""],1,
    ["CUP_srifle_SVD","","","CUP_optic_PSO_3",[],[],""],0.5

]];
_militaryLoadoutData set ["sidearms", []];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["CUP_NVG_PVS15_black"]];
_eliteLoadoutData set ["Slmasks", ["CUP_PMC_Facewrap_Skull"]];
_eliteLoadoutData set ["SlHat", ["CUP_G_ESS_RGR_Facewrap_Skull"]];
_eliteLoadoutData set ["masks", [
    "CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Ember"
    , "CUP_G_PMC_Facewrap_Black_Glasses_Dark"
    , "CUP_G_ESS_BLK_Facewrap_Black_GPS"
    , "CUP_G_ESS_BLK_Scarf_Face_Blk"
    , "CUP_G_ESS_RGR_Facewrap_Tropical"
    , "CUP_G_ESS_KHK_Facewrap_Tan"
    , "CUP_G_ESS_BLK_Scarf_Face_Blk"
    , "CUP_G_ESS_BLK_Scarf_Blk_Beard"
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
    , "CUP_I_B_PARA_Unit_12"
    , "CUP_I_B_PARA_Unit_15"
    , "CUP_I_B_PARA_Unit_14"
    , "CUP_I_B_PARA_Unit_8"
]];
_eliteLoadoutData set ["vests", [
    "CUP_V_B_PASGT_CCE"
    , "CUP_V_B_PASGT"
    , "V_TacVest_camo"
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
_eliteLoadoutData set ["binoculars", ["ACE_VectorDay","Binocular","CUP_Vector21Nite"]];
_eliteLoadoutData set ["rangefinders", ["CUP_LRTV","CUP_Vector21Nite"]];
    //hasta acá llegué

_eliteLoadoutData set ["backpacks", []];
_eliteLoadoutData set ["atBackpacks", []];

_eliteLoadoutData set ["sniperRifles", []];
_eliteLoadoutData set ["sidearms", []];
_eliteLoadoutData set ["slRifles", []];
_eliteLoadoutData set ["rifles", []];
_eliteLoadoutData set ["carbines", []];
_eliteLoadoutData set ["grenadeLaunchers", []];
_eliteLoadoutData set ["machineGuns", []];
_eliteLoadoutData set ["marksmanRifles", []];
_eliteLoadoutData set ["SMGs", []];
_eliteLoadoutData set ["sniperRifles", []];
_eliteLoadoutData set ["sidearms", []];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", []]; 
_sfLoadoutData set ["uniforms", []];
_sfLoadoutData set ["vests", []];
_sfLoadoutData set ["Hvests", []];
_sfLoadoutData set ["glVests", []];
_sfLoadoutData set ["helmets", []];
_sfLoadoutData set ["masks", []];
_sfLoadoutData set ["goggles", []];
_sfLoadoutData set ["binoculars", []];
_sfLoadoutData set ["backpacks", []];
_sfLoadoutData set ["atBackpacks", []];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["sniperRifles", []];
_sfLoadoutData set ["sidearms", []];
_sfLoadoutData set ["slRifles", []];



_sfLoadoutData set ["rifles", []];
_sfLoadoutData set ["carbines", []];
_sfLoadoutData set ["grenadeLaunchers", []];
_sfLoadoutData set ["machineGuns", []];
_sfLoadoutData set ["marksmanRifles", []];
_sfLoadoutData set ["SMGs", []];
_sfLoadoutData set ["sniperRifles", []];
_sfLoadoutData set ["sidearms", []];









//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", []];
_crewLoadoutData set ["vests", []];
_crewLoadoutData set ["helmets", []];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", []];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", []];


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
    ["Slmasks"] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "masks", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "masks", 0.75, "goggles", 1]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "masks", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
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
    //TODO - Add a check if it's disposable.
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
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
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
    ["sniHats"] call _fnc_setHelmet;
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
    [selectRandomWeighted [[], 1.5, "helmets", 0.75]] call _fnc_setHelmet;
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
    ["masks"] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

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
    ["traitorUniforms"] call _fnc_setUniform;

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
    [selectRandomWeighted [[], 1.25, "masks", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    ["officerRifle"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
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
