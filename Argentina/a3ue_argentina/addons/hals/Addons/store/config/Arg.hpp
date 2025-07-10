		class handgunsArg
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_handguns"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(acfaa_bhipower_base, 150, PISTOL_STOCK);
		};

		class riflesArg 
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_rifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(acfaa_steyr_a1, 850, RIFLE_STOCK);
			ITEM(acfaa_steyr_a2, 850, RIFLE_STOCK);
			ITEM(acfaa_steyr_a2_car, 850, RIFLE_STOCK);
			ITEM(acfaa_steyr_a1_car, 850, RIFLE_STOCK);

			ITEM(acfaa_ddmk18_grip, 800, RIFLE_STOCK);
			ITEM(acfaa_ddm4a1_grip, 700, RIFLE_STOCK);
			ITEM(acfaa_ddm4a1, 700, RIFLE_STOCK);
			ITEM(ACFAA_M4A3, 650, RIFLE_STOCK);
			ITEM(ACFAA_M4A1_M203_F, 700, RIFLE_STOCK);
			ITEM(ACFAA_M16A2, 600, RIFLE_STOCK);

			ITEM(ACFAA_FAMA_GL, 600, RIFLE_STOCK);
			ITEM(ACFAA_FAMA_base, 500, RIFLE_STOCK);
			ITEM(ACFAA_FAMCA, 500, RIFLE_STOCK);

			ITEM(ACFAA_FNFAL_PARA, 500, RIFLE_STOCK);
			ITEM(ACFAA_FNFAP, 500, RIFLE_STOCK);
			ITEM(ACFAA_FNFAL, 450, RIFLE_STOCK);
		};

		class sniperRiflesArg
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_sniperRifles"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(acfaa_dd5v4, 900, RIFLE_STOCK);
			ITEM(ACFAA_FAMTD_CL, 800, RIFLE_STOCK);
			ITEM(ACFAA_FAMTD_CP, 800, RIFLE_STOCK);
		};

		class mgArg
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_mgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(acfaa_m249, 1000, RIFLE_STOCK);
			ITEM(acfaa_fnmag_rail, 800, RIFLE_STOCK);
		};

		class smgArg
		{
			displayName = __EVAL(formatText ["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_smgs"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(acfaa_mp5sd_base, 400, RIFLE_STOCK);
			ITEM(ACFAA_COLT_M4_SMG, 350, RIFLE_STOCK);
			ITEM(acfaa_fmk3, 300, RIFLE_STOCK);

		};

		class magazinesArg
		{
			displayName = __EVAL(formatText["%1 %2", localize "STR_A3AU_Vanilla", localize "STR_A3AU_magazines"]);
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////

			class acfaa_13Rnd_9x19_Mag {
					price = 20;
					stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////

			class acfaa_20Rndfal_762x51_Mag {
					price = 50;
					stock = MAGAZINE_STOCK;
			};
			class acfaa_20Rndfal_762x51_T_Mag {
					price = 55;
					stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class acfaa_20rnd_762x51_dd5v4_993_AP_Mag {
				price = 70;
				stock = MAGAZINE_STOCK;
			};
			class acfaa_20rnd_762x51_dd5v4_MK319_Mag {
				price = 80;
				stock = MAGAZINE_STOCK;
			};
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////

			class acfaa_100Rnd_762x51_T_Mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class acfaa_45Rnd_9x19_FMK3_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class acfaa_30Rnd_9x19_FMJ_Mag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class acfaa_32Rnd_9x19_JHP_Mag {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
		};