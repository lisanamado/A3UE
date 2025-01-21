class planeLoadouts
{
    // It also has support for these parameters, though I haven't used them before.
    // mainGun
    // rocketLauncher[]
    // missileLauncher[]
    // bombRacks[]
    // diveParams[]
    class CASDIVE
    {
        class CUP_C_Cessna_172_CIV
        {
            loadout[] = {""};
            mainGun = "";
            bombRacks[] = {"Bomb_04_Plane_CAS_01_F", "BombCluster_03_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class CUP_C_AN2_CIV
        {
            loadout[] = {""};
            mainGun = "";
            bombRacks[] = {"Bomb_04_Plane_CAS_01_F", "BombCluster_03_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };

    class CAS
    {
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {""};
            mainGun = "";
            rocketLauncher[] = {""};
            missileLauncher[] = {"",""};
        };
    };
   
    class AA
    {
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {""};
            mainGun = "";
            missileLauncher[] = {"","",""};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};
