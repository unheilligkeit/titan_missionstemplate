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
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\pad-air-wallpaper.paa";

			x = 0 + pixelW * pixelGrid * 6.15;
			y = 0 - pixelH * pixelGrid * 2.15;
			w = pixelW * pixelGrid * 64.5;
			h = pixelH * pixelGrid * 51.5;

		};

		class home_screen: RscPicture
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\titan_arsenal_pad.paa";

			x = 0 - pixelW * pixelGrid * 5;
			y = 0 - pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 86;
			h = pixelH * pixelGrid * 90;

		};

		// Titan Logo
		class Logo: TITANLogo
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\TITANLogo.paa";

			x = 0 + pixelW * pixelGrid * 7;
			y = 0;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 10;

		};

		// Header
		class txtHeader: TITANHeader
		{
			idc = -1;
			text = "TITAN SHOP";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 12;

		};

//============================================= Frames ==========================
		// Box 1
		class Logo_1: TITANLogo
		{
			idc = 100;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\helmets.paa";

			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 2
		class Logo_2: TITANLogo
		{
			idc = 200;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\vests.paa";

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 3
		class Logo_3: TITANLogo
		{
			idc = 300;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\mx_gun.paa";

			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 4
		class Logo_4: TITANLogo
		{
			idc = 400;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\pistols.paa";

			x = 0 + pixelW * pixelGrid * 50;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 5
		class Logo_5: TITANLogo
		{
			idc = 500;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\accesoires.paa";

			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 6
		class Logo_6: TITANLogo
		{
			idc = 600;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\comingsoon.paa";

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 7
		class Logo_7: TITANLogo
		{
			idc = 700;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\comingsoon.paa";

			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 8
		class Logo_8: TITANLogo
		{
			idc = 800;
			text = "TitanAddons\titan_loadout\titan_arsenal\picture\comingsoon.paa";

			x = 0 + pixelW * pixelGrid * 50;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

	};


//=================================== Controls =====================
	class Controls
	{
		class CloseButton: TITAN_Close_Button
		//class CloseButton: TITAN_LO_Button
		{
			idc = 0001;
			//text = "CLOSE";
		//	colorText[] = {1,1,1,1};

			x = 0 + pixelW * pixelGrid * 73;
			y = 0 + pixelH * pixelGrid * 22;
			w = pixelW * pixelGrid * 4;
			h = pixelH * pixelGrid * 4;
			tooltip = "CLOSE";
			action = "closeDialog 1000;";
		};

		//REARM BUTTON
		class button_re: TITAN_LO_Button
		{
			idc = 0002;
			text = "SAVE";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 42.5;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};


//============================================= UNIFORM BUTTONS ==========================
		//BUTTON BOX 1
		class button_1_1: TITAN_LO_Button
		{
			idc = 101;

			access = 0;
	    type = 1;

	    colorText[] = {0, 0, 0, 0 };
	    colorDisabled[] = {0, 0, 0, 0  };
	    colorBackground[] = {0, 0, 0, 0 };
	    colorBackgroundDisabled[] = {0, 0, 0, 0 };
	    colorBackgroundActive[] = {0, 0, 0, 0 };
	    colorFocused[] = {0, 0, 0, 0 };
	    colorShadow[] = {0, 0, 0, 0 };
	    colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[101] call titan_fnc_buttonarsenal;";
		};

		//BUTTON BOX 2
		class button_2_1: TITAN_LO_Button
		{
			idc = 201;
			access = 0;
			type = 1;

			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[201] call titan_fnc_buttonarsenal;";
		};

		//BUTTON BOX 3
		class button_3_1: TITAN_LO_Button
		{
			idc = 301;
			access = 0;
			type = 1;

			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[301] call titan_fnc_buttonarsenal;";
		};

		//OPERATOR BUTTON BOX 4
		class button_4_1: TITAN_LO_Button
		{
			idc = 401;
			access = 0;
			type = 1;

			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 50;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[401] call titan_fnc_buttonarsenal;";
		};

//===================================================================
		//BUTTON BOX 5
		class button_5_1: TITAN_LO_Button
		{
			idc = 501;

			access = 0;
			type = 1;
			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[501] call titan_fnc_buttonarsenal;";
		};


//============================================== Spacial Buttons ===================================
		//BUTTON BOX 6
		class button_6_1: TITAN_LO_Button
		{
			idc = 601;

			access = 0;
			type = 1;
			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[601] call titan_fnc_buttonarsenal;";
		};

		//BUTTON BOX 7
		class button_7_1: TITAN_LO_Button
		{
			idc = 701;

			access = 0;
			type = 1;
			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };


			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[701] call titan_fnc_buttonarsenal;";
		};

		// BUTTON BOX 8
		class button_8_1: TITAN_LO_Button
		{
			idc = 801;

			access = 0;
			type = 1;
			colorText[] = {0, 0, 0, 0 };
			colorDisabled[] = {0, 0, 0, 0  };
			colorBackground[] = {0, 0, 0, 0 };
			colorBackgroundDisabled[] = {0, 0, 0, 0 };
			colorBackgroundActive[] = {0, 0, 0, 0 };
			colorFocused[] = {0, 0, 0, 0 };
			colorShadow[] = {0, 0, 0, 0 };
			colorBorder[] = {0, 0, 0, 0 };

			x = 0 + pixelW * pixelGrid * 50;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;

			action = "[801] call titan_fnc_buttonarsenal;";
		};
	};
};
