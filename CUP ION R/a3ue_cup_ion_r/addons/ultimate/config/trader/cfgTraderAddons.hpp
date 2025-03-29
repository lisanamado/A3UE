  //ADAPT THIS TO ION VEHICLES AND WEAPONS
  
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
        class addons_IONriv : addons_base
    {
        addons[] = {
            "CUP_Weapons_Deagle"
            , "CUP_Weapons_Mac10"
            , "CUP_Weapons_FNFAL"
            , "CUP_Weapons_Sa58"
            , "CUP_Weapons_GrenadeLaunchers"
            , "CUP_Weapons_AK"
            , "CUP_Weapons_M16"
            , "CUP_Weapons_Steyr"
            , "CUP_Weapons_HuntingRifle"
            , "CUP_Weapons_M14"
            , "CUP_Weapons_M14_DMR"
            , "CUP_Weapons_M24"
            , "CUP_Weapons_Curator"
            , "CUP_Weapons_KSVK"
            , "CUP_Weapons_M107"
            , "CUP_Weapons_M249"
            , "CUP_Weapons_M60E4"
            , "CUP_Weapons_MP5"
            , "CUP_Weapons_M72A6"
            , "CUP_Weapons_SMAW"
            , "ace_compat_cup_weapons"
            , "CUP_Weapons_IGLA"
            , "CUP_Weapons_Stinger"
            , "CUP_Weapons_Metis_AT_13"
            , "ace_compat_cup_weapons_csw"
            , "CUP_Weapons_Javelin"
            , "ace_compat_cup_weapons_javelin"
            , "CUP_Weapons_Ammunition"
            , "A3_Weapons_F"
            , "CUP_Weapons_Items"
            , "CUP_Weapons_NVG"
            , "ace_compat_cup_weapons_nightvision"
            , "A3_Weapons_F_Acc"
            , "CUP_Weapons_West_Attachments"
            , "A3_Characters_F_Mark"
            , "A3_Weapons_F_Ammoboxes"
            , "A3_Characters_F_Heads"
            , "ace_goggles"
            , "A3_Characters_F"
            , "CUP_Weapons_Grenades"
            , "A3_Weapons_F_Explosives"
            , "ace_explosives"
            , "ace_realisticnames"

            , "CUP_WheeledVehicles_Hilux"
            , "CUP_Wheeled_SUV"
            , "A3_Soft_F_Gamma_Van_01"
            , "A3_Soft_F_Bootcamp_Van_01"
            , "CUP_WheeledVehicles_MTVR"
            , "CUP_WheeledVehicles_NewSOV"
            , "CUP_WheeledVehicles_RG31"
            , "CUP_WheeledVehicles_Strider"
            , "CUP_WheeledVehicles_MATV"
            , "CUP_WheeledVehicles_Coyote"

            , "CUP_WheeledVehicles_BTR80"
            , "CUP_TrackedVehicles_FV510"

            , "A3_Air_F_Exp_Heli_Light_01"
            , "CUP_AirVehicles_AH6"
            , "CUP_AirVehicles_UH1H"
            , "CUP_AirVehciles_Cessna"
            , "CUP_WaterVehicles_PBX"
            , "CUP_WaterVehicles_Zodiac"
            , "CUP_WaterVehicles_RHIB"
            , "A3_Static_F_HMG_02"
            , "CUP_Creatures_StaticWeapons"
            , "A3_Static_F_Mortar_01"                    
         };
        weapons = "IONriv_weapons_CUP";
        vehicles = "IONriv_vehicles_CUP";
    };