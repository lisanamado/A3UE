////////////////////////////
//   Rivals Information   //
///////////////////////////

["name", "Bandits"] call _fnc_saveToTemplate;
["nameLeader", "Yoga"] call _fnc_saveToTemplate; // I stg if someone goes "BUT ACTUALLY IT'S BAROV!" I will delete this faction personally

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////
["faces", [
	"RussianHead_1", 
	"RussianHead_2", 
	"RussianHead_3", 
	"RussianHead_4", 
	"RussianHead_5", 
	"WhiteHead_29", 
	"WhiteHead_30"
]] call _fnc_saveToTemplate;
["voices", ["Male01POL", "Male02POL", "Male03POL", "Male01RUS", "Male02RUS", "Male03RUS"]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", ["CUP_I_Hilux_DSHKM_NAPA", "CUP_O_Hilux_DSHKM_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", ["CUP_O_Ural_Open_CHDKZ", "CUP_O_Ural_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", ["CUP_I_Hilux_unarmed_NAPA"]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", ["CUP_I_BRDM2_HQ_NAPA", "CUP_I_BRDM2_NAPA"]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", ["CUP_I_T55_NAPA", "CUP_I_T34_NAPA"]] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", ["CUP_O_Mi8_CHDKZ"]] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", ["O_UAV_01_F"]] call _fnc_saveToTemplate;			

["staticLowWeapons", [
	"CUP_O_DSHkM_MiniTriPod_ChDKZ", 
	"CUP_O_DSHKM_ChDKZ", 
	"CUP_O_DSHkM_MiniTriPod_ChDKZ", 
	"CUP_O_DSHKM_ChDKZ", 
	"CUP_O_AGS_ChDKZ", 
	"CUP_O_SPG9_ChDKZ", 
	"CUP_O_SPG9_ChDKZ"
]] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_2b14_82mm_CDF"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["GrenadeHand"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["CUP_MineE"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["IEDLandSmall_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["IEDLandBig_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_RGO"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellRed"]];

_loadoutData set ["facewear", [
	"CUP_G_Scarf_Face_Blk",
	"SE_Respirator",
	"SE_PPM88"
]];

_loadoutData set ["fullmask", [
	"CAU_G_CBRN_m04_hoodless",
	"CAU_G_CBRN_s10_blk"
]];

_loadoutData set ["headgear", [
    "SE_Ushanka",
    "CUP_H_PMC_Cap_Back_EP_Grey",
	"CUP_H_PMC_Cap_EP_Grey"
]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_1PN138"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", ["CUP_SOFLAM"]];

_loadoutData set ["uniforms", [
	"SCE_Bandit_1",
	"SCE_Bandit_2",
	"SCE_Bandit_3",
	"SCE_Bandit_4"
]];

_loadoutData set ["offuniforms", ["SE_Assault_Fatigues_Bandit"]];
_loadoutData set ["offvests", ["SCE_V_SEVA_Loner_6"]];
_loadoutData set ["offhelmets", ["SCE_H_SEVA_Loner_6"]];
_loadoutData set ["offfacewear", ["SCE_G_SEVA_HELMET_VISOR"]];
_loadoutData set ["offbackpacks", ["SCE_B_SEVA_Loner_6"]];
_loadoutData set ["vests", ["SCE_V_SEVA_Loner_1"]];
_loadoutData set ["heavyVests", ["SCE_Exo2G_Bandit_2"]];
_loadoutData set ["atBackpacks", ["CUP_B_USPack_Black"]];
_loadoutData set ["backpacks", ["CUP_B_USPack_Black"]];
_loadoutData set ["helmets", ["CUP_H_PMC_Beanie_Black", "CUP_H_RUS_K6_3_black"]];
_loadoutData set ["heavyHelmets", ["SCE_Exo_Helmet_Bandit"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadleader_extras", _slItems];
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

_loadoutData set ["rifles", [
    ["CUP_arifle_AK74", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""]
]];
_loadoutData set ["tunedRifles", [
    ["CUP_arifle_AK12_black", "", "", "", ["CUP_30Rnd_545x39_AK12_M"], [], ""]
]];
_loadoutData set ["enforcerRifles", [
    ["CUP_arifle_AK74M_railed", "", "", "", ["CUP_30Rnd_545x39_AK12_M"], [], ""]
]];
_loadoutData set ["carbines", [
    ["CUP_arifle_OTS14_GROZA_Grip", "", "", "", ["CUP_20Rnd_9x39_SP5_GROZA_M"], [], ""]
]];
_loadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AK74_GL", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
	["CUP_arifle_AK12_GP34_black", "", "", "", ["CUP_30Rnd_545x39_AK12_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_loadoutData set ["machineGuns", [
    ["CUP_arifle_RPK74M", "", "", "", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"], [], ""]
]];
_loadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_loadoutData set ["lightATLaunchers", ["CUP_launch_RPG18", "CUP_launch_RPG26"]];
_loadoutData set ["ATLaunchers", [
["CUP_launch_RPG7V", "", "", "cup_optic_pgo7v",["CUP_TBG7V_M", "CUP_PG7VL_M", "CUP_PG7V_M"], [], ""],
["CUP_launch_RPG7V", "", "", "cup_optic_pgo7v2",["CUP_PG7V_M", "CUP_PG7V_M", "CUP_PG7VL_M"], [], ""],
["CUP_launch_RPG7V", "", "", "cup_optic_pgo7v3",["CUP_TBG7V_M", "CUP_PG7VR_M", "CUP_PG7VR_M"], [], ""]
]];
_loadoutData set ["lightHELaunchers", ["CUP_launch_RShG2"]];
_loadoutData set ["AALaunchers", ["CUP_launch_9K32Strela"]];
_loadoutData set ["sidearms", [
["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["CAU_U_CBRN_blk"]];
_crewLoadoutData set ["vests", ["SCE_V_SEVA_Loner_6"]];
_crewLoadoutData set ["helmets", ["CUP_H_Ger_M92_Black"]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["CAU_U_CBRN_blk"]];
_pilotLoadoutData set ["vests", ["SCE_V_SEVA_Loner_6"]];
_pilotLoadoutData set ["helmets", ["CUP_H_Ger_M92_Black_GG_CF"]];