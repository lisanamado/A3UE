    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_arg : addons_base
    {
        addons[] = {"A3_Armor_F", "A3_Weapons_F"};
        weapons = "arg_weapons_arg";
        vehicles = "arg_vehicles_arg";
    };