class CfgFunctions 
{
    //be careful when overwriting functions as version updates can break your extension

    //your own functions should be kept here
    class ADDON
    {

        class getVehiclesGroundSupport
        {
            private _vehWeights = [];

            private _milCarWeight =     [50, 40, 30, 20, 10,  0,  0,  0,  0,  0] select _level;
            private _carWeight =        [50, 50, 50, 50, 50, 50, 50, 40, 35, 30] select _level;
            private _aaWeight =         [ 0,  0,  3,  5,  7,  8, 10, 12, 13, 14] select _level;
            private _milApcWeight =     [ 0,  5, 15, 25,  25,  25,  20,  15,  5,  0] select _level;
            private _tankWeight =       [ 0,  0,  0, 0, 0, 5, 10, 20, 30, 45] select _level;
            private _ltankWeight =      [ 0, 5, 10, 20, 30, 40, 50, 55, 50, 45] select _level;

        };
        class getVehiclesAirSupport
        {
            private _vehWeights = [];

            private _lightAHWeight =   [20, 30, 40, 50, 60, 55, 40, 35, 30, 25] select _level;
            private _AHWeight =        [ 0, 0, 0, 0, 0, 10, 20, 40, 45, 50] select _level;
            private _casWeight =       [ 5,  10,  25,  40, 50, 60, 65, 70, 75, 80] select _level;
        };

    };
};
