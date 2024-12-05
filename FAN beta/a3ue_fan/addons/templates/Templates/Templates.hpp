class Templates 
{

       class CUP_RACS_Tropical;

    class FAN : CUP_RACS_Tropical
    {
        basepath = QPATHTOFOLDER(Templates\FAN); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\FAN\FAN.paa); // Path to an icon to be displayed in the select menu.
        name = "FAN"; // Name shown in the select menu.
        file = "FANbeta"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {}; // climate that the template can be selected on.
        description = "Fuerzas Armadas de la Nación:\nAn opressive regime in an small Caribbean/Latin American nation\nIt still uses NATO weapons supplied by US during Plan Cóndor era\nmixed with more modern cheap guns bought to diverse nations"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/