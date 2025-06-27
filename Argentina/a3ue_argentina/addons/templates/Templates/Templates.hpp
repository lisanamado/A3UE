class Templates 
{
    class Vanilla_Base;

    class Fuerzas Armadas Argentinas : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas"; // Name shown in the select menu.
        file = "occ-inv\Argentina"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Multicam - Sólo armas y vehículos incluidos en mods FAA, FSA y CLV"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 999;
    };
    class Fuerzas Armadas Argentinas Selva : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas"; // Name shown in the select menu.
        file = "occ-inv\Argentina selva"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"tropical"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Selva - Sólo armas y vehículos incluidos en mods FAA, FSA y CLV"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 998;
    };
    class Fuerzas Armadas Argentinas Árido : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas"; // Name shown in the select menu.
        file = "occ-inv\Argentina patagonia"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Árido - Sólo armas y vehículos incluidos en mods FAA, FSA y CLV"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 997;
    };
    class Fuerzas Armadas Argentinas ext : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas (extendido)"; // Name shown in the select menu.
        file = "occ-inv\Argentina ext"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Multicam - Con algunas armas y vehículos reales incluídas en Arma 3 vainilla, para mayor diversidad"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 997;
    };
    class Fuerzas Armadas Argentinas ext Selva : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas (extendido)"; // Name shown in the select menu.
        file = "occ-inv\Argentina ext selva"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Selva - Con algunas armas y vehículos reales incluídas en Arma 3 vainilla, para mayor diversidad"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 997;
    };
    class Fuerzas Armadas Argentinas ext Árido : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas (extendido)"; // Name shown in the select menu.
        file = "occ-inv\Argentina ext patagonia"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid"}; // climate that the template can be selected on.
        description = "Prefectura Naval Argentina, Gendarmería y Ejército Argentino - Árido - Con algunas armas y vehículos reales incluídas en Arma 3 vainilla, para mayor diversidad"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 997;
    };
    class Fuerza Insurgente Argentina : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\occ-inv\Argentina.paa); // Path to an icon to be displayed in the select menu.
        name = "FIA"; // Name shown in the select menu.
        file = "reb\FIA"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "Fuerza Insurgente Argentina - organización guerrillera con un muy limitado arsenal inicial, para un comienzo difícil y progresivo"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 999;
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/