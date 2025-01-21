
		class handgunsIONriv
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(CUP_hgun_Deagle, 350, PISTOL_STOCK);

			ITEM(CUP_hgun_MP7, 700, PISTOL_STOCK);
			ITEM(CUP_hgun_MP7_desert, 700, PISTOL_STOCK);
			ITEM(CUP_hgun_MP7_woodland, 700, PISTOL_STOCK);
        };

		class riflesIONriv
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_sgun_AA12, 800, RIFLE_STOCK);

			ITEM(CUP_arifle_AK102, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_AK102_railed, 800, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101, 720, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_railed, 770, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_GL_railed, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_AK19_bicolor, 1750, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A4_Base, 500, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A1_standard_short_black, 600, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A1_camo_carryhandle, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A1_SOMMOD_Grip_green, 850, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A3_camo, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A1_GL_carryhandle_camo, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_M4A1_BUIS_GL, 1200, RIFLE_STOCK);
			ITEM(CUP_arifle_mk18_m203_black, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_G36CA3_afg_wdl, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_G36KA3_grip_hex, 1250, RIFLE_STOCK);

			ITEM(CUP_arifle_Mk16_CQC, 1750, RIFLE_STOCK);
			ITEM(CUP_arifle_Mk16_STD_EGLM, 2250, RIFLE_STOCK);

			ITEM(CUP_arifle_X95, 1500, RIFLE_STOCK);		

			ITEM(CUP_arifle_HK416_Wood, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_HK417_12, 2500, RIFLE_STOCK);
		};

		class sniperRiflesIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_Mk12SPR, 2050, RIFLE_STOCK);
			ITEM(CUP_arifle_HK417_20_Wood, 2400, 20);
			ITEM(CUP_srifle_RSASS_Black, 1900, 15);
			ITEM(CUP_arifle_Mk20_woodland, 2500, 15);
			ITEM(CUP_srifle_M2010_wdl, 3000, 10);
		};

		class mgIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_Mk48_wdl, 2200, RIFLE_STOCK);
			ITEM(CUP_arifle_MG36_wdl, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_HK_M27_VFG, 800, RIFLE_STOCK);
			ITEM(CUP_lmg_minimi_railed, 1200, RIFLE_STOCK);
		};

		class smgIONriv 
		{		
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_MP5A5, 325, RIFLE_STOCK);
			ITEM(CUP_smg_MP5A5_flashlight, 335, RIFLE_STOCK);
			ITEM(CUP_smg_MP5SD6, 375, RIFLE_STOCK);

			ITEM(CUP_smg_MP7, 700, PISTOL_STOCK);
			ITEM(CUP_smg_MP7_desert, 700, PISTOL_STOCK);
			ITEM(CUP_smg_MP7_woodland, 700, PISTOL_STOCK);

			ITEM(CUP_smg_EVO, 600, RIFLE_STOCK);
		};

		class launchersIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_M136, 400, RIFLE_STOCK);
			ITEM(CUP_launch_Mk153Mod0_blk, 1500, RIFLE_STOCK);
			ITEM(CUP_launch_FIM92Stinger, 1500, RIFLE_STOCK);
		};

		class launcherMagazinesIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launcherAmmo"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

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
		};

		class navigationIONriv
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

		class muzzlesIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(CUP_muzzle_snds_M16, 1000, 30);
			ITEM(muzzle_snds_B, 1000, 30);
			ITEM(muzzle_snds_M, 1250, 25);
			ITEM(CUP_muzzle_snds_socom762rc, 1500, 25);
			ITEM(CUP_muzzle_mfsup_Flashhider_762x51_Black, 500, 50);
			ITEM(CUP_muzzle_mfsup_Flashhider_556x45_Black, 500, 50);
		};

		class opticsIONriv 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class CUP_optic_Elcan_reflex {
				price = 500;
				stock = 25;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND {
				price = 1000;
				stock = 15;
			};
			class CUP_optic_SB_3_12x50_PMII_Tan {
				price = 500;
				stock = NN_STOCK;
			};
			class CUP_optic_AC11704_Coyote {
				price = 150;
				stock = NN_STOCK;
			};
			class CUP_optic_HoloBlack {
				price = 100;
				stock = NN_STOCK;
			};
			class CUP_optic_MicroT1 {
				price = 100;
				stock = NN_STOCK;
			};
			class CUP_acc_ANPEQ_2_camo {
				price = 150;
				stock = NN_STOCK;
			};
			class CUP_optic_Elcan_SpecterDR_KF_RMR_coyote {
				price = 400;
				stock = NN_STOCK;
			};		
		};

		class magazinesIONriv 
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

//ADD GP25s
			class CUP_1Rnd_HE_GP25_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeRed_GP25_M {
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
			class CUP_16Rnd_9x19_cz75 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_7Rnd_45ACP_1911 {
				price = 15;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_9x19_EVO {
				price = 30;
				stock = MAGAZINE_STOCK;
			};			
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 30;
				stock = MAGAZINE_STOCK;
			};			
				class 16Rnd_9x21_Mag {
				price = 55;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class CUP_20Rnd_B_AA12_74Slug {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_AA12_HE {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_Emag {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_Emag_Tracer_Green {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_Emag_Tracer_Red {
				price = 45;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_HK417 {
				price = 35;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AK {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_AK {
				price = 45;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_556x45_Tracer_Red_AK19_M  {
				price = 45;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_G36_hex  {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_G36 {
				price = 45;
				stock = MAGAZINE_STOCK;
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
				class CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR_wdl {
				price = 50;
				stock = 50;
			};
				class CUP_20Rnd_762x51_B_SCAR_wdl {
				price = 50;
				stock = 50;
			};
				class CUP_30Rnd_762x51_2_SCAR {
				price = 60;
				stock = 50;
			};
				class CUP_30Rnd_TE1_White_Tracer_762x51_2_SCAR {
				price = 60;
				stock = 50;
			};
				class CUP_50Rnd_TE1_White_Tracer_762x51_SCAR_White_Tracer_762x51_2_SCAR {
				price = 100;
				stock = 50;
			};
				class CUP_50Rnd_762x51_B_SCAR {
				price = 100;
				stock = 50;
			};
				class CUP_30Rnd_556x45_X95 {
				price = 40;
				stock = 50;
			};
			class CUP_30Rnd_556x45_X95_Tracer_Red {
				price = 40;
				stock = 50;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////

			class CUP_20Rnd_762x51_HK417_Camo_Wood {
				price = 50;
				stock = 50;
			};
			class CUP_20Rnd_762x51_B_SCAR {
				price = 50;
				stock = 50;
			};
			class CUP_20Rnd_762x51_B_M110 {
				price = 50;
				stock = 50;
			};
			class CUP_5Rnd_762x67_M2010_M {
				price = 50;
				stock = 50;
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
				price = 40;
				stock = 75;
			};
			class CUP_30Rnd_Green_Tracer_9x19_MP5 {
				price = 45;
				stock = 45;
			};
			class CUP_40Rnd_46x30_MP7 {
				price = 70;
				stock = 50;
			};
			class CUP_20Rnd_46x30_MP7 {
				price = 40;
				stock = 50;
			};
			class CUP_40Rnd_46x30_MP7_Red_Tracer {
				price = 70;
				stock = 50;
			};
			class CUP_40Rnd_46x30_MP7_Green_Tracer {
				price = 70;
				stock = 50;
			};
			class CUP_40Rnd_46x30_MP7_Yellow_Tracer {
				price = 70;
				stock = 50;
			};
		};
		class miscIONriv 
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