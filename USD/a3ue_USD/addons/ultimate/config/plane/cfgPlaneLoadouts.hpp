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
        class sab_t28trojan_o
        {
            loadout[] = {"sab_milavi_1rnd_mk82_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_1rnd_cluster_02_mag","sab_milavi_1rnd_mk82_mag"};
            bombRacks[] = {"sab_milavi_mk82_weapon"};
            diveParams[] = {900, 400, 180, 55, 15, {0,0}};
        };
        class sab_pc9_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_fab250_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_1rnd_cluster_02_mag","sab_milavi_1rnd_fab250_mag","sab_milavi_7rnd_hydra_mag"};
            bombRacks[] = {"sab_milavi_mk82_weapon","sab_milavi_fab250_weapon"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            diveParams[] = {900, 400, 180, 55, 15, {0,0}};
        };
        class sab_pc7_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_fab250_mag","sab_milavi_1rnd_cluster_02_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_1rnd_fab250_mag","sab_milavi_7rnd_hydra_mag"};
            bombRacks[] = {"sab_milavi_mk82_weapon","sab_milavi_fab250_weapon","sab_milavi_droptank_weapon"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            diveParams[] = {900, 400, 180, 55, 15, {0,0}};
        };
        class sab_mb339_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_cluster_01_mag","sab_milavi_7rnd_hydra_mag"};
            bombRacks[] = {"sab_milavi_mk82_weapon"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class sab_fiat_o
        {
            loadout[] = {"sab_milavi_1rnd_droptank_3_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_2rnd_mk82_mag","sab_milavi_1rnd_droptank_3_mag"};
            bombRacks[] = {"sab_milavi_mk82_weapon"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class sab_panther_o
        {
            loadout[] = {"sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_mk82_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_mk82_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag"};
            mainGun = "sab_panther_quad_cannon_20mm";
            bombRacks[] = {"sab_milavi_mk82_weapon"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon","sab_milavi_zuni_weapon"};
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        }; 
    };

    class CAS
    {
        class sab_t28trojan_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_pod_mgx1_mag","sab_milavi_pod_mgx1_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "sab_milavi_pod_cannon_weapon";
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
        };
        class sab_sf260_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_pod_mgx1_mag","sab_milavi_pod_mgx1_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "sab_milavi_pod_cannon_weapon";
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
        };
        class sab_pc9_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_hellfire_mag","sab_milavi_pod_mgx1_mag","sab_milavi_pod_mgx1_mag","sab_milavi_1rnd_hellfire_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "sab_milavi_pod_cannon_weapon";
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            missileLauncher[] = {"sab_milavi_agm_hellfire_weapon"};
        };
        class sab_pc7_o
        {
            loadout[] = {"sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_mgx1_mag","sab_milavi_pod_mgx1_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"};
            mainGun = "sab_milavi_pod_cannon_weapon";
            rocketLauncher[] = {"sab_milavi_hydra_weapon","sab_milavi_zuni_weapon"};
        };
        class sab_mb339_o
        {
            loadout[] = {"sab_milavi_2rnd_hellfire_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_2rnd_hellfire_mag"};
            rocketLauncher[] = {"sab_milavi_hydra_weapon"};
            missileLauncher[] = {"sab_milavi_agm_hellfire_weapon"};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
        class sab_fiat_o
        {
            loadout[] = {"sab_milavi_1rnd_droptank_mag","sab_milavi_2rnd_hellfire_mag","sab_milavi_2rnd_hellfire_mag","sab_milavi_1rnd_droptank_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            missileLauncher[] = {"sab_milavi_agm_hellfire_weapon"};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
        class sab_panther_o
        {
            loadout[] = {"sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag"};
            mainGun = "sab_panther_quad_cannon_20mm";
            rocketLauncher[] = {"sab_milavi_hydra_weapon","sab_milavi_zuni_weapon"};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
        class sab_mystere_o
        {
            loadout[] = {"sab_milavi_4rnd_hellfire_mag","sab_milavi_1rnd_droptank_3_mag","sab_milavi_1rnd_droptank_3_mag","sab_milavi_4rnd_hellfire_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            missileLauncher[] = {"sab_milavi_agm_hellfire_weapon"};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };

    };
   
    class AA
    {
        class sab_pc21_o
        {
            loadout[] = {"sab_milavi_1rnd_aim9x_mag","sab_milavi_pod_mgx1_mag","sab_milavi_pod_mgx1_mag","sab_milavi_1rnd_aim9x_mag"};
            mainGun = "sab_milavi_pod_cannon_weapon";
            missileLauncher[] = {"sab_milavi_aam_weapon"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
        class sab_mystere_o
        {
            loadout[] = {"sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_droptank_3_mag","sab_milavi_1rnd_droptank_3_mag","sab_milavi_1rnd_aim9x_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            missileLauncher[] = {"sab_milavi_aam_weapon"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
            class sab_fiat_o
        {
            loadout[] = {"sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_droptank_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            missileLauncher[] = {"sab_milavi_agm_hellfire_weapon"};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
        class sab_m2000_o
        {
            loadout[] = {"sab_milavi_1rnd_droptank_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_2rnd_hellfire_mag","","sab_milavi_2rnd_hellfire_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_aim9x_mag","sab_milavi_1rnd_droptank_mag"};
            mainGun = "sab_milavi_defaultaircraft_weapon";
            missileLauncher[] = {"sab_milavi_aam_weapon","sab_milavi_agm_hellfire_weapon"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
            bombRacks[] = {"sab_milavi_droptank_weapon"};
        };
    };
};
