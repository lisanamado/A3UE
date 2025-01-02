		class handgunsFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(CUP_hgun_Deagle, 500, 20); 
			ITEM(CUP_hgun_Mac10, 450, 30); 
        };

		class riflesFAN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_arifle_FNFAL5061_railed, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_OSW_railed, 1250, RIFLE_STOCK);

			ITEM(CUP_arifle_Sa58RIS2_gl_woodland, 1250, RIFLE_STOCK);          
			ITEM(CUP_arifle_Sa58_Carbine_RIS_VFG_woodland, 1500, RIFLE_STOCK);

			ITEM(CUP_glaunch_6G30, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101_railed, 1750, 11);
			ITEM(CUP_arifle_AKM_top_rail, 2000, 16);

			ITEM(CUP_arifle_Colt727, 1800, 21);
			ITEM(CUP_arifle_M16A4_Base, 2000, 15);
			ITEM(CUP_arifle_M16A4_GL, 2250, 9); 

			ITEM(CUP_arifle_AUG_A1, 2500, 6);

		};

		class sniperRiflesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_CZ550, 1000, RIFLE_STOCK);
			ITEM(CUP_srifle_M14, 2000, 20);			
			ITEM(CUP_srifle_M14_DMR, 3000, 10);
			ITEM(CUP_srifle_M24_wdl, 3500, 7);
			ITEM(CUP_srifle_G22_wdl, 6000	5);
			ITEM(CUP_srifle_ksvk_PSO3, 8000, 3);
			ITEM(CUP_srifle_M107_Woodland, 10000, 2);
		};

		class mgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_m60, 1800, 25);
			ITEM(CUP_lmg_m249_pip2, 2500, 12);
		};

		class smgFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_MP5A5, 750, RIFLE_STOCK);
			ITEM(CUP_smg_MP5A5_Rail_VFG, 850, 12);
			ITEM(CUP_smg_MP5SD6, 1000, 8);
		};

		class launchersFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_M72A6_Special_Loaded, 650, 35);
			ITEM(CUP_launch_Mk153Mod0, 2000, 20);
			ITEM(CUP_launch_Igla_Loaded, 3250, 12);
			ITEM(CUP_launch_FIM92Stinger_Loaded, 3500, 8);
			ITEM(CUP_launch_Metis, 6000, 5);
			ITEM(CUP_launch_Javelin, 9000, 2);

		};

		class launcherMagazinesFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

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
				stock = 22;
			};
		};

		class navigationFAN
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 500, NN_STOCK);
			ITEM(ItemRadio, 150, NN_STOCK);
			ITEM(CUP_Vector21Nite, 2000, NN_STOCK);

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
				stock = 10;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND {
				price = 2000;
				stock = 7;
			};
			class CUP_optic_AN_PAS_13c1 {
				price = 3500;
				stock = 4;
			};
			class CUP_optic_AN_PAS_13c2 {
				price = 4500;
				stock = 2;
			};
			class CUP_optic_AN_PVS_10_od {
				price = 5000;
				stock = 6;
			};
			class CUP_optic_CWS {
				price = 4000;
				stock = 5;
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
			class 1Rnd_HE_Grenade_shell {
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

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class CUP_20Rnd_762x51_FNFAL_M {
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
			class CUP_45Rnd_Sa58_M {
				price = 75;
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
			class CUP_20Rnd_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_5Rnd_762x51_M24 {
				price = 50;
				stock = 24;
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
		};
		class miscFAN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(U_I_FullGhillie_ard, 250, 40);

			ITEM(U_I_FullGhillie_lsh, 250, 40);

			ITEM(U_I_FullGhillie_sard, 250, 40);

			ITEM(U_I_GhillieSuit, 250 40);

			ITEM(B_Carryall_mcamo, 20, 25);
			ITEM(B_Carryall_khk, 20, 45);

			ITEM(V_TacVest_blk, 500, 35);


			ITEM(G_Diving, 100, 70);
			ITEM(V_RebreatherIA, 600, 25);
			ITEM(U_B_survival_uniform, 50, 25);
			ITEM(U_I_Wetsuit, 150, 15);

			ITEM(HandGrenade, 20, MISC_STOCK);

			ITEM(IEDUrbanSmall_Remote_Mag, 10, MISC_STOCK);
			ITEM(IEDLandSmall_Remote_Mag, 10, MISC_STOCK);
			ITEM(IEDLandBig_Remote_Mag, 20, MISC_STOCK);
			ITEM(IEDUrbanBig_Remote_Mag, 20, MISC_STOCK);

			ITEM(SatchelCharge_Remote_Mag, 100, 32);
			ITEM(SLAMDirectionalMine_Wire_Mag, 80, 30);
			ITEM(ATMine_Range_Mag, 200, 25);
			ITEM(APERSMine_Range_Mag, 750, 50);
			ITEM(APERSBoundingMine_Range_Mag, 500, 35);
			ITEM(APERSTripMine_Wire_Mag, 125, 40);
			
			ITEM(I_UavTerminal, 1000, 15);
			ITEM(O_UavTerminal, 1000, 15);
			ITEM(B_UavTerminal, 000, 15);

		};