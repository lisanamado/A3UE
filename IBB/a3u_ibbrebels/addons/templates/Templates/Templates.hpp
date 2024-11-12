class Templates 
{


    class CUP_Reb;

    class IBB : CUP_Reb
    {

// deleted Templates folder to see if it works

        basepath = QPATHTOFOLDER(Templates\IBB); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\IBB\IBB.paa); // Path to an icon to be displayed in the select menu.
        name = "IBB"; // Name shown in the select menu.
        file = "IBB"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "International Britneyst Brigades"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/