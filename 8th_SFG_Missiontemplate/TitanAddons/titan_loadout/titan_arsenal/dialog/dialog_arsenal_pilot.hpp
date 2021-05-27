#include "\a3\3DEN\UI\macros.inc"
#include "\a3\3DEN\UI\macroexecs.inc"

class titan_arsenal_pilot_gui
{
	idd = 4;
	movingenable = 1;

	class ControlsBackground
	{
//================================ iPad ========================================

		class home_wallpaper_pilot: RscPicture
		{
			idc = -1;
			moving = 1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\titan_background.paa";

			x = 0 + pixelW * pixelGrid * 4.15;
			y = 0 - pixelH * pixelGrid * 1.5;
			w = pixelW * pixelGrid * 65.5;
			h = pixelH * pixelGrid * 53;
		};

		class home_ipad_pilot: RscPicture
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

//================================ fix =========================================
		class logo_fix: TITANLogo
		{
			idc = fix_model;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\fix.paa";

			x = 0 + pixelW * pixelGrid * 1;
			y = 0 + pixelH * pixelGrid * 9;
			w = pixelW * pixelGrid * 36;
			h = pixelH * pixelGrid * 32;
		};

//================================ rot =========================================
		class logo_rot: TITANLogo
		{
			idc = rot_model;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\rot.paa";

			x = 0 + pixelW * pixelGrid * 29.3;
			y = 0 + pixelH * pixelGrid * 9;
			w = pixelW * pixelGrid * 36;
			h = pixelH * pixelGrid * 32;
		};

//=============================== frames =======================================

//================================ fix =========================================
		class txtBox_fix: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 12;
			y = 0 + pixelH * pixelGrid * 11;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 32;
		};

//================================ rot =========================================
		class txtBox_rot: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 40;
			y = 0 + pixelH * pixelGrid * 11;
			w = pixelW * pixelGrid * 20;
			h = pixelH * pixelGrid * 32;
		};
	};

//============================== Controls ======================================

//================================ close =======================================
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
			action = "closeDialog 4;";
		};

//=============================== SAVE =========================================

//================================ fix =========================================
		class button_fix_save: TITAN_ArsenalButton
		{
			idc = 4210;
			text = "FIX-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 14;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""fix_save""] call titan_fnc_buttonarsenal";
		};

//================================ rot =========================================
		class button_rot_save: TITAN_ArsenalButton
		{
			idc = 4200;
			text = "ROT-SAVE";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 42,5;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 8;
			h = pixelH * pixelGrid * 2.5;

			action = "[""rot_save""] call titan_fnc_buttonarsenal";
		};

//================================ CLASS =======================================

//================================ fix =========================================
		class button_fix: TITAN_ArsenalButton
		{
			idc = 4211;
			text = "FIX";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 24;
			y = 0 + pixelH * pixelGrid * 13;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""fix""] call titan_fnc_buttonarsenal";
		};

//================================ rot =========================================
		class button_rot: TITAN_ArsenalButton
		{
			idc = 4201;
			text = "ROT";
			sizeEx = "(((((pixelW / pixelH) min 1.2) / 1.2) / 25) * 1)";

			x = 0 + pixelW * pixelGrid * 53;
			y = 0 + pixelH * pixelGrid * 13;
			w = pixelW * pixelGrid * 6;
			h = pixelH * pixelGrid * 2.5;

			action = "[""rot""] call titan_fnc_buttonarsenal";
		};

	};
};
