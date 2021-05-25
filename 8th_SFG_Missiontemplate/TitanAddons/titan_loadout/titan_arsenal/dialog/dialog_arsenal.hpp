#include "\a3\3DEN\UI\macros.inc"
#include "\a3\3DEN\UI\macroexecs.inc"

class titan_arsenal_gui
{
	idd = 3;
	movingenable = 0;

	class ControlsBackground
	{

		class home_wallpaper: RscPicture
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\titan_background.paa";

			x = 0 + pixelW * pixelGrid * 4.15;
			y = 0 - pixelH * pixelGrid * 1.5;
			w = pixelW * pixelGrid * 65.5;
			h = pixelH * pixelGrid * 53;

		};

		class home_ipad: RscPicture
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\titan_arsenal_pad.paa";

			x = 0 - pixelW * pixelGrid * 7;
			y = 0 - pixelH * pixelGrid * 19;
			w = pixelW * pixelGrid * 87;
			h = pixelH * pixelGrid * 89;

		};

		// Titan Logo
		class logo: TITANLogo
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\TITANLogo.paa";

			x = 0 + pixelW * pixelGrid * 7;
			y = 0;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 10;

		};

		// Header
		class txtHeader: TITAN_ArsenalHeader
		{
			idc = -1;
			text = "     LOADOUT CONFIGURATOR";

			x = 0 + pixelW * pixelGrid * 44;
			y = 0 + pixelH * pixelGrid * 1;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 12;

		};

//================================= units ======================================
		class logo_mtp: TITANLogo
		{
			idc = mtp_model;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\mtp.paa";

			x = 0 - pixelW * pixelGrid * 4;
			y = 0 + pixelH * pixelGrid * 9;
			w = pixelW * pixelGrid * 32;
			h = pixelH * pixelGrid * 32;
		};

		class logo_jtp: TITANLogo
		{
			idc = jtp_model;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\jtp.paa";

			x = 0 + pixelW * pixelGrid * 18.7;
			y = 0 + pixelH * pixelGrid * 9;
			w = pixelW * pixelGrid * 32;
			h = pixelH * pixelGrid * 32;
		};

		class logo_wtp: TITANLogo
		{
			idc = wtp_model;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\wtp.paa";

			x = 0 + pixelW * pixelGrid * 42;
			y = 0 + pixelH * pixelGrid * 9;
			w = pixelW * pixelGrid * 32;
			h = pixelH * pixelGrid * 32;
		};

//=============================== frames =======================================

		class txtBox_mtp: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 5;
			y = 0 + pixelH * pixelGrid * 11;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 32;
		};

		class txtBox_jtp: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 27;
			y = 0 + pixelH * pixelGrid * 11;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 32;
		};

		class txtBox_wtp: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 49;
			y = 0 + pixelH * pixelGrid * 11;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 32;
		};

		class txtBox_bdu: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 5;
			y = 0 + pixelH * pixelGrid * 43.5;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 5;
		};

	};

//============================== Controls ======================================
	class Controls
	{

		class CloseButton: TITAN_Close_Button
		//class CloseButton: TITAN_LO_Button
		{
			idc = arsenal_close;
			//text = "CLOSE";
			//colorText[] = {1,1,1,1};

			x = 0 + pixelW * pixelGrid * 72.8;
			y = 0 + pixelH * pixelGrid * 21.4;
			w = pixelW * pixelGrid * 4;
			h = pixelH * pixelGrid * 4;
			tooltip = "CLOSE";
			action = "closeDialog 3;";
		};

//=============================== SAVE ============================
		class button_mtp_save: TITAN_ArsenalButton
		{
			idc = mtp_save;
			text = "MTP-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 6.7;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_save""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_save: TITAN_ArsenalButton
		{
			idc = jtp_save;
			text = "JTP-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 29,5;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_save""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_save: TITAN_ArsenalButton
		{
			idc = wtp_save;
			text = "WTP-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_save""] call titan_fnc_buttonarsenal";
		};

		class button_bdu_save: TITAN_ArsenalButton
		{
			idc = bdu_save;
			text = "BDU-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 6.7;
			y = 0 + pixelH * pixelGrid * 44.7;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""bdu_save""] call titan_fnc_buttonarsenal";
		};

//================================ CLASS ========================

//================================ MTP ==========================
		class button_mtp_ptl: TITAN_ArsenalButton
		{
			idc = mtp_ptl;
			text = "PTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 13;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_ptl""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_sql: TITAN_ArsenalButton
		{
			idc = mtp_sql;
			text = "SQL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 16;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_sql""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_ftl: TITAN_ArsenalButton
		{
			idc = mtp_ftl;
			text = "FTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 19;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_ftl""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_cct: TITAN_ArsenalButton
		{
			idc = mtp_cct;
			text = "CCT";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 22;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_cct""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_sotac: TITAN_ArsenalButton
		{
			idc = mtp_sotac;
			text = "SOTAC";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 25;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_sotac""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_eng: TITAN_ArsenalButton
		{
			idc = mtp_eng;
			text = "ENG";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 28;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_eng""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_wpn: TITAN_ArsenalButton
		{
			idc = mtp_wpn;
			text = "WPN";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 31;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_wpn""] call titan_fnc_buttonarsenal";
		};

		class button_mtp_atmo: TITAN_ArsenalButton
		{
			idc = mtp_atmo;
			text = "ATMO";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 34;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""mtp_atmo""] call titan_fnc_buttonarsenal";
		};
//================================ jtp ==========================
		class button_jtp_ptl: TITAN_ArsenalButton
		{
			idc = jtp_ptl;
			text = "PTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 13;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_ptl""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_sql: TITAN_ArsenalButton
		{
			idc = jtp_sql;
			text = "SQL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 16;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_sql""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_ftl: TITAN_ArsenalButton
		{
			idc = jtp_ftl;
			text = "FTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 19;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_ftl""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_cct: TITAN_ArsenalButton
		{
			idc = jtp_cct;
			text = "CCT";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 22;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_cct""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_sotac: TITAN_ArsenalButton
		{
			idc = jtp_sotac;
			text = "SOTAC";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 25;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_sotac""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_eng: TITAN_ArsenalButton
		{
			idc = jtp_eng;
			text = "ENG";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 28;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_eng""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_wpn: TITAN_ArsenalButton
		{
			idc = jtp_wpn;
			text = "WPN";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 31;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_wpn""] call titan_fnc_buttonarsenal";
		};

		class button_jtp_atmo: TITAN_ArsenalButton
		{
			idc = jtp_atmo;
			text = "ATMO";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 34;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""jtp_atmo""] call titan_fnc_buttonarsenal";
		};

//================================ wtp ==========================
		class button_wtp_ptl: TITAN_ArsenalButton
		{
			idc = wtp_ptl;
			text = "PTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 13;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_ptl""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_sql: TITAN_ArsenalButton
		{
			idc = wtp_sql;
			text = "SQL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 16;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_sql""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_ftl: TITAN_ArsenalButton
		{
			idc = wtp_ftl;
			text = "FTL";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 19;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_ftl""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_cct: TITAN_ArsenalButton
		{
			idc = wtp_cct;
			text = "CCT";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 22;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_cct""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_sotac: TITAN_ArsenalButton
		{
			idc = wtp_sotac;
			text = "SOTAC";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 25;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_sotac""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_eng: TITAN_ArsenalButton
		{
			idc = wtp_eng;
			text = "ENG";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 28;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_eng""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_wpn: TITAN_ArsenalButton
		{
			idc = wtp_wpn;
			text = "WPN";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 31;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_wpn""] call titan_fnc_buttonarsenal";
		};

		class button_wtp_atmo: TITAN_ArsenalButton
		{
			idc = wtp_atmo;
			text = "ATMO";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 62;
			y = 0 + pixelH * pixelGrid * 34;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""wtp_atmo""] call titan_fnc_buttonarsenal";
		};
//======================== startloadout ========================================
		class button_bdu: TITAN_ArsenalButton
		{
			idc = mtp_atmo;
			text = "BDU";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 18;
			y = 0 + pixelH * pixelGrid * 44.7;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""bdu""] call titan_fnc_buttonarsenal";
		};

	};
};
