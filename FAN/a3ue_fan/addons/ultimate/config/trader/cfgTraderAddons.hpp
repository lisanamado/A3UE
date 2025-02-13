    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.

    
    class addons_vanilla : addons_base
    {
        addons[] = {"A3_Armor_F", "A3_Weapons_F"};
        weapons = "my_extension_weapons_vanilla";
        vehicles = "my_extension_vehicles_vanilla";
    };
    */
//add or erase depending on the final chosen store
            class addons_FAN : addons_base
    {
        addons[] = {
              "CUP_Weapons_Colt1911"
            , "CUP_Weapons_Makarov"
            , "CUP_Weapons_SA61"
            , "CUP_Weapons_Shield"
            , "CUP_Weapons_M1014"
            , "CUP_Weapons_GrenadeLaunchers"
            , "CUP_Weapons_FNFAL"
            , "CUP_Weapons_Galil"
            , "CUP_Weapons_Sa58"
            , "CUP_Weapons_M16"
            , "CUP_Weapons_HuntingRifle"
            , "CUP_Weapons_M14"
            , "CUP_Weapons_M14_DMR"
            , "CUP_Weapons_M60E4"
            , "CUP_Weapons_M240"
            , "CUP_Weapons_M3A1"
            , "CUP_Weapons_UZI"
            , "CUP_Weapons_M72A6"
            , "CUP_Weapons_RPG7"
            , "ace_compat_cup_weapons"
            , "CUP_Weapons_SMAW"
            , "CUP_Weapons_Strela_2"
            , "CUP_Weapons_M47"
            , "CUP_Weapons_Ammunition"
            , "CUP_Weapons_West_Attachments"
            , "A3_Weapons_F"
            , "CUP_Weapons_East_Attachments"
            , "CUP_Weapons_Curator"
            , "CUP_Weapons_Items"
            , "A3_Weapons_F_Acc"
            , "CUP_Weapons_MicroUZI"
            //ghillie and backpacks
            , "A3_Characters_F_Mark"
            , "CUP_Weapons_Backpacks"
            , "A3_Weapons_F_Ammoboxes"
            //vests
            , "A3_Characters_F"
            , "CUP_Creatures_Military_USArmy"
            , "CUP_Creatures_Military_RussiaModern_Vests"
            //diving
            , "A3_Characters_F_Heads"
            , "ace_goggles"

            , "CUP_Weapons_NVG"
            , "ace_compat_cup_weapons_nightvision"

            //explosives
            , "CUP_Weapons_Grenades"
            , "A3_Weapons_F_Explosives"
            , "ace_explosives"
            , "ace_realisticnames"

//VEHICLES
            , "A3_Soft_F_Quadbike_01"
            , "CUP_WheeledVehicles_M151"
            , "CUP_WheeledVehicles_Kamaz"
            , "CUP_WheeledVehicles_Ural"
            , "CUP_WheeledVehicles_NewHMMWV"
            , "CUP_WheeledVehicles_GAZTigr"
            , "CUP_WheeledVehicles_HMMWV"
            , "CUP_WheeledVehicles_RG31"
            , "CUP_WheeledVehicles_NewSOV"
            , "CUP_WheeledVehicles_BRDM2"
            , "CUP_WheeledVehicles_BTR60"
            , "CUP_WheeledVehicles_BTR80"
            , "CUP_TrackedVehicles_MTLB"
            , "CUP_TrackedVehicles_BMP"
            , "CUP_TrackedVehicles_NewM113"
            , "CUP_TrackedVehicles_ZSU23"
            , "CUP_TrackedVehicles_T34"
            , "CUP_TrackedVehicles_T55"
            , "CUP_TrackedVehicles_M60"
            , "CUP_TrackedVehicles_BMP3"
            , "A3_Air_F_EPB_Heli_Light_03"
            , "A3_Air_F_Exp_Heli_Light_01"
            , "CUP_AirVehciles_AW159"
            , "CUP_AirVehicles_UH1H"
            , "CUP_WaterVehicles_LCVP"

            , "A3_Static_F_HMG_02"
            , "CUP_Creatures_StaticWeapons"
         };
        weapons = "FAN_weapons_CUP";
        vehicles = "FAN_vehicles_CUP";
    };