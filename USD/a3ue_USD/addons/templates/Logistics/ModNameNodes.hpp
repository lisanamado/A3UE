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
//[cursorTarget, [0,-1.25,-0.5],1.5, true] call A3A_Logistics_fnc_generateHardPoints;
class rt_hilux_ToW_Hilux_16_meshes_Hilux_16 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.65,-0.5};
            seats[] = {4,5};
        };
        class Node2
        {
            offset[] = {0,-2.45,-0.5};
            seats[] = {6,7};
        };
    };
};
//[cursorTarget, [0,-1.75,-0.25],1.75, true] call A3A_Logistics_fnc_generateHardPoints;
class RT_70Series_ToW_toyota_j79_meshes_J79 : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-2.15,-0.25};
            seats[] = {4,5,6,7};
        };

        class Node2
        {
            offset[] = {0,-2.95,-0.25};
            seats[] = {4,5,6,7};
        };
    };
};
//[cursorTarget, [0,-0.75,-0.25],2.25, true] call A3A_Logistics_fnc_generateHardPoints;
class cytech_cytech_rt_vehicles_Agrale_meshes_Agrale : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.15,-0.25};
            seats[] = {3,4,5,6};
        };

        class Node2
        {
            offset[] = {0,-1.95,-0.25};
            seats[] = {7,8,9,10,11};
        };
        class Node3
        {
            offset[] = {0,-2.75,-0.25};
            seats[] = {7,8,9,10,11};
        };
    };
};
//[cursorTarget, [0,-1.5,-0.25],1.25, true] call A3A_Logistics_fnc_generateHardPoints;
class cytech_cytech_rt_vehicles_AMV_meshes_AMV : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.9,-0.25};
            seats[] = {4,5,6,7,8,9};
        };
    };
};
//[cursorTarget, [0,0,-0.4],3.5, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_vehicles_MTVR_mtvr : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,-0.4};
        };
        class Node2
        {
            offset[] = {0,-1.2,-0.4};
        };
        class Node3
        {
            offset[] = {0,-2,-0.4};
        };
        class Node4
        {
            offset[] = {0,-2.8,-0.4};
        };
    };
};
//[cursorTarget, [0,0.25,-0.4],3.5, true] call A3A_Logistics_fnc_generateHardPoints;
class walker_a3_cars_t810_T810_w_ACR : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.15,-0.4};
            seats[] = {2,3,4};
        };
        class Node2
        {
            offset[] = {0,-0.95,-0.4};
            seats[] = {5,6,7};
        };
        class Node3
        {
            offset[] = {0,-1.75,-0.4};
            seats[] = {8,9,10};
        };
        class Node4
        {
            offset[] = {0,-2.55,-0.4};
            seats[] = {9,10,11};
        };
    };
};
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