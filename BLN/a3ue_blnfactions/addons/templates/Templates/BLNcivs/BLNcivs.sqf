//Civilian Faction for use with BLN rebels.
//There is no way to set female heads to spawn only on female bodies,
//So let's say these are sturdy-bodied ladies

#include "..\..\script_component.hpp"

//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", [


    "C_Quadbike_01_F", 0.9
    ,"C_Kart_01_F", 0.01
	
	,"CUP_C_Lada_TK_CIV" , 0.2
	,"CUP_C_Lada_GreenTK_CIV" , 0.8
	,"CUP_C_Lada_Red_CIV" , 0.5
	,"CUP_C_Lada_White_CIV" , 0.7
	,"CUP_C_Skoda_CR_CIV" , 0.2
	,"CUP_C_Skoda_Blue_CIV" , 0.7
	,"CUP_C_Skoda_Red_CIV" , 0.7
	,"CUP_C_Skoda_White_CIV" , 0.7
	,"CUP_C_Volha_Gray_TKCIV" , 0.8
	,"CUP_C_Volha_Blue_TKCIV" , 0.6
	,"CUP_C_Volha_Limo_TKCIV" , 0.4
	,"CUP_C_S1203_CIV" , 0.5

	,"CUP_C_Golf4_red_Civ" , 0.4
	,"CUP_C_Golf4_black_Civ" , 0.2
	,"CUP_C_Golf4_blue_Civ" , 0.2
	,"CUP_C_Golf4_white_Civ" , 0.2
	,"CUP_C_Golf4_yellow_Civ" , 0.2
	,"CUP_C_Golf4_Sport_random_Civ" , 0.1
	,"CUP_C_Golf4_kitty_Civ", 0.001
	,"CUP_C_Pickup_unarmed_CIV" , 0.9
	,"CUP_C_Octavia_CIV" , 0.5

	,"C_Hatchback_01_F", 0.3
	,"C_Hatchback_01_sport_F", 0.05

	,"CUP_C_UAZ_Unarmed_TK_CIV" , 0.7
	,"CUP_C_UAZ_Open_TK_CIV" , 0.7
	,"CUP_C_Datsun" , 0.6
	,"CUP_C_Datsun_4seat" , 0.4
	,"CUP_C_Datsun_Plain" , 0.5
	,"CUP_C_Datsun_Tubeframe" , 0.3
	,"CUP_C_Datsun_Covered" , 0.6
	,"CUP_O_Hilux_unarmed_TK_CIV" , 0.05
	,"CUP_O_Hilux_unarmed_TK_CIV_Red" , 0.2
	,"CUP_O_Hilux_unarmed_TK_CIV_Tan" , 0.2
	,"CUP_O_Hilux_unarmed_TK_CIV_White" , 0.2
	,"CUP_C_LR_Transport_CTK" , 0.3
	,"CUP_C_SUV_CIV" , 0.4

    , "C_Offroad_01_F", 0.1

]] call _fnc_saveToTemplate;             //this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", [

	"CUP_C_V3S_Open_TKC" , 0.6
	,"CUP_C_V3S_Covered_TKC" , 0.4
	,"CUP_C_Tractor_CIV" , 0.4
	,"CUP_C_Tractor_Old_CIV" , 0.3
	,"CUP_C_TowingTractor_CIV" , 0.01
    , "C_Van_01_box_F", 0.2
    , "C_Van_01_transport_F", 0.3
	,"CUP_C_Ural_Civ_01" , 0.2
	,"CUP_C_Ural_Open_Civ_01" , 0.1
	,"CUP_C_Ural_Open_Civ_02" , 0.2
	,"CUP_C_Ural_Civ_02" , 0.2

    , "CUP_C_Ikarus_Chernarus", 0.05
	, "CUP_C_Bus_City_CIV" , 0.3
	, "CUP_C_Bus_City_TKCIV" , 0.2
	,"CUP_C_Ikarus_TKC" , 0.1
	,"CUP_C_Bus_City_CRCIV" , 0.3

	,"C_Truck_02_covered_F", 0.2
	,"C_Truck_02_transport_F", 0.2

]] call _fnc_saveToTemplate;             //this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", [

      "CUP_C_Fishing_Boat_Chernarus", 0.4
    , "CUP_C_PBX_CIV", 0.7
    , "CUP_C_Zodiac_CIV", 0.7

]] call _fnc_saveToTemplate;             //this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", [

      "C_Truck_02_box_F", 0.05
    , "C_Offroad_01_repair_F", 0.05

]] call _fnc_saveToTemplate;            //this line determines civilian repair vehicles

["vehiclesCivMedical", [
      "CUP_C_S1203_Ambulance_CIV", 0.4
]] call _fnc_saveToTemplate;        //this line determines civilian medic vehicles

["vehiclesCivFuel", [
    "C_Truck_02_fuel_F", 0.05
    , "C_Van_01_fuel_F", 0.05
]] call _fnc_saveToTemplate;

["vehiclesCivHeli", [
	"CUP_C_Mi17_Civilian_RU"
	,"CUP_C_SA330_Puma_HC1_ChernAvia"
	,"CUP_C_412"
	,"CUP_C_412_Sheriff"
	,"CUP_C_412_Luxury"
	,"CUP_C_412_Medic"
	,"CUP_C_CG_412_Medic"
	,"CUP_C_M_412_Medic"
	,"CUP_C_Merlin_HC3_CIV_Lux"
	,"CUP_C_Merlin_HC3_CIV_Rescue"
]] call _fnc_saveToTemplate;             //this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivPlanes", [
	"CUP_C_Plane_Orbit"
	,"CUP_C_DC3_CIV"
	,"CUP_C_DC3_TanoAir_CIV"	
	,"CUP_C_DC3_ChernAvia_CIV"	
	,"CUP_C_AN2_AEROSCHROT_TK_CIV"
	,"CUP_C_AN2_AIRTAK_TK_CIV"
	,"CUP_C_AN2_CIV"
	,"CUP_C_A300_CIV" //Ambient
	,"CUP_C_B737_CIV" //Ambient
	,"CUP_C_Cessna_172_CIV_BLUE" //Ambient
	,"CUP_C_Cessna_172_CIV_GREEN" //Ambient
	,"CUP_C_Cessna_172_CIV" //Ambient
	,"CUP_C_CESSNA_CIV"
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
[["CUP_C_S1203_Ambulance_CIV"], ["Ambulance",1]]
]] call _fnc_saveToTemplate;


/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "$"] call _fnc_saveToTemplate;
"SahraniNames" call _fnc_saveNames;

["faces", [

    "Max_faceWS1",
    "Max_faceWS10",
    "Max_faceWS2",
    "Max_faceWS3",
    "Max_faceWS4",
    "Max_faceWS6",
    "Max_faceWS9",
    "PersianHead_A3_02",
	"PersianHead_A3_03",
    "AfricanHead_01",
	"AfricanHead_02",
    "AfricanHead_03",
    "AsianHead_A3_03",
    "WhiteHead_02", 
	"WhiteHead_14",	
	"WhiteHead_08",
	"WhiteHead_21",
	"WhiteHead_17",
	"GreekHead_A3_03",
	"GreekHead_A3_09",
	"GreekHead_A3_04"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
    "CUP_O_TKI_Khet_Jeans_03",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_04",
    "CUP_O_TKI_Khet_Partug_05",
    "CUP_O_TKI_Khet_Partug_07",
    "CUP_U_C_Tracksuit_01",
    "CUP_U_C_Villager_01",
    "CUP_U_C_Villager_04",
    "CUP_U_C_Villager_02",
    "CUP_U_C_Villager_03",
    "CUP_U_C_Worker_03",
    "CUP_U_C_Worker_02",
    "CUP_U_C_Worker_01",
	"CUP_U_C_Woodlander_01",
	"CUP_U_C_Woodlander_04"
];          //Uniforms given to Normal Civs

private _pressUniforms = [

    "CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_04"

];            //Uniforms given to Press/Journalists

private _workerUniforms = [

    "U_C_ConstructionCoverall_Blue_F",
    "U_C_ConstructionCoverall_Black_F",
    "U_C_ConstructionCoverall_Red_F"

];           //Uniforms given to Workers at Factories/Resources


["uniforms", _civUniforms + _pressUniforms + _workerUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

_civHats = [

     "",
     "CUP_H_C_Beret_03", 
	 "H_StrawHat_dark",
	 "H_Hat_grey",  
     "H_Cap_surfer",
	 "H_Cap_red",
	 "H_Hat_Safari_olive_F",
	 "H_Hat_Safari_sand_F",
     "H_Cap_MaldenTours" 
    ];

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["workerHelmets", ["H_Construction_earprot_yellow_F","H_Construction_basic_vrana_F","H_Construction_earprot_vrana_F"]];
_loadoutData set ["pressHelmets", ["H_Cap_press", "H_PASGT_basic_blue_press_F", "H_PASGT_neckprot_blue_press_F"]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["uniforms"] call _fnc_setUniform;

};
private _workerTemplate = {
    ["workerHelmets"] call _fnc_setHelmet;
    ["workerUniforms"] call _fnc_setUniform;

};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
	
	if (isClass (configFile >> "CfgWeapons" >> "Nikon_DSLR_HUD")) then {
	["Nikon_DSLR_HUD"] call _fnc_addBinoculars;};	
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;