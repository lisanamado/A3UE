class CfgFunctions 
{
    class A3A  // override namespace
    {
        class Ammunition  // group tag — cosmetic, anything unique
        {
            class randomRifle  // → registers A3A_fnc_randomRifle
            {
                file = QPATHTOFOLDER(Ammunition\fn_randomRifle.sqf);
            };
        };
    };
};