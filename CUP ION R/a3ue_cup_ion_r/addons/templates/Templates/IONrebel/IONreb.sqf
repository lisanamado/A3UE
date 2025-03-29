//ION rebel faction, starting with a couple of modern military weapons and civil weapons for the AIs

#include "..\..\script_component.hpp"

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "ION"] call _fnc_saveToTemplate;

["flag", "Flag_ION_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\IONrebel\ION.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "a3a_flag_ION"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesBasic", ["I_E_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_I_SUV_ION","CUP_I_Pickup_Unarmed_PMC"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_nM1025_M2_DF_ION","CUP_B_nM1025_SOV_M2_ION"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["CUP_B_MTVR_USMC"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_nM1036_TOW_ION"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_I_SUV_Armored_ION"]] call _fnc_saveToTemplate;
["vehiclesBoat", ["CUP_B_RHIB_USMC"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_B_C130J_GB"]] call _fnc_saveToTemplate;                    
["vehiclesCivPlane", ["CUP_C_AN2_CIV", "CUP_C_C47_CIV"]] call _fnc_saveToTemplate;

["vehiclesMedical", ["CUP_B_nM997_ACR"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["CUP_C_Tigr_4x4_CIV","CUP_O_Hilux_unarmed_CR_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["I_G_Van_01_transport_F","CUP_C_Ural_Civ_03"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["CUP_C_Fishing_Boat_Chernarus","CUP_C_PBX_CIV"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_M2StaticMG_US", "CUP_B_M2StaticMG_MiniTripod_US"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_TOW_TriPod_US"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_B_CUP_Stinger_AA_pod_US"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_B_L16A2_BAF_WDL"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["staticMortarMagFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["mineAT", "CUP_MineE_M"] call _fnc_saveToTemplate;
["mineAPERS", "APERSMine_Range_Mag"] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate; //this line determines explosives needed for breaching Tanks -- Example: [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] -- Array, can use Multiple

["variants", [
    ["I_G_Van_01_transport_F", ["Black",1]],
    ["CUP_B_nM997_ACR", ["IonBlack",1]]

]] call _fnc_saveToTemplate;


//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["lootCrate", "A3AP_Box_Syndicate_Ammo_F"] call _fnc_saveToTemplate;
["rallyPoint", "B_RadioBag_01_wdl_F"] call _fnc_saveToTemplate;


///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////


private _initialRebelEquipment = [

    ["CUP_hgun_Glock17_blk",20],    "CUP_17Rnd_9x19_glock17",

    "CUP_hgun_Colt1911",    "CUP_7Rnd_45ACP_1911",
    "CUP_hgun_TEC9_FA",    "CUP_32Rnd_9x19_TEC9",

    "CUP_smg_Mac10",    "CUP_30Rnd_45ACP_MAC10_M",
    "CUP_smg_M3A1_blk", "CUP_30Rnd_45ACP_M3A1_BLK_M",

    "CUP_sgun_CZ584",   "CUP_1Rnd_12Gauge_Pellets_No00_Buck", "CUP_1Rnd_762x51_CZ584",
    "CUP_sgun_slamfire",    "CUP_1Rnd_12Gauge_Pellets_No3_Buck",
    "CUP_srifle_LeeEnfield",    "CUP_10x_303_M",
    "CUP_srifle_Remington700",  "CUP_6Rnd_762x51_R700",

    "CUP_sgun_M1014_solidstock",    "CUP_8Rnd_12Gauge_Pellets_No0_Buck", ["CUP_8Rnd_12Gauge_Slug",20],
    "CUP_sgun_M1014_Entry",
    ["CUP_sgun_SPAS12",15],
    ["CUP_sgun_AA12",10],   "CUP_20Rnd_B_AA12_Buck_0", ["CUP_20Rnd_B_AA12_Slug",20], ["CUP_20Rnd_B_AA12_HE",5],

    ["CUP_smg_MP5A5",10],   "CUP_30Rnd_9x19_MP5","CUP_30Rnd_Yellow_Tracer_9x19_MP5","CUP_30Rnd_Subsonic_9x19_MP5",     ["muzzle_snds_L",4],
    ["CUP_smg_MP7",3],  "CUP_40Rnd_46x30_MP7",
    ["CUP_smg_p90_black",4],    "50Rnd_570x28_SMG_03", "CUP_50Rnd_570x28_Green_Tracer_P90_M", ["muzzle_snds_570",2],
    ["CUP_smg_EVO",3],  "CUP_30Rnd_9x19_EVO",

    ["CUP_arifle_X95",2],    "CUP_30Rnd_556x45_X95",
    ["CUP_arifle_AK102_railed",3],  "CUP_30Rnd_556x45_AK",

    ["CUP_arifle_M4A1_SOMMOD_black",5], "CUP_30Rnd_556x45_Emag", "CUP_30Rnd_556x45_Emag_Tracer_Green",
    ["CUP_arifle_HK416_Black",3],
    ["CUP_arifle_HK417_12",2], "CUP_20Rnd_762x51_HK417",
    ["CUP_arifle_AK19_VG_bicolor",2], "CUP_30Rnd_556x45_Tracer_Red_AK19_M", "CUP_30Rnd_556x45_AK19_M",
    ["CUP_arifle_G36KA3_grip",3], "CUP_30Rnd_556x45_G36_hex", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36",
    ["CUP_arifle_AK101_railed",5],

    ["CUP_arifle_mk18_m203_black",1],   "CUP_30Rnd_556x45_Emag_Tracer_Red", "CUP_1Rnd_HE_M203", "CUP_1Rnd_Smoke_M203",
    ["CUP_arifle_AK101_GL_railed",3],   "CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M",
    ["CUP_arifle_M4A1_BUIS_GL",3], 

    ["CUP_lmg_minimi_railed",2], "CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
    ["CUP_lmg_Mk48",2], "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",

    ["CUP_srifle_RSASS_Black",1], "CUP_20Rnd_762x51_B_M110",
    ["CUP_srifle_Mk12SPR",1], "CUP_20Rnd_556x45_Stanag",
    ["CUP_arifle_Mk20_black",1], "CUP_20Rnd_762x51_B_SCAR_bkl",
    ["CUP_arifle_HK417_20",1],

    ["CUP_launch_Mk153Mod0_blk",10],
    ["CUP_launch_M72A6_Special",50],
    ["CUP_launch_FIM92Stinger", 5],

    ["CUP_SMAW_HEAA_M",25],
    ["CUP_SMAW_HEDP_M",25],
    ["CUP_SMAW_NE_M",25],
    ["CUP_optic_SMAW_Scope",5],

    ["CUP_bipod_Harris_1A2_L_BLK",15],

    "CUP_acc_Zenit_2DS",

    ["CUP_optic_Elcan_SpecterDR_black_PIP",5],
    ["CUP_optic_HoloBlack",15],
    ["CUP_optic_AC11704_Black",10],
    ["CUP_optic_LeupoldM3LR",3],

    ["CUP_muzzle_snds_socom762rc",2],
    ["muzzle_snds_M",5],

    "CUP_HandGrenade_M67",
    "SmokeShell",
    
    ["IEDUrbanSmall_Remote_Mag", 10], 
    ["IEDLandSmall_Remote_Mag", 10], 

    "V_BandollierB_oli", 
    "CUP_V_I_RACS_Carrier_Rig_wdl_2", 
    "CUP_V_I_RACS_Carrier_Rig_wdl_3", 
    "CUP_V_B_GER_Carrier_Rig",

    ["CUP_V_CPC_weaponsbelt_mc",15],
    ["CUP_V_PMC_CIRAS_Black_TL",5], 

	["CUP_H_OpsCore_Covered_Tigerstripe_SF",2],
	["CUP_H_OpsCore_Covered_MCAM",1],
	["CUP_H_OpsCore_Black_NoHS",1],
	["CUP_H_CZ_Helmet10",4],
	["CUP_H_CZ_Helmet08",3],
	["CUP_H_USArmy_MICH_ESS_M81",5],
    ["CUP_H_USArmy_MICH_GCOVERED_Headset_UCP",5],

	"B_AssaultPack_sgg",
    "CUP_B_US_Assault_OEFCP", 
    "B_Carryall_khk",
    "B_AssaultPack_ocamo",
	"CUP_B_US_Assault_OCP",
	"B_Carryall_ocamo",

    ["CUP_Vector21Nite",5],
    "Binocular"

//UNIFORMS FOR PLAYERS
        //PMCs
        , "CUP_I_B_PMC_Unit_41"
        , "CUP_I_B_PMC_Unit_37"
        , "CUP_I_B_PMC_Unit_36"
        , "CUP_I_B_PMC_Unit_35"
        , "CUP_I_B_PMC_Unit_34"
        , "CUP_I_B_PMC_Unit_33"
        , "CUP_I_B_PMC_Unit_32"
        , "CUP_I_B_PMC_Unit_31"
        , "CUP_I_B_PMC_Unit_30"
        , "CUP_I_B_PMC_Unit_29"
        , "CUP_I_B_PMC_Unit_27"
        , "CUP_I_B_PMC_Unit_26"
        , "CUP_I_B_PMC_Unit_25"
        , "CUP_I_B_PMC_Unit_24"
        , "CUP_I_B_PMC_Unit_23"
        , "CUP_I_B_PMC_Unit_22"
        , "CUP_I_B_PMC_Unit_19"
        , "CUP_I_B_PMC_Unit_18"
        , "CUP_I_B_PMC_Unit_17"
        , "CUP_I_B_PMC_Unit_16"
        , "CUP_I_B_PMC_Unit_15"
        , "CUP_I_B_PMC_Unit_14"
        , "CUP_I_B_PMC_Unit_13"
        , "CUP_I_B_PMC_Unit_12"
        , "CUP_I_B_PMC_Unit_10"
        , "CUP_I_B_PMC_Unit_09"
        , "CUP_I_B_PMC_Unit_08"
        , "CUP_I_B_PMC_Unit_07"
        , "CUP_I_B_PMC_Unit_06"
        , "CUP_I_B_PMC_Unit_05"
        , "CUP_I_B_PMC_Unit_04"
        , "CUP_I_B_PMC_Unit_03"
        , "CUP_I_B_PMC_Unit_02"
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
        , "CUP_U_C_Rescuer_01"
        , "U_C_Paramedic_01_F"
        //bandits-summer
        , "U_I_C_Soldier_Bandit_4_F"
        , "U_I_C_Soldier_Bandit_1_F"
        , "U_I_C_Soldier_Bandit_2_F"
        , "U_I_C_Soldier_Bandit_5_F"
        , "U_I_C_Soldier_Bandit_3_F"
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
        //Partisans
        , "CUP_U_O_Partisan_TTsKO"
        , "CUP_U_O_Partisan_TTsKO_Mixed"
        , "CUP_U_O_Partisan_VSR_Mixed1"
        , "CUP_U_O_Partisan_VSR_Mixed2"


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
    "CUP_I_B_PMC_Unit_40"
    , "CUP_I_B_PMC_Unit_43"
    , "CUP_I_B_PMC_Unit_11"
    , "CUP_I_B_PMC_Unit_20"
    , "CUP_I_B_PMC_Unit_42"
	, "CUP_I_B_PMC_Unit_39"
	, "CUP_I_B_PMC_Unit_38"
	, "CUP_I_B_PMC_Unit_1"
	, "CUP_I_B_PMC_Unit_21"
];   


["uniforms", _rebUniforms] call _fnc_saveToTemplate;

//HEADGEAR

["headgear", [
    "H_HeadSet_black_F",
	"H_Cap_blk_ION",
    "CUP_H_PMC_Cap_Back_PRR_Grey",
    "CUP_H_PMC_Cap_PRR_Grey"
]] call _fnc_saveToTemplate;


/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03",
    "WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08",
    "WhiteHead_09","WhiteHead_10","WhiteHead_12","WhiteHead_13",
    "WhiteHead_17","WhiteHead_18","WhiteHead_19","WhiteHead_20"
]] call _fnc_saveToTemplate;
["voices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG",
    "Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG",
    "Male12ENG", "Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB",
    "Male05ENGB", "Male01ENGFRE", "Male02ENGFRE"
    ]] call _fnc_saveToTemplate;

"EnglishMen" call _fnc_saveNames;

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
	"G_Aviator",
	"G_Spectacles_Tinted",
	"G_Lowprofile",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
    "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk"
]];

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