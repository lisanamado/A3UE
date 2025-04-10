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
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"PylonMissile_1Rnd_Mk82_F", "PylonMissile_1Rnd_Mk82_F"};
            mainGun = "";
            bombRacks[] = {"PylonMissile_1Rnd_Mk82_F", "PylonMissile_1Rnd_Mk82_F"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };

    };

    class CAS
    {
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_7Rnd_Rocket_04_HE_F"};
            rocketLauncher[] = {"PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_7Rnd_Rocket_04_HE_F"};
        };
    };
   
    class AA
    {
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M","CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M"};
            mainGun = "CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M";
            missileLauncher[] = {"","",""};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};


