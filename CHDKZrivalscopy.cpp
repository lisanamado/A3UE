//   Rivals Information   //
///////////////////////////

["name", "CHDKZ"] call _fnc_saveToTemplate;
["nameLeader", "Mikola Bardak"] call _fnc_saveToTemplate;

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
	"WhiteHead_30", 
	"LivonianHead_1", 
	"LivonianHead_2",
	"LivonianHead_3",
	"LivonianHead_4",
	"LivonianHead_5",
	"LivonianHead_6",
	"LivonianHead_7",
	"LivonianHead_8",
	"LivonianHead_9",
	"LivonianHead_10",
	"GreekHead_A3_02",
	"GreekHead_A3_06",
	"GreekHead_A3_03",
	"GreekHead_A3_04",
	"AsianHead_A3_03",
	"AsianHead_A3_06"
]] call _fnc_saveToTemplate; 
["voices", ["Male01POL", "Male02POL", "Male03POL", "Male01RUS", "Male02RUS", "Male03RUS"]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

["vehiclesRivalsLightArmed", ["CUP_O_UAZ_MG_CHDKZ", "CUP_O_Hilux_DSHKM_CHDKZ", "CUP_O_UAZ_AGS30_CHDKZ", "CUP_O_Hilux_UB32_CHDKZ", "CUP_O_BRDM2_CHDKZ", "CUP_O_BRDM2_HQ_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", ["CUP_O_Ural_Open_CHDKZ", "CUP_O_Ural_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsCars", ["CUP_O_UAZ_Open_CHDKZ", "CUP_O_UAZ_Unarmed_CHDKZ", "CUP_O_Hilux_unarmed_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", ["CUP_O_BTR60_CHDKZ", "CUP_O_BTR80_CHDKZ", "CUP_O_BMP2_CHDKZ"]] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", ["CUP_O_T55_CHDKZ", "CUP_O_T72_CHDKZ"]] call _fnc_saveToTemplate;
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
	"G_Shades_Black", 
	"G_Shades_Blue", 
	"G_Shades_Green", 
	"G_Shades_Red", 
	"G_Aviator",
	"G_Spectacles", 
	"G_Spectacles_Tinted",
	"G_Sport_BlackWhite", 
	"G_Sport_Blackyellow", 
	"G_Sport_Greenblack", 
	"G_Sport_Checkered", 
	"G_Sport_Red", 
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_sport",
	"G_Bandanna_shades"
]];
_loadoutData set ["fullmask", []];

_loadoutData set ["headgear", [

    "H_Cap_grn",
    "H_Cap_oli",
	"H_MilCap_grn",
	"H_Bandanna_khk",
	"H_Beret_blk"

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
	"CUP_U_O_CHDKZ_Kam_01",
	"CUP_U_O_CHDKZ_Kam_02",
	"CUP_U_O_CHDKZ_Kam_03",
	"CUP_U_O_CHDKZ_Kam_04",
	"CUP_U_O_CHDKZ_Kam_05",
	"CUP_U_O_CHDKZ_Kam_06",
	"CUP_U_O_CHDKZ_Kam_07",
	"CUP_U_O_CHDKZ_Kam_08"
]];

_loadoutData set ["offuniforms", ["CUP_U_O_CHDKZ_Commander"]];
_loadoutData set ["vests", ["CUP_V_O_Ins_Carrier_Rig"]];
_loadoutData set ["heavyVests", ["CUP_V_O_Ins_Carrier_Rig"]];
_loadoutData set ["atBackpacks", ["CUP_B_INS_RPG_Backpack"]];
_loadoutData set ["backpacks", ["CUP_B_INS_AlicePack_Ammo"]];
_loadoutData set ["helmets", ["CUP_H_ChDKZ_Beanie"]];
_loadoutData set ["heavyHelmets", ["CUP_H_ChDKZ_Beanie"]];

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
    ["CUP_arifle_AK74", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
	["CUP_arifle_AKS", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"], [], ""]
]];
_loadoutData set ["tunedRifles", [
    ["CUP_arifle_AK74", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"], [], ""]
]];
_loadoutData set ["enforcerRifles", [
    ["CUP_arifle_AK74", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"], [], ""]
]];
_loadoutData set ["carbines", [
    ["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""]
]];
_loadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AK74_GL", "", "", "", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
	["CUP_arifle_AKM_GL", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
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
_crewLoadoutData set ["vests", ["CUP_V_O_Ins_Carrier_Rig"]];
_crewLoadoutData set ["helmets", ["CUP_H_ChDKZ_Beanie"]];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", ["CUP_V_O_Ins_Carrier_Rig"]];
_pilotLoadoutData set ["helmets", ["H_Cap_headphones"]];