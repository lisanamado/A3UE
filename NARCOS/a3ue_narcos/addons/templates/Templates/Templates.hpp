class Templates 
{


    class CUP_Base;

    class Jaguares : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\jaguares.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Jaguares"; // Name shown in the select menu.
        file = "jaguares"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate","tropical"}; // climate that the template can be selected on.
        description = "A powerful narco cartel which took full control of the area\nCUP based, diverse arsenal, scaling from civilian shotguns to high tech assault rifles as war level rises."; // If this isn't included, no description will show (unless inherited from the base class.)
        prority = 900
    };

    class JaguaresInv : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\jaguares.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Jaguares"; // Name shown in the select menu.
        file = "jaguares"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "A powerful narco cartel which tries to take full control of the area\nCUP based, diverse arsenal, scaling from civilian shotguns to high tech assault rifles as war level rises."; // If this isn't included, no description will show (unless inherited from the base class.)
        prority = 800
    }
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/