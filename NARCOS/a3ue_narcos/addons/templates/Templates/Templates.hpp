class Templates 
{


    class Vanilla_Base;

    class Jaguares : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Jaguares); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Jaguares"; // Name shown in the select menu.
        file = "Jaguares"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "A powerful narco cartel which took full control of the area"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/