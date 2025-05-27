class planeLoadouts
{
//"diveParams": params ["_startAlt", "_endAlt", "_diveSpeed m/s", "_diveAngle", "_turnRate", "_bombDrag"];
    class CASDIVE
    {
        class CUP_B_AC47_Spooky_USA
        {
            loadout[] = {};
            mainGun = "";
            bombRacks[] = {"CUP_Vblauncher_Mk82_veh"};
            diveParams[] = {600, 100, 80, 75, 15, {0,0}};
        };        
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"PylonMissile_1Rnd_Mk82_F","CUP_PylonPod_2000Rnd_TE5_Red_Tracer_762x51_M134A_M"}; //BASE Y MINIG
            mainGun = "CUP_Vlmg_M134_A_veh";
            bombRacks[] = {"CUP_Vblauncher_Mk82_veh"};
            diveParams[] = {500, 100, 56, 75, 15, {0,0}};
        };
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"PylonMissile_1Rnd_Mk82_F","CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M"};
            mainGun = "CUP_Vacannon_M621_AW159_veh";
            bombRacks[] = {"CUP_Vblauncher_Mk82_veh"};
            diveParams[] = {700, 200, 56, 55, 25, {0,0}};
        };
    };
    class CAS
    {
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"CUP_PylonPod_19Rnd_CRV7_HE_plane_M","CUP_PylonPod_2000Rnd_TE5_Red_Tracer_762x51_M134A_M"};
            mainGun = "CUP_Vlmg_M134_A_veh";
            rocketLauncher[] = {"CUP_Vmlauncher_CRV7_veh"};
        };
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"CUP_PylonPod_19Rnd_CRV7_KEP_plane_M","CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M"}; //BASE Y MINIG
            mainGun = "CUP_Vhmg_GAU10_A_veh";
            bombRacks[] = {"CUP_Vmlauncher_CRV7_veh"};
            diveParams[] = {1000, 200, 50, 55, 15, {0,0}};
        };
    };
   
    class AA
    {
        class CUP_I_CESSNA_T41_ARMED_ION
        {
            loadout[] = {"CUP_PylonPod_19Rnd_CRV7_HE_plane_M","CUP_PylonPod_2000Rnd_TE5_Red_Tracer_762x51_M134A_M"};//CAMBIAR MINIGUN X GAU
            mainGun = "CUP_Vlmg_M134_A_veh";
            rocketLauncher[] = {"CUP_Vmlauncher_CRV7_veh"};
            diveParams[] = {1500, 300, 60, 55, 15, {0,0}};
        };
        class CUP_I_CESSNA_T41_ARMED_RACS
        {
            loadout[] = {"CUP_PylonPod_1Rnd_AIM_120_AMRAAM_M","CUP_PylonPod_1200Rnd_TE1_Red_Tracer_GAU19A_M"};//CAMBIAR MINIGUN X GAU
            mainGun = "CUP_Vhmg_GAU10_A_veh";
            missileLauncher[] = {"CUP_Vmlauncher_AIM9L_veh_1Rnd"};
            diveParams[] = {1500, 300, 60, 55, 15, {0,0}};
        };
    };
};
