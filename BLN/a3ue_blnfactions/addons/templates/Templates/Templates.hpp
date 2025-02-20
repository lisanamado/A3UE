

class Templates 
{

    class CUP_Reb;

    class BLN : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNfL.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN"; // Name shown in the select menu.
        file = "BLN"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nStarting just with a couple of hunting weapons\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 900;
    };


    class BLNe : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNfV.paa); // Path to an icon to be displayed in the select menu.
        name = " BLN "; // Name shown in the select menu.
        file = "BLNe"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nSTANDARD A3AU rebel equipment version.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 750;
    };

    class BLNex : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNfR.paa); // Path to an icon to be displayed in the select menu.
        name = "  BLN  "; // Name shown in the select menu.
        file = "BLNex"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nEASTERN BACKED version.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class BLNwx : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLN\BLNfB.paa); // Path to an icon to be displayed in the select menu.
        name = "   BLN   "; // Name shown in the select menu.
        file = "BLNwx"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nWESTERN BACKED version.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 400;
    };

   class CUP_Civ;

    class BLNciv : CUP_Civ
    {
        basepath = QPATHTOFOLDER(Templates\BLNcivs); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\BLNcivs\BLNf3.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN civilians"; // Name shown in the select menu.
        file = "BLNcivs"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Civilians from Latin America\nexpect to find almost any CUP vehicle\njust think of Ladas and Skodas as Fiats and Volskswagens"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/