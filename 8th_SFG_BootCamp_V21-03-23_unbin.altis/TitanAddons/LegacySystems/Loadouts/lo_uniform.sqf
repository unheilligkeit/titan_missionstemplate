private ["_ftl", "_ope", "_pil", "_rek", "_listMTPUni", "_listWTPUni", "_listJTPUni",
		"_aC1", "_ao1", "_ao2", "_ao3", "_ao4", "_ao5", "_ao6", "_ao7", "_ao8", "_ao9",
		"_ao10", "_ao11", "_ao12", "_ao13", "_ao14", "_ao15", "_ao16", "_ao17", "_ao18",
		"_ao19", "_ao20", "_ao21", "_ao22", "_ao23", "_ao24", "_ao25", "_ao26", "_ao27",
		"_ao28", "_ao29", "_ao30", "_ao31", "_aP1", "_aP2", "_aP3", "_aP4", "_aP5",
		"_aP6","_aP7","_aP8","_aP9","_aRP", "_aR"];
/***********************************************************************************************
REIHENFOLGE EINHALTEN!!!

Position - Umgebung - Objekt
----------------------------
1 - MTP	- Uniform
2 - MTP - Weste
3 - MPT - Helm
4 - MTP - Halstuch
5 - MTP - Brille

6 - WTP - Uniform
7 - WTP - Weste
8 - WTP - Helm
9 - WTP - Halstuch
10 - WTP - Brille

11 - JTP - Uniform
12 - JTP - Weste
13 - JTP - Helm
14 - JTP - Halstuch
15 - JTP - Brille

16 - TDA - Uniform
17 - TDA - Weste
18 - TDA - Helm
19 - TDA - Halstuch
20 - TDA - Brille

-----------------------------------------------------------------------------------------------
Variable aufbau zur Verständnis!
	
	_aC1 =	a --> ARRAY		--> Angabe das es sich um eine Array handelt.
			C --> KLASSE	--> Definiert die Position der Unit, C = FTL, O = Operator, usw.
			1 --> NUMMER	--> Die Unit Nummer.

-----------------------------------------------------------------------------------------------

***********************************************************************************************
***********************************************************************************************
								*** SETTINGS ***
***********************************************************************************************
***********************************************************************************************/

//---------------------------------------------------------------------------------------------
// Unit eintragen die FIX die gewünschte Position besitzen sollen!		--- HARDCODE FIND DOWN!
//---------------------------------------------------------------------------------------------
/*
//			---	Fireteamleader ---
_ftlA = ["C1"];
//			---	Operator ---
_opeA = ["o1", "o2", "o3", "o4", "o5", "o6", "o7", "o8", "o9", "o10", "o11", "o12", "o13", "o14", "o15", "o16", "o17", "o18", "o19", "o20", "o21", "o22", "o23", "o24", "o25", "o26", "o27", "o28",
		 "o29", "o30", "o31", "o32", "o33", "o34", "o35", "o36", "o37", "o38", "o39", "o40"];
//			---	Piloten ---
_pilA = ["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "p10"];
//
_rpilA = ["rp1", "rp2", "rp3", "rp4"];
//			---	Rekruten ---
_rekA = ["r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10"];
*/
//---------------------------------------------------------------------------------------------
//				Setzt die Rucksäcke zurück nach der Klassen auswahl.
//	Klasse definieren in die Liste, nicht definierte Klassen erhalten ihren Rucksack über
//	die lo_uniform. Ist dort auch keine angegeben, so erhalten sie keinen Rucksack.
//	Möglichkeiten:
//		"ptl", "ftl", "sql", "cct", "tac", "atmo", "wpn", "eng", "soldier", "rec", "mark", "spot", "mff", "diver", "fix", "rot"
//---------------------------------------------------------------------------------------------
_vBPres = ["ptl", "ftl", "sql", "cct", "tac", "atmo", "wpn", "eng", "soldier", "rec", "mark", "spot", "mff", "diver", "fix", "rot"];

//---------------------------------------------------------------------------------------------
// Aktiviere die sofort Heilung bei einer neu Ausrüstung.
//---------------------------------------------------------------------------------------------
//_vFH = true;

//---------------------------------------------------------------------------------------------
// Ausrüstungen definieren wie oben beschrieben, leer lassen wenn nicht benötigt.
//---------------------------------------------------------------------------------------------
//			---	FIRETEAMLEADER	---

//PL T1 Sharp
_aC1 = [
	//MTP
	"MTP_V3_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"G_Balaclava_TI_blk_F",
	"Oakley_Tan_Dark",
	
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_02_mca",
	"Balaclava_wtp2",
	"Oakley_WTP_Dark",
	
	//JTP
	"JTP_V1_Neck",
	"",
	"milgp_h_airframe_02_RGR",
	"G_Balaclava_TI_blk_F",
	"Oakley_RGR_Dark",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_CPT",
	"Thermals_UA_Blk",
	""
];
//-----------------------------------------------------------------------------------
//			---	OPERATOR ---
//
_ao1 = [
	//MTP
	"MTP_V3_Sleeved",
	"",
	"milgp_h_airframe_04_goggles_khk_hexagon",
	"Neck_Plain3",
	"mFrame_Oakley_Embr",
	
	//WPT
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_goggles_mca",
	"Face_Wear_Blk",
	"mFrame_Oakley_Embr",
	
	//JTP
	"JTP_V1_Sleeved",
	"",
	"milgp_h_airframe_04_goggles_RGR_hexagon",
	"Neck_Plain3",
	"mFrame_Oakley_Embr",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"milgp_v_battle_belt_assaulter_RGR",
	"TITAN_Beret_CPT",
	"G_Aviator",
	""
];

//
_ao2 = [
	//MTP
	"MTP_V1_Full",
	"",
	"HALO_MOWHAK",
	"Balaclava_skull",
	"Oakley_RGR_Clear",
	
	//WPT
	"wtp_V1_Neck",
	"",
	"HALO_MOWHAK",
	"Balaclava_skull",
	"Oakley_RGR_Clear",
	
	//JTP
	"JTP_V1_Full",
	"",
	"HALO_MOWHAK",
	"Balaclava_skull",
	"Oakley_RGR_Clear",
	
	//TDA
	"B_FEM_NATO_M81",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao3 = [
	//MTP
	"MTP_V2_Full",
	"",
	"milgp_h_airframe_06_RGR_hexagon",
	"Balaclava_mtp",
	"Oakley_MTP_Dark",
	
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_06_mca",
	"Balaclava_wtp2",
	"Oakley_MTP_Dark",
	
	//JTP
	"JTP_V2_Full",
	"",
	"milgp_h_airframe_06_RGR_hexagon",
	"Balaclava_jtp1",
	"Oakley_MTP_Dark",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao4 = [
	//MTP
	"MTP_V3_Full",
	"",
	"HALO_MOWHAK_2",
	"milgp_f_face_shield_tactical_shemagh_CB",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_01_mca",
	"milgp_f_face_shield_shades_shemagh_BLK",
	"Tac_Goggles_Blk_Drk",
	
	//JTP
	"JTP_V1_Neck",
	"",
	"HALO_MOWHAK_2",
	"milgp_f_face_shield_tactical_shemagh_CB",
	"",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao5 = [
	//MTP
	"MTP_V4_Full",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"Balaclava_green",
	"Oakley_RGR_Dark",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"Balaclava_wtp2",
	"Oakley_RGR_Dark",
	
	//JTP
	"JTP_V2_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"Balaclava_green",
	"Oakley_RGR_Dark",
	
	//TDA
	"B_FEM_NATO_M81_rolled",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao6 = [
	//MTP
	"MTP_V1_Full",
	"",
	"milgp_h_airframe_02_goggles_CB_Hexagon",
	"Neck_Plain_Atacs2",
	"mFrame_Oakley_Drk",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_goggles_mca",
	"Balaclava_wtp3",
	"mFrame_Oakley_Drk",
	
	//JTP
	"JTP_V2_Full",
	"",
	"milgp_h_airframe_02_goggles_CB_hexagon",
	"Neck_Plain_Atacs2",
	"mFrame_Oakley_Drk",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao7 = [
	//MTP
	"MTP_V2_Full",
	"",
	"HALO_MOWHAK",
	"A3_Balaclava_od",
	"",
	
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_05_goggles_mca",
	"Balaclava_wtp2",
	"",
	
	//JTP
	"JTP_V1_sleeved",
	"",
	"HALO_MOWHAK",
	"A3_Balaclava_od",
	"",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao8 = [
	//MTP
	"MTP_V3_Full",
	"",
	"milgp_h_airframe_04_RGR",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_mca",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_04_RGR",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao9 = [
	//MTP
	"MTP_V4_Full",
	"",
	"OpsC_MTP_v4",
	"Balaclava_mtp",
	"Oakley_Blk_Dark",

	//WTP
	"WTP_V1_Neck",
	"",
	"OpsC_WTP_v4",
	"Balaclava_wtp3",
	"Oakley_Blk_Dark",

	//JTP
	"JTP_V2_Full",
	"",
	"OpsC_JTP_v4",
	"Balaclava_jtp2",
	"Oakley_Blk_Dark",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao10 = [
	//MTP
	"MTP_V3_Full",
	"",
	"milgp_h_airframe_06_khk_hexagon",
	"milgp_f_face_shield_shemagh_MC",
	"Oakley_Tan_Clear",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_06_mca",
	"Balaclava_wtp1",
	"Oakley_WTP_Clear",

	//JTP
	"JTP_V2_Full",
	"",
	"milgp_h_airframe_03_RGR_hexagon",
	"milgp_f_face_shield_shemagh_RGR",
	"Oakley_Blk_Clear",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_2LT",
	"Neck_plain2",
	""
];

//
_ao11 = [
	//MTP
	"MTP_V3_Sleeved",
	"",
	"milgp_h_airframe_04_goggles_RGR",
	"Balaclava_green",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_goggles_mca",
	"Balaclava_wtp2",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_04_goggles_RGR",
	"Balaclava_jtp1",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_2LT",
	"Neck_plain4",
	""
];

//
_ao12 = [
	//MTP
	"MTP_V2_Full",
	"",
	"milgp_h_airframe_02_CB",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//JTP
	"JTP_V2_Neck",
	"",
	"milgp_h_airframe_02_CB",
	"milgp_f_face_shield_tactical_shemagh_RGR",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_2LT",
	"",
	""
];

//
_ao13 = [
	//MTP
	"MTP_V4_Sleeved",
	"",
	"ABS_Base_Jump_peltor_tan",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_05_goggles_mca",
	"Balaclava_wtp1",
	"",

	//JTP
	"JTP_V1_sleeved",
	"",
	"ABS_Base_Jump_peltor_tan",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"",
	""
];

//
_ao14 = [
	//MTP
	"MTP_V2_Full",
	"",
	"HALO_MOWHAK",
	"A3_Balaclava_tan",
	"Oakley_MTP_Clear",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_mca",
	"Neck_Plain2",
	"",

	//JTP
	"JTP_V2_Full",
	"",
	"HALO_MOWHAK",
	"A3_Balaclava_tan",
	"Oakley_MTP_Clear",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_2LT",
	"",
	""
];

//
_ao15 = [
	//MTP
	"MTP_V1_Sleeved",
	"",
	"Mich2001_strap_des",
	"shesh_face_od",
	"Oakley_MTP_Clear",
	
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_02_mca",
	"Balaclava_ghost",
	"Oakley_WTP_Clear",

	//JTP
	"JTP_V1_Sleeved",
	"",
	"Mich2001_strap_des",
	"shesh_face_od",
	"Oakley_Olv_Clear",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao16 = [
	//MTP
	"MTP_V2_Sleeved",
	"",
	"milgp_h_airframe_04_goggles_MC",
	"Balaclava_ghost",
	"mFrame_Oakley_Embr",

	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_04_goggles_mca",
	"Balaclava_ghost",
	"mFrame_Oakley_Embr",
	
	//JTP
	"JTP_V2_Neck",
	"",
	"milgp_h_airframe_04_goggles_RGR_hexagon",
	"Balaclava_ghost",
	"mFrame_Oakley_Embr",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao17 = [
	//MTP
	"MTP_V4_Full",
	"",
	"milgp_h_opscore_04_goggles_RGR_hexagon",
	"Balaclava_green",
	"",
	
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_opscore_04_goggles_mca",
	"Balaclava_wtp2",
	"",
	
	//JTP
	"JTP_V2_Neck",
	"",
	"milgp_h_opscore_04_goggles_RGR_hexagon",
	"Balaclava_green",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao18 = [
	//MTP
	"MTP_V4_sleeved",
	"",
	"Mich2001_strap_od",
	"A3_Balaclava_od",
	"mFrame_Oakley_Drk",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_mca",
	"A3_Balaclava_od",
	"mFrame_Oakley_Drk",
	
	//JTP
	"JTP_V2_Full",
	"",
	"Mich2001_strap_od",
	"A3_Balaclava_od",
	"mFrame_Oakley_Drk",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

//
_ao19 = [
	//MTP
	"MTP_V2_Full",
	"",
	"milgp_h_airframe_02_goggles_RGR_hexagon",
	"G_Balaclava_TI_tna_F",
	"",
	//WTP
	"WTP_V1_Neck",
	"",
	"milgp_h_airframe_02_goggles_mca",
	"Balaclava_wtp1",
	"",
	//JTP
	"JTP_V1_sleeved",
	"",
	"OpsC_JTP_v4",
	"Milgp_f_face_shield_tactical_shemagh_RGR",
	"",
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

// Shrimpi
_ao20 = [
	//MTP
	"MTP_V3_Full",
	"",
	"Mohawk_Core_cyalumen_OD",
	"shesh_face_tan",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"OpsC_WTP_v2",
	"milgp_f_face_shield_tactical_BLK",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_cyalumen_OD",
	"shesh_face_tan",
	"",
	
	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

// Operator
_ao21 = [
	//MTP
    "MTP_V3_Full",
	"",
	"OPS_CORE_strap_F",
	"A3_Balaclava_tan",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"OPS_CORE_strap_F",
	"A3_Balaclava_tan",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao22 = [
	//MTP
    "MTP_V3_Full",
	"",
	"Mohawk_Core_ESS_MTP",
	"A3_Balaclava_tan",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_MTP",
	"A3_Balaclava_tan",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];

// Operator
_ao23 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mich2001_strap_des",
	"shesh_cover_tan",
	"Oakley_RGR_Dark",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mich2001_strap_des",
	"shesh_cover_tan",
	"Oakley_RGR_Dark",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao24 = [
	//MTP
    "MTP_V3_Sleeved",
	"",
	"Mich2001_strap_od",
	"SFG_Tac_BeardD",
	"",

	//WTP
	"WTP_V1_Neck",
	"",
	"OpsC_WTP_v3",
	"BALA_SWAT_ESS_TAN",
	"",

	//JTP
	"JTP_V1_Sleeved",
	"",
	"Mich2001_strap_od",
	"SFG_Tac_BeardD",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao25 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_tan",
	"A3_Balaclava_tan",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_tan",
	"A3_Balaclava_tan",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao26 = [
	//MTP
    "MTP_V2_Full",
	"",
	"OPS_CORE_strap_F",
	"G_Balaclava_lowprofile",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"OPS_CORE_strap_F",
	"G_Balaclava_lowprofile",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao27 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mich2001_strap_snk",
	"A3_Balaclava_tan",
	"Oakley_Tan_Dark",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mich2001_strap_snk",
	"A3_Balaclava_tan",
	"Oakley_Tan_Dark",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao28 = [
	//MTP
    "MTP_V2_Full",
	"",
	"HALO_MOWHAK",
	"Balaclava_ghost",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_04_mca",
	"Balaclava_ghost",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"HALO_MOWHAK",
	"Balaclava_ghost",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao29 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_cover_mtp",
	"A3_Balaclava_tan",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_cover_mtp",
	"A3_Balaclava_tan",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao30 = [
	//MTP
    "MTP_V2_Full",
	"",
	"OPS_CORE_strap_F",
	"shesh_face_tan",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"OPS_CORE_strap_F",
	"shesh_face_tan",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao31 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao32 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao33 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao34 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao35 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao36 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao37 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao38 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao39 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
// Operator
_ao40 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao41 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao42 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao43 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao44 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao45 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao46 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao47 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao48 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao49 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
_ao50 = [
	//MTP
    "MTP_V2_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"Mohawk_Core_ESS_ce",
	"A3_Balaclava_od",
	"",

	//TDA
	"U_B_CombatUniform_mcam",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	""
];
//-----------------------------------------------------------------------------------
//			---	PILOTEN ---
_aP1 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",

	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_CPT",
	"",
	"mFrame_Oakley_Drk"
];
_aP2 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP3 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

    //JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP4 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP5 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP6 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP7 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mcam",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP8 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mcam",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP9 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mcam",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP10 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mcam",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP11 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP12 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP13 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];
_aP14 = [
	//MTP
	"MTP_V3_Neck",
	"",
	"milgp_h_airframe_02_RGR_hexagon",
	"milgp_f_face_shield_goggles_BLK",
	"",
	
	//WTP
	"WTP_V1_Full",
	"",
	"milgp_h_airframe_02_mca",
	"milgp_f_face_shield_goggles_RGR",
	"",
	
	//JTP
	"JTP_V1_Full",
	"",
	"milgp_h_airframe_02_RGR",
	"milgp_f_face_shield_goggles_RGR",
	"",

	//TDA
	"U_B_HeliPilotCoveralls",
	"V_Rangemaster_belt",
	"TITAN_Beret_Enlisted",
	"",
	"mFrame_Oakley_Drk"
];

/*************************************************************************************************************
		FUNCTIONS --- DONT TOUCH THIS
*************************************************************************************************************/
/*
// Change and format Array to String
_ftl = format ["%1", _ftlA] splitString "(""[],)";
_ope = format ["%1", _opeA] splitString "(""[],)";
_pil = format ["%1", _pilA] splitString "(""[],)";
_rek = format ["%1", _rekA] splitString "(""[],)";
*/
//---------------------------------------------------------------------------------
//	ZUWEISUNG DER Uniform!
//---------------------------------------------------------------------------------
_aC1_1 = _aC1 select 0; _aC1_2 = _aC1 select 5; _aC1_3 = _aC1 select 10; 
_ao1_1 = _ao1 select 0; _ao1_2 = _ao1 select 5; _ao1_3 = _ao1 select 10; 
_ao2_1 = _ao2 select 0; _ao2_2 = _ao2 select 5; _ao2_3 = _ao2 select 10; 
_ao3_1 = _ao3 select 0; _ao3_2 = _ao3 select 5; _ao3_3 = _ao3 select 10; 
_ao4_1 = _ao4 select 0; _ao4_2 = _ao4 select 5; _ao4_3 = _ao4 select 10; 
_ao5_1 = _ao5 select 0; _ao5_2 = _ao5 select 5; _ao5_3 = _ao5 select 10; 
_ao6_1 = _ao6 select 0; _ao6_2 = _ao6 select 5; _ao6_3 = _ao6 select 10; 
_ao7_1 = _ao7 select 0; _ao7_2 = _ao7 select 5; _ao7_3 = _ao7 select 10; 
_ao8_1 = _ao8 select 0; _ao8_2 = _ao8 select 5; _ao8_3 = _ao8 select 10; 
_ao9_1 = _ao9 select 0; _ao9_2 = _ao9 select 5; _ao9_3 = _ao9 select 10; 
_ao10_1 = _ao10 select 0; _ao10_2 = _ao10 select 5; _ao10_3 = _ao10 select 10; 
_ao11_1 = _ao11 select 0; _ao11_2 = _ao11 select 5; _ao11_3 = _ao11 select 10; 
_ao12_1 = _ao12 select 0; _ao12_2 = _ao12 select 5; _ao12_3 = _ao12 select 10; 
_ao13_1 = _ao13 select 0; _ao13_2 = _ao13 select 5; _ao13_3 = _ao13 select 10; 
_ao14_1 = _ao14 select 0; _ao14_2 = _ao14 select 5; _ao14_3 = _ao14 select 10; 
_ao15_1 = _ao15 select 0; _ao15_2 = _ao15 select 5; _ao15_3 = _ao15 select 10; 
_ao16_1 = _ao16 select 0; _ao16_2 = _ao16 select 5; _ao16_3 = _ao16 select 10; 
_ao17_1 = _ao17 select 0; _ao17_2 = _ao17 select 5; _ao17_3 = _ao17 select 10; 
_ao18_1 = _ao18 select 0; _ao18_2 = _ao18 select 5; _ao18_3 = _ao18 select 10; 
_ao19_1 = _ao19 select 0; _ao19_2 = _ao19 select 5; _ao19_3 = _ao19 select 10; 
_ao20_1 = _ao20 select 0; _ao20_2 = _ao20 select 5; _ao20_3 = _ao20 select 10; 
_ao21_1 = _ao21 select 0; _ao21_2 = _ao21 select 5; _ao21_3 = _ao21 select 10; 
_ao22_1 = _ao22 select 0; _ao22_2 = _ao22 select 5; _ao22_3 = _ao22 select 10; 
_ao23_1 = _ao23 select 0; _ao23_2 = _ao23 select 5; _ao23_3 = _ao23 select 10;
_ao24_1 = _ao24 select 0; _ao24_2 = _ao24 select 5; _ao24_3 = _ao24 select 10; 
_ao25_1 = _ao25 select 0; _ao25_2 = _ao25 select 5; _ao25_3 = _ao25 select 10; 
_ao26_1 = _ao26 select 0; _ao26_2 = _ao26 select 5; _ao26_3 = _ao26 select 10; 
_ao27_1 = _ao27 select 0; _ao27_2 = _ao27 select 5; _ao27_3 = _ao27 select 10; 
_ao28_1 = _ao28 select 0; _ao28_2 = _ao28 select 5; _ao28_3 = _ao28 select 10; 
_ao29_1 = _ao29 select 0; _ao29_2 = _ao29 select 5; _ao29_3 = _ao29 select 10; 
_ao30_1 = _ao30 select 0; _ao30_2 = _ao30 select 5; _ao30_3 = _ao30 select 10; 
_ao31_1 = _ao31 select 0; _ao31_2 = _ao31 select 5; _ao31_3 = _ao31 select 10;
_ao32_1 = _ao32 select 0; _ao32_2 = _ao32 select 5; _ao32_3 = _ao32 select 10; 
_ao33_1 = _ao33 select 0; _ao33_2 = _ao33 select 5; _ao33_3 = _ao33 select 10; 
_ao34_1 = _ao34 select 0; _ao34_2 = _ao34 select 5; _ao34_3 = _ao34 select 10; 
_ao35_1 = _ao35 select 0; _ao35_2 = _ao35 select 5; _ao35_3 = _ao35 select 10; 
_ao36_1 = _ao36 select 0; _ao36_2 = _ao36 select 5; _ao36_3 = _ao36 select 10; 
_ao37_1 = _ao37 select 0; _ao37_2 = _ao37 select 5; _ao37_3 = _ao37 select 10; 
_ao38_1 = _ao38 select 0; _ao38_2 = _ao38 select 5; _ao38_3 = _ao38 select 10; 
_ao39_1 = _ao39 select 0; _ao39_2 = _ao39 select 5; _ao39_3 = _ao39 select 10; 
_ao40_1 = _ao40 select 0; _ao40_2 = _ao40 select 5; _ao40_3 = _ao40 select 10; 
_ao41_1 = _ao41 select 0; _ao41_2 = _ao41 select 5; _ao41_3 = _ao41 select 10; 
_ao42_1 = _ao42 select 0; _ao42_2 = _ao42 select 5; _ao42_3 = _ao42 select 10; 
_ao43_1 = _ao43 select 0; _ao43_2 = _ao43 select 5; _ao43_3 = _ao43 select 10; 
_ao44_1 = _ao44 select 0; _ao44_2 = _ao44 select 5; _ao44_3 = _ao44 select 10; 
_ao45_1 = _ao45 select 0; _ao45_2 = _ao45 select 5; _ao45_3 = _ao45 select 10; 
_ao46_1 = _ao46 select 0; _ao46_2 = _ao46 select 5; _ao46_3 = _ao46 select 10; 
_ao47_1 = _ao47 select 0; _ao47_2 = _ao47 select 5; _ao47_3 = _ao47 select 10; 
_ao48_1 = _ao48 select 0; _ao48_2 = _ao48 select 5; _ao48_3 = _ao48 select 10; 
_ao49_1 = _ao49 select 0; _ao49_2 = _ao49 select 5; _ao49_3 = _ao49 select 10; 
_ao50_1 = _ao50 select 0; _ao50_2 = _ao50 select 5; _ao50_3 = _ao50 select 10;

_aP1_1 = _aP1 select 0; _aP1_2 = _aP1 select 5; _aP1_3 = _aP1 select 10;
_aP2_1 = _aP2 select 0; _aP2_2 = _aP2 select 5; _aP2_3 = _aP2 select 10;
_aP3_1 = _aP3 select 0; _aP3_2 = _aP3 select 5; _aP3_3 = _aP3 select 10;
_aP4_1 = _aP4 select 0; _aP4_2 = _aP4 select 5; _aP4_3 = _aP4 select 10;
_aP5_1 = _aP5 select 0; _aP5_2 = _aP5 select 5; _aP5_3 = _aP5 select 10;
_aP6_1 = _aP6 select 0; _aP6_2 = _aP6 select 5; _aP6_3 = _aP6 select 10;
_aP7_1 = _aP7 select 0; _aP7_2 = _aP7 select 5; _aP7_3 = _aP7 select 10;
_aP8_1 = _aP8 select 0; _aP8_2 = _aP8 select 5; _aP8_3 = _aP8 select 10;
_aP9_1 = _aP9 select 0; _aP9_2 = _aP9 select 5; _aP9_3 = _aP9 select 10;
_aP10_1 = _aP10 select 0; _aP10_2 = _aP10 select 5; _aP10_3 = _aP10 select 10;
_aP11_1 = _aP11 select 0; _aP11_2 = _aP11 select 5; _aP11_3 = _aP11 select 10;
_aP12_1 = _aP12 select 0; _aP12_2 = _aP12 select 5; _aP12_3 = _aP12 select 10;
_aP13_1 = _aP13 select 0; _aP13_2 = _aP13 select 5; _aP13_3 = _aP13 select 10;
_aP14_1 = _aP14 select 0; _aP14_2 = _aP14 select 5; _aP14_3 = _aP14 select 10;

//---------------------------------------------------------------------------------
//	ZUWEISUNG DER LISTEN!
//---------------------------------------------------------------------------------

_listMTPUni	= [	_aC1_1, 
				_ao1_1, _ao2_1, _ao3_1, _ao4_1, _ao5_1, _ao6_1, _ao7_1,  
				_ao8_1, _ao9_1, _ao10_1, _ao11_1, _ao12_1, _ao13_1, _ao14_1, 
				_ao15_1, _ao16_1, _ao17_1, _ao18_1, _ao19_1, _ao20_1, _ao21_1,
				_ao22_1, _ao23_1, _ao24_1, _ao25_1, _ao26_1, _ao27_1, _ao28_1,
				_ao29_1, _ao30_1, _ao31_1, _ao32_1, _ao33_1, _ao34_1, _ao35_1,
				_ao36_1, _ao37_1, _ao38_1, _ao39_1, _ao40_1, _ao41_1, _ao42_1,
				_ao43_1, _ao44_1, _ao45_1, _ao46_1, _ao47_1, _ao48_1, _ao49_1,
				_ao50_1, 
				_aP1_1, _aP2_1, _aP3_1, _aP4_1, _aP5_1, _aP6_1, _aP7_1,
				_aP8_1, _aP9_1, _aP10_1, _aP11_1, _aP12_1, _aP13_1, _aP14_1
			];
_listWTPUni	= [ _aC1_2,
				_ao1_2, _ao2_2, _ao3_2, _ao4_2, _ao5_2, _ao6_2, _ao7_2,  
				_ao8_2, _ao9_2, _ao10_2, _ao11_2, _ao12_2, _ao13_2, _ao14_2, 
				_ao15_2, _ao16_2, _ao17_2, _ao18_2, _ao19_2, _ao20_2, _ao21_2,
				_ao22_2, _ao23_2, _ao24_2, _ao25_2, _ao26_2, _ao27_2, _ao28_2,
				_ao29_2, _ao30_2, _ao31_2, _ao32_2, _ao33_2, _ao34_2, _ao35_2,
				_ao36_2, _ao37_2, _ao38_2, _ao39_2, _ao40_2, _ao41_2, _ao42_2,
				_ao43_2, _ao44_2, _ao45_2, _ao46_2, _ao47_2, _ao48_2, _ao49_2,
				_ao50_2, 
				_aP1_2, _aP2_2, _aP3_2, _aP4_2, _aP5_2, _aP6_2, _aP7_2,
				_aP8_2, _aP9_2, _aP10_2, _aP11_2, _aP12_2, _aP13_2, _aP14_2
			];
_listJTPUni	= [ _aC1_3,
				_ao1_3, _ao2_3, _ao3_3, _ao4_3, _ao5_3, _ao6_3, _ao7_3,  
				_ao8_3, _ao9_3, _ao10_3, _ao11_3, _ao12_3, _ao13_3, _ao14_3, 
				_ao15_3, _ao16_3, _ao17_3, _ao18_3, _ao19_3, _ao20_3, _ao21_3,
				_ao22_3, _ao23_3, _ao24_3, _ao25_3, _ao26_3, _ao27_3, _ao28_3,
				_ao29_3, _ao30_3, _ao31_3, _ao32_3, _ao33_3, _ao34_3, _ao35_3,
				_ao36_3, _ao37_3, _ao38_3, _ao39_3, _ao40_3, _ao41_3, _ao42_3,
				_ao43_3, _ao44_3, _ao45_3, _ao46_3, _ao47_3, _ao48_3, _ao49_3,
				_ao50_3, 
				_aP1_3, _aP2_3, _aP3_3, _aP4_3, _aP5_3, _aP6_3, _aP7_3,
				_aP8_3, _aP9_3, _aP10_3, _aP11_3, _aP12_3, _aP13_3, _aP14_3
			];
	
 			