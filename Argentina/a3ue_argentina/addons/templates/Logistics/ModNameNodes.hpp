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

class CLV_UNIMOG416_Unimog416Big : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,1.25};
            seats[] = {1,2};
        };
        class Node2
        {
            offset[] = {0,-1.2,1.25};
            seats[] = {3,4};
        };
        class Node3
        {
            offset[] = {0,-2,1.25};
            seats[] = {5,6,7,8};
        };
        class Node4
        {
            offset[] = {0,-2.8,1.25};
            seats[] = {9,10};
        };
    };
};
class CLV_UNIMOG_Unimog416small : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,1.25};
            seats[] = {1,2};
        };
        class Node2
        {
            offset[] = {0,-1.2,1.25};
            seats[] = {3,4};
        };
        class Node3
        {
            offset[] = {0,-2,1.25};
            seats[] = {5,6,7,8};
        };
    };
};
//[cursorTarget, [0,0,-0.4],3.25, true] call A3A_Logistics_fnc_generateHardPoints;
class acfaa_fmtv_acfaa_m1083a1p2_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,-0.4};
            seats[] = {13,12,3,2};
        };
        class Node2
        {
            offset[] = {0,-1.2,-0.4};
            seats[] = {4,5,6,7};
        };
        class Node3
        {
            offset[] = {0,-2,-0.4};
            seats[] = {9,1,5,8};
        };
        class Node4
        {
            offset[] = {0,-2.8,-0.4};
            seats[] = {14,15,10,11};
        };
    };
};
//[cursorTarget, [0,0.2,-0.75],2.5, true] call A3A_Logistics_fnc_generateHardPoints;
class acfaa_m998_cargo_acfaa_m998_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.2,-0.75};
            seats[] = {1,2,3,4};
        };
        class Node2
        {
            offset[] = {0,-1,-0.75};
            seats[] = {5,6};
        };
        class Node3
        {
            offset[] = {0,-1.8,-0.75};
            seats[] = {7,8};
        };
    };
};

//[cursorTarget, [0,-0.75,-0.85],1.25, true] call A3A_Logistics_fnc_generateHardPoints;
class acfaa_m998_cargo_acfaa_m998_4door_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.15,-0.85};
        };
    };
};
//[cursorTarget, [-0.15,-0.6,-1.25],1.5, true] call A3A_Logistics_fnc_generateHardPoints;
class acfaa_m998_gmv_acfaa_gmv_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {-0.15,-1,-1.25};
        };
        class Node2
        {
            offset[] = {-0.15,-1.8,-1.25};
        };
    };
};
class acfaa_m998_gmv_acfaa_gmv_m2_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {-0.15,-1,-1.25};
            seats[] = {4,3};
        };
        class Node2
        {
            offset[] = {-0.15,-1.8,-1.25};
            seats[] = {5,6};
        };
    };
};
class acfaa_m998_gmv_acfaa_gmv_m134_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {-0.15,-1,-1.25};
        };
        class Node2
        {
            offset[] = {-0.15,-1.8,-1.25};
        };
    };
};
//[cursorTarget, [0,0,-1.4],3.5, true] call A3A_Logistics_fnc_generateHardPoints;
class acfaa_aav_acfaa_aav_p3d : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.4,-1.4};
            seats[] = {0,1,5,8};

        };
        class Node2
        {
            offset[] = {0,-1.2,-1.4};
            seats[] = {2,3,6,9};
        };
        class Node3
        {
            offset[] = {0,-2,-1.4};
            seats[] = {3,4,9,7};
        };
        class Node4
        {
            offset[] = {0,-2.8,-1.4};
            seats[] = {11,4,10,7};
        };
    };
};
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