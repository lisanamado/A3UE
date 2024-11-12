//This is a kinda weird but usable CUP Rebel faction for chilled A3AU. Have fun with it!
//It includes stylish girls and rather heavy weaponry for an explosive start
//IBB stands for International Britney's Brigades
//Or It's Britney, Bitch

#include "..\..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "IBB"] call _fnc_saveToTemplate;

["flag", "Flag_IBB"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\IBB\IBB.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_IBB"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesBasic", ["I_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_C_Tigr_4x4_CIV"]] call _fnc_saveToTemplate; //assign zebra skin
["vehiclesLightArmed", ["CUP_O_Tigr_M_233114_KORD_RU"]] call _fnc_saveToTemplate; //assign zebra skin
["vehiclesTruck", ["CUP_O_Kamaz_6396_transport_RUS_M"]] call _fnc_saveToTemplate; //change to a usable one
["vehiclesAT", ["CUP_I_Hilux_armored_BMP1_TK"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_B_nM1097_AVENGER_USA_DES", "CUP_I_Hilux_zu23_NAPA"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["I_G_Boat_Transport_01_F"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_I_CESSNA_T41_ARMED_ION", "CUP_B_AC47_Spooky_USA"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_C47_CIV", "CUP_C_AN2_CIV", "CUP_C_A300_CIV", "CUP_C_Cessna_172_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_B_LR_Ambulance_CZ_W"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_C_Golf4_kitty_Civ"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["O_Truck_02_covered_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Rubberboat"]] call _fnc_saveToTemplate;

["staticMGs", ["I_E_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_I_SPG9_NAPA"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_I_ZU23_NAPA"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_I_2b14_82mm_NAPA"]] call _fnc_saveToTemplate;
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

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
//I made this values higher
["animations", [
    ["vehClass", ["animsource_example_1", 0.5, "animsource_example_2", 0.75]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["CUP_C_Tigr_4x4_CIV", ["Generic_Zebra",1], ]
    ["CUP_O_Tigr_M_233114_KORD_RU", ["Generic_Zebra",1], ]
    ["CUP_O_Kamaz_6396_transport_RUS_M", ["GreenHex",1], ]
    
]] call _fnc_saveToTemplate;


///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [

    "CUP_hgun_TaurusTracker455_gold",
    "CUP_hgun_Deagle",
    "CUP_hgun_TEC9_FA",

    "sgun_HunterShotgun_01_sawedoff_F",
    "CUP_glaunch_6G30",
    "CUP_smg_Mac10",
    "CUP_smg_BallisticShield_Sa61",
    "CUP_smg_M3A1_snd",
    "CUP_glaunch_M79",
    "CUP_arifle_Sa58_sporter_compact",
    "CUP_arifle_Sa58s",
    "CUP_arifle_SR3M_Vikhr_VFG",
    "CUP_sgun_M1014_Entry_vfg",
    "CUP_sgun_slamfire",

    "CUP_launch_RPG7V",

    "CUP_6Rnd_SmokeRed_GP25",
    "CUP_6Rnd_FlareRed_GP25_M",
    "CUP_6Rnd_HE_GP25_M",
    "CUP_30Rnd_45ACP_MAC10_M",
    "CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
    "CUP_20Rnd_B_765x17_Ball_M",
    "CUP_30Rnd_45ACP_M3A1_SND_M",
    "1Rnd_SmokePurple_Grenade_shell",
    "1Rnd_HE_Grenade_shell",
    "UGL_FlareRed_F",
    "CUP_1Rnd_StarCluster_Red_M203",
    "CUP_45Rnd_Sa58_M_TracerR",
    "CUP_30Rnd_Sa58_M_TracerR",
    "CUP_15Rnd_Sa58_M",
    "CUP_20Rnd_9x39_SP5_VSS_M",
    "CUP_30Rnd_9x39_SP5_VIKHR_M",
    "CUP_6Rnd_12Gauge_Pellets_No1_Buck",
    "CUP_sgun_slamfire",
    "sgun_HunterShotgun_01_sawedoff_F",
    "CUP_2Rnd_12Gauge_Pellets_No0_Buck",

    "CUP_PG7V_M", 
    "CUP_PG7VM_M",
    "CUP_PG7VL_M",
    "CUP_PG7VR_M",
    "RPG7_F",
    "CUP_TBG7V_M",
    "CUP_6Rnd_45ACP_M", 
    "CUP_7Rnd_50AE_Deagle",
    "CUP_32Rnd_9x19_TEC9",
 
    "SmokeShellPurple",
    "ACE_M14",
    "ACE_CTS9",
    "CUP_HandGrenade_RGD5",
    "CUP_HandGrenade_RGO",

    ["IEDUrbanSmall_Remote_Mag", 30],
    ["IEDLandSmall_Remote_Mag", 30],
    ["IEDUrbanBig_Remote_Mag", 5],
    ["IEDLandBig_Remote_Mag", 5],

    "CUP_V_O_TK_OfficerBelt", 
    "CUP_V_O_TK_OfficerBelt2",
    "CUP_V_CDF_CrewBelt", 
    "CUP_V_CDF_OfficerBelt", 
    "CUP_V_CDF_OfficerBelt2", 
    "CUP_V_B_BAF_MTP_Osprey_Mk4_Belt", 
    "V_LegStrapBag_coyote_F", 
    "V_BandollierB_cbr", 
    "CUP_V_OI_TKI_Jacket3_01",

    "CUP_B_SLA_Medicbag", 
    "CUP_B_RUS_Raid_bag_Desert",

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

_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;


//UNIFORMS

private _rebUniforms =  [

    "TCGM_F_Mini_Casual2",
    "TCGM_F_Mini_IDAP",    
    "TCGM_F_Mini_Casual3",
    "TCGM_F_Mini_Casual4",
    "TCGM_F_Mini_Navy",
    "TCGM_F_Mini_ScotchR",
    "TCGM_CombatUniform_CTRG_Bra",
    "TCGM_F_Mini_Marshal",
    "TCGM_F_Sport_5",
    "TCGM_F_Sport_4",
    "TCGM_F_Sport_1",
    "TCGM_f_Swimsuit_Hearts",
    "TCGM_f_Swimsuit_Poker",
    "TCGM_f_Thong_Blk"

];          

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal



//HEADGEAR

["headgear", [

    "H_Bandanna_sgg",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_camo",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_blu",
    "H_Beret_blk",
    "H_RacingHelmet_1_red_F",
    "H_ShemagOpen_khk",
    "CUP_H_C_Beanie_01",
    "CUP_H_C_Beret_02",
    "CUP_H_RUS_Beret_Spetsnaz",
    "CUP_H_USArmy_Helmet_M1_btp",
    "CUP_H_SLA_OfficerCap",
    "CUP_H_TKI_Lungee_Open_05",
    "CUP_H_TK_TankerHelmet",
    "CUP_H_C_Ushanka_01",
    "CUP_H_ChDKZ_Beret",
    ""

]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

//didn't load these

["faces", [

//I deleted the variants to see if it works    
    "TCGM_Fem_Ayres",
    "TCGM_Fem_Eillish",
    "TCGM_Fem_Fenty",    
    "TCGM_Fem_Fox",   
    "TCGM_Fem_FoxBun",
    "TCGM_Fem_Gonzalez",
    "TCGM_Fem_Hudson",
    "TCGM_Fem_Portman",
    "TCGM_Fem_Stone",
    "TCGM_Fem_Zhu",
    "TCGM_Fem_Liu",







]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Female01_D_EN"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", [ 
    "G_Spectacles",
    "G_Balaclava_Halloween_01",
    "G_Bandanna_Skull2",
    "G_Bandanna_Vampire_01",
    "G_Shades_Red",
    "G_Shades_Green",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_BlackWhite",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_Greenblack",
    "G_Squares_Tinted",
    "G_Squares",
    "G_Spectacles_Tinted",
    "G_Goggles_VR",
    "CUP_Beard_Blonde",
    "CUP_PMC_Facewrap_Smilie",
    "CUP_G_Scarf_Face_Blk",
    "CUP_G_Oakleys_Embr",
    "CUP_G_TK_RoundGlasses_blk",
    "CUP_PMC_G_thug",
    ""]];

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