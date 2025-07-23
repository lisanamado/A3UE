class Templates 
{
    class Vanilla_Base;

    class BLN_Reb : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\BLNf.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN"; // Name shown in the select menu.
        file = "BLN"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate","tropical"}; // climate that the template can be selected on.
        description = "Hunting shotguns, why more?"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/