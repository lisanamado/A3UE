#include "..\..\script_component.hpp"

//AGREGAR F2000s y bajar el nivel en el que aparecen los m4s y m16s

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "FAyS Arg"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", "FAA Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", QPATHTOFOLDER(Templates\occ\arg.paa)] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "Argentina_marker"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "I_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_AAF_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", 
    ["acfaa_m1025a2"
    ,"acfaa_m1043"
    ,"acfaa_m998_4door","acfaa_m998"
]] call _fnc_saveToTemplate;
["vehiclesLightArmed",
    ["acfaa_m1025a2_m2"
    ,"acfaa_m1025a2_m240"
    ,"acfaa_m1025a2_mk19"
    ,"acfaa_m1025a2_tow"
    ,"acfaa_m1043_m2"
    ,"acfaa_m1043_m240"
    ,"acfaa_m1043_mk19"
    ,"acfaa_m1045_tow"
    ,"acfaa_gmv_m134"
]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["acfaa_m1083a1p2_green"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["Unimog416_big"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["Unimog_small"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["Unimog_reapir"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["UNIMOG_COMBUSTIBLE"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["UNIMOG_MEDICO","acfaa_m113_med"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", [
    "acfaa_gmv_m2"
]] call _fnc_saveToTemplate;
["vehiclesIFVs", [
    "acfaa_PandurII_EA"
    ,"CLV_VCTP2IP"
    ,"CLV_VCTP"
]] call _fnc_saveToTemplate;
["vehiclesAPCs", [
    "acfaa_AAVP7A1"
    , "acfaa_m113_m2"
]] call _fnc_saveToTemplate;
["vehiclesLightTanks", [
    "clv_Aml20"
    ,"clv_Aml90"
    ,"clv_AmlHS30"
]] call _fnc_saveToTemplate;
["vehiclesTanks", [
    "clv_Amx13"
    ,"clv_Kurassier"
    ,"clv_TAM"
    ,"clv_TAM2C"
    ,"B_MBT_01_cannon_F"
]] call _fnc_saveToTemplate;
["vehiclesAA", ["clv_Dragon"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["speedboat_pna"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["acfaa_at6b","a3a_Plane_Fighter_03_grey_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["ACFAA_Gripen_NG"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["acfaa_c130lep"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", [
    "acfaa_h500d"
    ,"acfaa_heli_UH1N_unarmed"
    ,"acfaa_heli_bell412"
]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", [
    "ACFAA_EA_CH47F_M134"
    ,"ACFAA_ARG_UH1H_M60"
]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", [
    "acfaa_ab206"
    ,"acfaa_h500d_armed"
]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", [
"I_E_Heli_light_03_dynamicLoadout_F"    ,"B_Heli_Attack_01_dynamicLoadout_F"
]] call _fnc_saveToTemplate;
["vehiclesAirPatrol", [
    "Caesar_btt_pna"
    , "ACFAA_ARG_UH1H_M60"
]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["I_E_Truck_02_MRL_F", "B_T_MBT_01_arty_F"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["I_E_Truck_02_MRL_F", ["12Rnd_230mm_rockets"]],
["B_T_MBT_01_arty_F",["32Rnd_155mm_Mo_shells"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["I_UAV_02_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["uavsPortable", ["I_UAV_01_F"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["acfaa_m1025a2_m240"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["Van_gen","Unimog_small"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["Offroad_gna_verde","Offroad_gna_blanco"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["acfaa_gmv_m2"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["Offroad_pna"]] call _fnc_saveToTemplate;

["staticMGs", ["I_HMG_02_high_F"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["I_static_AT_F"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["CLV_OERLIKON"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["B_Mortar_01_F"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["CLV_OMM56"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate; 		//this line determines smoke-shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] - ENTER ONLY ONE OPTION
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;		//this line determines flare shells for the static mortar - !needs to be compatible with the mortar! -- Example: ["mortarMagazineSmoke", "8Rnd_82mm_Mo_Flare_white"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "FakeWeapon"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["variants", [
    ["acfaa_m1025a2", ["woodland_new", 1]],
    ["acfaa_m1043", ["woodland_new", 1]],
    ["acfaa_m998_4door", ["woodland_new", 1]],
    ["acfaa_m1025a2_m2", ["woodland_new", 1]],
    ["acfaa_m1025a2_mk19", ["woodland_new", 1]],
    ["acfaa_m1025a2_m240", ["woodland_new", 1]],
    ["acfaa_m1025a2_tow", ["woodland_new", 1]],
    ["acfaa_m1043_m2", ["woodland_new", 1]],
    ["acfaa_m1043_m240", ["woodland_new", 1]],
    ["acfaa_m1043_mk19", ["woodland_new", 1]],
    ["acfaa_m1045_tow", ["woodland_new", 1]],
    ["acfaa_gmv_m134", ["woodland_new", 1]],
    ["acfaa_gmv_m2", ["woodland_new", 1]],
    ["acfaa_gmv", ["woodland_new", 1]],
    ["acfaa_m997", ["woodland_new", 1]],
    ["acfaa_m113_m2", ["camo", 1]],
    ["acfaa_m113_med", ["camo", 1]],
    ["acfaa_m1025a2_m240", ["woodland_new", 1]],
    ["acfaa_gmv_m2", ["woodland_new", 1]],
    ["CLV_VCTP2IP", ["Otan", 1]],
    ["CLV_VCTP", ["Otan", 1]],
    ["clv_Aml20", ["Argentino", 1]],
    ["clv_Aml90", ["OLIVE", 1]],
    ["clv_AmlHS30", ["Argentino", 1]],
    ["clv_Amx13", ["Argentina", 1]],
    ["clv_Kurassier", ["BicolorII", 1]],
    ["clv_TAM", ["Desert", 1]],
    ["clv_TAM2C", ["Otan", 1]],
    ["clv_Dragon", ["Desert", 1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
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
]] call _fnc_saveToTemplate;

"afcaa_argnames" call _fnc_saveNames;

["voices", ["Male04GRE","Male06GRE","Male01FRE","Male03FRE","Male02FRE"]] call _fnc_saveToTemplate;


//////////////////////////
//       Loadouts       //
//////////////////////////
private _lightATLaunchers = ["launch_RPG32_F","","","",["RPG32_F"],[],""];
private _lightHELaunchers = ["launch_RPG32_F","","","",["RPG32_HE_F"],[],""];
private _ATlaunchers = [
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HE_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HEAT55_F"], [], ""],
["launch_MRAWS_green_rail_F", "", "acc_pointer_IR", "", ["MRAWS_HEAT_F", "MRAWS_HE_F"], [], ""]
];
private _missileATLaunchers = "launch_NLAW_F";
private _AAlaunchers = ["launch_I_Titan_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""];

if (isClass (configFile >> "CfgWeapons" >> "CUP_launch_Igla")) then {
    _AALaunchers = [[],["CUP_launch_Igla","","","",["CUP_Igla_M"],[],""]];
    _lightATLaunchers = ["CUP_launch_M72A6","","","",["CUP_M72A6_M"],[],""];

    _ATLaunchers = [["CUP_launch_MAAWS","","","CUP_optic_MAAWS_Scope",["CUP_MAAWS_HEAT_M","CUP_MAAWS_HEDP_M"],[],""]];
};

if (isClass (configFile >> "CfgWeapons" >> "Braf_MT12")) then {
    _AALaunchers = [[],["braf_Igla","","","",["braf_Igla_missile"],[],""]];
    _lightATLaunchers = ["braf_launch_alac_Loaded","","","",["braf_alac_M"],[],""];
    _ATLaunchers = [["braf_Gustav","","","",["CUP_MAAWS_HEAT_M","CUP_MAAWS_HEDP_M","MRAWS_HEAT55_F"],[],""]];
};

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

_loadoutData set ["lightATLaunchers", _lightATLaunchers];
_loadoutData set ["lightHELaunchers", _lightHELaunchers];
_loadoutData set ["ATLaunchers", _ATlaunchers];
_loadoutData set ["missileATLaunchers", _missileATLaunchers];
_loadoutData set ["AALaunchers", _AAlaunchers];
_loadoutData set ["sidearms", ["acfaa_bhipower_base","","","",["acfaa_13Rnd_9x19_Mag"],[],""]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["antiTankGrenades", []];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["acfaa_anpvs14_monocular"]];
_loadoutData set ["binoculars", ["Binocular"]];

_rangefinders = ["Rangefinder"];
if (isClass (configFile >> "CfgWeapons" >> "ACE_VectorDay")) then {
    _rangefinders = ["ACE_VectorDay","ACE_Vector"];
};
_loadoutData set ["rangefinders", _rangefinders];

_loadoutData set ["traitorUniforms", ["uni_negro"]];
_loadoutData set ["traitorVests", ["acfaa_Modular_tan2"]];
_loadoutData set ["traitorHats", ["casco_negro"]];

_loadoutData set ["officerUniforms", ["UCAC_CAMO_MULTICAM"]];
_loadoutData set ["officerVests", ["V_Rangemaster_belt"]];
_loadoutData set ["officerHats", ["arg_boina_parac"]];

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", ["V_Chestrig_oli"]];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_digi_F"]];
_loadoutData set ["atBackpacks", ["B_Carryall_oli"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["arg_boina_cazador"]];
_loadoutData set ["sniHats", ["acfaa_sombrero_multicam"]];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Squares", "G_Squares_Tinted"]];	//cosmetics
_loadoutData set ["goggles", ["G_Combat", "G_Lowprofile"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "ItemGPS", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

private _HoloOptics = 
    ["optic_Yorris"
    ,"optic_Aco"
    ,"optic_Holosight"
    ,"acfaa_microt1_hi"];
private _RifOptics = 
    ["optic_Arco"
    ,"optic_DMS"
    ,"optic_Hamr"];
private _MMOptics = 
    ["optic_SOS"
    ,"optic_KHS_blk"
    ,"optic_AMS"];
private _SniOptics = 
    ["optic_LRPS"];
private _SpecOptics = 
    ["optic_NVS"
    ,"optic_tws"
    ,"optic_tws_mg"];
///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["acfaa_MULTICAM_ARG_IR3"]];
_sfLoadoutData set ["vests", ["PlateCarrier_MarronArgIR"]];
_sfLoadoutData set ["Hvests", ["V_PlateCarrier2_rgr_noflag_F"]];
_sfLoadoutData set ["backpacks", ["B_AssaultPack_rgr"]];
_sfLoadoutData set ["helmets", ["Casco_ECHMulticam"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator_03"]];
_sfLoadoutData set ["NVGs", ["acfaa_anpvs7d"]];

_sfLoadoutData set ["slRifles", [
["acfaa_ddm4a1_grip", "muzzle_snds_M", "acc_pointer_IR", _RifOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["acfaa_ddm4a1_grip", "muzzle_snds_M", "acc_pointer_IR", _SpecOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],1
]];
_sfLoadoutData set ["rifles", [
["acfaa_ddm4a1", "muzzle_snds_M", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],3
,["acfaa_ddm4a1", "muzzle_snds_M", "acc_pointer_IR", _RifOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["acfaa_ddm4a1", "muzzle_snds_M", "acc_pointer_IR", _SpecOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],1
]];
_sfLoadoutData set ["carbines", [
["acfaa_ddmk18_grip", "muzzle_snds_M", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["ACFAA_M4A1_M203_F", "muzzle_snds_M", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]]
];
_sfLoadoutData set ["SMGs", [
["acfaa_mp5sd_base", "muzzle_snds_acp", "", _HoloOptics, ["acfaa_30Rnd_9x19_FMJ_Mag"], [], ""]
]];

_sfLoadoutData set ["machineGuns", [
["acfaa_m249", "", "", _HoloOptics, ["acfaa_100Rnd_556x45_t_mag"], ""]
,["acfaa_m249", "", "", _RifOptics,["acfaa_100Rnd_556x45_t_mag"], ""]
]];

_sfLoadoutData set ["marksmanRifles", [
["acfaa_dd5v4", "muzzle_snds_B", "acc_pointer_IR", _MMOptics, ["acfaa_20rnd_762x51_dd5v4_993_AP_Mag","acfaa_20rnd_762x51_dd5v4_MK319_Mag"], [], "bipod_01_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
["srifle_LRR_camo_F", "", "", _SniOptics, ["7Rnd_408_Mag"], [], ""]
,["srifle_GM6_F", "", "", _SniOptics, ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["hgun_ACPC2_F", "muzzle_snds_acp", "acc_flashlight_pistol", "", ["9Rnd_45ACP_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["acfaa_MULTICAM_ARG_S","acfaa_MULTICAM_ARG"]];
_eliteLoadoutData set ["slUniforms", ["UCAC_CAMO_MULTICAM"]];
_eliteLoadoutData set ["vests", ["PlateCarrier_MarronArg"]];
_eliteLoadoutData set ["Hvests", ["acfaa_Modular_tan2"]];
_eliteLoadoutData set ["backpacks", ["B_Kitbag_rgr"]];
_eliteLoadoutData set ["helmets", ["Casco_MICH2000_MULTICAM"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator_03"]];
_eliteLoadoutData set ["NVGs", ["acfaa_anpvs7d"]];

_eliteLoadoutData set ["slRifles", [
["acfaa_steyr_a1", "", "", "", ["30Rnd_556x45_Stanag"], [], ""],3
,["acfaa_steyr_a2", "", "", _RifOptics, ["30Rnd_556x45_Stanag"], [], ""],2
,["ACFAA_FAMA_base", "", "acc_pointer_IR", _RifOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], "bipod_02_F_blk"],3
,["ACFAA_M16A2", "", "", _RifOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["ACFAA_FAMTD_CL", "", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""],2
,["arifle_TRG21_F", "", "acc_pointer_IR", _RifOptics, ["30Rnd_556x45_Stanag"], [], ""],2
,["arifle_Mk20_plain_F","","acc_pointer_IR", _RifOptics,["30Rnd_556x45_Stanag"],[],""]
]];
_eliteLoadoutData set ["rifles", [
["ACFAA_FAMA_base", "", "acc_pointer_IR", _RifOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], "bipod_02_F_blk"],2
,["ACFAA_FAMA_base", "", "acc_pointer_IR", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], "bipod_02_F_blk"],5
,["ACFAA_FNFAL_PARA", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20rnd_762x51_MK319_fal_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""],4
,["ACFAA_FNFAP", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20rnd_762x51_MK319_fal_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""],3
,["ACFAA_M16A2", "", "", _RifOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],1
,["ACFAA_M16A2", "", "", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["acfaa_steyr_a1", "", "", "", ["30Rnd_556x45_Stanag"], [], ""],2
,["acfaa_steyr_a2", "", "", _RifOptics, ["30Rnd_556x45_Stanag"], [], ""],3
,["arifle_TRG21_F", "", "acc_pointer_IR", _RifOptics, ["30Rnd_556x45_Stanag"], [], ""],2
,["arifle_Mk20_plain_F","","acc_pointer_IR", _RifOptics,["30Rnd_556x45_Stanag"],[],""]
]];
_eliteLoadoutData set ["carbines", [
["ACFAA_FAMCA", "", "acc_pointer_IR", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""],5
,["ACFAA_M4A3", "", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["ACFAA_M4A1", "", "", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],5
,["acfaa_ddmk18", "", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],1
,["acfaa_steyr_a1_car", "", "", "", ["30Rnd_556x45_Stanag"], [], ""],2
,["acfaa_steyr_a2_car", "", "", _HoloOptics, ["30Rnd_556x45_Stanag"], [], ""],1
,["arifle_TRG20_F", "", "", _HoloOptics, ["30Rnd_556x45_Stanag"], [], ""],3
,["arifle_Mk20C_plain_F", "", "", _HoloOptics, ["30Rnd_556x45_Stanag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["ACFAA_FAMA_GL", "", "acc_pointer_IR", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
,["ACFAA_M4A1_M203_F", "", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
,["arifle_TRG21_GL_F", "", "", "", ["30Rnd_556x45_Stanag"], [], ""]
]];
_eliteLoadoutData set ["SMGs", [
["acfaa_mp5a3_base", "", "", _HoloOptics, ["acfaa_30Rnd_9x19_FMJ_Mag"], [], ""]
,["ACFAA_COLT_M4_SMG", "", "", _HoloOptics, ["acfaa_32Rnd_9x19_FMJ_Mag","acfaa_32Rnd_9x19_JHP_Mag"], [], ""]
,["acfaa_fmk3", "", "", _HoloOptics, ["acfaa_45Rnd_9x19_FMK3_Mag"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
["acfaa_m249", "", "", _HoloOptics, ["acfaa_100Rnd_556x45_t_mag"], ""]
,["acfaa_m249", "", "", _RifOptics,["acfaa_100Rnd_556x45_t_mag"], ""]
,["acfaa_fnmag_rail", "", "", _RifOptics, ["acfaa_200Rnd_762x51_T_mag"], [], ""]
,["LMG_Zafir_F", "", "", _RifOptics, ["150Rnd_762x54_Box_Tracer"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
["ACFAA_FAMTD_CP", "muzzle_snds_B", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
,["ACFAA_FAMTD_CL", "", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
,["acfaa_dd5v4", "muzzle_snds_B", "acc_pointer_IR", _MMOptics, ["acfaa_20rnd_762x51_dd5v4_993_AP_Mag","acfaa_20rnd_762x51_dd5v4_MK319_Mag"], [], "bipod_01_F_blk"]
]];
_eliteLoadoutData set ["sniperRifles", [
["acfaa_dd5v4", "muzzle_snds_B", "acc_pointer_IR", _SniOptics, ["acfaa_20rnd_762x51_dd5v4_993_AP_Mag","acfaa_20rnd_762x51_dd5v4_MK319_Mag"], [], "bipod_01_F_blk"],4
,["srifle_LRR_camo_F", "", "", _SniOptics, ["7Rnd_408_Mag"], [], ""],2
,["srifle_GM6_F", "", "", _SniOptics, ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], ""],1
]];
_eliteLoadoutData set ["sidearms", [
["hgun_ACPC2_F", "", "acc_flashlight_pistol", "", ["9Rnd_45ACP_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////
private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["acfaa_MULTICAM_ARG", "acfaa_MULTICAM_ARG_S"]];
_militaryLoadoutData set ["slUniforms", ["UCAC_CAMO_MULTICAM"]];
_militaryLoadoutData set ["vests", ["acfaa_Modular_tan"]];
_militaryLoadoutData set ["Hvests", ["acfaa_Modular_tan2"]];
_militaryLoadoutData set ["backpacks", ["B_Kitbag_rgr"]];
_militaryLoadoutData set ["helmets", ["Casco_MICH2000_MULTICAM"]];
_militaryLoadoutData set ["slHat", ["arg_boina_cazador"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator_03"]];

_militaryRifles = [
["ACFAA_FAMA_base", "", "", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""],3
,["ACFAA_FNFAL_PARA", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20rnd_762x51_MK319_fal_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""],2
,["ACFAA_FNFAL", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20rnd_762x51_MK319_fal_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""],2
,["ACFAA_FNFAP", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20rnd_762x51_MK319_fal_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""],2
,["ACFAA_M16A2", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],2
,["arifle_TRG21_F", "", "", "", ["30Rnd_556x45_Stanag"], [], ""]
,["arifle_Mk20_plain_F","","", _HoloOptics,["30Rnd_556x45_Stanag"],[],""]
];


_militaryLoadoutData set ["slRifles", [
["ACFAA_FAMA_base", "", "acc_pointer_IR", _RifOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], "bipod_02_F_blk"],3
,["ACFAA_M16A2", "", "", _RifOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],1
,["arifle_TRG21_F", "", "", _RifOptics, ["30Rnd_556x45_Stanag"], [], ""]
]];
_militaryLoadoutData set ["rifles", _militaryRifles];
_militaryLoadoutData set ["carbines", [
["ACFAA_FAMCA", "", "acc_pointer_IR", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""],5
,["ACFAA_M4A1", "", "", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],3
,["arifle_TRG20_F", "", "", _HoloOptics, ["30Rnd_556x45_Stanag"], [], ""],2
,["arifle_Mk20C_plain_F", "", "", _HoloOptics, ["30Rnd_556x45_Stanag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["ACFAA_FAMA_GL", "", "acc_pointer_IR", _HoloOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],3
,["ACFAA_M4A1_M203_F", "", "acc_pointer_IR", _HoloOptics, ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],1
,["arifle_TRG21_GL_F", "", "", "", ["30Rnd_556x45_Stanag"], [], ""],2
,["arifle_Mk20_GL_plain_F", "", "", "", ["30Rnd_556x45_Stanag"], [], ""]
]];
_militaryLoadoutData set ["SMGs", [
["acfaa_mp5a3_base", "", "", _HoloOptics, ["acfaa_30Rnd_9x19_FMJ_Mag"], [], ""],1
,["acfaa_fmk3", "", "", _HoloOptics, ["acfaa_45Rnd_9x19_FMK3_Mag"], [], ""],2
]];
_militaryLoadoutData set ["machineGuns", [
["acfaa_fnmag_rail", "", "", _HoloOptics, ["acfaa_100Rnd_762x51_T_Mag"], [], ""],4
,["acfaa_fnmag_rail", "", "", _RifOptics, ["acfaa_100Rnd_762x51_T_Mag"], [], ""],1
,["LMG_Zafir_F", "", "", _HoloOptics, ["150Rnd_762x54_Box_Tracer"], [], ""],1
]];
_militaryLoadoutData set ["marksmanRifles", [
["ACFAA_FAMTD_CP", "", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
,["ACFAA_FAMTD_CL", "", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
["ACFAA_FAMTD_CP", "", "acc_pointer_IR", _SniOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""],3
,["srifle_LRR_camo_F", "", "", _SniOptics, ["7Rnd_408_Mag"], [], ""],1
]];
_militaryLoadoutData set ["sidearms", [["acfaa_bhipower_base","","","",["acfaa_13Rnd_9x19_Mag"],[],""]]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["uni_gna", "uni_tricota_gen"]];
_militiaLoadoutData set ["vests", ["chaleco_tact_gna_oliva"]];
_militiaLoadoutData set ["Hvests", ["chaleco_tact_gna_neg"]];
_militiaLoadoutData set ["backpacks", ["B_TacticalPack_oli", "B_FieldPack_oli", "B_AssaultPack_dgtl"]];
_militiaLoadoutData set ["helmets", ["quepi_gna","casco_oliva"]];
_militiaLoadoutData set ["slHat", ["boina_gna"]];

_militiaLoadoutData set ["slRifles", _militaryRifles];
_militiaLoadoutData set ["rifles", [
["ACFAA_FNFAL", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["ACFAA_FAMCA", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["ACFAA_FAMA_GL", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["SMGs", [
["acfaa_fmk3", "", "", "", ["acfaa_45Rnd_9x19_FMK3_Mag"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["ACFAA_FNFAP", "", "", "", ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag","acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["ACFAA_FAMTD_CL", "", "acc_pointer_IR", _RifOptics,["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
["ACFAA_FAMTD_CP", "", "acc_pointer_IR", _MMOptics, ["acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_Mag", "acfaa_20Rndfal_762x51_T_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [["acfaa_bhipower_base","","","",["acfaa_13Rnd_9x19_Mag"],[],""]]];



///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["uni_pna_arena", "uni_pna_camo"]];
_policeLoadoutData set ["vests", ["chaleco_tact_pna"]];
_policeLoadoutData set ["helmets", ["quepi_pna","boina_pna"]];

_policeLoadoutData set ["SMGs", [
["prpl_benelli_rail", "", "", "", ["prpl_6Rnd_12Gauge_Pellets","prpl_6Rnd_12Gauge_Pellets","prpl_6Rnd_12Gauge_Pellets","prpl_6Rnd_12Gauge_Slug"], [], ""]
]];
_policeLoadoutData set ["sidearms", [["acfaa_bhipower_base","","","",["acfaa_13Rnd_9x19_Mag"],[],""]]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["UCAC_CAMO_OLIVA"]];
_crewLoadoutData set ["vests", ["V_BandollierB_oli"]];
_crewLoadoutData set ["helmets", ["H_HelmetCrew_I"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["coverall_verde_liso"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli"]];
_pilotLoadoutData set ["helmets", ["casco_piloto_heli_blanco", "casco_piloto_heli_blanco_up"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

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
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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
	["Sniper", _sniperTemplate, [], [_prefix]]
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
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
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
	["Sniper", _sniperTemplate, [], [_prefix]]
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