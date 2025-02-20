

class Templates 
{

    class CUP_RACS_Tropical;

    class BLN : CUP_RACS_Tropical
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLN.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN"; // Name shown in the select menu.
        file = "BLN"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\nLatino american civilian men and women on arms.\nStarting just with a couple of hunting weapons\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };


    class BLNe : CUP_RACS_Tropical
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNe.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN "; // Name shown in the select menu.
        file = "BLNe"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\nLatino american civilian men and women on arms\nSTANDARD A3AU rebel equipment version.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class BLNex : CUP_RACS_Tropical
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNex.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN  "; // Name shown in the select menu.
        file = "BLNex"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\nLatino american civilian men and women on arms\nEXTENDED equipment version.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

   class CUP_Civ;

    class BLNciv : CUP_Civ
    {
        basepath = QPATHTOFOLDER(Templates\BLNcivs); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLNcivs\trincherta.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN civilians"; // Name shown in the select menu.
        file = "BLNcivs"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Civilians the BLN fights for\nexpect to find almost any CUP vehicle"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/