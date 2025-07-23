

class Templates 
{

    class CUP_Reb;

    class BLN : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Flags\BLN.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN"; // Name shown in the select menu.
        file = "BLN"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nNothing else than a bunch of hunting weapons\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 900;
    };


    class BLNe : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Flags\BLNe.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN (AU standard rebel loadout)"; // Name shown in the select menu.
        file = "BLNe"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nWith standard A3AU rebel equipment.\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 750;
    };

    class BLNex : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Flags\BLNex.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN (Eastern Backed)"; // Name shown in the select menu.
        file = "BLNex"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\n-Hey comrade, these old SKS's might help you-\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class BLNwx : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Flags\BLNwx.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN (Western Backed)"; // Name shown in the select menu.
        file = "BLNwx"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\n-northern big brother got some M14's for you-\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 400;
    };

    class BLNx : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\BLN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Flags\BLNx.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN (for slackers)"; // Name shown in the select menu.
        file = "BLNx"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Brigadas de Liberacion Nacional\n¡Lucha contra el imperialismo!\nyou slacker want to start with auto-rifles unlocked, such a shame!\n¡VENCEREMOS!"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 300;
    };

   class CUP_Civ;

    class BLNciv : CUP_Civ
    {
        basepath = QPATHTOFOLDER(Templates\BLNcivs); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\Markers\BLN.paa); // Path to an icon to be displayed in the select menu.
        name = "BLN civilians"; // Name shown in the select menu.
        file = "BLNcivs"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Civilians from Latin America\nexpect to find almost any CUP vehicle\njust think of Ladas and Skodas as Fiats and Volskswagens"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 900;

    };

};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/