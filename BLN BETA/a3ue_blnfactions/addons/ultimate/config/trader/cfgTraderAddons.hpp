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
            class addons_BLN : addons_base
    {
        addons[] = {

            "CUP_Weapons_TEC9"

            , "ace_realisticnames"

            , "A3_Weapons_F_Enoch_Rifles_HunterShotgun_01"
            , "CUP_Weapons_Kozlice"
            , "CUP_Weapons_Remington"
            , "CUP_Weapons_AK"
            , "CUP_Weapons_FNFAL"
            , "CUP_Weapons_M16"
            , "CUP_Weapons_Sa58"
            , "CUP_Weapons_GrenadeLaunchers"

            , "CUP_Weapons_HuntingRifle"
            , "CUP_Weapons_LeeEnfield"
            , "CUP_Weapons_Mosin"
            , "CUP_Weapons_M14"
            //, "CUP_Weapons_Curator"
            , "CUP_Weapons_SKS"

            , "CUP_Weapons_M3A1"
            , "CUP_Weapons_Bizon"
            , "CUP_Weapons_Mac10"

            , "CUP_Weapons_RPG18"
            , "CUP_Weapons_RPG26"
            , "CUP_Weapons_M72A6"
            , "CUP_Weapons_M136"
            , "CUP_Weapons_RPG7"
            , "CUP_Weapons_Strela_2"

            , "ace_compat_cup_weapons"
            , "CUP_Weapons_Ammunition"
            , "A3_Weapons_F"
            , "CUP_Weapons_Items"
            
            , "CUP_Weapons_NVG"
            , "ace_compat_cup_weapons_nightvision"

            , "A3_Weapons_F_Acc"
            , "CUP_Weapons_West_Attachments"
            , "CUP_Weapons_East_Attachments"

            , "A3_Characters_F_Mark"
            , "A3_Weapons_F_Ammoboxes"

            , "CUP_Creatures_Military_RussiaModern_Bags"
            , "CUP_Creatures_Military_RussiaModern_Vests"
            , "CUP_Creatures_Military_USArmy"

            , "A3_Characters_F_Heads"
            , "ace_goggles"
            , "A3_Characters_F"

            , "CUP_Weapons_Grenades"
            
            , "A3_Weapons_F_Explosives"
            , "ace_explosives"
            , "ace_realisticnames_explosives"

            , "CUP_Weapons_Backpacks"
            , "A3_Drones_F_Weapons_F_Gamma_Items"

            , "A3_Soft_F_Quadbike_01"
            , "CUP_WheeledVehicles_TT650"
            , "CUP_WheeledVehicles_Datsun"
            , "CUP_Wheeledvehicles_VWGolf"
            , "CUP_WheeledVehicles_Hilux"
            , "CUP_Wheeled_SUV"
            , "CUP_WheeledVehicles_Ural"

            , "A3_Air_F_Exp_Heli_Light_01"            
            , "CUP_AirVehicles_412"
            , "CUP_AirVehciles_Cessna"

            , "CUP_WaterVehicles_PBX"
            , "CUP_WaterVehicles_Zodiac"

            , "A3_Static_F_HMG_02"
            , "CUP_Creatures_StaticWeapons"
            , "A3_Static_F_Mortar_01" 
         };
        weapons = "BLN_weapons_CUP";
        vehicles = "BLN_vehicles_CUP";
    };