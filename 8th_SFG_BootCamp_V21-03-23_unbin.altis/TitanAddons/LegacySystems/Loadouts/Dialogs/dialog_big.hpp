class loadout_big
{
	idd = 1000;
	movingenable = 0;

	class ControlsBackground
	{
		class home_screen: RscPicture
		{
			idc = 1201;
			text = "TitanAddons\LegacySystems\Titan_Definitions\picture\TITAN_Loadout_Panel.paa";
			
			x = 0.210 * safezoneW + safezoneX;
			y = -0.080 * safezoneH + safezoneY;
			w = 0.690 * SafeZoneW;
			h = 1.040 * SafeZoneH;
		};
		
		// Titan Logo
		class Logo: TITANLogo
		{
			idc = -1;
			text = "TitanAddons\LegacySystems\Titan_Definitions\picture\TITANLogo.paa";
			x = 0.305 * safezoneW + safezoneX;
			y = 0.145 * safezoneH + safezoneY;
			w = 0.150 * safezoneW;
			h = 0.090 * safezoneH;
		};
		
		// Header
		class txtHeader: TITANHeader
		{
			idc = -1;
			text = "LOADOUT";
			
			x = 0.455 * safezoneW + safezoneX;
			y = 0.145 * safezoneH + safezoneY;
			w = 0.314 * safezoneW;
			h = 0.090 * safezoneH;
		};		
		
/*		// Author
		class createby: TITANMade
		{
			idc = -1;
		
			x = 0.305 * safezoneW + safezoneX;
			y = 0.712 * safezoneH + safezoneY;//0.690
			w = 0.328 * safezoneW;
			h = 0.020 * safezoneH;
		};
*/		
//============================================= Frames ==========================		
		// Box 1 Uniform
		class txtBox1: TITANBoxLow
		{
			idc = -1;
			text = "CAMO PATTERN";
			
			x = 0.310 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};

		// Box 2 Command
		class txtBox2: TITANBoxLow
		{
			idc = -1;
			text = "COMMAND";
			
			x = 0.387 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};

		// Box 3 Control
		class txtBox3: TITANBoxLow
		{
			idc = -1;
			text = "CONTROL";
			
			x = 0.464 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};

		// Box 4 Operator
		class txtBox4: TITANBoxLow
		{
			idc = -1;
			text = "OPERATOR";
			
			x = 0.541 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};

		// Box 5 Recon
		class txtBox5: TITANBoxLow
		{
			idc = -1;
			text = "RECON";
			
			x = 0.618 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};

		// Box 6 Piloten
		class txtBox6: TITANBoxLow
		{
			idc = -1;
			text = "PILOT";
			
			x = 0.695 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.130 * safezoneH;
		};
		
		// Box 7 Fireteamleader
		class txtBox7: TITANBoxLow
		{
			idc = -1;
			text = "CREATE ELEMENT";
			
			x = 0.310 * safezoneW + safezoneX;
			y = 0.387 * safezoneH + safezoneY;
			w = 0.224 * safezoneW;
			h = 0.227 * safezoneH;//0.205
		};
		
		// Box 8 Fireteam
		class txtBox8: TITANBoxLow
		{
			idc = -1;
			text = "JOIN ELEMENT";
			
			x = 0.542 * safezoneW + safezoneX;
			y = 0.387 * safezoneH + safezoneY;
			w = 0.224 * safezoneW;
			h = 0.227 * safezoneH;//0.205
		};
				
		// Box 9 Special
		class txtBox9: TITANBoxLow
		{
			idc = -1;
			text = "SPECIAL";
			
			x = 0.310 * safezoneW + safezoneX;
			y = 0.622 * safezoneH + safezoneY;//0.600
			w = 0.147 * safezoneW;
			h = 0.052 * safezoneH;
		};
		
		// Box 10 STS
		class txtBox10: TITANBoxLow
		{
			idc = -1;
			text = "STS";
			
			x = 0.618 * safezoneW + safezoneX;
			y = 0.622 * safezoneH + safezoneY;//0.600
			w = 0.147 * safezoneW;
			h = 0.052 * safezoneH;
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
			
			x = 0.827 * safezoneW + safezoneX;
			y = 0.607 * safezoneH + safezoneY;//0.660
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "CLOSE";
			action = "closeDialog 1000;";
		};
		
		//REARM BUTTON
		class button_re: TITAN_LO_Button
		{
			idc = 0006;
			text = "REARM";
			
			x = 0.506 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;//0.620
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "["""",0006,1,true] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		// BIS Virtual - Arsenal 
		class P1_AVA_Button: TITAN_Close_Button
		{
			idc = 0007;
			//text = "AVA";
			
			x = 0.824 * safezoneW + safezoneX;
			y = 0.183 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "ACE Virtual Arsenal";
			action = "[player, player, true] call ace_arsenal_fnc_openBox; closeDialog 10000;";
		};
		
		// ACE Virtual - Arsenal 
		class P2_BVA_Button: TITAN_Close_Button
		{
			idc = 0008;
			//text = "BVA";
			
			x = 0.833 * safezoneW + safezoneX;
			y = 0.241 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "BIS Virtual Arsenal";
			action = "[""Open"",true] call BIS_fnc_arsenal; closeDialog 10000;";
		};
		
//============================================= UNIFORM BUTTONS ==========================	
		//UNIFORM BUTTON REIHE BOX 1
		class button_1_1: TITAN_LO_Button
		{
			idc = 0101;
			text = "BDU";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action =  "[""tda"",0,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_1_2: TITAN_LO_Button
		{
			idc = 0102;
			text = "MTP";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""mtp"",0,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_1_3: TITAN_LO_Button
		{
			idc = 0103;
			text = "JTP";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""jtp"",0,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_1_4: TITAN_LO_Button
		{
			idc = 0104;
			text = "WTP";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""wtp"",0,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};

		//COMMAND BUTTON REIHE BOX 2
		class button_2_1: TITAN_LO_Button
		{
			idc = 0201;
			text = "PTL";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "["""",0201,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_2_2: TITAN_LO_Button
		{
			idc = 0202;
			text = "SQL";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0202,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_2_3: TITAN_LO_Button
		{
			idc = 0203;
			text = "FTL";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0203,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};

/*		class button_2_4: TITAN_LO_Button
		{
			idc = 0204;
			text = "";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "";
		};
*/

		//CONTROL BUTTON REIHE BOX 3
		class button_3_1: TITAN_LO_Button
		{
			idc = 0301;
			text = "CCT";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0301,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_3_2: TITAN_LO_Button
		{
			idc = 0302;
			text =  "SOTAC";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "["""",0302,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};

/*		class button_3_3: TITAN_LO_Button
		{
			idc = 0303;
			text = "";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "";
		};
		class button_3_4: TITAN_LO_Button
		{
			idc = 0304;
			text = "";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "";
		};
*/

		//OPERATOR BUTTON REIHE BOX 4
		class button_4_1: TITAN_LO_Button
		{
			idc = 0401;
			text = "ATMO";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0401,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		class button_4_2: TITAN_LO_Button
		{
			idc = 0402;
			text = "WPN";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "["""",0402,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		class button_4_3: TITAN_LO_Button
		{
			idc = 0403;
			text = "ENG";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0403,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		class button_4_4: TITAN_LO_Button
		{
			idc = 0404;
			text = "RIFLE";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "["""",0404,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};

		//RECON BUTTON REIHE BOX 5
		class button_5_1: TITAN_LO_Button
		{
			idc = 0501;
			text = "RCT";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "["""",0501,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};	
		
		class button_5_2: TITAN_LO_Button
		{
			idc = 0502;
			text = "LRR";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "["""",0502,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_5_3: TITAN_LO_Button
		{
			idc = 0503;
			text = "LRS";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0503,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};

/*		class button_5_4: TITAN_LO_Button
		{
			idc = 0504;
			text = "";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "";
		};
*/
		//PILOT BUTTON REIHE BOX 6
		class button_6_1: TITAN_LO_Button
		{
			idc = 0601;
			text = "FIX";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.270 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0601,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_6_2: TITAN_LO_Button
		{
			idc = 0602;
			text = "ROT";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",0602,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
/*		class button_6_3: TITAN_LO_Button
		{
			idc = 0603;
			text = "";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "";
		};
		
		class button_6_4: TITAN_LO_Button
		{
			idc = 0604;
			text = "";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.345 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "";
		};
*/	

//============================================= FTL BUTTONS ==========================	
		//FIRETEAMLEAD BUTTON REIHE BOX 7
		class button_ftl_1_1: TITAN_LO_Button
		{
			idc = 7100;
			text = "PTL T1-0";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.407 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_1_0"",7100,1] call TP_fnc_CreateGrp";

		};
		
		class button_ftl_2_0: TITAN_LO_Button
		{
			idc = 7200;
			text = "SQL T2-0";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_2_0"",7200,1] call TP_fnc_CreateGrp";

		};
		
		class button_ftl_2_1: TITAN_LO_Button
		{
			idc = 7201;
			text = "FTL T2-1";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = " [""TITAN_2_1"",7201,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_2_2: TITAN_LO_Button
		{
			idc = 7202;
			text = "FTL T2-2";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_2_2"",7202,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_2_3: TITAN_LO_Button
		{
			idc = 7203;
			text = "FTL T2-3";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_2_3"",7203,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_3_0: TITAN_LO_Button
		{
			idc = 7300;
			text = "SQL T3-0";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""TITAN_3_0"",7300,1] call TP_fnc_CreateGrp";

		};
		
		class button_ftl_3_1: TITAN_LO_Button
		{
			idc = 7301;
			text = "FTL T3-1";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_3_1"",7301,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_3_2: TITAN_LO_Button
		{
			idc = 7302;
			text = "FTL T3-2";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = " [""TITAN_3_2"",7302,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_3_3: TITAN_LO_Button
		{
			idc = 7303;
			text = "FTL T3-3";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = " [""TITAN_3_3"",7303,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_4_0: TITAN_LO_Button
		{
			idc = 7400;
			text = "SQL T4-0";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = " [""TITAN_4_0"",7400,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_4_1: TITAN_LO_Button
		{
			idc = 7401;
			text = "FTL T4-1";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = " [""TITAN_4_1"",7401,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_4_2: TITAN_LO_Button
		{
			idc = 7402;
			text = "FTL T4-2";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_4_2"",7402,1] call TP_fnc_CreateGrp;";
		};
		
		class button_ftl_4_3: TITAN_LO_Button
		{
			idc = 7403;
			text = "FTL T4-3";
			
			x = 0.468 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_4_3"",7403,1] call TP_fnc_CreateGrp;";
		};
		
		//Reacons
		class button_EAGLE_7: TITAN_LO_Button
		{
			idc = 7900;
			text = "EAGLE";
			
			x = 0.391 * safezoneW + safezoneX;//0.314
			y = 0.554 * safezoneH + safezoneY;//0.532
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = " [""EAGLE"",7900,1] call TP_fnc_CreateGrp;";
		};
		
		class button_FALCON_7: TITAN_LO_Button
		{
			idc = 7901;
			text = "FALCON";
			
			x = 0.314 * safezoneW + safezoneX;//0.391
			y = 0.579 * safezoneH + safezoneY;//0.532 //0.557
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = " [""FALCON"",7901,1] call TP_fnc_CreateGrp;";
		};
		
		class button_HAWK_7: TITAN_LO_Button
		{
			idc = 7902;
			text = "HAWK";
			
			x = 0.391 * safezoneW + safezoneX;//0.314
			y = 0.579 * safezoneH + safezoneY;//0.557
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""HAWK"",7902,1] call TP_fnc_CreateGrp;";
		};
		
		class button_VULTURE_7: TITAN_LO_Button
		{
			idc = 7903;
			text = "VULTURE";
			
			x = 0.468 * safezoneW + safezoneX;//0.391
			y = 0.579 * safezoneH + safezoneY;//0.557
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""VULTURE"",7903,1] call TP_fnc_CreateGrp;";
		};

//============================================= FT BUTTONS ==========================	
		//FIRETEAM BUTTON REIHE BOX 8
		class button_ft_1_0: TITAN_LO_Button
		{
			idc = 8100;
			text = "TITAN 1-0";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.407 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_1_0"",8100,1] call TP_fnc_joinGrp;";
		};
		
		class button_ft_2_0: TITAN_LO_Button
		{
			idc = 8200;
			text = "TITAN 2-0";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = " [""TITAN_2_0"",8200,1] call TP_fnc_joinGrp;";
		};
		

		
		class button_ft_2_1: TITAN_LO_Button
		{
			idc = 8201;
			text = "TITAN 2-1";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""TITAN_2_1"",8201,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_2_2: TITAN_LO_Button
		{
			idc = 8202;
			text = "TITAN 2-2";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_2_2"",8202,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_2_3: TITAN_LO_Button
		{
			idc = 8203;
			text = "TITAN 2-3";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_2_3"",8203,1] call TP_fnc_joinGrp";
		};

		class button_ft_3_0: TITAN_LO_Button
		{
			idc = 8300;
			text = "TITAN 3-0";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_3_0"",8300,1] call TP_fnc_joinGrp;";
		};
		
		class button_ft_3_1: TITAN_LO_Button
		{
			idc = 8301;
			text = "TITAN 3-1";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""TITAN_3_1"",8301,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_3_2: TITAN_LO_Button
		{
			idc = 8302;
			text = "TITAN 3-2";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_3_2"",8302,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_3_3: TITAN_LO_Button
		{
			idc = 8303;
			text = "TITAN 3-3";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_3_3"",8303,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_4_0: TITAN_LO_Button
		{
			idc = 8400;
			text = "TITAN 4-0";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.432 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""TITAN_4_0"",8400,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_4_1: TITAN_LO_Button
		{
			idc = 8401;
			text = "TITAN 4-1";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.457 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""TITAN_4_1"",8401,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_4_2: TITAN_LO_Button
		{
			idc = 8402;
			text = "TITAN 4-2";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.482 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "[""TITAN_4_2"",8402,1] call TP_fnc_joinGrp";
		};
		
		class button_ft_4_3: TITAN_LO_Button
		{
			idc = 8403;
			text = "TITAN 4-3";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.507 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "[""TITAN_4_3"",8403,1] call TP_fnc_joinGrp";
		};

		//ReconTeams
		class button_EAGLE_8: TITAN_LO_Button
		{
			idc = 8900;
			text = "EAGLE";
			
			x = 0.622 * safezoneW + safezoneX;//0.545
			y = 0.554 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""EAGLE"",8900,1] call TP_fnc_joinGrp";
		};
		
		class button_FALCON_8: TITAN_LO_Button
		{
			idc = 8901;
			text = "FALCON";
			
			x = 0.545 * safezoneW + safezoneX;
			y = 0.579 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "[""FALCON"",8901,1] call TP_fnc_joinGrp";
		};
		
		class button_HAWK_8: TITAN_LO_Button
		{
			idc = 8902;
			text = "HAWK";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.579 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[""HAWK"",8902,1] call TP_fnc_joinGrp";
		};
		
		class button_VULTURE_8: TITAN_LO_Button
		{
			idc = 8903;
			text = "VULTURE";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.579 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "[""VULTURE"",8903,1] call TP_fnc_joinGrp";
		};	
		
//============================================== Spacial Buttons ===================================		
		// SPECIAL BUTTON REIHE BOX 9
		class button_9_1: TITAN_LO_Button
		{
			idc = 9001;
			text = "DIVER";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;//0.620
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "["""",9001,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		
		class button_9_2: TITAN_LO_Button
		{
			idc = 9002;
			text = "MFF";
			
			x = 0.391 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;//0.620
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "["""",9002,1,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		

		// STS BUTTON	
		class button_10_1: TITAN_LO_Button
		{
			idc = 10001;
			text = "STS IN";
			
			x = 0.622 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;//0.620
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "["""",10001,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
		class button_10_2: TITAN_LO_Button
		{
			idc = 10002;
			text = "STS OUT";
			
			x = 0.699 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;//0.620
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "["""",10002,0,false] execVM ""TitanAddons\LegacySystems\Loadouts\system.sqf"";";
		};
	};
};