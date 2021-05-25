#include "\a3\3DEN\UI\macros.inc"
#include "\a3\3DEN\UI\macroexecs.inc"

class loadout_gui
{
	idd = 1000;
	movingenable = 0;

	class ControlsBackground
	{
		class home_screen: RscPicture
		{
			idc = 1201;
			text = "TitanAddons\titan_loadout\loadout_gui\picture\TITAN_Loadout_Panel.paa";

			x = 0 - pixelW * pixelGrid * 5;
			y = 0 - pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 86;
			h = pixelH * pixelGrid * 90;

		};

		// Titan Logo
		class Logo: TITANLogo
		{
			idc = -1;
			text = "TitanAddons\titan_loadout\loadout_gui\picture\TITANLogo.paa";

			x = 0 + pixelW * pixelGrid * 7;
			y = 0;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 10;

		};

		// Header
		class txtHeader: TITANHeader
		{
			idc = -1;
			text = "LOADOUT";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0;
			w = pixelW * pixelGrid * 30;
			h = pixelH * pixelGrid * 12;

		};

//============================================= Frames ==========================
		// Box 1
		class txtBox1: TITANBoxLow
		{
			idc = -1;
			text = "COMMAND";


			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 2
		class txtBox2: TITANBoxLow
		{
			idc = -1;
			text = "CONTROL";

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 3
		class txtBox3: TITANBoxLow
		{
			idc = -1;
			text = "OPERATOR";

			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 4
		class txtBox4: TITANBoxLow
		{
			idc = -1;
			text = "RECON";

			x = 0 + pixelW * pixelGrid * 50;
			y = 0 + pixelH * pixelGrid * 12;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 5
		class txtBox5: TITANBoxLow
		{
			idc = -1;
			text = "PILOT";

			x = 0 + pixelW * pixelGrid * 8;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};

		// Box 6
		class txtBox6: TITANBoxLow
		{
			idc = -1;
			text = "STS";

			x = 0 + pixelW * pixelGrid * 22;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};
/*
		// Box 7
		class txtBox7: TITANBoxLow
		{
			idc = -1;
			text = "";

			x = 0 + pixelW * pixelGrid * 36;
			y = 0 + pixelH * pixelGrid * 27;
			w = pixelW * pixelGrid * 13;
			h = pixelH * pixelGrid * 14;
		};
*/
		// Box 8
		class txtBox8: TITANBoxLow
		{
			idc = -1;
			text = "SPECIAL";

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
			idc = 0005;
			//text = "CLOSE";

			x = 0 + pixelW * pixelGrid * 72;
			y = 0 + pixelH * pixelGrid * 40;
			w = pixelW * pixelGrid * 3;
			h = pixelH * pixelGrid * 3;
			tooltip = "CLOSE";
			action = "closeDialog 1000;";
		};

		//REARM BUTTON
		class button_re: TITAN_LO_Button
		{
			idc = 0006;
			text = "REARM";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 42.5;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player] call titan_fnc_loadout_rearm";
		};

		// SET RADIO
		class button_freq: TITAN_LO_Button
		{
			idc = 0007;
			text = "SET RADIO";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 42.5;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "player remoteExec ['titan_fnc_sw_radiosettings', player];";

		};

//============================================= UNIFORM BUTTONS ==========================
		//BUTTON REIHE BOX 1
		class button_1_1: TITAN_LO_Button
		{
			idc = 0101;
			text = "PTL";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 14;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action =  "[player,tarnmuster] call titan_fnc_ptl; call titan_fnc_buttoncontroll";
		};

		class button_1_2: TITAN_LO_Button
		{
			idc = 0102;
			text = "SQL";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 17;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_sql; call titan_fnc_buttoncontroll";
		};

		class button_1_3: TITAN_LO_Button
		{
			idc = 0103;
			text = "FTL";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_ftl; call titan_fnc_buttoncontroll";
		};

/*		class button_1_4: TITAN_LO_Button
		{
			idc = 0104;
			text = "EMPTY";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 23;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};
*/

		//BUTTON REIHE BOX 2
		class button_2_1: TITAN_LO_Button
		{
			idc = 0201;
			text = "CCT";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 14;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_cct; call titan_fnc_buttoncontroll";
		};

		class button_2_2: TITAN_LO_Button
		{
			idc = 0202;
			text = "SOTAC";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 17;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_sotac; call titan_fnc_buttoncontroll";
		};

/*		class button_2_3: TITAN_LO_Button
		{
			idc = 0203;
			text = "";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};

		class button_2_4: TITAN_LO_Button
		{
			idc = 0204;
			text = "";

			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 23;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};
*/

		//BUTTON REIHE BOX 3
		class button_3_1: TITAN_LO_Button
		{
			idc = 0301;
			text = "ENG";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 14;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_eng; call titan_fnc_buttoncontroll";
		};

		class button_3_2: TITAN_LO_Button
		{
			idc = 0302;
			text =  "WPN";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 17;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_wpn; call titan_fnc_buttoncontroll";
		};

		class button_3_3: TITAN_LO_Button
		{
			idc = 0303;
			text = "ATMO";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_atmo; call titan_fnc_buttoncontroll";
		};
		class button_3_4: TITAN_LO_Button
		{
			idc = 0304;
			text = "RIFLE";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 23;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_rifle; call titan_fnc_buttoncontroll";
		};


		//OPERATOR BUTTON REIHE BOX 4
		class button_4_1: TITAN_LO_Button
		{
			idc = 0401;
			text = "RCT";

			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 14;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_rct; call titan_fnc_buttoncontroll";
		};
		class button_4_2: TITAN_LO_Button
		{
			idc = 0402;
			text = "LRR";

			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 17;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_lrr; call titan_fnc_buttoncontroll";
		};
		class button_4_3: TITAN_LO_Button
		{
			idc = 0403;
			text = "LRS";

			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 20;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_lrs; call titan_fnc_buttoncontroll";
		};

/*		class button_4_4: TITAN_LO_Button
		{
			idc = 0404;
			text = "";

			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 23;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};
*/
//===================================================================
		//BUTTON REIHE BOX 5
		class button_5_1: TITAN_LO_Button
		{
			idc = 0501;
			text = "FIX";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 29;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_fix; call titan_fnc_buttoncontroll";
		};

		class button_5_2: TITAN_LO_Button
		{
			idc = 0502;
			text = "ROT";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 32;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_rot; call titan_fnc_buttoncontroll";
		};

/*		class button_5_3: TITAN_LO_Button
		{
			idc = 0503;
			text = "";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 35;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};

		class button_5_4: TITAN_LO_Button
		{
			idc = 0504;
			text = "";

			x = 0 + pixelW * pixelGrid * 9;
			y = 0 + pixelH * pixelGrid * 38;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};
*/
//============================================== Spacial Buttons ===================================
		//BUTTON REIHE BOX 6
		class button_6_1: TITAN_LO_Button
		{
			idc = 0601;
			text = "STS IN";


			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 29;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[] call TitanAddons_SotacTabletSystem_fnc_loginPilot; call titan_fnc_buttoncontroll";
		};

		class button_6_2: TITAN_LO_Button
		{
			idc = 0602;
			text = "STS OUT";


			x = 0 + pixelW * pixelGrid * 23;
			y = 0 + pixelH * pixelGrid * 32;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[name player] call TitanAddons_SotacTabletSystem_fnc_logoutPilot; call titan_fnc_buttoncontroll";
		};


/*
		// BUTTON REIHE BOX 7
		class button_7_1: TITAN_LO_Button
		{
			idc = 0701;
			text = "DIVER";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 29;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "";
		};

		class button_7_2: TITAN_LO_Button
		{
			idc = 0702;
			text = "MFF";

			x = 0 + pixelW * pixelGrid * 37;
			y = 0 + pixelH * pixelGrid * 32;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = ""
		};
*/
		// BUTTON REIHE BOX 8
		class button_8_1: TITAN_LO_Button
		{
			idc = 0801;
			text = "DIVER";


			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 29;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_diver; closeDialog 1000;";
		};

		class button_8_2: TITAN_LO_Button
		{
			idc = 0802;
			text = "MFF";


			x = 0 + pixelW * pixelGrid * 51;
			y = 0 + pixelH * pixelGrid * 32;
			w = pixelW * pixelGrid * 11;
			h = pixelH * pixelGrid * 2.5;

			action = "[player,tarnmuster] call titan_fnc_mff; closeDialog 1000;";
		};
	};
};
