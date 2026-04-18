class Templates 
{
    class Vanilla_Base;

    class FFAA : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\arg.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas"; // Name shown in the select menu.
        file = "arg"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic", "temperate"}; // climate that the template can be selected on.
        description = "Fuerzas Armadas Argentinas en 1980, para el escenario ficticio de una guerra con Chile. Mapa a usar: Vidda"; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};

    };
    class FACh : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\chi.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas de Chile"; // Name shown in the select menu.
        file = "chi"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic", "temperate"}; // climate that the template can be selected on.
        description = "Fuerzas Armadas Chilenas en 1980, para el escenario ficticio de una guerra con Argentina. Mapa a usar: Vidda"; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};

    };
    class elw : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\mapu.paa); // Path to an icon to be displayed in the select menu.
        name = "Ejército de Liberación del Wallmapu"; // Name shown in the select menu.
        file = "elw"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic", "temperate"}; // climate that the template can be selected on.
        description = "Fuerza insurgente independentista mapuche surgida en un hipotético enfrentamiento chileno-argentino en 1980. Mapa a usar: Vidda"; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};

    };
    class MFA : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\arg.paa); // Path to an icon to be displayed in the select menu.
        name = "Milicias Fronterizas Argentinas"; // Name shown in the select menu.
        file = "mfa"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic", "temperate"}; // climate that the template can be selected on.
        description = "Fuerza paramilitar apoyada por terratenientes argentinos. Mapa a usar: Vidda"; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};

    };
    class CivP  : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\pata.paa); // Path to an icon to be displayed in the select menu.
        name = "Civiles patagónicos"; // Name shown in the select menu.
        file = "pataciv"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic", "temperate"}; // climate that the template can be selected on.
        description = "Población civil de los Andes Australes en 1980. Mapa a usar: Vidda"; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};

    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/