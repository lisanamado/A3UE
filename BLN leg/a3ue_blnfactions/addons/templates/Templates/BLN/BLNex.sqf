//This is my previous BLN faction with extra rebel equipment than the usual rebels, for an easier start

//It's meant to be a latin-american civilian-in-arms faction,
//including female soldiers, spanish radio voiceovers, and a really basic initial arsenal.
//It is not possible to assign bodies and faces in two sepparate classes, so female and male bodies and heads are going to mix
//I've chosen bodies and jackets trying to make this not to obvious. Think of them as strong women and slim man. Or just transgender people, use your imagination :D.

//EASTERN BACKED VERSION//

#include "..\..\script_component.hpp"

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "BLN"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\BLN\BLN.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_BLN"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////


["vehiclesBasic", ["I_E_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["a3u_cup_uaz_unarmed_convertible_1"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_B_UAZ_MG_CDF"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["a3u_cup_kamaz_olive"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_B_UAZ_METIS_CDF"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_O_Hilux_igla_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["CUP_O_PBX_RU"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_O_C47_SLA"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_B_UAZ_AMB_AFU"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_C_Lada_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_Mi17_Civilian_RU"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["CUP_C_Fishing_Boat_Chernarus"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_O_DSHKM_ChDKZ", "CUP_O_DSHkM_MiniTriPod_ChDKZ"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_O_SPG9_ChDKZ"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_O_ZU23_ChDKZ"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_O_2b14_82mm_ChDKZ"]] call _fnc_saveToTemplate;
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

    "CUP_hgun_TT",
    "CUP_hgun_Compact",

    "CUP_sgun_CZ584",
    "sgun_HunterShotgun_01_sawedoff_F",
    
    "CUP_srifle_Mosin_Nagant",
    "CUP_SKS_rail",
    "CUP_arifle_SIAGE_MK03_Wood_top_rail",

    "CUP_smg_vityaz",

    ["CUP_launch_RPG18", 50],
    ["CUP_launch_9K32Strela", 10],
    ["CUP_launch_RPG7V", 10],

    "CUP_8Rnd_762x25_TT",
    "CUP_10Rnd_9x19_Compact",

    "CUP_1Rnd_12Gauge_Pellets_No00_Buck", 
    "CUP_1Rnd_12Gauge_Pellets_No3_Buck", 
    "CUP_1Rnd_762x51_CZ584",
    "CUP_2Rnd_12Gauge_Pellets_No0_Buck",

    "CUP_30Rnd_9x19AP_Vityaz",

    "CUP_5Rnd_762x54_Mosin_M",
    "CUP_10Rnd_762x39_SaigaMk03_M",
    "CUP_10Rnd_762x39_SKS_M",

    ["CUP_PG7V_M", 25],

    "CUP_HandGrenade_RGD5", "SmokeShell",
    
    ["IEDUrbanSmall_Remote_Mag", 10], 
    ["IEDLandSmall_Remote_Mag", 10], 

    //I preferred jackets over vests to dissemble the bodies unmatching faces. They should look light, as for tropical climate
    "CUP_V_OI_TKI_Jacket2_02", 
    "CUP_V_OI_TKI_Jacket2_03", 
    "CUP_V_OI_TKI_Jacket2_01", 
    "CUP_V_OI_TKI_Jacket3_04", 
    "CUP_V_OI_TKI_Jacket3_02", 
    "CUP_V_OI_TKI_Jacket3_03", 
    "CUP_V_OI_TKI_Jacket3_05",
    "CUP_V_OI_TKI_Jacket3_06", 
    "CUP_V_OI_TKI_Jacket3_01",

    "B_FieldPack_cbr", 
    "B_FieldPack_khk", 
    "B_FieldPack_oli", 
    "B_AssaultPack_cbr",
    "B_AssaultPack_rgr",
    "B_AssaultPack_khk",
    "CUP_B_HikingPack_Civ",

    "Binocular",

    "CUP_acc_Zenit_2DS",

    "U_C_IDAP_Man_cargo_F"
    , "U_C_IDAP_Man_Jeans_F"
    , "U_C_IDAP_Man_casual_F"
    , "U_C_IDAP_Man_shorts_F"
    , "U_C_IDAP_Man_Tee_F"
    , "U_C_IDAP_Man_TeeShorts_F"
    //medics
    , "CUP_U_C_AirMedic_orange_01"
    , "CUP_U_C_AirMedic_red_01"
    , "CUP_U_C_AirMedic_yellow_01"
    , "CUP_U_C_Rescuer_01"
    , "U_C_Paramedic_01_F"
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
        //bandits-summer
        , "U_I_C_Soldier_Bandit_4_F"
        , "U_I_C_Soldier_Bandit_1_F"
        , "U_I_C_Soldier_Bandit_2_F"
        , "U_I_C_Soldier_Bandit_5_F"
        , "U_I_C_Soldier_Bandit_3_F"
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
        //Partisans
        , "CUP_U_O_Partisan_TTsKO"
        , "CUP_U_O_Partisan_TTsKO_Mixed"
        , "CUP_U_O_Partisan_VSR_Mixed1"
        , "CUP_U_O_Partisan_VSR_Mixed2"
        //Paramilitary
        , "CUP_I_B_PARA_Unit_1"
        , "CUP_I_B_PARA_Unit_2"
        , "CUP_I_B_PARA_Unit_3"
        , "CUP_I_B_PARA_Unit_4"
        , "CUP_I_B_PARA_Unit_5"
        , "CUP_I_B_PARA_Unit_6"
        , "CUP_I_B_PARA_Unit_7"
        , "CUP_I_B_PARA_Unit_8"
        , "CUP_I_B_PARA_Unit_9"
        , "CUP_I_B_PARA_Unit_10"
        , "CUP_I_B_PARA_Unit_11"
        , "CUP_I_B_PARA_Unit_12"
        , "CUP_I_B_PARA_Unit_13"
        , "CUP_I_B_PARA_Unit_14"
        , "CUP_I_B_PARA_Unit_15"
        , "U_I_C_Soldier_Para_2_F"
        , "U_I_C_Soldier_Para_3_F"
        , "U_I_C_Soldier_Para_5_F"
        , "U_I_C_Soldier_Para_4_F"
        , "U_I_C_Soldier_Para_1_F"    

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


//UNIFORMS

private _rebUniforms =  [
    "U_BG_Guerrilla_6_1",
    "CUP_I_B_PARA_Unit_3",
    "CUP_I_B_PARA_Unit_10",
    "CUP_I_B_PARA_Unit_9",
    "CUP_I_B_PARA_Unit_15",

    "U_B_CombatUniform_mcam_W",
    "WU_I_CombatUniform_AR",    
    "WU_B_T_Soldier_F",
    "WU_O_T_Officer_F",
    "WU_O_OfficerUniform_ocamo"
];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

//HEADGEAR

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
    "H_Beret_blk",
    ""
]] call _fnc_saveToTemplate;

/*//Special outfit for Petros
["Puniform", ["U_I_L_Uniform_01_camo_F"]] call _fnc_saveToTemplate;
["Pheadgear", ["CUP_H_ChDKZ_Beret"]] call _fnc_saveToTemplate;
*/
///////////////////////
////   INSIGNIA   ////
/////////////////////
["insignia", ["BLN"]] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

//I added english female voice, spanish voice, and male greek English voices.

["faces", [
    
    "Max_faceWS1",
    "Max_faceWS10",
    "Max_faceWS2",
    "Max_faceWS3",
    "Max_faceWS4",
    "Max_faceWS6",
    "Max_faceWS9",
    "PersianHead_A3_01",
    "PersianHead_A3_02",
    "AfricanHead_01",
    "AfricanHead_03",
    "AsianHead_A3_03",
    "WhiteHead_20",
    "WhiteHead_02"

]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Female01_EN", "Male04GRE", "Male02FRE"]] call _fnc_saveToTemplate;

"SahraniNames" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

//set a red neckscarf as identifier
_loadoutData set ["facewear", [
     "CUP_FR_NeckScarf5", 
    "CUP_G_Scarf_Face_Red"
]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

///////////////////////
////   INSIGNIA   ////
/////////////////////
["insignia", ["BLN"]] call _fnc_saveToTemplate;

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

/*private _PetrosTemplate = {
    ["uniform"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;
    ["headgear"] call _fnc_setHeadgear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};*/

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