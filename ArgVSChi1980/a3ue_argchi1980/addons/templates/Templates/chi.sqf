
//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "F.A. de Chile"] call _fnc_saveToTemplate;
["spawnMarkerName", "Corredor de apoyo chileno"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\chi.paa)] call _fnc_saveToTemplate;
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
    "BAF_Offroad_W"
]] call _fnc_saveToTemplate;		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", [
    "BAF_Offroad_W_HMG"
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
    ,"ACR_LandRover_AMB"
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
    "clv_Kurassier"
]] call _fnc_saveToTemplate;                 // cannon armed, heavely armored, passengers will be ignored
["vehiclesLightTanks", [
    "LIB_UK_Italy_M4A3_75"
    ,"LIB_BRIT_M4A4_Firefly_7thAD"
]] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", []] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", []] call _fnc_saveToTemplate;	// boat that can carry passengers and cargoboxes
["vehiclesGunBoats", []] call _fnc_saveToTemplate;              // armed boat, with passengers(?)
//["vehiclesAmphibious", []] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)

["vehiclesPlanesCAS", [
    "sab_t28trojan_i"
    ,"sab_mb339_i"
    ,"sab_alphajet_i"
]] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", [
    "sab_fiat_i"
]] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
["vehiclesPlanesTransport", [
    "sab_c2a_1_2"
]] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently
["vehiclesHelisLight", [
    "pook_H13_OPFOR","pook_H13_transport"
]] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", [
    "SNS_UH1H_2"
    ,"SNS_UH1H_3"
    ,"SNS_UH1D_B"
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
    "BAF_Offroad_W_HMG"
]] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", [
    "Unimog_small"
]] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", [
    "BAF_Offroad_W"
]] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces
["vehiclesMilitiaAPCs", []] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", ["LandRover_ACR"]] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", ["I_C_HMG_02_high_F"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
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
    ["UNI_UK_Willys_MB_M1919_MM1",["UK_Willys_M1919_MM1",1]]
    ,["UNI_UK_Willys_MB_G",["UK_Willys_G",1]]
    ,["Unimog416_big",["UNIMOGS7",1]]
    ,["Unimog_Municion",["UNIMOGS7",1]]
    ,["UNIMOG_MEDICO",["UNIMOGS7",1]]
    ,["Unimog_reapir",["UNIMOGS7",1]]
    ,["Unimog_small",["UNIMOGS7",1]]
    ,["clv_Aml20",["OTAN",1]]
    ,["clv_AmlHS30",["OTAN",1]]
    ,["clv_Aml90",["Argentino",1]]
    ,["clv_Kurassier",["Green",1]]
    ,["LIB_BRIT_M4A4_Firefly_7thAD",["ERY18",1]]
    ,["LIB_UK_Italy_M4A3_75",["winter_sov1",1]]
    ,["CLV_OERLIKON",["Gdf7",1]]
    ,["CLV_OMM56",["Otomelara7",1]]
    ,["acfaa_m113_m2",["verde",1]]
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
    ]] call _fnc_saveToTemplate;
["voices", ["Male01FRE","Male03FRE","Male02FRE"]] call _fnc_saveToTemplate;
"Patagonames" call _fnc_saveNames;

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
_loadoutData set ["binoculars", ["LIB_Binocular_UK"]];
_loadoutData set ["rangefinders", [""]];

_loadoutData set ["traitorUniforms", []];
_loadoutData set ["traitorVests", []];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", ["U_O_ParadeUniform_01_CSAT_decorated_F"]];
_loadoutData set ["officerVests", ["sns_mas49_erla"]];
_loadoutData set ["officerHats", ["H_LIB_US_Pilot_Cap"]];

_loadoutData set ["uniforms", ["U_Simc_regenkot_og107","U_Simc_OG107_mk3_gas_nomex_blench","U_Simc_OG107_mk3_gas_blench","U_Simc_OG107_mk3_tuck_nomex_blench","U_Simc_OG107_mk3_nomex_blench","U_Simc_OG107_mk3_tuck_blench","U_Simc_OG107_mk3_blench","U_Simc_OG107_mk1_gas_nomex_blench","U_Simc_OG107_mk1_gas_blench","U_Simc_OG107_mk1_tuck_nomex_blench","U_Simc_OG107_mk1_nomex_blench"]];
_loadoutData set ["slUniforms", ["U_Simc_TCU_mk3_nomex_mc"]];
_loadoutData set ["vests", ["V_sns_m58_p37","V_Simc_SF_BAR_1","V_Simc_SF_BAR_2","V_Simc_SF_BAR_3","V_Simc_SF_BAR_4","V_Simc_Barbelt","V_Simc_Barbelt_M56","V_Simc_Barbelt_M56_zusp","V_sns_m58_p37_bare","V_sns_m58_p37_m43"]];
_loadoutData set ["backpacks", ["B_simc_USMC65_M68_Roll","B_simc_USMC65_M68_erdl","B_simc_USMC65_M68_flat_M43","B_simc_USMC65_M68","B_simc_pack_trop_rajio","B_simc_pack_trop_rajio_frem","B_simc_pack_trop_4","B_simc_pack_trop_1_alt","B_simc_US_roll","B_simc_US_asspack_machete_roll","B_simc_pack_frem_empty","B_simc_ARVN_flak_ruck_1"]];
_loadoutData set ["longRangeRadios", ["B_simc_MC_rajio_base"]];           //long range radios used by radiomen
_loadoutData set ["helmets", ["H_Simc_SVN_M1C_net_Op","H_Simc_SVN_M1C_ifak","H_Simc_SVN_M1_ifak_Op","H_Simc_SVN_M1_ns","H_Simc_SVN_M1_Cl"]];

_loadoutData set ["sniHats", ["H_Simc_MC_hat_1","H_Simc_MC_hat_2"]];

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

_policeLoadoutData set ["uniforms", ["U_O_ParadeUniform_01_CSAT_F"]];
_policeLoadoutData set ["vests", ["sns_mas49_erla"]];
_policeLoadoutData set ["helmets", ["H_ParadeDressCap_01_LDF_F"]];

_policeLoadoutData set ["SMGs", [_CHIsterlingMADERAIL15,_m1C,_mauser,_m1garand,_CHIsterling15,_CHIsterlingMADERAIL32]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["slHat", ["H_LIB_WP_Beret"]];

_militiaLoadoutData set ["slRifles", [_CHIsigTRIP]];
_militiaLoadoutData set ["rifles", [_CHIsig,_CHIfal]];
_militiaLoadoutData set ["carbines", [_m1,_m1C,_m1garand]];
_militiaLoadoutData set ["grenadeLaunchers", [_m1GL,_m2GL,_falGL]];
_militiaLoadoutData set ["SMGs", [_CHIsterlingMADERAIL32,_CHIsterling32]];
_militiaLoadoutData set ["machineGuns", [_browning100b,_browning50b]];
_militiaLoadoutData set ["marksmanRifles", [_CHIfalS,_m1garandS]];
_militiaLoadoutData set ["sniperRifles", [_mauserS,_m1garandS]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////
private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["Hvests", []];;
_militaryLoadoutData set ["slHat", ["H_LIB_US_Pilot_Cap"]];

_militaryLoadoutData set ["slRifles", [_CHIsigTRIP,_CHIsigS]];
_militaryLoadoutData set ["rifles", [_CHIsig,_CHIfal]];
_militaryLoadoutData set ["carbines", [_m1garandS,_m2SF]];
_militaryLoadoutData set ["grenadeLaunchers", [_CHIsigGL,_falGL]];
_militaryLoadoutData set ["SMGs", [_CHIsterlingMADERAIL32,_CHIsterling32]];
_militaryLoadoutData set ["machineGuns", [_FALO,_browning100b,_FNmag50,_FNmag100]];
_militaryLoadoutData set ["marksmanRifles", [_FALOs,_CHIfalS]];
_militaryLoadoutData set ["sniperRifles", [_mauserS]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["vests", ["V_Simc_flak_M69"]];
_eliteLoadoutData set ["Hvests", []];
_eliteLoadoutData set ["slHat", ["H_LIB_WP_Cap"]];

_eliteLoadoutData set ["slRifles", [_CHIfalSF,_CHIsigS,_M16]];
_eliteLoadoutData set ["rifles", [_CHIfalSF,_CHIsigS]];
_eliteLoadoutData set ["carbines", [_m2SF,_M16C]];
_eliteLoadoutData set ["grenadeLaunchers", [_falGL]];
_eliteLoadoutData set ["SMGs", [_CHIsterlingMADERAIL32,_CHIsterling32,_MP5]];
_eliteLoadoutData set ["machineGuns", [_FALOs,_FNmag100,_FNmag200]];
_eliteLoadoutData set ["marksmanRifles", [_FALOs,_M16S]];
_eliteLoadoutData set ["sniperRifles", [_mauserS]];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["U_Simc_arvn_BDQ"]];
_sfLoadoutData set ["vests", ["V_Simc_flak_M69_belt","V_Simc_flak_M69_45_belt_band"]];
_sfLoadoutData set ["helmets", ["sns_beret"]];

_sfLoadoutData set ["slRifles", [_M16S,_M16Ssil,_CHIfalSF,_CHIsigS,_CHIfalIR]];
_sfLoadoutData set ["rifles", [_M16,_CHIfalSF,_CHIsigS,_CHIfalIR]];
_sfLoadoutData set ["carbines", [_M16C,_m2IR,_M16Csil]];
_sfLoadoutData set ["grenadeLaunchers", [_M16GL]];
_sfLoadoutData set ["SMGs", [_MP5sil]];
_sfLoadoutData set ["machineGuns", [_FNmag200]];
_sfLoadoutData set ["marksmanRifles", [_CHIfalSF,_M16Ssil]];
_sfLoadoutData set ["sniperRifles", [_mauserS]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["U_Simc_OG107_mk3_AVN"]];
_crewLoadoutData set ["vests", []];
_crewLoadoutData set ["helmets", ["H_Simc_MC_hat_2  "]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["U_LIB_US_Bomber_Pilot"]];
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