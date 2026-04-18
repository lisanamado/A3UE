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
        class sab_mb339_i
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_1rnd_mk82_mag","sab_milavi_1rnd_mk82_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "";
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            bombRacks[] = {"sab_milavi_mk82_weapon"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class sab_alphajet_i
        {
            loadout[] = {"sab_milavi_1rnd_droptank_3_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_pod_mauser_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_1rnd_droptank_3_mag"};
            mainGun = "SAB_MILAVI_GUNPOD_CENTER";
            bombRacks[] = {"sab_milavi_mk82_weapon","sab_milavi_droptank_weapon"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class I_Pucara_F
        {
            loadout[] = {"PylonRack_38Rnd_missilesLeft","PylonRack_38Rnd_missilesRight","Pylon3xMk82Bomb","PylonRack_38Rnd_missilesLeft","PylonRack_38Rnd_missilesRight"};
            mainGun = "FM_BROWNING_M2_762";
            rocketLauncher[] = {"CLV_LAU7_RIGHT","CLV_LAU7_LEFT"};
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class I_A4Skyhawk_F_noRadar
        {
            loadout[] = {"pylon1rnd_FuelTanka4_b","Pylon3xMk82Bomb","pylon1rnd_FuelTanka4_b"};
            mainGun = "CLV_A4bGUN_weapon";
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class I_A4Skyhawk_F
        {
            loadout[] = {"pylon1rnd_FuelTanka4_b","Pylon3xMk82Bomb","pylon1rnd_FuelTanka4_b"};
            mainGun = "CLV_A4bGUN_weapon";
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
    };
    class CAS
    {
        class sab_mb339_i
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "";
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            bombRacks[] = {"sab_milavi_mk82_weapon"};
        };
        class sab_alphajet_i
        {
            loadout[] = {"sab_milavi_1rnd_droptank_3_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_mauser_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_droptank_3_mag"};
            mainGun = "sab_milavi_hydra_weapon";
            bombRacks[] = {"sab_milavi_droptank_weapon"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
        };
        class I_Pucara_F
        {
            loadout[] = {"PylonRack_38Rnd_missilesLeft","PylonRack_38Rnd_missilesRight","Pylon3xMk82Bomb","PylonRack_38Rnd_missilesLeft","PylonRack_38Rnd_missilesRight"};
            mainGun = "FM_BROWNING_M2_762";
            rocketLauncher[] = {"CLV_LAU7_RIGHT","CLV_LAU7_LEFT"};
            bombRacks[] = {"Mk82BombLauncher3Ex"};
        };
    };
   
    class AA
    {
        class sab_fiat_i
        {
            loadout[] = {"sab_milavi_1rnd_droptank_3_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_droptank_3_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            bombRacks[] = {"sab_milavi_droptank_weapon"};
            missileLauncher[] = {"sab_milavi_aam_weapon"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class I_MirageIIIEA_F
        {
            loadout[] = {"pylon1rnd_Shafrirmk2","","Pylon3xMk82Bomb","","pylon1rnd_Shafrirmk2"};
            mainGun = "CLV_Mirage_weapon";
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            missileLauncher[] = {"Shafrir_mk2Launcher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class I_dagger_F
        {
            loadout[] = {"pylon1rnd_Shafrirmk2","pylon1rnd_Shafrirmk2","Pylon3xMk82Bomb","pylon1rnd_Shafrirmk2","pylon1rnd_Shafrirmk2"};
            mainGun = "CLV_dagger_weapon";
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            missileLauncher[] = {"Shafrir_mk2Launcher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class I_A4CSkyhawk_F
        {
            loadout[] = {"pylon1rnd_Shafrirmk2","pylon1rnd_FuelTankA4C","Pylon3xMk82Bomb","pylon1rnd_FuelTankA4C","pylon1rnd_Shafrirmk2"};
            mainGun = "CLV_A4bGUN_weapon";
            bombRacks[] = {"Mk82BombLauncher3Ex"};
            missileLauncher[] = {"Shafrir_mk2Launcher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        // Variants inherit from the main one
    };
};
