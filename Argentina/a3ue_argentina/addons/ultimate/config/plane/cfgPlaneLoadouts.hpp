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
        class acfaa_at6b
        {
            loadout[] = {"","","","acfaa_400Rnd_50cal_pod","PylonMissile_1Rnd_Bomb_04_F","PylonMissile_1Rnd_BombCluster_03_F","acfaa_400Rnd_50cal_pod","","",""};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };

        class sab_alphajet_b
        {
            loadout[] = {"sab_milavi_2rnd_mk82_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_pod_mauser_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_2rnd_mk82_mag"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class sab_jaguar_b
        {
            loadout[] = {"sab_milavi_2rnd_mk82_mag","sab_milavi_2rnd_mk82_mag","","sab_milavi_2rnd_mk82_mag","sab_milavi_2rnd_mk82_mag","","",""};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class sab_etendard_b
        {
            loadout[] = {"sab_milavi_1rnd_fab250_mag","sab_milavi_3rnd_mk82_mag","sab_milavi_3rnd_mk82_mag","sab_milavi_1rnd_fab250_mag"};
        };
    };

    class CAS
    {
        class acfaa_at6b
        {
            loadout[] = {"","acfaa_19Rnd_FFAR","acfaa_1Rnd_GBU12","acfaa_1Rnd_GBU12","acfaa_19Rnd_FFAR",""};
        };
        class sab_alphajet_b
        {
            loadout[] = {"sab_milavi_1rnd_maverick_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_pod_mauser_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_1rnd_maverick_mag"};
        };
        class sab_jaguar_b
        {
            loadout[] = {"sab_milavi_2rnd_mk82_mag","sab_milavi_1rnd_maverick_mag","","sab_milavi_1rnd_maverick_mag","sab_milavi_2rnd_mk82_mag","","",""};
        };
        class sab_etendard_b
        {
            loadout[] = {"sab_milavi_1rnd_fab250_mag","sab_milavi_1rnd_maverick_mag","sab_milavi_1rnd_maverick_mag","sab_milavi_1rnd_fab250_mag"};
        };
    };
   
    class AA
    {
        class sab_m2000_b
        {
            loadout[] = {"sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag","","sab_milavi_4rnd_zuni_mag","","sab_milavi_4rnd_zuni_mag","","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};
