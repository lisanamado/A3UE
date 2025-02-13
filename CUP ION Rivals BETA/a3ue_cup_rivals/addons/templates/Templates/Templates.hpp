class Templates 
{
    class CUP_Reb;

    class CUP_ION_Riv : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\IONrival); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\IONrival\IONcupG.paa); // Path to an icon to be displayed in the select menu.
        name = "ION (WDL)"; // Name shown in the select menu.
        file = "IONrival"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "ION offers its hservices to assist invading "; // If this isn't included, no description will show (unless inherited from the base class.)
    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/