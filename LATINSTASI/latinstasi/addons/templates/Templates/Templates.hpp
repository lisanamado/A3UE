class Templates 
{
       class CUP_Base;

    class Jaguares : CUP_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Pumas\pumas.paa); // Path to an icon to be displayed in the select menu.
        name = "Los Pumas"; // Name shown in the select menu.
        file = "Pumas\pumas"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate","tropical"}; // climate that the template can be selected on.
        description = "A strong narco cartel, armed with XX century assets\nIt's arsenal core is CUP based, but it will be greatly diversified if the Free World Armoury is loaded"; // If this isn't included, no description will show (unless inherited from the base class.)
        prority = 998;
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/