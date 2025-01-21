		class handgunsBLN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";
			ITEM(CUP_hgun_TEC9, 100, PISTOL_STOCK);
			ITEM(CUP_hgun_TEC9_FA, 250, PISTOL_STOCK);
        };

		class riflesBLN
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(sgun_HunterShotgun_01_F, 100, RIFLE_STOCK);
			ITEM(sgun_HunterShotgun_01_sawedoff_F, 75, RIFLE_STOCK);

			ITEM(CUP_sgun_CZ584, 125, RIFLE_STOCK);
			ITEM(CUP_sgun_CZ584_RIS, 175, RIFLE_STOCK);

			ITEM(CUP_srifle_Remington700, 150, RIFLE_STOCK);

			ITEM(CUP_arifle_SAIGA_MK03_Wood, 175, RIFLE_STOCK);
			ITEM(CUP_arifle_SIAGE_MK03_Wood_top_rail, 200, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061_wooden, 300, 10);
			ITEM(CUP_arifle_FNFAL5061_railed, 500, 5);

			ITEM(CUP_arifle_XM16E1, 300, 15);
			ITEM(CUP_arifle_M16A1, 400, 10);
			ITEM(CUP_arifle_M16A1GL, 550, 5);

			ITEM(CUP_arifle_TYPE_56_2_Early, 600, 15);
			ITEM(CUP_arifle_AK47_Early, 650, 10);

			ITEM(CUP_arifle_Sa58_sporter_compact, 200, 20);    
			ITEM(CUP_arifle_Sa58s, 300, 15);          
			ITEM(CUP_arifle_Sa58s_rearris, 350, 10);

			ITEM(CUP_glaunch_M79, 200, 10);
		};

		class sniperRiflesBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_CZ550, 1000, RIFLE_STOCK);
			ITEM(CUP_srifle_CZ550_rail, 400, RIFLE_STOCK);

			ITEM(CUP_srifle_LeeEnfield, 400, RIFLE_STOCK);
			ITEM(CUP_srifle_LeeEnfield_rail, 500, RIFLE_STOCK);
			ITEM(CUP_srifle_Mosin_Nagant, 500, RIFLE_STOCK);

			ITEM(CUP_srifle_M14, 1050, 7);

			ITEM(CUP_SKS, 750, 5);
			ITEM(CUP_SKS_rail, 900, 2);

			
		};

		class smgBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_smg_M3A1_blk, 150, RIFLE_STOCK);
			ITEM(CUP_smg_M3A1_grn, 150, RIFLE_STOCK);
			ITEM(CUP_smg_M3A1_snd, 150, RIFLE_STOCK);

			ITEM(CUP_smg_saiga9, 125, RIFLE_STOCK);

			ITEM(CUP_smg_Mac10, 250, RIFLE_STOCK);
			ITEM(CUP_smg_Mac10_rail, 300, RIFLE_STOCK);


		};

		class launchersBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_launchers"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(CUP_launch_RPG18, 150, LAUNCHER_STOCK);

			ITEM(CUP_launch_RShG2, 200, LAUNCHER_STOCK);
			ITEM(CUP_launch_RPG26, 200, LAUNCHER_STOCK);

			ITEM(CUP_launch_M72A6_Special, 300, LAUNCHER_STOCK);

			ITEM(CUP_launch_M136, 400, 15);

			ITEM(CUP_launch_RPG7V, 600, 10);

			ITEM(CUP_launch_9K32Strela, 1750, 12);

		};

		class launcherMagazinesBLN 
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
			class CUP_PG7VR_M {
				price = 300;
				stock = 50;
			};
			class CUP_TBG7V_M {
				price = 450;
				stock = 50;
			};
		};

		class navigationBLN
		{
			displayName = __EVAL(formatText ["%1 %2, %3 %4 %5", localize "STR_A3AU_Vanilla", localize "STR_A3AU_gps", localize "STR_A3AU_binoculars", localize "STR_A3AU_and", localize "STR_A3AU_nvgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";
			ITEM(ItemGPS, 500, NN_STOCK);
			ITEM(ItemRadio, 150, NN_STOCK);
			ITEM(CUP_Vector21Nite, 500, NN_STOCK);
			ITEM(CUP_SOFLAM, 700, NN_STOCK);
			ITEM(CUP_LRTV, 800, NN_STOCK);
			ITEM(CUP_NVG_PVS15_black, 500, NN_STOCK);
		};

		class muzzlesBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_muzzles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";
			
			ITEM(muzzle_snds_L, 400, 28);
			ITEM(muzzle_snds_B, 500, 28);
			ITEM(muzzle_snds_M, 550, 25);
		};

		class opticsBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sights"]);
			picture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\ItemOptic_ca.paa";

			class CUP_optic_SUSAT {
				price = 250;
				stock = NN_STOCK;
			};
			class CUP_optic_SB_3_12x50_PMII_Tan {
				price = 500;
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
				price = 700;
				stock = NN_STOCK;
			};
			class CUP_optic_PGO7V3 {
				price = 150;
				stock = NN_STOCK;
			};
			class CUP_optic_PSO_3 {
				price = 350;
				stock = 5;
			};
			class CUP_optic_1p63 {
				price = 100;
				stock = 15;
			};
			class CUP_optic_PEM {
				price = 70;
				stock = 15;
			};		
		};

		class magazinesBLN 
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 50;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Shotgun
			///////////////////////////////////////////////////////
			class CUP_1Rnd_12Gauge_Pellets_No0_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};			
			class CUP_1Rnd_12Gauge_Pellets_No00_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};				
			class CUP_1Rnd_12Gauge_Pellets_No1_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};				
			class CUP_1Rnd_12Gauge_Pellets_No2_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};				
			class CUP_1Rnd_12Gauge_Pellets_No3_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};				
			class CUP_1Rnd_12Gauge_Pellets_No4_Bird {
				price = 1;
				stock = MAGAZINE_STOCK;
			};	
			class CUP_1Rnd_12Gauge_Pellets_No4_Buck {
				price = 2;
				stock = MAGAZINE_STOCK;
			};				
			class CUP_1Rnd_12Gauge_Slug {
				price = 3;
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

			class CUP_32Rnd_9x19_TEC9 {
				price = 30;
				stock = 50;
			};			

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

				class CUP_1Rnd_762x51_CZ584 {
				price = 2;
				stock = MAGAZINE_STOCK;
			};
				class CUP_6Rnd_762x51_R700 {
				price = 15;
				stock = MAGAZINE_STOCK;
			};
				class CUP_10Rnd_762x39_SaigaMk03_M {
				price = 20;
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
			class CUP_15Rnd_Sa58_M  {
				price = 20;
				stock = MAGAZINE_STOCK;
			};
			class CUP_15Rnd_Sa58_M_TracerR  {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_Sa58_M  {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_Sa58_M_TracerR  {
				price = 35;
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
			class CUP_30Rnd_762x39_AK47_M {
				price = 60;
				stock = 85;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M {
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

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////

			class CUP_5x_22_LR_17_HMR_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_10x_303_M {
				price = 40;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_DMR {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_10Rnd_762x39_SKS_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_5Rnd_762x54_Mosin_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class CUP_30Rnd_45ACP_Green_Tracer_M3A1_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_M3A1_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_10Rnd_9x19_Saiga9 {
				price = 10;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_MAC10_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
		};
		class miscBLN 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_misc"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(U_I_FullGhillie_ard, 250, 40);

			ITEM(U_I_FullGhillie_lsh, 250, 40);

			ITEM(U_I_FullGhillie_sard, 250, 40);

			ITEM(U_I_GhillieSuit, 250, 40);

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