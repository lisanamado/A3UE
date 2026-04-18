class Templates 
{
    class Vanilla_Base;

//REPENSARLO CON ARGENTINA Occ

    class FFAA : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\arg.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas Argentinas"; // Name shown in the select menu.
        file = "arg"; // The template file name - .sqf, that gets appended automatically.
        description = "Though numerically and technically favoured, the argentinian forces confront mayor logistic and organizational complexities due to their vast area of operations. Caught off-guard in deserted Catamarca border, they fortify Sanagasta to prevent chilean forces from reaching La Rioja city."; // If this isn't included, no description will show (unless inherited from the base class.)
        equipFlags[] = {"lowTech"};
    };
    class FACh : FFAA
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\chi.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Armadas de Chile"; // Name shown in the select menu.
        file = "chi"; // The template file name - .sqf, that gets appended automatically.
        description = "Chilean forces took advantage of the dispersion of argentinian forces, being able to penetrate deeply across San Francisco border pass before enough counterforce could be gathered. They amass forces north of Sanagasta, planning to seize nearby La Rioja city."; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class FaQui : FFAA
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; //S Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\rioja.paa); // Path to an icon to be displayed in the select menu.
        name = "Ejército Popular Facundo Quiroga"; // Name shown in the select menu.
        file = "epfq"; // The template file name - .sqf, that gets appended automatically.
        description = "The constant abuses of argentinian military over civilian population and even on their own soldiers, sumed to their inability to stop chilean penetration, led La Rioja peasants and army desertors to create a popular army fighting not only the chilean invading force, but also the de facto argentinian military government. The name of riojan XIX century federalist leader Facundo Quiroga fills them wih strenght and courage"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class lga : FFAA
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\facon.paa); // Path to an icon to be displayed in the select menu.
        name = "Fuerzas Andinas de Contención del Orden Nacional"; // Name shown in the select menu.
        file = "lga"; // The template file name - .sqf, that gets appended automatically.
        description = "Local landlords hire frontier rural bandits to counter the influence of E.P. Facundo Quiroga"; // If this isn't included, no description will show (unless inherited from the base class.)
    };
    class Civr : FFAA
    {
        basepath = QPATHTOFOLDER(Templates); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Civ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\rioja.paa); // Path to an icon to be displayed in the select menu.
        name = "Pueblo riojano"; // Name shown in the select menu.
        file = "riojaciv"; // The template file name - .sqf, that gets appended automatically.
        description = "La Rioja people suffers not only from the menace of chilean invaders, but also from constant abuses by the de facto argentinian government."; // If this isn't included, no description will show (unless inherited from the base class.)
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/