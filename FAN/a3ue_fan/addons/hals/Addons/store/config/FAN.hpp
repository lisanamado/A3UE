		class handgunsFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(CUP_hgun_Colt1911, 150, PISTOL_STOCK);
			ITEM(CUP_hgun_PMM, 150, PISTOL_STOCK);
			ITEM(CUP_hgun_SA61, 250, PISTOL_STOCK);
			ITEM(CUP_hgun_BallisticShield_PMM, 300, RIFLE_STOCK);
			ITEM(CUP_smg_BallisticShield_Sa61, 400, RIFLE_STOCK);
        };

		class riflesFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_sgun_M1014_Entry, 150, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_Entry_vfg, 150, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014, 200, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_vfg, 250, RIFLE_STOCK);
			ITEM(CUP_sgun_M1014_solidstock, 300, RIFLE_STOCK);

			ITEM(CUP_glaunch_M79, 300, RIFLE_STOCK);
			ITEM(CUP_glaunch_6G30, 500, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061_wooden, 300, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL5061_railed, 500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_OSW_railed, 550, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_railed_woodland, 550, RIFLE_STOCK);

			ITEM(CUP_arifle_Galil_black, 450, RIFLE_STOCK);
			ITEM(CUP_arifle_Galil_SAR_black, 450, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58s_rearris, 350, RIFLE_STOCK);          
			ITEM(CUP_arifle_Sa58RIS2_gl_woodland, 500, RIFLE_STOCK);          
			ITEM(CUP_arifle_Sa58_Carbine_RIS_VFG_woodland, 700, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A1, 450, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A1GL, 550, RIFLE_STOCK);

			ITEM(CUP_arifle_Colt727, 600, 21);

		};

		class sniperRiflesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_M14, 500, RIFLE_STOCK);
			ITEM(CUP_srifle_M21_ris, 800, RIFLE_STOCK);			
			ITEM(CUP_srifle_M14_DMR, 900, RIFLE_STOCK);
			ITEM(CUP_srifle_CZ750, 1250, 20);
		};

		class mgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_m60, 700, RIFLE_STOCK);
			ITEM(CUP_lmg_FNMAG_RIS, 800, RIFLE_STOCK);
		};

		class smgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_M3A1_grn, 200, RIFLE_STOCK);
			ITEM(CUP_smg_SA61, 150, RIFLE_STOCK);
			ITEM(CUP_smg_UZI, 250, RIFLE_STOCK);

		};

		class launchersFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_M72A6_Special, 300, 40);

			ITEM(CUP_launch_RPG7V, 600, 30);
			ITEM(CUP_launch_Mk153Mod0, 1500, LAUNCHER_STOCK);
			ITEM(CUP_launch_9K32Strela, 1750, LAUNCHER_STOCK);
			ITEM(CUP_launch_M47, 3000, 10);
		};

		class launcherMagazinesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class CUP_OG7_M {
				price = 50;
				stock = MISC_STOCK;
			};
			class CUP_PG7V_M {
				price = 75;
				stock = MISC_STOCK;
			};
			class CUP_PG7VM_M {
				price = 100;
				stock = MISC_STOCK;
			};
			class CUP_PG7VL_M {
				price = 125;
				stock = PN_STOCK;
			};
			class CUP_TBG7V_M {
				price = 300;
				stock = PN_STOCK;
			};
			class CUP_PG7VR_M {
				price = 205;
				stock = PN_STOCK;
			};			
			class CUP_SMAW_Spotting {
				price = 10;
				stock = 50;
			};
			class CUP_SMAW_NE_M {
				price = 100;
				stock = 34;
			};
			class CUP_SMAW_HEDP_M {
				price = 150;
				stock = 12;
			};
			class CUP_SMAW_HEAA_M {
				price = 125;
				stock = 8;
			};
			class CUP_Dragon_EP1_M {
				price = 500;
				stock = 25;
			};			
		};

		class underbarrelFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_cup", localize "STR_A3AU_bipods"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";
			ITEM(CUP_bipod_FNFAL, 75, MISC_STOCK);
			ITEM(CUP_bipod_Harris_1A2_L, 75, MISC_STOCK);
			ITEM(CUP_bipod_VLTOR_Modpod_od, 100, MISC_STOCK);	
		};

		class pointersCup 
		{
			displayName = __EVAL(formatText ["%1 %2 %3 %4", localize "STR_A3AU_cup", localize "STR_A3AU_pointers", localize "STR_A3AU_and", localize "STR_A3AU_flashlights"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";
			ITEM(acc_flashlight_pistol, 50, MISC_STOCK);
			ITEM(CUP_acc_Zenit_2DS, 50, MISC_STOCK);
			ITEM(acc_flashlight, 50, MISC_STOCK);	
			ITEM(CUP_acc_Flashlight_wdl, 50, MISC_STOCK);		
		}
		class navigationFAN
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";
			ITEM(ItemGPS, 300, NN_STOCK);
			ITEM(ItemRadio, 75, NN_STOCK);
			ITEM(CUP_Vector21Nite, 500, NN_STOCK);
		};

		class muzzlesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";
			ITEM(muzzle_snds_B, 170, MISC_STOCK);
			ITEM(muzzle_snds_M, 190, MISC_STOCK);
			ITEM(CUP_muzzle_mfsup_Zendl, 25, MISC_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_762x51_Black, 20, MISC_STOCK);
			ITEM(CUP_muzzle_mfsup_CSA_woodland, 50, MISC_STOCK);
			ITEM(CUP_muzzle_snds_MicroUzi, 150, MISC_STOCK);
		};

		class opticsFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class CUP_optic_AN_PAS_13c2 {
				price = 3500;
				stock = 5;
			};
			class CUP_optic_AN_PVS_10_od {
				price = 3250;
				stock = 6;
			};
			class CUP_optic_CWS {
				price = 500;
				stock = 5;
			};
			class CUP_optic_SUSAT {
				price = 100;
				stock = NN_STOCK;
			};
			class CUP_optic_SB_3_12x50_PMII_Tan {
				price = 300;
				stock = NN_STOCK;
			};
			class CUP_optic_1P87_RIS_woodland {
				price = 50;
				stock = NN_STOCK;
			};
			class CUP_optic_CompM2_low_OD {
				price = 100	;
				stock = NN_STOCK;
			};
			class CUP_optic_AC11704_Jungle {
				price = 150;
				stock = NN_STOCK;
			};
			class CUP_optic_ACOG_Reflex_Wood {
				price = 400;
				stock = NN_STOCK;
			};
			class CUP_optic_PGO7V3 {
				price = 150;
				stock = NN_STOCK;
			};	
		};

		class magazinesFAN 
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class CUP_6Rnd_HE_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_6Rnd_FlareWhite_GP25_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareGreen_GP25_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareRed_GP25_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareYellow_GP25_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_Smoke_GP25 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeRed_GP25 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeGreen_GP25 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeYellow_GP25 {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_HEDP_M203 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
				class CUP_1Rnd_HE_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_White_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_White_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_FlareGreen_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_Green_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarFlare_Green_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_FlareRed_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_Red_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarFlare_Red_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeRed_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_Smoke_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeGreen_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeYellow_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};       

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class CUP_10Rnd_B_765x17_Ball_M {
				price = 20;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_20Rnd_B_765x17_Ball_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_50Rnd_B_765x17_Ball_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_7Rnd_45ACP_1911 {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_12Rnd_9x18_PMM_M {
				price = 20;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class CUP_8Rnd_12Gauge_Slug {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No00_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No0_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No1_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No2_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No3_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No4_Buck {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_Pellets_No4_Bird {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_12Gauge_HE {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_12Gauge_Slug {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No00_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No0_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No1_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No2_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No3_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No4_Buck {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_Pellets_No4_Bird {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_12Gauge_HE {
				price = 250;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_FNFAL_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x51_FNFAL_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_FNFAL_Woodland_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_25Rnd_762x51_Red_Tracers_Galil_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_35Rnd_556x45_Galil_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Sa58_M  {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Sa58_M_TracerG  {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_Sa58_M {
				price = 70;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_Sa58_M_TracerG {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_AK {
				price = 60;
				stock = 85;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_AK {
				price = 65;
				stock = 60;
			};
			class CUP_20Rnd_556x45_Stanag {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_556x45_Stanag_Tracer_Yellow {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_Stanag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Yellow {
				price = 55;
				stock = 75;
			};
			class CUP_60Rnd_556x45_SureFire {
				price = 90;
				stock = 60;
			};
			class CUP_60Rnd_556x45_SureFire_Tracer_Red {
				price = 100;
				stock = 40;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////

			class CUP_10Rnd_762x51_CZ750 {
				price = 50;
				stock = 24;
			};
			class CUP_10Rnd_762x51_CZ750_Tracer {
				price = 50;
				stock = 24;
			};
			class CUP_20Rnd_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
				class CUP_200Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			
			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class CUP_30Rnd_45ACP_Red_Tracer_M3A1_GRN_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_32Rnd_9x19_UZI_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_72Rnd_9x19_UZI_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};			
		};
		class miscFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(U_I_FullGhillie_ard, 250, 40);

			ITEM(U_I_FullGhillie_lsh, 250, 40);

			ITEM(U_I_FullGhillie_sard, 250, 40);

			ITEM(U_I_GhillieSuit, 250 40);

			ITEM(CUP_B_AlicePack_OD, 100, MISC_STOCK);
			ITEM(CUP_B_AlicePack_Khaki, 100, MISC_STOCK);
			ITEM(B_Kitbag_rgr, 100, MISC_STOCK);
			ITEM(CUP_B_GER_Pack_Flecktarn, 150, MISC_STOCK);
			ITEM(CUP_B_RUS_Patrol_bag_6E5_Summer, 100, MISC_STOCK);
			ITEM(CUP_B_RUS_Patrol_bag_Summer, 150, MISC_STOCK);

			ITEM(B_Carryall_mcamo, 200, MISC_STOCK);
			ITEM(B_Carryall_khk, 200, MISC_STOCK);

			ITEM(V_TacVest_blk, 500, MISC_STOCK);
			ITEM(V_I_G_resistanceLeader_F, 600, MISC_STOCK);
			ITEM(CUP_V_B_PASGT_no_bags, 750, MISC_STOCK);
			ITEM(CUP_V_O_RUS_6B45_6Sh117_AK_Summer, 1000, MISC_STOCK);

			ITEM(CUP_V_O_RUS_RPS_Smersh_PKP_SPP_ModernOlive, 200, MISC_STOCK);
			ITEM(CUP_V_B_PASGT, 800, MISC_STOCK);
			ITEM(CUP_V_O_RUS_6B45_6Sh117_SPP_PKP_Radio_Summer, 1100, MISC_STOCK);

			ITEM(CUP_H_USArmy_Helmet_M1_Olive, 200, MISC_STOCK);
			ITEM(CUP_H_PASGTv2_ERDL_highland, 400, MISC_STOCK);

			ITEM(G_Diving, 100, 70);
			ITEM(V_RebreatherIA, 600, 25);
			ITEM(U_I_Wetsuit, 150, 15);

			ITEM(HandGrenade, 20, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 25, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 25, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 50, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 50, MISC_STOCK);

			ITEM(SatchelCharge_Remote_Mag, 300, 30);
			ITEM(SLAMDirectionalMine_Wire_Mag, 250, 30);
			ITEM(ATMine_Range_Mag, 400, 25);
			ITEM(APERSMine_Range_Mag, 100, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 200, 45);
			ITEM(APERSTripMine_Wire_Mag, 75, MISC_STOCK);
			
			ITEM(I_UavTerminal, 1000, 15);
			ITEM(O_UavTerminal, 1000, 15);
			ITEM(B_UavTerminal, 1000, 15);
		};