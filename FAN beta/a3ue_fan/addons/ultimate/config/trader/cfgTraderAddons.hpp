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
    class addons_CUP : addons_base
    {
        addons[] = {
        , "CUP_Weapons_WeaponsCore"
        , "CUP_Weapons_Ammunition"
        , "CUP_Weapons_Curator"
        , "CUP_Weapons_StaticWeapons"
        , "CUP_Weapons_West_Attachments"
        , "CUP_Weapons_GrenadeLaunchers"
        , "CUP_Weapons_East_Attachments"
        , "CUP_Weapons_Put"
        , "CUP_Weapons_FNFAL"
        , "CUP_Weapons_M14_DMR"
        , "CUP_Weapons_Galil"
        , "CUP_Weapons_AK"
        , "CUP_Weapons_AWM"
        , "CUP_Weapons_Deagle"
        , "CUP_Weapons_Javelin"
        , "CUP_Weapons_M16"
        , "CUP_Weapons_M24"
        , "CUP_Weapons_M249"
        , "CUP_Weapons_M47"
        , "CUP_Weapons_M72A6"
        , "CUP_Weapons_MP5"
        , "CUP_Weapons_Sa58"
        , "CUP_Weapons_Stinger"
        , "CUP_Weapons_Steyr"

        , "CUP_Wheeledvehicles_VWGolf"
        , "A3_Soft_F_Offroad_01"
        , "CUP_Wheeled_SUV"
        , "A3_Soft_F_Beta_Truck_02"
        , "ace_realisticnames"
        , "CUP_WheeledVehicles_Hilux"
        , "CUP_Wheeled_SUV"
        , "CUP_WheeledVehicles_Strider"
        , "CUP_WheeledVehicles_NewHMMWV"
        , "CUP_WheeledVehicles_NewSOV"
        , "CUP_WheeledVehicles_NewM1036"
        , "CUP_WheeledVehicles_RG31"
        , "CUP_WheeledVehicles_BTR80"
        , "CUP_WaterVehicles_RHIB"
        , "A3_Boat_F_Beta_Boat_Transport_01"
        , "CUP_AirVehciles_Cessna"
        , "CUP_AirVehicles_412"
        , "CUP_AirVehicles_AH6"
        , "CUP_TrackedVehicles_T34"
        , "CUP_Creatures_StaticWeapons"
        , "A3_Static_F_HMG_02"
        , "A3_Static_F_Mortar_01"
        
        };
        weapons = "FAN_stock_CUP";
        vehicles = "FAN_vehicles_CUP";
    };
    