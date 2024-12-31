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
        class CUP_O_Su25_Dyn_SLA
        {
            loadout[] = {
                "CUP_PylonPod_1Rnd_R73_Vympel"
                ,"CUP_PylonPod_16Rnd_S5_plane_M"
                ,"CUP_PylonPod_20Rnd_S8_plane_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_20Rnd_S8_plane_M"
                ,"CUP_PylonPod_16Rnd_S5_plane_M"
                ,"CUP_PylonPod_1Rnd_R73_Vympel"
                };
            mainGun = "CUP_Vacannon_GSh302K_veh";
            bombRacks[] = {"CUP_Vblauncher_Fab250_veh"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class CUP_I_L39_AAF
        {
            loadout[] = {
            "CUP_PylonPod_16Rnd_S5_plane_M"
            ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
            ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
            ,"CUP_PylonPod_16Rnd_S5_plane_M"
        };
            mainGun = "CUP_Vacannon_GSh23L_L39";
            bombRacks[] = {"CUP_Vblauncher_Fab250_veh"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };
    class CAS
    {
        class CUP_I_L39_AAF
        {
            loadout[] = {
            "CUP_PylonPod_1Rnd_Kh29_M"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_1Rnd_Kh29_M"
        };
            mainGun = "CUP_Vacannon_GSh23L_L39";
            rocketLauncher[] = {"CUP_Vmlauncher_S8_veh"};
            missileLauncher[] = {"CUP_Vmlauncher_Kh29L_veh"};
        };
        class CUP_O_Su25_Dyn_SLA
        {
            loadout[] = {
                "CUP_PylonPod_1Rnd_R73_Vympel"
                ,"CUP_PylonPod_16Rnd_S5_plane_M"
                ,"CUP_PylonPod_20Rnd_S8_plane_M"
                ,"CUP_PylonPod_1Rnd_Kh29_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_1Rnd_FAB250_plane_M"
                ,"CUP_PylonPod_1Rnd_Kh29_M"
                ,"CUP_PylonPod_20Rnd_S8_plane_M"
                ,"CUP_PylonPod_16Rnd_S5_plane_M"
                ,"CUP_PylonPod_1Rnd_R73_Vympel"
                };
            mainGun = "CUP_Vacannon_GSh302K_veh";
            rocketLauncher[] = {"CUP_Vmlauncher_S8_veh","CUP_Vmlauncher_S5_veh"};
            missileLauncher[] = {"CUP_Vmlauncher_Kh29L_veh","CUP_Vmlauncher_R73_veh"};
        };
    };

    class AA
    {
        class CUP_I_SU34_AAF
        {
            loadout[] = {
            "CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,""
            ,""
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_20Rnd_S8_plane_M"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            };
            mainGun = "CUP_Vacannon_GSh301_veh";
            missileLauncher[] = {"CUP_Vmlauncher_R73_veh"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };

            class CUP_I_L39_AAF
        {
            loadout[] = {
            "CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
            ,"CUP_PylonPod_1Rnd_R73_Vympel"
        };
            mainGun = "CUP_Vacannon_GSh23L_L39";
            rocketLauncher[] = {};
            missileLauncher[] = {"CUP_PylonPod_1Rnd_R73_Vympel"};}
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};            
        };
    };
};
