class Templates 
{
    class CUP_Riv_CHDKZ;

    class CUP_ION_RivalW : CUP_Riv_CHDKZ
    {
        basepath = QPATHTOFOLDER(Templates\IONrival); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION"; // Name shown in the select menu.
        file = "IONrivalW"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate", "tropical"}; // climate that the template can be selected on.
        description = "ION (WOODLAND)"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class CUP_ION_RivalA : CUP_Riv_CHDKZ
    {
        basepath = QPATHTOFOLDER(Templates\IONrival); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION"; // Name shown in the select menu.
        file = "IONrivalA"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid"}; // climate that the template can be selected on.
        description = "ION (ARID)"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class CUP_ION_RivalS : CUP_Riv_CHDKZ
    {
        basepath = QPATHTOFOLDER(Templates\IONrival); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION"; // Name shown in the select menu.
        file = "IONrivalS"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic"}; // climate that the template can be selected on.
        description = "ION (ARCTIC)"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class CUP_Reb;

    class CUP_ION_Reb : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\IONrebel); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION"; // Name shown in the select menu.
        file = "IONreb"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "ION unit leads the revolt. Starting with a limited number of modern military weapons and unlocked basic ones. Scavenge enemy assets to arm the people"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 500;
    };

    class CUP_ION_RebA : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\IONrebel); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION (arctic)"; // Name shown in the select menu.
        file = "IONrebA"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic"}; // climate that the template can be selected on.
        description = "ARCTIC ION unit leading the revolt.Starting with a limited number of modern military weapons and unlocked basic ones.Scavenge enemy assets to arm the people"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 450;
    };


    class CUP_ION_RebC : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\IONrebel); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION (Standard)"; // Name shown in the select menu.
        file = "IONrebC"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate", "tropical"}; // climate that the template can be selected on.
        description = "Standard ION rebel faction, starting with unlocked SMGs"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 400;
    };

    class CUP_ION_RebCA : CUP_Reb
    {
        basepath = QPATHTOFOLDER(Templates\IONrebel); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\ION.paa); // Path to an icon to be displayed in the select menu.
        name = "ION (Standard Arctic)"; // Name shown in the select menu.
        file = "IONrebCA"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arctic"}; // climate that the template can be selected on.
        description = "ARCTIC Standard ION rebel faction, starting with unlocked SMGs"; // If this isn't included, no description will show (unless inherited from the base class.)
        priority = 350;
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/