
//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "F.A. Argentinas"] call _fnc_saveToTemplate;
["spawnMarkerName", "Corredor de apoyo argentino"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\arg.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "ARG_marker"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

// vehicles can be placed in more than one category if they fit between both. Cost will be derived by the higher category
["vehiclesBasic", []] call _fnc_saveToTemplate;			 // unarmed or armed, with 0-2 passengers
["vehiclesLightUnarmed", [
    "sns_nekaf_1",
    "sns_nekaf_2",
    "LIB_Willys_MB",
    "LIB_Willys_MB_Hood",
    "UNI_UK_Willys_MB_D",
    "LIB_UK_DR_Willys_MB_Hood"
]] call _fnc_saveToTemplate;		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", [
    "UNI_UK_Willys_MB_M1919_D",
    "LIB_UK_DR_Willys_MB_M1919",
    "LIB_UK_Willys_MB_M1919"
]] call _fnc_saveToTemplate;             // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesTrucks", [
    "Unimog416_big"
]] call _fnc_saveToTemplate;		 // vehicle that can carry troops and cargoboxes
["vehiclesCargoTrucks", [
    "Unimog416_big"
]] call _fnc_saveToTemplate;		 // vehicle that can carry only cargoboxes
["vehiclesAmmoTrucks", [
    "Unimog_Municion"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to rearm vehicles
["vehiclesRepairTrucks", [
    "Unimog_reapir"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to repair vehicles
["vehiclesFuelTrucks", [
    "UNIMOG_COMBUSTIBLE"
]] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to refuel vehicles
["vehiclesMedical", [
    "UNIMOG_MEDICO"
]] call _fnc_saveToTemplate;		 // vehicle with capability to provide healing
["vehiclesLightAPCs", []] call _fnc_saveToTemplate;             // armed, lightly armoured, with 6-8 passengers 
["vehiclesAPCs", [
    "acfaa_m113_m2"
    ]] call _fnc_saveToTemplate;                  // armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAirborne", [
    "clv_Aml20"
    ,"clv_AmlHS30"
    ,"clv_Aml90"
    ,"LIB_US_Willys_MB_M1919_w"
    ,"UNI_UK_Willys_MB_M1919_MM1"
    ,"acfaa_m113_m2"
]] call _fnc_saveToTemplate;              // airborne vehicles, could be with passenger seats or just a crew 
["vehiclesIFVs", [
    "clv_Aml20"
    ,"clv_AmlHS30"
    ,"clv_Aml90"
]] call _fnc_saveToTemplate;                  // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesTanks", [
    "clv_TAM"
]] call _fnc_saveToTemplate;                 // cannon armed, heavely armored, passengers will be ignored
["vehiclesLightTanks", [
    "clv_Amx13"
]] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", []] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", []] call _fnc_saveToTemplate;	// boat that can carry passengers and cargoboxes
["vehiclesGunBoats", []] call _fnc_saveToTemplate;              // armed boat, with passengers(?)
//["vehiclesAmphibious", []] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)

["vehiclesPlanesCAS", [
    "I_Pucara_F"
    ,"I_F86_F"
    ,"I_A4Skyhawk_F"
    ,"I_A4Skyhawk_F_noRadar"
]] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", [
    "I_dagger_F"
    ,"I_MirageIIIEA_F"
    ,"I_A4CSkyhawk_F"
]] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
["vehiclesPlanesTransport", [
    "acfaa_c130lep"
]] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently
["vehiclesHelisLight", [
    "pook_H13_BLUFOR","pook_H13_transport"
]] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", [
    "ACFAA_ARG_UH1D"
    ,"ACFAA_ARG_UH1H_M60"
]] call _fnc_saveToTemplate;        // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", [
    "pook_H13_gunship"
]] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", []] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc
["vehiclesArtillery", [
    "CLV_OMM56"
]] call _fnc_saveToTemplate;             // wheeled or tracked vehicle with artillery cannon or rockets
["vehiclesArtillery", ["CLV_OMM56", "FakeWeapon"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["CLV_OMM56", ["FakeMagazine"]]
]] call _fnc_saveToTemplate;
["uavsAttack", []] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", []] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled
//Config special vehicles
["vehiclesMilitiaLightArmed", [
    "LIB_US_Willys_MB_M1919_w",
    "UNI_UK_Willys_MB_M1919_MM1"
]] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", [
    "Unimog_small"
]] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", [
    "UNI_UK_Willys_MB_G",
    "LIB_US_Willys_MB_Hood_w"
]] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces
["vehiclesMilitiaAPCs", []] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", ["falcon"]] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", ["O_G_HMG_02_high_F"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["tbd_spg"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["CLV_OERLIKON","LIB_61k"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["LIB_M2_60"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["CLV_OMM56"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["mortarMagazineHE", "LIB_8Rnd_60mmHE_M2"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "LIB_60mm_M2_SmokeShell"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "FakeMagazine"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;



//vehicle skins
["variants", [
    ["Unimog416_big",["UNIMOGS6",1]]
    ,["Unimog_Municion",["UNIMOGS6",1]]
    ,["UNIMOG_MEDICO",["UNIMOGS6",1]]
    ,["Unimog_reapir",["UNIMOGS6",1]]
    ,["Unimog_small",["UNIMOGS6",1]]
    ,["clv_Aml20",["OTAN",1]]
    ,["clv_AmlHS30",["OTAN",1]]
    ,["clv_Aml90",["Argentino",1]]
    ,["clv_Amx13",["Otan",1]]
    ,["clv_TAM",["Green2",1]]
    ,["CLV_OERLIKON",["Gdf6",1]]
    ,["CLV_OMM56",["Otomelara6",1]]
    ,["acfaa_m113_m2",["camo",1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.
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
    , "LIB_Walter_IF"
    , "LIB_PersianHead_01_Dirt"
    , "LIB_GreekHead_02_Camo"
    , "LIB_AsianHead_01_Dirt"
    , "LIB_WhiteHead_20_Camo"
    , "LIB_AsianHead_03_Camo"
    , "LIB_WhiteHead_15_Dirt"
    , "LIB_WhiteHead_14_Camo"
    , "LIB_PersianHead_03_Dirt"
    , "LIB_WhiteHead_12_Camo"
    , "LIB_WhiteHead_21_Camo"
    , "LIB_WhiteHead_19_Dirt"
    , "LIB_O_Colonel_Dirt"
    , "LIB_Miller_Camo"
    , "LIB_WhiteHead_11_Dirt"
    , "LIB_WhiteHead_16_Dirt"
    , "LIB_WhiteHead_09_Dirt"
    , "LIB_WhiteHead_08_Dirt"
    , "LIB_WhiteHead_07_Camo"
    , "LIB_Kerry_Camo"
    , "LIB_WhiteHead_06_Camo"
    , "LIB_WhiteHead_03_Dirt"
    , "LIB_WhiteHead_05_Dirt"
    , "LIB_WhiteHead_18_Camo"
    , "LIB_WhiteHead_02_Camo"
    , "LIB_Otto_IF"
    , "LIB_aleksei_IF"
    ]] call _fnc_saveToTemplate;
["voices", ["Male01FRE","Male03FRE","Male02FRE"]] call _fnc_saveToTemplate;
"riojanames" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

//This includes the classes for next loadouts, which are set in arsenal.sqf file
#include "arsenal.sqf"

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", [
    ["sp_fwa_m72a1_law_loaded","","","",[],[],""]
]];
_loadoutData set ["HELaunchers", [
    ["sp_fwa_m67","","","",["sp_fwa_m67_1rnd_he","sp_fwa_m67_1rnd_he","sp_fwa_m67_1rnd_ap"],[],""]
]];
_loadoutData set ["ATLaunchers", [
    ["sp_fwa_m67","","","",["sp_fwa_m67_1rnd_heat","sp_fwa_m67_1rnd_heat","sp_fwa_m67_1rnd_ap"],[],""]
]];
_loadoutData set ["missileATLaunchers", [
     ["sp_fwa_m2_carlGustav","","","",["sp_fwa_carlg_1rnd_heat","sp_fwa_carlg_1rnd_heat","sp_fwa_carlg_1rnd_wp"],[],""]
    ,["sp_fwa_m2_carlGustav_no78","","","",["sp_fwa_carlg_1rnd_heat","sp_fwa_carlg_1rnd_heat","sp_fwa_carlg_1rnd_wp"],[],""]
    ]];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", _fwPistols];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["LIB_M39", "LIB_US_Mk_2","ACE_M14","LIB_F1"]];
_loadoutData set ["antiTankGrenades", ["LIB_Pwm"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", [""]];
_loadoutData set ["NVGs", ["LIB_GER_Gloves4","LIB_GER_Gloves2","LIB_GER_Gloves3","LIB_Headwrap","LIB_Headwrap_gloves","claysac_flak_addon","nomex_1_fold_addon","nomex_2_fold_addon","nomex_3_addon","illegal_canteen_addon","sns_hair","bandolier_556_addon_low","m60_band_addon_R","botol_regt_addon","anduk_1_addon","anduk_2_addon"]];
_loadoutData set ["binoculars", ["LIB_Binocular_UK","Binocular","LIB_Binocular_GER","LIB_Binocular_SU","LIB_Binocular_US"]];
_loadoutData set ["rangefinders", [""]];

_loadoutData set ["traitorUniforms", []];
_loadoutData set ["traitorVests", []];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", ["U_I_E_ParadeUniform_01_LDF_decorated_F"]];
_loadoutData set ["officerVests", ["V_LIB_UK_P37_Crew"]];
_loadoutData set ["officerHats", ["arg_boina_cazador"]];

_loadoutData set ["uniforms", ["U_Simc_TCU_mk3_leg_zwart_roll","U_Simc_TCU_mk1_leg_zwart_roll","U_Simc_TCU_mk3_zwart_roll","U_Simc_TCU_mk2_zwart_roll","U_Simc_TCU_mk1_zwart_roll","U_Simc_TCU_mk1_zwart","U_Simc_TCU_mk2_zwart","U_Simc_TCU_mk3_sog_zwart","U_Simc_TCU_mk3_tuck_zwart","U_Simc_TCU_mk3_zwart","U_Simc_TCU_mk1_leg_zwart","U_Simc_TCU_mk3_leg_zwart","U_Simc_TCU_mk3_sog_leg_zwart","U_Simc_TCU_mk1_zwart_nomex","U_Simc_TCU_mk2_zwart_nomex","U_Simc_TCU_mk3_sog_nomex_zwart","U_Simc_TCU_mk3_zwart_nomex","U_Simc_TCU_mk3_sog_leg_nomex_zwart"]];
_loadoutData set ["slUniforms", ["UCAC_CAMO_OLIVA"]];
_loadoutData set ["vests", ["V_LIB_UK_P37_Holster_Blanco","V_LIB_UK_P37_Rifleman_Blanco","V_LIB_UK_P37_Heavy_Blanco","V_LIB_UK_P37_Officer_Blanco","V_LIB_US_AB_Vest_Bar","V_LIB_US_AB_Vest_M1919","V_LIB_US_AB_Vest_Padded_Bar","V_LIB_US_Vest_Asst_MG","V_LIB_US_Vest_Bar","V_LIB_US_Vest_Medic"]];
_loadoutData set ["backpacks", ["B_LIB_GER_Backpack","B_LIB_GER_Tonister34_cowhide","B_LIB_UK_HSack_Blanco","B_LIB_US_Backpack","B_LIB_US_Backpack_Mk2"]];
_loadoutData set ["longRangeRadios", ["B_LIB_US_Radio"]];           //long range radios used by radiomen
_loadoutData set ["helmets", ["H_LIB_US_AB_Helmet_Clear_1","H_LIB_US_AB_Helmet_Clear_2","H_LIB_US_AB_Helmet_Clear_3","H_LIB_US_AB_Helmet_CO_1","H_LIB_US_AB_Helmet_CO_2","H_LIB_US_AB_Helmet","H_LIB_US_AB_Helmet_2","H_LIB_US_AB_Helmet_NCO_2","H_LIB_US_Helmet","H_LIB_US_Helmet_Net_ns","H_LIB_US_Helmet_Net_os","H_LIB_US_Helmet_Net","H_LIB_US_Helmet_ns","H_LIB_US_Helmet_os"]];

_loadoutData set ["sniHats", ["H_Simc_Boon_green_1","H_Simc_Boon_green_2","H_Simc_Boon_green_6","H_Simc_Boon_green_7","H_Simc_Boon_green_5"]];

_loadoutData set ["glasses", [
    "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted"
    ,"G_Squares", "G_Squares_Tinted", "G_Balaclava_oli", "G_Bandanna_aviator","G_Bandanna_tan","G_LIB_Scarf2_G","G_LIB_Scarf2_B","G_LIB_Scarf_B","G_LIB_Scarf_G"
    ,"G_Anduk_1","G_Anduk_2","G_LIB_Binoculars","G_LIB_GER_Gloves2","G_LIB_Headwrap_gloves","G_Nomex_2_fold_cut"
    ]];	//cosmetics
_loadoutData set ["goggles", ["G_SWDG_low","G_SWDG"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = [];
private _eeItems = ["ToolKit"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append [];
    _eeItems append [];
    _mmItems append ["ACE_RangeCard"];
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


///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["vests", ["sns_mas49_erla"]];
_policeLoadoutData set ["helmets", ["H_Simc_MC_hat_1","H_Simc_MC_hat_2","H_Simc_MC_hat_3"]];

_policeLoadoutData set ["SMGs", [_ARGengrasadora,_mauser,_m1,_m1C]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["slHat", ["arg_boina_cazador"]];

_militiaLoadoutData set ["slRifles", [_ARGfal]];
_militiaLoadoutData set ["rifles", [_ARGfal]];
_militiaLoadoutData set ["carbines", [_m1,_m1C,_ARGengrasadora]];
_militiaLoadoutData set ["grenadeLaunchers", [_m1GL,_m2GL,_falGL]];
_militiaLoadoutData set ["SMGs", [_ARGFMK,_ARGengrasadora]];
_militiaLoadoutData set ["machineGuns", [_ARGfap,_browning100b]];
_militiaLoadoutData set ["marksmanRifles", [_ARGfalS]];
_militiaLoadoutData set ["sniperRifles", [_mauserS]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////
private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 

_militaryLoadoutData set ["slHat", ["arg_boina_cazmonte"]];
_militaryLoadoutData set ["binoculars", ["Binocular"]];

_militaryLoadoutData set ["slRifles", [_ARGfalSF,_ARGfap,_ARGmfal]];
_militaryLoadoutData set ["rifles", [_ARGfal]];
_militaryLoadoutData set ["carbines", [_m2P,_m2SF,_ARGFMK]];
_militaryLoadoutData set ["grenadeLaunchers", [_m2GL,_falGL]];
_militaryLoadoutData set ["SMGs", [_ARGFMK,_ARGFMK45]];
_militaryLoadoutData set ["machineGuns", [_ARGfap,_browning100b,_FNmag50,_FNmag100]];
_militaryLoadoutData set ["marksmanRifles", [_ARGfalS,_ARGfalSF]];
_militaryLoadoutData set ["sniperRifles", [_mauserS]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["slHat", ["arg_boina_601para"]];

_eliteLoadoutData set ["slRifles", [_ARGmfalAP,_ARGfalSF,_M16,_ARGmfalPARAAP]];
_eliteLoadoutData set ["rifles", [_ARGfalSF,_ARGmfal,_ARGmfalPARA]];
_eliteLoadoutData set ["carbines", [_ARGFMK45,_m2SF,_M16C]];
_eliteLoadoutData set ["grenadeLaunchers", [_falGL]];
_eliteLoadoutData set ["SMGs", [_ARGFMK45,_MP5]];
_eliteLoadoutData set ["machineGuns", [_ARGfap,_FNmag100,_FNmag200]];
_eliteLoadoutData set ["marksmanRifles", [_ARGfalSF,_M16S]];
_eliteLoadoutData set ["sniperRifles", [_mauserS]];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["U_B_FullGhillie_sard"]];
_sfLoadoutData set ["vests", ["V_Simc_SF_mk56_3","V_Simc_SF_mk56_5","V_Simc_SF_mk56_4","V_Simc_SF_mk56_2","V_Simc_SF_mk56_1","V_Simc_SF_1","V_Simc_SF_2","V_Simc_SF_3","V_Simc_SF_4"]];

_sfLoadoutData set ["slRifles", [_M16S,_M16Ssil,_ARGmfalPARAAP,_ARGfalSF,_ARGfalIR]];
_sfLoadoutData set ["rifles", [_M16,_ARGmfalPARAAP,_ARGfalSF,_ARGfalIR]];
_sfLoadoutData set ["carbines", [_M16C,_m2IR,_M16Csil]];
_sfLoadoutData set ["grenadeLaunchers", [_M16GL]];
_sfLoadoutData set ["SMGs", [_ARGFMK45sil,_MP5sil]];
_sfLoadoutData set ["machineGuns", [_FNmag200]];
_sfLoadoutData set ["marksmanRifles", [_ARGfalSF,_M16Ssil]];
_sfLoadoutData set ["sniperRifles", [_mauserS]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["acfaa_COVERALL_ARG"]];
_crewLoadoutData set ["vests", ["sns_mas49_erla"]];
_crewLoadoutData set ["helmets", ["H_Simc_MC_hat_2  "]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["acfaa_COVERALL_ARG"]];
_pilotLoadoutData set ["vests", [""]];
_pilotLoadoutData set ["helmets", ["sab_ma_pilot_helmet_nomask_2"]];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.
private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["rifles"] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["SMGs", "carbines"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["SMGs"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["ATLaunchers"] call _fnc_setLauncher;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles","SMGs", "carbines"]] call _fnc_setPrimary;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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