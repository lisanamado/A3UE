class Templates 
{

    class Vanilla_Base;

    class USD : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\occ-inv); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\USDf.paa); // Path to an icon to be displayed in the select menu.
        name = "Union Solidaire de Douala"; // Name shown in the select menu.
        file = "USD"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"tropical", "temperate"}; // climate that the template can be selected on.
        description = "Union Solidaire de Douala"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class Farlunga : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\riv); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\farlunga.paa); // Path to an icon to be displayed in the select menu.
        name = "Clan Farlunga"; // Name shown in the select menu.
        file = "Farlunga"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"tropical", "temperate"}; // climate that the template can be selected on.
        description = "Pirates du Golfe de Guinée "; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class GuineensCiv : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\civ); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\USDc.paa); // Path to an icon to be displayed in the select menu.
        name = "Gens africaine"; // Name shown in the select menu.
        file = "USDc"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"tropical", "temperate"}; // climate that the template can be selected on.
        description = "Civilons du Golfe de Guinée "; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/