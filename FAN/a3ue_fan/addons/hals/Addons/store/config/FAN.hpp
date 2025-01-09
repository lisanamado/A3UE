		class handgunsFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(CUP_hgun_Colt1911, 200, 20); 
			ITEM(CUP_hgun_PMM, 200, 30); 
			ITEM(CUP_hgun_SA61, 250, 30); 

			ITEM(CUP_hgun_Deagle, 500, 20); 
			ITEM(CUP_hgun_Mac10, 450, 30); 
        };

		class riflesFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_arifle_FNFAL5061_wooden, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL5061_railed, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_OSW_railed, 1250, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_railed_woodland, 1250, RIFLE_STOCK);


			ITEM(CUP_arifle_Galil_black, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_Galil_SAR_black, 1250, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58s_rearris, 750, RIFLE_STOCK);          
			ITEM(CUP_arifle_Sa58RIS2_gl_woodland, 1900, RIFLE_STOCK);          
			ITEM(CUP_arifle_Sa58_Carbine_RIS_VFG_woodland, 1500, RIFLE_STOCK);

			ITEM(CUP_glaunch_6G30, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_railed, 1600, RIFLE_STOCK);
			ITEM(CUP_arifle_AKM_GL_Early, 1800, 16);

			ITEM(CUP_arifle_AKM, 1600, 16);
			ITEM(CUP_arifle_AKM_top_rail, 1700, 16);

			ITEM(CUP_arifle_M16A1, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A1GL, 1700, RIFLE_STOCK);

			ITEM(CUP_arifle_Colt727, 1600, 21);
			ITEM(CUP_arifle_M16A4_Base, 1800, 15);
			ITEM(CUP_arifle_M16A4_GL, 2050, 9); 

			ITEM(CUP_arifle_AUG_A1, 2500, 6);

		};

		class sniperRiflesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_CZ550, 1000, RIFLE_STOCK);
			ITEM(CUP_srifle_M14, 2000, RIFLE_STOCK);
			ITEM(CUP_srifle_M21_ris, 2500, 15);			

			ITEM(CUP_srifle_M24_wdl, 3000, 7);
			ITEM(CUP_srifle_CZ750, 3250, 20);
			ITEM(CUP_srifle_M14_DMR, 3500, 10);
			ITEM(CUP_srifle_G22_wdl, 6000	5);
			ITEM(CUP_srifle_ksvk_PSO3, 7000, 3);
			ITEM(CUP_srifle_M107_Woodland, 10000, 3);
		};

		class mgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_m60, 1800, RIFLE_STOCK);
			ITEM(CUP_lmg_m249_pip2, 2500, 15);
			ITEM(CUP_lmg_FNMAG_RIS, 2000, RIFLE_STOCK);
		};

		class smgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_M3A1_grn, 400, RIFLE_STOCK);
			ITEM(CUP_smg_SA61, 300, RIFLE_STOCK);
			ITEM(CUP_smg_UZI, 600, RIFLE_STOCK);

			ITEM(CUP_smg_MP5A5, 750, RIFLE_STOCK);
			ITEM(CUP_smg_MP5A5_Rail_VFG, 850, 12);
			ITEM(CUP_smg_MP5SD6, 1000, 8);
		};

		class launchersFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_M72A6_Special, 650, 40);
			ITEM(CUP_launch_RShG2, 700, 30);

			ITEM(CUP_launch_RPG7V, 1500, 30);
			ITEM(CUP_launch_Mk153Mod0, 2000, 20);
			ITEM(CUP_launch_9K32Strela, 2750, 20);
			ITEM(CUP_launch_Igla, 3250, 12);
			ITEM(CUP_launch_FIM92Stinger, 3500, 8);
			ITEM(CUP_launch_M47, 5000, 10);
			ITEM(CUP_launch_Metis, 6000, 5);
			ITEM(CUP_launch_Javelin, 9000, 3);

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
				price = 150;
				stock = PN_STOCK;
			};
			class CUP_PG7VR_M {
				price = 175;
				stock = PN_STOCK;
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
			class CUP_Javelin_M {
				price = 1000;
				stock = 15;
			};
			class CUP_AT13_M {
				price = 500;
				stock = 20;
			};
			class CUP_Dragon_EP1_M {
				price = 500;
				stock = 25;
			};			
		};

		class navigationFAN
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 500, NN_STOCK);
			ITEM(ItemRadio, 150, NN_STOCK);
			ITEM(CUP_Vector21Nite, 2000, NN_STOCK);
			ITEM(CUP_SOFLAM, 3500, NN_STOCK);
			ITEM(CUP_LRTV, 3500, NN_STOCK);
			ITEM(CUP_NVG_PVS15_black, 1500, NN_STOCK);
		};

		class muzzlesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(muzzle_snds_B, 1000, 28);
			ITEM(muzzle_snds_M, 1250, 25);
		};

		class opticsFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class CUP_optic_AN_PVS_4 {
				price = 2500;
				stock = 5;
			};
			class CUP_optic_Elcan_reflex {
				price = 1000;
				stock = 25;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND {
				price = 2000;
				stock = 15;
			};
			class CUP_optic_AN_PAS_13c1 {
				price = 3500;
				stock = 10;
			};
			class CUP_optic_AN_PAS_13c2 {
				price = 4500;
				stock = 5;
			};
			class CUP_optic_AN_PVS_10_od {
				price = 3500;
				stock = 6;
			};
			class CUP_optic_CWS {
				price = 4000;
				stock = 5;
			};
			class CUP_optic_SUSAT {
				price = 250;
				stock = NN_STOCK;
			};
			class CUP_optic_SB_3_12x50_PMII_Tan {
				price = 1000;
				stock = NN_STOCK;
			};
			class CUP_optic_1P87_RIS_woodland {
				price = 100;
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
				price = 1000;
				stock = NN_STOCK;
			};
			class CUP_optic_PGO7V3 {
				price = 150;
				stock = NN_STOCK;
			};
			class CUP_optic_PSO_3 {
				price = 150;
				stock = 5;
			};
			class CUP_optic_1p63 {
				price = 100;
				stock = 15;
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
				price = 25;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_6Rnd_Smoke_GP25 {
				price = 25;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_6Rnd_FlareRed_GP25_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_HEDP_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_White_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_White_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_FlareGreen_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_Green_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarFlare_Green_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_FlareRed_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarCluster_Red_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_StarFlare_Red_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeRed_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_Smoke_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeGreen_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
            class CUP_1Rnd_SmokeYellow_M203 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};       

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class CUP_7Rnd_50AE_Deagle {
				price = 30;
				stock = 30;
			};
			class CUP_30Rnd_45ACP_Green_Tracer_MAC10_M {
				price = 40;
				stock = 50;
			};
			class CUP_10Rnd_B_765x17_Ball_M {
				price = 10;
				stock = 50;
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
			class CUP_30Rnd_762x39_AK47_bakelite_M {
				price = 60;
				stock = 80;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M {
				price = 65;
				stock = 60;
			};
			class CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M {
				price = 110;
				stock = 40;
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
				class CUP_30Rnd_556x45_AUG {
				price = 50;
				stock = 50;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////

			class CUP_5x_22_LR_17_HMR_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_5Rnd_762x51_M24 {
				price = 50;
				stock = 24;
			};
			class CUP_10Rnd_762x51_CZ750 {
				price = 50;
				stock = 24;
			};
			class CUP_20Rnd_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_5Rnd_762x67_G22 {
				price = 200;
				stock = 22;
			};
			class CUP_5Rnd_127x108_KSVK_M {
				price = 50;
				stock = 15;
			};
			class CUP_10Rnd_127x99_M107 {
				price = 50;
				stock = 10;
			};
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class CUP_100Rnd_TE4_Green_Tracer_556x45_M249 {
				price = 100;
				stock = 75;
			};
			class CUP_200Rnd_TE4_Green_Tracer_556x45_M249 {
				price = 170;
				stock = 45;
			};
			class CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 100;
				stock = 100;
			};

			
			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class CUP_30Rnd_9x19_MP5 {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Yellow_Tracer_9x19_MP5 {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Red_Tracer_M3A1_GRN_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_765x17_Ball_M {
				price = 25;
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

			ITEM(CUP_B_AlicePack_OD, 10, MISC_STOCK);
			ITEM(CUP_B_AlicePack_Khaki, 10, MISC_STOCK);
			ITEM(B_Kitbag_rgr, 10, MISC_STOCK);
			ITEM(CUP_B_GER_Pack_Flecktarn, 15, MISC_STOCK);
			ITEM(CUP_B_RUS_Patrol_bag_6E5_Summer, 10, MISC_STOCK);
			ITEM(CUP_B_RUS_Patrol_bag_Summer, 15, MISC_STOCK);

			ITEM(B_Carryall_mcamo, 20, MISC_STOCK);
			ITEM(B_Carryall_khk, 20, MISC_STOCK);

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

			ITEM(CUP_bipod_Harris_1A2_L_BLK, 75, MISC_STOCK);
			ITEM(CUP_bipod_VLTOR_Modpod_od, 100, MISC_STOCK);	
		};