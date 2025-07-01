/*
passed output from the function: A3A_Logistics_fnc_generateHardPoints
*/

/*
    Function: A3A_Logistics_fnc_generateHardPoints
    Author: [Håkon]
    [Description]
        Generates a rough node array for you based on the visual start and end of the intended cargo plane,
        in addition visual guides are rendered on screen to give you an idea of where it is relative to you.
        visuals last for 60 seconds.

        These are:
            Green dot   : start position of cargo plane (only visible if you can see the position)
            Red dot     : end position of cargo plane (only visible if you can see the position)
            white line  : cargo plane bounds
            white dots  : Node return positions

    Arguments:
    0. <Object> Vehicle your generating the nodes for
    1. <Array>  Model relativ position of cargo plane start position
    2. <Int>    The lenght of the cargo plane
    3. <Bool>   Return preped for model based definition instead of class based

    Return Value:
    <text> generated node class to be pasted in to the config

    Scope: Clients
    Environment: unscheduled
    Public: [Yes]
    Dependencies:

    Example: [cursorTarget, [0,-0.7,-0.7], 2.1] call A3A_Logistics_fnc_generateHardPoints;
*/

/*
example output
*/

/* faltan:
Unimog_small
acfaa_m1083a1p2_base
acfaa_m1083a1p2_green
acfaa_m998_4door
Unimog416_big
*/
class Example_A3_Soft_F_Quadbike_01_Quadbike_01_F_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.9,-0.453};
            seats[] = {0};
        };
    };
};
class CLV_UNIMOG416_Unimog416Big : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-3.65,1};
        };
        class Node2
        {
            offset[] = {0,-4.45,1};
        };
        class Node3
        {
            offset[] = {0,-5.25,1};
        };
        class Node4
        {
            offset[] = {0,-6.05,1};
        };
    };
};
class CLV_UNIMOG_Unimog416small : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.65,1};
        };
        class Node2
        {
            offset[] = {0,-3.45,1};
        };
    };
};
class acfaa_aav_acfaa_aav_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-4.9,-1.5};
        };
        class Node2
        {
            offset[] = {0,-5.7,-1.5};
        };
    };
};
class acfaa_ch47f_Chinook_ARG_ACFAA_CH_47F_RAMP_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-7.4,-3};
        };
        class Node2
        {
            offset[] = {0,-8.2,-3};
        };
    };
};
class acfaa_ch47f_Chinook_ARG_ACFAA_CH_47F_UNARMED_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-7.4,-3};
        };
        class Node2
        {
            offset[] = {0,-8.2,-3};
        };
    };
};
class acfaa_m998_cargo_acfaa_m998_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.4,-1};
        };
        class Node2
        {
            offset[] = {0,-3.2,-1};
        };
    };
};
class acfaa_m998_cargo_acfaa_m998_4door_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.4,-1};
        };
        class Node2
        {
            offset[] = {0,-3.2,-1};
        };
    };
};
class acfaa_fmtv_acfaa_m1083a1p2_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-3.9,-1};
        };
        class Node2
        {
            offset[] = {0,-4.7,-1};
        };
        class Node3
        {
            offset[] = {0,-5.5,-1};
        };
        class Node4
        {
            offset[] = {0,-6.3,-1};
        };
        class Node5
        {
            offset[] = {0,-7.1,-1};
        };
    };
};