  //////////////////
 /// FAN FACTION //
//////////////////

//Fuerzas Armadas Nacionales

//This aims to represent a generic occupier faction resembling a caribbean/latin-american authoritarian government
//It's meant to have present time and cold war era versions

//The assets are made up of cold war western equipment and modern cheap weapons from diverse origins
//This faction was supported by US in the 70's and 80's as part of anti-communist Plan Cóndor,
//But in XXI century it developed commercial relations with eastern and western nations
//developing a mixed arsenal to fight gangs and then, after the empowering and corruption of armed forces,
//become an oppresive regime with abusive police and militias

#include "..\..\script_component.hpp"

["name", "FAN"] call _fnc_saveToTemplate;
["spawnMarkerName", "FAN Support Corridor"] call _fnc_saveToTemplate;

//FLAG TO BE DONE

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\FAN\FAN.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "Faction_CUP_FAN"] call _fnc_saveToTemplate;




//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["smallBunker", "Land_BagBunker_Small_F"] call _fnc_saveToTemplate;
["sandbag", "Land_BagFence_Long_F"] call _fnc_saveToTemplate;
["sandbagRound", "Land_BagFence_Round_F"] call _fnc_saveToTemplate;


//LAND VEHICLES//

// unarmed or armed, with 0-2 passengers:
["vehiclesBasic", [
    "B_Quadbike_01_F"
    , "CUP_O_TT650_TKA"
]] call _fnc_saveToTemplate;

// must be unarmed, unarmoured to lightly armoured, with 0-4 passengers:
["vehiclesLightUnarmed", [
    "CUP_O_Tigr_2330114_SLA"
]] call _fnc_saveToTemplate; 

// Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", [
    "CUP_I_M151_M2_SYND"
    , "CUP_O_Tigr_233014_PK_SLA"
    , "CUP_B_RG31_M2_USMC"
    , "CUP_B_HMMWV_Crows_M2_NATO_T"
]] call _fnc_saveToTemplate;            

// vehicle that can carry troops and cargoboxes:
["vehiclesTrucks", [
    "CUP_B_Kamaz_CDF"
]] call _fnc_saveToTemplate;		 

// vehicle that can carry only cargoboxes:
["vehiclesCargoTrucks", [
    "CUP_O_Ural_SLA"
]] call _fnc_saveToTemplate;		 

// wheeled vehicle with capability to rearm vehicles
["vehiclesAmmoTrucks", [
    "CUP_O_Ural_Reammo_SLA"
]] call _fnc_saveToTemplate;

// wheeled vehicle with capability to repair vehicles
["vehiclesRepairTrucks", [
    "CUP_O_Ural_Repair_SLA"
]] call _fnc_saveToTemplate;

// wheeled vehicle with capability to refuel vehicles
["vehiclesFuelTrucks", [
    "CUP_O_Ural_Refuel_SLA"
]] call _fnc_saveToTemplate;		 

// vehicle with capability to provide healing
["vehiclesMedical", [
    "CUP_O_UAZ_AMB_RU"
    , "CUP_O_BMP2_AMB_sla"
    , "CUP_B_M113A1_Med_olive_USA"
    , "I_E_Truck_02_Medical_F"
]] call _fnc_saveToTemplate;

// armed, lightly armoured, with 6-8 passengers 
["vehiclesLightAPCs", [
    "CUP_B_RG31E_M2_OD_USA"
    , "CUP_O_BTR60_SLA"
    , "CUP_O_BTR80_SLA"
    , "CUP_O_BTR80A_SLA"
]] call _fnc_saveToTemplate;             

// armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAPCs", [
    "CUP_O_MTLB_pk_SLA"
    , "CUP_O_BMP1_TKM"
    , "CUP_O_BMP2_SLA"
    , "CUP_B_M113A1_olive_USA"
    , "CUP_B_M113A1_HQ_olive_USA"

]] call _fnc_saveToTemplate;                  

// airborne vehicles, could be with passenger seats or just a crew 
["vehiclesAirborne", [
    "CUP_B_RG31_M2_OD_GC_USA"
    , "CUP_B_RG31_Mk19_OD_USA"

]] call _fnc_saveToTemplate;              

// capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesIFVs", [
    "CUP_O_BMP3_RU"
    , "B_T_APC_Wheeled_01_cannon_F"

]] call _fnc_saveToTemplate;                  

// cannon armed, heavely armored, passengers will be ignored
["vehiclesTanks", [
    "CUP_O_T72_SLA"
    , "CUP_O_T90_RU"
    , "CUP_B_M60A3_USMC"
    , "CUP_O_T55_SLA"
]] call _fnc_saveToTemplate;                 

// tanks with poor armor and weapons
["vehiclesLightTanks", [
        "CUP_B_LAV25M240_green"
    ,  "CUP_I_T34_NAPA"
    ,  "CUP_O_BMP3_RU"
    ,  "CUP_O_T55_SLA"
    ,  "CUP_O_BRDM2_ATGM_SLA"
]] call _fnc_saveToTemplate;             

// ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored
["vehiclesAA", [
    "CUP_B_M163_Vulcan_USA"
    , "CUP_O_ZSU23_Afghan_SLA"
    , "CUP_O_BMP2_ZU_TKA"
    , "CUP_O_Ural_ZU23_SLA"
]] call _fnc_saveToTemplate;                    



//WATER VEHICLES//

// boat that can carry passengers and cargoboxes
["vehiclesTransportBoats", [
    "CUP_B_MK10_GB"
    ]] call _fnc_saveToTemplate;	

// armed boat, with passengers(?)
["vehiclesGunBoats", [
    "CUP_O_LCVP_SLA"
]] call _fnc_saveToTemplate;              

["vehiclesAmphibious", [
    "CUP_O_BRDM2_SLA"
    , "CUP_O_BRDM2_ATGM_SLA"
    , "CUP_O_BTR60_SLA"
    , "CUP_O_BTR80_SLA"
    , "CUP_O_BTR80A_SLA"
]] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)



//AIR VEHICLES

["vehiclesPlanesCAS", [
    "CUP_O_Su25_Dyn_SLA"
    , "CUP_I_L39_AAF"
]] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles

["vehiclesPlanesAA", [
"CUP_I_SU34_AAF"
]] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles

["vehiclesPlanesTransport", [
    "CUP_O_C47_SLA"
    , "CUP_I_C130J_AAF"
]] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently

["vehiclesHelisLight", [
    "CUP_O_UH1H_SLA"
    , "CUP_O_UH1H_slick_SLA"
    , "B_Heli_Light_01_F"
]] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+

["vehiclesHelisTransport", [
    "CUP_B_UH60M_US"
    , "I_Heli_light_03_unarmed_F"
    , "CUP_I_Wildcat_Green_AAF"
]] call _fnc_saveToTemplate;        // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting

// Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", [
    "B_Heli_Light_01_dynamicLoadout_F"
    , "CUP_O_UH1H_gunship_SLA"
]] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", [
        "CUP_O_Ka50_DL_SLA"
    , "CUP_B_AH64_DL_USA"
]] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc



["vehiclesArtillery", [
    "CUP_B_M270_HE_USMC"
    , "CUP_O_BM21_SLA"
]] call _fnc_saveToTemplate;             // wheeled or tracked vehicle with artillery cannon or rockets

["magazines", createHashMapFromArray [["CUP_O_BM21_SLA", ["CUP_40Rnd_GRAD_HE"]]] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", [
    "O_T_UAV_04_CAS_F"
]] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", [
    "CUP_O_Pchela1T_RU"
    , "I_UAV_01_F"
]] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled



//Config special vehicles
["vehiclesMilitiaLightArmed", [
        "CUP_I_M151_M2_SYND"
]] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", [
    "CUP_O_Ural_RU"
]] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", [
    "CUP_O_Volha_SLA"
    , "CUP_I_M151_SYND"
]] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces
["vehiclesMilitiaAPCs", [
    "CUP_O_BRDM2_SLA"
    , "CUP_O_MTLB_pk_SLA"
    , "CUP_B_RG31E_M2_OD_USA"
]] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", [    
    "B_GEN_Offroad_01_gen_F"
    , "CUP_O_Tigr_233034_RU" 

]] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", [
    "CUP_O_DSHKM_SLA"
    , "CUP_I_M2StaticMG_RACS"
]] call _fnc_saveToTemplate;                     // static machine guns
["staticAT", [
    "CUP_O_SPG9_SLA"
    , "CUP_B_TOW2_TriPod_US"
]] call _fnc_saveToTemplate;                      // static anti-tank weapons 
["staticAA", [
    "CUP_O_Igla_AA_pod_SLA"
    , "CUP_B_CUP_Stinger_AA_pod_US"
]] call _fnc_saveToTemplate;                      // static anti-aircraft weapons
["staticMortars", [
    "CUP_I_M252_RACS"
]] call _fnc_saveToTemplate;                 // static mortars
["staticHowitzers", [
    "CUP_O_D30_RU"
]] call _fnc_saveToTemplate;               // static howitzers

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

       ["CUP_O_BMP2_ZU_TKA"], ["SLA",1] 
    ,   ["CUP_O_Tigr_233034_RU", ["Generic_Gendarmerie",1]
    ]
]] call _fnc_saveToTemplate;














/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.
["faces", []] call _fnc_saveToTemplate;
["voices", []] call _fnc_saveToTemplate;
//SpecialForces, Militia, Police Faces and Voices, these are Optional if there is no reason to Include them, leave them out.
["sfVoices", []] call _fnc_saveToTemplate;
["sfFaces", []] call _fnc_saveToTemplate;
["milVoices", []] call _fnc_saveToTemplate;
["milFaces", []] call _fnc_saveToTemplate;
["polVoices", []] call _fnc_saveToTemplate;
["polFaces", []] call _fnc_saveToTemplate;
["eliteVoices", []] call _fnc_saveToTemplate;
["eliteFaces", []] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;
["sfInsignia", []] call _fnc_saveToTemplate;
["milInsignia", []] call _fnc_saveToTemplate;
["polInsignia", []] call _fnc_saveToTemplate;
["eliteInsignia", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", [
    "CUP_arifle_Galil_black"
    , "CUP_arifle_FNFAL5061_rhodesian"
    , "CUP_arifle_FNFAL_railed_desert"
    , "CUP_arifle_FNFAL5060"
    , "CUP_glaunch_M32"
    , "CUP_arifle_M16A1"
    ]];
_loadoutData set ["carbines", ["CUP_arifle_Galil_SAR_black", ]];
_loadoutData set ["grenadeLaunchers", [
    "CUP_arifle_M16A1GL"
    , "CUP_glaunch_M32"
]];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", ["CUP_smg_UZI"]];
_loadoutData set ["machineGuns", [
    "CUP_lmg_FNMAG"
]];
_loadoutData set ["marksmanRifles", [
    "CUP_srifle_M14_LeupoldMk4"
]];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["lightHELaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", []];

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
_loadoutData set ["NVGs", ["NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", []];
_loadoutData set ["traitorVests", []];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", []];
_loadoutData set ["officerVests", []];
_loadoutData set ["officerHats", []];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", []];           //long range radios used by radiomen
_loadoutData set ["helmets", []];

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

_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", [
"CUP_U_B_BDUv2_gloves_Tigerstripe"
, "CUP_U_B_BDUv2_roll_Tigerstripe"
, "CUP_U_B_BDUv2_Tigerstripe"
, "CUP_U_B_BDUv2_dirty_Tigerstripe"
, "CUP_U_B_BDUv2_roll2_Tigerstripe"
, "CUP_U_B_BDUv2_roll2_gloves_Tigerstripe"
]];
_sfLoadoutData set ["vests", []];
_sfLoadoutData set ["backpacks", []];
_sfLoadoutData set ["helmets", []];
_sfLoadoutData set ["binoculars", []];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["rifles", []];
_sfLoadoutData set ["carbines", []];
_sfLoadoutData set ["grenadeLaunchers", []];
_sfLoadoutData set ["SMGs", []];
_sfLoadoutData set ["machineGuns", []];
_sfLoadoutData set ["marksmanRifles", []];
_sfLoadoutData set ["sniperRifles", []];
_sfLoadoutData set ["sidearms", []];
/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", [
"CUP_U_B_BDUv2_roll2_gloves_dirty_OD"
, "CUP_U_B_BDUv2_roll2_gloves_OD"
, "CUP_U_B_BDUv2_roll_gloves_dirty_OD"
, "CUP_U_B_BDUv2_roll_gloves_OD"
, "CUP_U_B_BDUv2_gloves_dirty_OD"
, "CUP_U_B_BDUv2_gloves_OD"
, "CUP_U_B_BDUv2_roll2_dirty_OD"
, "CUP_U_B_BDUv2_roll2_OD"
, "CUP_U_B_BDUv2_roll_dirty_OD"
, "CUP_U_B_BDUv2_roll_OD"
, "CUP_U_B_BDUv2_dirty_OD"
, "CUP_U_B_BDUv2_OD"
]];
_militaryLoadoutData set ["vests", [
"CUP_V_B_PASGT_OD"
, CUP_V_B_PASGT_no_bags_OD
]];
_militaryLoadoutData set ["backpacks", []];
_militaryLoadoutData set ["helmets", [
"CUP_H_PASGTv2_OD"
, CUP_H_PASGTv2_NVG_OD
]];
_militaryLoadoutData set ["binoculars", []];

_militaryLoadoutData set ["rifles", []];
_militaryLoadoutData set ["carbines", []];
_militaryLoadoutData set ["grenadeLaunchers", []];
_militaryLoadoutData set ["SMGs", []];
_militaryLoadoutData set ["machineGuns", []];
_militaryLoadoutData set ["marksmanRifles", []];
_militaryLoadoutData set ["sniperRifles", []];
_militaryLoadoutData set ["sidearms", []];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", []];
_policeLoadoutData set ["vests", []];
_policeLoadoutData set ["helmets", [
"CUP_H_C_Policecap_01"
//ADD GENDARMERIE ITEMS
ITEMS
//Next ones are helmets I planned to use, but they are too resistant for police
//, "CUP_H_RUS_K6_3_Shield_Down_black"
//, "CUP_H_RUS_K6_3_Shield_Up_black"
]];


//check this:
_policeLoadoutData set ["SMGs", [
 "CUP_smg_BallisticShield_Sa61","","CUP_acc_SF_XC1","",["CUP_50Rnd_B_765x17_Ball_M","CUP_20Rnd_B_765x17_Ball_M","CUP_20Rnd_B_765x17_Ball_M","CUP_10Rnd_B_765x17_Ball_M"], [], "CUP_decal_BallisticShield_Police_worn"
, "CUP_hgun_BallisticShield_PMM","","CUP_acc_LCU_PM_Laser","",["CUP_12Rnd_9x18_PMM_M","CUP_12Rnd_9x18_PMM_M","CUP_12Rnd_9x18_PMM_M","CUP_12Rnd_9x18_PMM_M"], [], "CUP_decal_BallisticShield_Police_worn"
,	"CUP_sgun_SPAS12","","","",["CUP_8Rnd_12Gauge_Pellets_No00_Buck","CUP_8Rnd_12Gauge_Pellets_No4_Buck","CUP_8Rnd_12Gauge_Slug","CUP_8Rnd_12Gauge_Slug"], [], ""
,	"CUP_sgun_M1014_solidstock","","","",["CUP_8Rnd_12Gauge_Pellets_No00_Buck","CUP_8Rnd_12Gauge_Pellets_No4_Buck","CUP_8Rnd_12Gauge_Slug","CUP_8Rnd_12Gauge_Slug"], [], ""
,	"CUP_sgun_M1014_Entry_vfg","","","",["CUP_6Rnd_12Gauge_Pellets_No00_Buck","CUP_6Rnd_12Gauge_Pellets_No4_Buck","CUP_6Rnd_12Gauge_Pellets_No4_Bird","CUP_6Rnd_12Gauge_Slug"], [], ""
, "CUP_smg_saiga9", "", "", "", ["CUP_10Rnd_9x19_Saiga9"], [], ""
, "CUP_sgun_Saiga12K", "", "", "", ["CUP_5Rnd_B_Saiga12_Slug"], [], ""
, "CUP_arifle_FNFAL5061_wooden", "", "", "", ["CUP_10Rnd_762x51_FNFAL_M"], [], ""
, "CUP_smg_M3A1_blk", "", "", "", ["CUP_30Rnd_45ACP_M3A1_BLK_M"], [], ""
, "CUP_smg_bizon", "CUP_muzzle_Bizon", "", "CUP_optic_OKP_7", ["CUP_64Rnd_9x19_Bizon_M"], [], ""

]];

_policeLoadoutData set ["sidearms", [
 	"CUP_hgun_Colt1911", "", "", "", ["CUP_7Rnd_45ACP_1911","CUP_7Rnd_45ACP_1911"], [], ""
, "CUP_hgun_M9", "", "", "", ["CUP_15Rnd_9x19_M9","CUP_15Rnd_9x19_M9"], [], ""
,	"CUP_hgun_P30L_blk", "", "", "", ["CUP_17Rnd_9x19_P30L","CUP_17Rnd_9x19_P30L"], [], ""
, "CUP_hgun_TT", "", "", "", ["CUP_8Rnd_762x25_TT"], [], ""

]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", []];
_militiaLoadoutData set ["vests", []];
_militiaLoadoutData set ["backpacks", []];
_militiaLoadoutData set ["helmets", []];

_militiaLoadoutData set ["rifles", []];
_militiaLoadoutData set ["carbines", []];
_militiaLoadoutData set ["grenadeLaunchers", []];
_militiaLoadoutData set ["SMGs", []];
_militiaLoadoutData set ["machineGuns", []];
_militiaLoadoutData set ["marksmanRifles", []];
_militiaLoadoutData set ["sidearms", []];

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
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
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
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
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
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
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