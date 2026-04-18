class mod_unlimited_base : forbidden_unlimited_base 
{
    addons[] = {"Required CfgPatches entry(s)"};
};

class mod_limited_base : forbidden_limited_base 
{
    addons[] = {"Required CfgPatches entry(s)"};
};

// Can be weapon, magazine, vest, etc. Basically anything that can either go in the arsenal or a crate

class V_PlateCarrierGL_blk : mod_unlimited_base {}; // Will not appear in crates, but can be unlimited in the arsenal
class V_PlateCarrierGL_rgr : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierGL_mtp : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrier1_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrier1_rgr : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrier2_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrier2_rgr : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierSpec_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierSpec_rgr : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierSpec_mtp : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierL_CTRG : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierH_CTRG : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierIAGL_dgtl : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierIAGL_oli : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierIA1_dgtl : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrierIA2_dgtl : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVestIR_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_RebreatherIA : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_RebreatherIR : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_RebreatherB : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVest_brn : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVest_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVest_khk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVest_oli : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_TacVest_blk_POLICE : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_I_G_resistanceLeader_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_PlateCarrier_Kerry : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class V_Press_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_Modular_verde : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_Modular_tan : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_Modular_verde2 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_Modular_tan2 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_MarronArg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_MarronArgIR : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_multicamarg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_multicamargir : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_negroarg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_negroargir : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_Tanarg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_Tanargir : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_verdearg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class PlateCarrier_verdeargir : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class hgun_PDW2000_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_TRG20_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20_plain_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20_GL_plain_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20_GL_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20C_plain_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Mk20C_Fsrifle_GM6_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_GM6_camo_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_GM6_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_TRG21_GL_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Katiba_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Katiba_GL_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_Katiba_C_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_LRR_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_LRR_camo_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_EBR_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_Black_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_GL_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_GL_Black_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_SW_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MX_SW_Black_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MXC_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MXC_Black_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MXM_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_MXM_Black_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class LMG_Zafir_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_hex : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_khaki : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_TR_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_TR_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_TR_hex : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03C_TR_khaki : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_hex : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_khaki : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_TR_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_TR_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_TR_hex : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_03_TR_khaki : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_SDAR_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_02_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class LMG_Mk200_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class arifle_TRG21_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class SMG_01_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class srifle_DMR_01_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACFAA_FAMA_base : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACFAA_FAMA_GL : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACFAA_FAMCA : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACFAA_FAMTD_CL : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACFAA_FAMTD_CP : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_dd5v4 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_ddm4a1 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_ddm4a1_grip : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_ddmk18 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_ddmk18_grip : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_steyr_a2 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_steyr_a2_car : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class optic_NVS : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class optic_tws : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class optic_tws_mg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class optic_Yorris : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class optic_Nightstalker : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
 
class launch_NLAW_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_RPG32_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_I_Titan_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_O_Titan_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_O_Titan_short_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_I_Titan_short_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class launch_B_Titan_short_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class hgun_ACPC2_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class hgun_P07_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class hgun_Pistol_heavy_01_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class H_HelmetSpecO_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecO_ocamo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_camo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_desert : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_grass : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_sand : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_snakeskin : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetCrew_I : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetCrew_O : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetCrew_B : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetLeaderO_ocamo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetLeaderO_oucamo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB_blk : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB_paint2 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB_paint1 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB_sand : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetSpecB_snakeskin : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_CrewHelmetHeli_I : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_CrewHelmetHeli_O : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_CrewHelmetHeli_B : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetHeli_I : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetHeli_O : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetHeli_B : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light_black : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light_desert : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light_grass : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light_sand : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetB_light_snakeskin : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetFighter_I : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetFighter_O : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_PilotHelmetFighter_B : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetO_ocamo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class H_HelmetO_oucamo : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHMARPAT : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHMulticamSelva : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHMulticam : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHNegro_Arg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHPatagonico : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHTan_Arg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Casco_ECHVerde_Arg : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class ItemGPS : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class I_UavTerminal : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class O_UavTerminal : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class B_UavTerminal : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Rangefinder : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class Laserdesignator : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACE_VectorDay : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACE_Vector : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class ACE_Yardage450 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class NVGoggles_OPFOR : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class NVGoggles : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class NVGoggles_INDEP : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal




class I_UAV_01_backpack_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class O_UAV_01_backpack_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class B_UAV_01_backpack_F : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

class acfaa_anavs9 : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_anpvs14_monocular : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal
class acfaa_anpvs7d : mod_limited_base {}; // Will not appear in crates, and can't be unlimited in the arsenal

