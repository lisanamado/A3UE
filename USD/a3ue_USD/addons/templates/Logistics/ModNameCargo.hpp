/*
passed output from the function: A3A_Logistics_fnc_generateCargoOffset

Example of a function call
[
    _vehicle,                //the vehicle object that will load the cargo (needs to have nodes defined)
    _cargo,                //the object your defining as a valid cargo
    [
        _offset,            //cargos custom offset from the vehicle node, Array of 3 numbers
        _rotation,          //the cargo rotation, Array of 3 numbers
        _size,              //the size of the cargo (how many nodes it requires)
        _isWeapon,          //if the cargo is a weapon (static weapon like a turret)
        _recoil            //the recoil of the weapon (if it is one)
    ],
    _modelBased             //if the output should use the model or the class name
] call A3A_Logistics_fnc_generateCargoOffset;

example output bellow, you can modify it as you'd like by for example adding a blacklist as shown, rest can be modified in the arguments of the function when the data is generated.
*/

