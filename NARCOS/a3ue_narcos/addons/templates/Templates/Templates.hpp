class Templates 
{


    class CUP_Base;

    class Jaguares : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Jaguares\jaguares.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Jaguares"; // Name shown in the select menu.
        file = "Jaguares\jaguares"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate","tropical"}; // climate that the template can be selected on.
        description = "A powerful narco cartel allied to corrupt military forces\nCUP based, diverse arsenal, scaling from civilian shotguns to high tech assault rifles as war level rises."; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 999;
    };

    class Pumas : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Jaguares\Pumas.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Pumas"; // Name shown in the select menu.
        file = "Jaguares\pumas"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate","tropical"}; // climate that the template can be selected on.
        description = "A strong narco cartel controlling the area\nCUP based, less diverse than Jaguares, thus easier to get unlocks, few proper military vehicles."; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 998;
    };

    class JaguaresInv : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Jaguares\jaguares.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Jaguares"; // Name shown in the select menu.
        file = "Jaguares\jaguares"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "A powerful narco cartel allied to corrupt military forces\nCUP based, diverse arsenal, scaling from civilian shotguns to high tech assault rifles as war level rises."; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;

    }
    class Ocelotes : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Ocelotes\Ocelotes.paa); // Path to an icon to be displayed in the select menu.
        name = "Ocelotes"; // Name shown in the select menu.
        file = "Ocelotes\Ocelotes"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "A heavily armed narco cartel, secretly promoted by the invader force."; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 999;    
    }
    class Jaguariticas : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Ocelotes\Jaguariticas.paa); // Path to an icon to be displayed in the select menu.
        name = "Jaguariticas"; // Name shown in the select menu.
        file = "Ocelotes\Jaguariticas"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "A heavily armed narco cartel based in Brazil, secretly promoted by the invader force. - IF YOU LOAD This WITHOUT BRaF MOD, IT WILL WORK AS A LESS WEAPON VARIATED VERSION OF OCELOTES"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 998;
    }
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/