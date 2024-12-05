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
    "CUP_O_Tigr_233014_SLA"
]] call _fnc_saveToTemplate; 

// Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", [
    "CUP_O_Tigr_233014_PK_SLA"
    , "CUP_B_RG31_M2_OD_GC_USA"
    , "CUP_B_RG31_Mk19_OD_USA"
    , "CUP_B_RG31_M2_OD_USA"
    , "CUP_B_HMMWV_Crows_M2_NATO_T"
    , "CUP_O_Tigr_M_233114_GREEN_KORD_RU"
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
    "CUP_O_BMP3_CSAT_T"
]] call _fnc_saveToTemplate;

// cannon armed, heavely armored, passengers will be ignored
["vehiclesTanks", [
    "CUP_O_T72_SLA"
    , "CUP_B_M60A3_USMC"
]] call _fnc_saveToTemplate;                 

// tanks with poor armor and weapons
["vehiclesLightTanks", [
    "CUP_I_T34_NAPA"
    ,  "CUP_O_T55_SLA"
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

["magazines", createHashMapFromArray [["CUP_O_BM21_SLA", ["CUP_40Rnd_GRAD_HE"]], ["CUP_I_M270_HE_RACS", ["CUP_12Rnd_MLRS_HE"]]]] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", [
    "O_T_UAV_04_CAS_F"
    , "CUP_B_USMC_DYN_MQ9"
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
    "CUP_O_Ural_SLA"
]] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", [
    "CUP_I_M151_SYND"
]] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces
["vehiclesMilitiaAPCs", [
     "CUP_O_Tigr_233014_PK_SLA"
    , "CUP_B_RG31_M2_OD_GC_USA"
    , "CUP_B_RG31_Mk19_OD_USA"
    , "CUP_B_HMMWV_Crows_M2_NATO_T"
    , "CUP_O_Tigr_M_233114_GREEN_KORD_RU"
]] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", [    
    "B_GEN_Offroad_01_gen_F"
    , "CUP_O_Tigr_233034_RU" 
]] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", [
    "CUP_O_DSHKM_SLA"
    , "CUP_I_M2StaticMG_RACS"
    , "CUP_O_KORD_high_RUS_M_Summer"
]] call _fnc_saveToTemplate;                     // static machine guns
["staticAT", [
    "CUP_O_SPG9_SLA"
    , "CUP_O_Kornet_RUS_M_Summer"
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
    ["CUP_O_BMP2_ZU_TKA", ["SLA",1]]
    ,  ["CUP_O_Tigr_233034_RU", ["Generic_Gendarmerie",1]]
    ,  ["CUP_O_Tigr_M_233114_GREEN_KORD_RU", ["SLA",1]]
]] call _fnc_saveToTemplate;


/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.
["faces", [
    "PersianHead_A3_01"
    , "PersianHead_A3_02"
    , "AfricanHead_01"
    , "AfricanHead_03"
    , "AsianHead_A3_03"
    , "WhiteHead_20"
    , "WhiteHead_02"
    , "GreekHead_A3_13"
    , "TanoanHead_A3_03"
    , "GreekHead_A3_03"
    , "AsianHead_A3_04"
    , "TanoanHead_A3_05"
    , "GreekHead_A3_12"
    , "Mavros"
    , "TanoanHead_A3_07"
    , "TanoanHead_A3_06"
]] call _fnc_saveToTemplate;
["voices", [
    "MALEO1ESPA", "male06gre", "Male04GRE", "Male06GRE", "Male05GRE"
]] call _fnc_saveToTemplate;

["sfFaces", [
        "WhiteHead_22_a"
        , "WhiteHead_22_l"
        , "WhiteHead_22_sa"
        , "PersianHead_A3_04_a"
        , "PersianHead_A3_04_a"
        , "PersianHead_A3_04_l"
        , "PersianHead_A3_04_sa"
        , "GreekHead_A3_10_a"
        , "GreekHead_A3_10_l"
        , "GreekHead_A3_10_sa"
]] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;
["sfInsignia", []] call _fnc_saveToTemplate;
["milInsignia", []] call _fnc_saveToTemplate;
["polInsignia", []] call _fnc_saveToTemplate;
["eliteInsignia", []] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", [
    ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M","CUP_6Rnd_Smoke_GP25","CUP_6Rnd_FlareRed_GP25_M"],[],""]
]];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", [
    "CUP_launch_M72A6"
    , "CUP_launch_RPG26"
]];
_loadoutData set ["lightHELaunchers", [
    "CUP_launch_RShG2"
    , ["CUP_launch_RPG7V", "", "", "", ["CUP_OG7_M", "CUP_TBG7V_M"], [], ""]
]];
_loadoutData set ["ATLaunchers", [
    ["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_PG7V_M", "CUP_PG7VM_M", "CUP_PG7VL_M", "CUP_PG7VR_M"], [], ""]
    , ["CUP_launch_RPG7V", "", "", "", ["CUP_PG7V_M"], [], ""]
    , ["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", ["CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEAT_M"], [], ""]
]];
_loadoutData set ["missileATLaunchers", [
    ["CUP_launch_M47", "", "", "", ["CUP_Dragon_EP1_M"], [], ""]
    , ["CUP_launch_Metis", "", "", "", ["CUP_AT13_M"], [], ""]

]];
_loadoutData set ["AALaunchers", [
    ["CUP_launch_9K32Strela", "", "", "", [""], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_RGO","CUP_HandGrenade_M67"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_HMNVS"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["CUP_U_B_BDUv2_roll2_dirty_DPM_OD"]];
_loadoutData set ["traitorVests", ["CUP_V_B_PASGT_no_bags_OD", "CUP_V_B_PASGT_CCE"]];
_loadoutData set ["traitorHats", ["H_Booniehat_mcamo"]];

_loadoutData set ["officerUniforms", ["CUP_U_B_BDUv2_gloves_Rhodesian"]];
_loadoutData set ["officerVests", ["CUP_V_B_PASGT_CCE"]];
_loadoutData set ["officerHats", ["H_MilCap_eaf"]];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", ["TFAR_SCR536"]];           //long range radios used by radiomen
_loadoutData set ["helmets", []];

_loadoutData set ["facewear", [
    ""
    , "CUP_FR_NeckScarf"
    , "None"
]];     

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
	_slItems append ["ACE_microDAGR", "ACE_DAGR"];
	_eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
	_mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras",  _slItems];
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

_loadoutData set ["glasses", [
    "G_Aviator"
    ,"G_Shades_Black"
    , ""
    , "G_Squares_Tinted"
    , "G_Spectacles_Tinted"
    , "None"
    , "G_Squares"
    , "G_Spectacles"
]];
_loadoutData set ["goggles", [
    "G_Combat"
    , "CUP_G_ESS_BLK_Dark"
    , ""
    , "G_Lowprofile"
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", [
    "U_B_GEN_Soldier_F"
    , "U_B_GEN_Commander_F"
]];
_policeLoadoutData set ["vests", [
    "V_TacVest_blk_POLICE"
]];
_policeLoadoutData set ["helmets", [
    "H_Cap_police"
]];

_policeLoadoutData set ["SMGs", [
 ["CUP_smg_BallisticShield_Sa61","","","",["CUP_20Rnd_B_765x17_Ball_M", "CUP_10Rnd_B_765x17_Ball_M", "CUP_50Rnd_B_765x17_Ball_M"],[],""]
, ["CUP_hgun_BallisticShield_PMM","","","",["CUP_12Rnd_9x18_PMM_M "],[],""]
, ["CUP_sgun_M1014_solidstock","","","",["CUP_8Rnd_12Gauge_Slug"], [], ""]
, ["CUP_arifle_FNFAL5061_wooden", "", "", "", ["CUP_10Rnd_762x51_FNFAL_M"], [], ""]
, ["CUP_smg_M3A1_grn","","","",["CUP_30Rnd_45ACP_Red_Tracer_M3A1_GRN_M", "CUP_30Rnd_45ACP_M3A1_GRN_M"],[],""]
, ["CUP_arifle_Sa58s_rearris","","","",["CUP_15Rnd_Sa58_M"],[],""]
]];

_policeLoadoutData set ["sidearms", [
["CUP_hgun_Colt1911", "", "", "", ["CUP_7Rnd_45ACP_1911"],[],""]
, ["CUP_hgun_PMM","","","",["CUP_12Rnd_9x18_PMM_M"],[],""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["uniforms", [
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
_militiaLoadoutData set ["vests", [
    "CUP_V_CDF_OfficerBelt2"
    , "CUP_V_I_RACS_Carrier_Rig_wdl_2"
    , "CUP_V_RUS_Smersh_New_Buttpack_Spectre"
    , "V_TacVest_camo"
    , "V_TacVest_oli"
    , "V_I_G_resistanceLeader_F"
]];
_militiaLoadoutData set ["backpacks", [
    "CUP_B_AlicePack_OD"
    , "CUP_B_AlicePack_Khaki"
]];
_militiaLoadoutData set ["helmets", [
    "CUP_H_Booniehat_Rhodesian"
    , "CUP_H_Booniehat_CCE"
    , "H_Booniehat_oli"
    , "CUP_H_SLA_Boonie"
    , "CUP_H_USArmy_Helmet_M1_btp"
    , "CUP_H_USArmy_Helmet_M1_Olive"
    , "CUP_H_USArmy_Helmet_M1_plain_Olive"
    , "CUP_H_USArmy_Helmet_M1_plain_M81"
]];

_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_FNFAL5061_wooden", "", "", "", ["CUP_10Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M"], [], ""]
    , ["CUP_arifle_FNFAL5060_rhodesian","","","",["CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL5060_rhodesian","","","",["CUP_20Rnd_762x51_FNFAL_M","CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
    , ["CUP_arifle_Galil_black", "", "", "",["CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Red_Tracers_Galil_Mag"],[],""]
]];
_militiaLoadoutData set ["carbines", [
     ["CUP_arifle_Sa58s_rearris","","","",["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_15Rnd_Sa58_M"],[],""]
    , ["CUP_arifle_Galil_SAR_black","","","",["CUP_35Rnd_556x45_Galil_Mag", "CUP_35Rnd_556x45_Red_Tracer_Galil_Mag"],[],""]
    , ["CUP_arifle_FNFAL_OSW","","","",["CUP_10Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL_OSW","","","",["CUP_10Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_glaunch_M79","","","",["CUP_1Rnd_HE_M203"],[],""]
    , ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M"],[],""]
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_UZI","","","",["CUP_32Rnd_9x19_UZI_M"],[],""]    
    , ["CUP_smg_M3A1_grn","","","",["CUP_30Rnd_45ACP_Red_Tracer_M3A1_GRN_M", "CUP_30Rnd_45ACP_M3A1_GRN_M"],[],""]
    , ["CUP_smg_SA61","","","",["CUP_20Rnd_B_765x17_Ball_M", "CUP_50Rnd_B_765x17_Ball_M"],[],""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_lmg_M60","","","",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
    , ["CUP_lmg_FNMAG","","","",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"],[],""]
]];
//the next ones are subject to further testing
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M21","","","CUP_optic_artel_m14",["CUP_20Rnd_762x51_DMR"],[],""]
    , ["CUP_arifle_FNFAL5061_railed","","","CUP_optic_SUSAT",["CUP_10Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
]];
_militiaLoadoutData set ["sidearms", [
    ["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911"],[],""]
    , ["CUP_hgun_PMM","","","",["CUP_12Rnd_9x18_PMM_M"],[],""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", [
    "CUP_U_B_BDUv2_DPM_OD"
    , "CUP_U_B_BDUv2_dirty_DPM_OD"
    , "CUP_U_B_BDUv2_gloves_DPM_OD"
    , "CUP_U_B_BDUv2_gloves_dirty_DPM_OD"
    , "CUP_U_B_BDUv2_roll2_DPM_OD"
    , "CUP_U_B_BDUv2_roll2_dirty_DPM_OD"
    , "CUP_U_B_BDUv2_roll2_gloves_DPM_OD"
    , "CUP_U_B_BDUv2_roll2_gloves_dirty_DPM_OD"
    , "CUP_U_B_BDUv2_roll_DPM_OD"
    , "CUP_U_B_BDUv2_roll_dirty_DPM_OD"
    , "CUP_U_B_BDUv2_roll_gloves_DPM_OD"
    , "CUP_U_B_BDUv2_roll_gloves_dirty_DPM_OD"
]];
_militaryLoadoutData set ["vests", [
"CUP_V_B_PASGT"
, "CUP_V_B_PASGT_no_bags"
]];
_militaryLoadoutData set ["backpacks", [
"B_Kitbag_rgr"
, "B_Kitbag_sgg"
, "CUP_B_GER_Pack_Flecktarn"
, "CUP_B_RUS_Patrol_bag_6E5_Summer"
, "CUP_B_RUS_Patrol_bag_Summer"
]];
_militaryLoadoutData set ["helmets", [
"CUP_H_PASGTv2_OD"
, "CUP_H_PASGTv2_NVG_OD"
]];
_militaryLoadoutData set ["binoculars", [
    "Binocular"
]];

_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_Galil_black", "", "", "CUP_optic_1P87_RIS_woodland",["CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Red_Tracers_Galil_Mag"],[],""]
    , ["CUP_arifle_Galil_black", "", "", "",["CUP_25Rnd_762x51_Galil_Mag", "CUP_25Rnd_762x51_Red_Tracers_Galil_Mag"],[],""]
    , ["CUP_arifle_FNFAL5061_railed","","","CUP_optic_CompM2_low_OD",["CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL5061_railed","","","CUP_optic_1P87_RIS_woodland",["CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
    , ["CUP_arifle_FNFAL_railed_woodland","","","CUP_optic_1P87_RIS_woodland",["CUP_20Rnd_762x51_FNFAL_Woodland_M", "CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL_railed_woodland","","","CUP_optic_CompM2_low_OD",["CUP_20Rnd_762x51_FNFAL_Woodland_M", "CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
    , ["CUP_arifle_M16A1","","","",["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Yellow"],[],""]
    , ["CUP_arifle_Sa58P_frontris_woodland","","","CUP_optic_CompM2_low_OD",["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_15Rnd_Sa58_M", "CUP_45Rnd_Sa58_M"],[],""]
]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_Galil_SAR_black","","","",["CUP_35Rnd_556x45_Galil_Mag", "CUP_50Rnd_556x45_Galil_Mag", "CUP_35Rnd_556x45_Red_Tracer_Galil_Mag"],[],""]
    , ["CUP_arifle_Galil_SAR_black","","","CUP_optic_1P87_RIS_woodland",["CUP_35Rnd_556x45_Galil_Mag", "CUP_50Rnd_556x45_Galil_Mag", "CUP_35Rnd_556x45_Red_Tracer_Galil_Mag"],[],""]
    , ["CUP_arifle_FNFAL_OSW_railed","","","CUP_optic_CompM2_low_OD",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL_OSW_railed","CUP_muzzle_mfsup_Flashhider_762x51_Black","","CUP_optic_CompM2_low_OD",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL_OSW_railed","","CUP_acc_Flashlight_wdl","CUP_optic_CompM2_low_OD",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],"CUP_bipod_FNFAL"]
    , ["CUP_arfile_Sa58_Carbine_RIS_AFG_woodland","CUP_acc_Flashlight_wdl","","CUP_optic_MicroT1",["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_45Rnd_Sa58_M", "CUP_45Rnd_Sa58_M_TracerR"],[],""]
]]; 
_militaryLoadoutData set ["grenadeLaunchers", [
     ["CUP_arifle_Sa58RIS2_gl_woodland","CUP_muzzle_mfsup_Zendl","","",["CUP_30Rnd_Sa58_woodland_M_TracerY", "CUP_30Rnd_Sa58_woodland_M"],["CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_FlareWhite_M203","CUP_1Rnd_StarFlare_White_M203","CUP_1Rnd_StarCluster_Red_M203","CUP_1Rnd_Smoke_M203"],""]
    , ["CUP_glaunch_6G30","","","",["CUP_6Rnd_HE_GP25_M","CUP_6Rnd_Smoke_GP25","CUP_6Rnd_FlareRed_GP25_M"],[],""]
    , ["CUP_arifle_M16A1GL","","","",["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag_Tracer_Yellow"],["CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_FlareWhite_M203","CUP_1Rnd_StarFlare_White_M203","CUP_1Rnd_StarCluster_Red_M203","CUP_1Rnd_Smoke_M203"],""]
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_UZI","","","",["CUP_32Rnd_9x19_UZI_M"],[],""]
    , ["CUP_arifle_Sa58s_rearris","","","",["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_15Rnd_Sa58_M"],[],""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_FNMAG_RIS","","","",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
    , ["CUP_lmg_FNMAG_RIS","","","CUP_optic_SUSAT",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
    , ["CUP_lmg_M60","","","CUP_optic_CompM2_low_OD",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
    , ["CUP_arifle_Sa58_Klec_ris","","","CUP_optic_CompM2_low_OD",["CUP_45Rnd_Sa58_M_TracerR"],[],""]
]];

_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14","","","CUP_optic_SB_3_12x50_PMII_Tan",["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"]
    , ["CUP_srifle_M14","","","CUP_optic_SB_11_4x20_PM_od",["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_M14_DMR","muzzle_snds_B","","CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_Harris_1A2_L"]
//the next one might be better replaced for a more consequent srifle
    , ["CUP_srifle_CZ750","","","CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND",["CUP_10Rnd_762x51_CZ750"],[],""]
]];
_militaryLoadoutData set ["sidearms", [
    ["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911"],[],""]
    , ["CUP_hgun_SA61","","","",["CUP_10Rnd_B_765x17_Ball_M"],[],""]
    , ["CUP_hgun_PMM","","","",["CUP_12Rnd_9x18_PMM_M"],[],""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", [
    "CUP_U_B_BDUv2_ERDL_highland"
    , "CUP_U_B_BDUv2_roll2_ERDL_highland"
    , "CUP_U_B_BDUv2_dirty_ERDL_highland"
    , "CUP_U_B_BDUv2_roll2_dirty_ERDL_highland"
    , "CUP_U_B_BDUv2_roll_ERDL_highland"
    , "CUP_U_B_BDUv2_roll_dirty_ERDL_highland"
]];
_eliteLoadoutData set ["slUniform", [
    "CUP_U_B_BDUv2_gloves_ERDL_highland"
    , "CUP_U_B_BDUv2_roll2_gloves_dirty_ERDL_highland"]];
_eliteLoadoutData set ["vests", [
    "CUP_V_B_PASGT_CCE"
    , "CUP_V_B_PASGT_no_bags_CCE"
    ]];
_eliteLoadoutData set ["backpacks", [
    "CUP_B_RUS_Patrol_bag_6E5_Summer"
    , "CUP_B_RUS_Patrol_bag_Summer"
    ]];
_eliteLoadoutData set ["helmets", [
    "CUP_H_PASGTv2_NVG_ERDL_highland"
    ]];
_eliteLoadoutData set ["sniHats", [
    "CUP_H_Booniehat_TTS"
    ]];

_eliteLoadoutData set ["slRifles", [
    ["CUP_arifle_Galil_SAR_black", "", "", "CUP_optic_AC11704_Jungle", ["CUP_35Rnd_556x45_Galil_Mag","CUP_35Rnd_556x45_Red_Tracer_Galil_Mag","CUP_50Rnd_556x45_Red_Tracer_Galil_Mag","CUP_50Rnd_556x45_Galil_Mag"], [], ""]
    , ["CUP_arifle_FNFAL_OSW_railed","CUP_muzzle_mfsup_Flashhider_762x51_OD","CUP_acc_Flashlight_wdl","CUP_optic_ACOG_Reflex_Wood",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arifle_FNFAL_OSW_railed","","CUP_acc_Flashlight_wdl","CUP_optic_AC11704_Jungle",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
]];
_eliteLoadoutData set ["rifles", [
    ["CUP_arifle_Galil_black", "", "", "CUP_optic_SUSAT", ["CUP_arifle_Galil_black","CUP_25Rnd_762x51_Red_Tracers_Galil_Mag"], [], ""]
	, ["CUP_arifle_FNFAL_railed_woodland", "CUP_muzzle_mfsup_Flashhider_762x51_OD", "", "CUP_optic_ACOG_Reflex_Wood", ["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"], [], "CUP_bipod_FNFAL"]
    , ["CUP_arifle_Galil_black", "", "", "CUP_optic_AC11704_Jungle", ["CUP_arifle_Galil_black","CUP_25Rnd_762x51_Red_Tracers_Galil_Mag"], [], ""]
	, ["CUP_arifle_FNFAL_railed_woodland", "CUP_muzzle_mfsup_Flashhider_762x39_OD", "CUP_acc_Flashlight_wdl", "CUP_optic_AC11704_Jungle", ["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["CUP_arifle_FNFAL_OSW_railed","CUP_muzzle_mfsup_Flashhider_762x51_OD","","CUP_optic_AC11704_Jungle",["CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_762x51_FNFAL_M", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M", "CUP_10Rnd_762x51_FNFAL_M"],[],""]
    , ["CUP_arfile_Sa58_Carbine_RIS_AFG_woodland","CUP_muzzle_mfsup_Zendl","CUP_acc_Flashlight_wdl","CUP_optic_AC11704_Jungle",["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_45Rnd_Sa58_M", "CUP_45Rnd_Sa58_M_TracerR"],[],""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_Sa58RIS2_gl_woodland","CUP_muzzle_mfsup_Zendl","CUP_acc_Flashlight_wdl","CUP_optic_AC11704_Jungle",["CUP_30Rnd_Sa58_woodland_M_TracerY", "CUP_30Rnd_Sa58_woodland_M"],["CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_FlareWhite_M203","CUP_1Rnd_StarFlare_White_M203","CUP_1Rnd_StarCluster_Red_M203","CUP_1Rnd_Smoke_M203"],""]
]];
_eliteLoadoutData set ["SMGs", [
    ["CUP_smg_UZI","","","CUP_optic_AC11704_Jungle",["CUP_32Rnd_9x19_UZI_M","CUP_72Rnd_9x19_UZI_M"],[],""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["CUP_lmg_FNMAG_RIS","","","CUP_optic_SB_11_4x20_PM_od",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
    , ["CUP_lmg_FNMAG_RIS","","","CUP_optic_ACOG_Reflex_Wood",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"],[],""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14_DMR","","","CUP_optic_SB_3_12x50_PMII_Tan",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_VLTOR_Modpod_od"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["CUP_srifle_CZ750","","","CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND",["CUP_10Rnd_762x51_CZ750"],[],""]
]];
_eliteLoadoutData set ["sidearms", [
    ["CUP_hgun_SA61","","","",["CUP_10Rnd_B_765x17_Ball_M"],[],""]
]];

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
_sfLoadoutData set ["vests", [
    "CUP_V_B_Ciras_MCam"
    , "CUP_V_B_Ciras_Mcam4"
]];
_sfLoadoutData set ["backpacks", ["CUP_B_Kombat_Radio_Olive"]];
_sfLoadoutData set ["helmets", ["CUP_H_OpsCore_Covered_Tigerstripe"]];
_sfLoadoutData set ["binoculars", ["CUP_SOFLAM", "CUP_LRTV"]];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["rifles", [
    ["CUP_arifle_AK101_railed","CUP_muzzle_mfsup_Flashhider_556x45_OD","CUP_acc_ANPEQ_15_OD","CUP_optic_AN_PAS_13c1",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],""]
    , ["CUP_arifle_AK101_railed","CUP_muzzle_mfsup_Flashhider_545x39_OD","CUP_acc_ANPEQ_15_OD","CUP_optic_AC11704_Jungle",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],""]
    , ["CUP_arifle_AK101_railed","CUP_muzzle_mfsup_Flashhider_545x39_OD","CUP_acc_ANPEQ_15_OD","CUP_optic_ACOG_Reflex_Wood",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],""]
    , ["CUP_arifle_AK101_railed","muzzle_snds_M","CUP_acc_ANPEQ_15_OD","CUP_optic_ACOG_Reflex_Wood",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],"CUP_bipod_VLTOR_Modpod_od"]
    , ["CUP_arifle_AUG_A1","muzzle_snds_M","","",["CUP_30Rnd_556x45_AUG"],[],""]
]];
_sfLoadoutData set ["carbines", [
    ["CUP_arifle_AK102_railed","CUP_muzzle_mfsup_Flashhider_545x39_OD","CUP_acc_ANPEQ_15_OD","CUP_optic_AC11704_Jungle",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],""]
    , ["CUP_arifle_AK102_railed","muzzle_snds_M","CUP_acc_ANPEQ_15_OD","CUP_optic_ACOG_Reflex_Wood",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],[],""]
    , ["CUP_arifle_OTS14_GROZA_762_Grip","","","",["CUP_30Rnd_762x39_AK47_bakelite_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_bakelite_AK47_M"],[],""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_OTS14_GROZA_762_GL","","","",["CUP_30Rnd_762x39_AK15_Tan_M", "CUP_30Rnd_762x39_AK47_bakelite_M", "CUP_30Rnd_TE1_Yellow_Tracer_762x39_bakelite_AK47_M"],["CUP_1Rnd_HE_GP25_M","CUP_1Rnd_SMOKE_GP25_M","CUP_IlumFlareWhite_GP25_M","CUP_FlareRed_GP25_M","CUP_1Rnd_SmokeRed_GP25_M","CUP_1Rnd_SmokeGreen_GP25_M"],""]
    , ["CUP_arifle_AK101_GL_railed ","","CUP_acc_ANPEQ_15_OD","CUP_optic_AC11704_Jungle",["CUP_30Rnd_556x45_AK", "CUP_30Rnd_TE1_Red_Tracer_556x45_AK"],["CUP_1Rnd_HE_GP25_M","CUP_1Rnd_SMOKE_GP25_M","CUP_IlumFlareWhite_GP25_M","CUP_FlareRed_GP25_M","CUP_1Rnd_SmokeRed_GP25_M","CUP_1Rnd_SmokeGreen_GP25_M"],""]
]];
_sfLoadoutData set ["SMGs", [
    ["CUP_arifle_OTS14_GROZA_Grip","","","",["CUP_20Rnd_9x39_SP5_GROZA_M"],[],""]
]];
_sfLoadoutData set ["machineGuns", [
    ["CUP_lmg_Pecheneg_top_rail_B50_vfg","CUP_muzzle_mfsup_Flashhider_PK_OD","","CUP_optic_SB_11_4x20_PM_od",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"],[],""]
    , ["CUP_arifle_AK109_railed","","CUP_acc_ANPEQ_15_OD","CUP_optic_AC11704_Jungle",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"],[],"CUP_bipod_VLTOR_Modpod_black"]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_M14_DMR","muzzle_snds_B","CUP_acc_ANPEQ_2_camo","CUP_optic_SB_3_12x50_PMII_Tan",["CUP_20Rnd_762x51_DMR"],[],"CUP_bipod_VLTOR_Modpod_od"]
    , ["CUP_srifle_SVD_top_rail","","CUP_SVD_camo_g","CUP_optic_LeupoldMk4_10x40_LRT_Woodland",["CUP_10Rnd_762x54_SVD_M"],[],""] 
    ]];
_sfLoadoutData set ["sniperRifles", [
    ["CUP_srifle_ksvk","","","CUP_optic_PSO_3",["CUP_5Rnd_127x108_KSVK_M"],[],""]
]];
_sfLoadoutData set ["sidearms", [
    ["CUP_hgun_SA61","","","",["CUP_10Rnd_B_765x17_Ball_M"],[],""]
    , ["CUP_hgun_MicroUzi","","","",["CUP_32Rnd_9x19_UZI_M"],[],""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", ["CUP_U_B_CZ_Pilot_WDL"]];
_crewLoadoutData set ["vests", ["CUP_V_O_SLA_M23_1_OD"]];
_crewLoadoutData set ["helmets", ["CUP_H_TK_TankerHelmet"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["CUP_U_B_CZ_Pilot_WDL"]];
_pilotLoadoutData set ["vests", ["CUP_V_O_SLA_M23_1_OD"]];
_pilotLoadoutData set ["helmets", ["CUP_H_SPH4_green_visor"]];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.
private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["backpacks"] call _fnc_setBackpack;

    [["slRifles", "rifles", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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

    [selectRandom ["rifles"]] call _fnc_setPrimary;
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

    [selectRandom ["carbines"]] call _fnc_setPrimary;
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

    [selectRandom ["carbines"]] call _fnc_setPrimary;
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

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
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

    [["sniperRifles"] call _fnc_fallback] call _fnc_setPrimary;
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