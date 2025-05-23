/*  
Maintainer: John Jordan
    Returns a weighted ground support vehicle pool based on war level and side

Arguments:
    <SIDE> The side for which the vehicle pool should be generated (occupants or invaders)
    <INTEGER> 1-10 range, war-level based vehicle quality

Return value:
    <ARRAY> [vehType, weight, vehType2, weight2, ...]
*/
params ["_side", "_level"];
_level = (_level max 1 min 10) - 1;
private _faction = [A3A_faction_occ, A3A_faction_inv] select (_side == Invaders);

private _fnc_addArrayToWeights = {
    params = ["_vehArray", "_baseWeight"];
    { _vehWeights append [_x, _baseWeight / count _vehArray] } forEach _vehArray;
};

private _vehWeights = [];

private _milCarWeight =     [50, 40, 30, 20, 10,  0,  0,  0,  0,  0] select _level;
private _carWeight =        [50, 50, 50, 50, 50, 50, 50, 40, 35, 30] select _level;
private _aaWeight =         [ 0,  0,  3,  5,  7,  8, 10, 12, 13, 14] select _level;
private _milApcWeight =     [ 0,  5, 15, 25,  25,  25,  20,  15,  5,  0] select _level;
private _tankWeight =       [ 0,  0,  0, 0, 0, 5, 10, 20, 30, 45] select _level;
private _ltankWeight =      [ 0, 5, 10, 20, 30, 40, 50, 55, 50, 45] select _level;

[_faction get "vehiclesLightArmed", _carWeight] call _fnc_addArrayToWeights;
[_faction get "vehiclesTanks", _tankWeight] call _fnc_addArrayToWeights;
[_faction get "vehiclesLightTanks", _ltankWeight] call _fnc_addArrayToWeights;
[_vehAA, _aaWeight] call _fnc_addArrayToWeights;

_vehWeights;
