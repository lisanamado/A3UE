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
        class a3a_Plane_Fighter_03_grey_F
        {
            loadout[] = {"PylonRack_12Rnd_PG_missiles","PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Mk82_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Mk82_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_12Rnd_PG_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"Missile_AA_04_Plane_CAS_01_F","missiles_DAGR"};
            bombRacks[] = {"Mk82BombLauncher"};//cfgWeapons
            diveParams[] = {1200, 600, 180, 55, 15, {0,0}};
        };
        class acfaa_at6b
        {
            loadout[] = {"acfaa_7Rnd_FFAR","acfaa_7Rnd_FFAR","PylonMissile_1Rnd_Mk82_F","PylonMissile_1Rnd_Mk82_F","acfaa_7Rnd_FFAR","acfaa_7Rnd_FFAR"};
            bombRacks[] = {"Mk82BombLauncher"};//cfgWeapons
            rocketLauncher[] = {"acfaa_FFARLauncher_unguided"};
            diveParams[] = {1000, 400, 180, 55, 15, {0,0}};
        };
    };

    class CAS
    {
        class a3a_Plane_Fighter_03_grey_F
        {
            loadout[] = {"PylonRack_12Rnd_PG_missiles","PylonRack_1Rnd_Missile_AA_04_F","PylonMissile_1Rnd_Bomb_04_F","PylonWeapon_300Rnd_20mm_shells","PylonMissile_1Rnd_Bomb_04_F","PylonRack_1Rnd_Missile_AA_04_F","PylonRack_12Rnd_PG_missiles"};
            mainGun = "Twin_Cannon_20mm_gunpod";
            missileLauncher[] = {"Missile_AA_04_Plane_CAS_01_F","missiles_DAGR"};
        };
        class acfaa_at6b
        {
            loadout[] = {"acfaa_7Rnd_FFAR","acfaa_7Rnd_FFAR","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","acfaa_7Rnd_FFAR","acfaa_7Rnd_FFAR"};
            rocketLauncher[] = {"acfaa_FFARLauncher_unguided","missiles_DAR"};
            missileLauncher[] = {"missiles_DAR"};
        };
    };
   
    class AA
    {
        class ACFAA_Gripen_NG
        {
            loadout[] = {"PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AGM_02_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1"};
            mainGun = "weapon_Fighter_Gun20mm_AA"; 
            missileLauncher[] = {"weapon_AGM_65Launcher","weapon_AMRAAMLauncher","weapon_BIM9xLauncher"};
            diveParams[] = {1000, 600, 180, 55, 15, {0,0}};
        };
    };
};
