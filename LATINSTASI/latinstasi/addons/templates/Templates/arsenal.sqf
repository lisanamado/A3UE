/* 
    ARSENAL FOR LATINSTASI

    This file stores the weapon classes for use in different templates,
    allowing simple edition and debugging,
    reducing repetitive code,
    and making it possible to replace standard CUP weapons by ones from custom modsets.

    Weapon groups will be classified following these basis:
    1 historical period (WW, CW, 90s, 2010s)
    2 Eastern or western Weapon provider (E,W)
    3 Weapon class (rifles, LMGs, HMGs, Snipers, etc.)
    4 Weapon weigth (L, H)
    5 Weapon accesories
        EXAMPLE:
        private _ECWriflesL4xscope

    Weapons that might change depending modset will be classified as:
    1 Weapon base name
    2 Weapon version if applicable
    3 Weapon accesories
        EXAMPLE:
        private _FALparaBipod

*/
private _ECWrifles
