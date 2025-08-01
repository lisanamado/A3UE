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
//[cursorTarget, [0,-0.1,-0.75],1.9, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_vehicles_datsun_datsun1_civil_1_open : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.5,-0.75};
            seats[] = {2};
        };
        class Node2
        {
            offset[] = {0,-1.3,-0.75};
            seats[] = {1};
        };
    };
};
//[cursorTarget, [0,-0.25,-0.55],1.85, true] call A3A_Logistics_fnc_generateHardPoints;

class walker_a3_vehicles_hilux_hilux1_civil_1_open : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.65,-0.55};
            seats[] = {1,2};
        };
        class Node2
        {
            offset[] = {0,-1.45,-0.55};
            seats[] = {3,4};
        };
    };
};
class walker_a3_vehicles_hilux_hilux1_civil_3_open : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.65,-0.55};
            seats[] = {1,2};
        };
        class Node2
        {
            offset[] = {0,-1.45,-0.55};
            seats[] = {3,4};
        };
    };
};
//[cursorTarget, [0,-0.5,-0.55],1, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_vehicles_hilux_hilux1_civil_2_covered : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.9,-0.55};
            seats[] = {1,2};
        };
    };
};
//[cursorTarget, [0,-1,-0.55],1, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_vehicles_Small_boat_smallboat_1 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.4,-0.55};
        };
    };
};
class walker_a3_vehicles_Small_boat_smallboat_2 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.4,-0.55};
        };
    };
};
//[cursorTarget, [0,-3,-3.25],2, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_vehicles_boat_f_fishing_boat : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-3.4,-3.25};
            seats[] = {0,2,5};
        };
        class Node2
        {
            offset[] = {0,-4.2,-3.25};
            seats[] = {3,4,5};
        };
    };
};
