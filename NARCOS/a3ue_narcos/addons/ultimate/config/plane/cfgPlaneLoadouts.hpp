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
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"CUP_Vblauncher_Mk82_veh","CUP_Vlmg_M134_A_veh"};
            mainGun = "CUP_Vlmg_M134_A_veh";
            bombRacks[] = {"CUP_Vblauncher_Mk82_veh"};
            diveParams[] = {300, 50, 180, 55, 15, {0,0}};
        };
    };

    class CAS
    {
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"CUP_Vmlauncher_CRV7_KEP_veh","CUP_Vlmg_M134_A_veh"};
            mainGun = "CUP_Vlmg_M134_A_veh";
            rocketLauncher[] = {"CUP_Vmlauncher_CRV7_KEP_veh"};
        };
    };
   
    class AA
    {
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"CUP_Vmlauncher_FFAR_veh","CUP_Vlmg_M134_A_veh"};
            mainGun = "CUP_Vlmg_M134_A_veh";
            rocketLauncher[] = {"CUP_Vmlauncher_FFAR_veh"};
            diveParams[] = {300, 50, 180, 55, 15, {0,0}};
        };
    };
};
