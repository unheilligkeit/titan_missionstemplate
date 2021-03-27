class TeleToLead
{
	idd = 12;
	movingenable = 0;

	class ControlsBackground
	{
		class background: TITANBackground
		{
			idc = -1;
			x = 0.350 * safezoneW + safezoneX;
			y = 0.320 * safezoneH + safezoneY;
			w = 0.168 * safezoneW;
			h = 0.375 * safezoneH;
			colorBackground[] = {0.11,0.15,0.12,1};
		};
		
		class home_screen: RscPicture
		{
			idc = 1201;
			text = "TitanAddons\LegacySystems\Titan_Definitions\picture\microDAGR_background_night_ca.paa";
			
			x = 0.258 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.347 * SafeZoneW;
			h = 0.550 * SafeZoneH;
		};
		
/*		
		class version: RscText
		{
			idc = -1;
			text = "Version: 21.01.23";
			x = 0.350 * safezoneW + safezoneX;
			y = 0.317 * safezoneH + safezoneY;
			w = 0.328 * safezoneW;
			h = 0.020 * safezoneH;
			
			sizeEx = 0.02;
		};
		class createby: TITANMade
		{
			idc = -1;
			text = "Teleport Script by Fallingstorm";
			
			x = 0.350 * safezoneW + safezoneX;
			y = 0.672 * safezoneH + safezoneY;
			w = 0.328 * safezoneW;
			h = 0.020 * safezoneH;
		};
*/
		class txtHeader: TITANHeader
		{
			idc = -1;
			style = ST_TITLE;
			text = "Teleport";
			
			x = 0.355 * safezoneW + safezoneX;
			y = 0.339 * safezoneH + safezoneY;
			w = 0.158 * safezoneW;
			h = 0.037 * safezoneH;
		};
		class txtBox1: TITANBoxLow
		{
			idc = -1;
			style = ST_FRAME;
			text = "";
			
			x = 0.361 * safezoneW + safezoneX;
			y = 0.392 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.250 * safezoneH;
		};
		class txtBox2: TITANBoxLow
		{
			idc = -1;
			style = ST_FRAME;
			text = "";
			
			x = 0.438 * safezoneW + safezoneX;
			y = 0.392 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.250 * safezoneH;
		};
	};

	class Controls
	{
//====================================================== ERSTE BUTTON REIHE =========================================================
		class button_1: TITAN_TELE_Button
		{
			idc = 1110;
			text = "TITAN 1-0";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.410 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_1_0""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_2: TITAN_TELE_Button
		{
			idc = 1220;
			text = "TITAN 2-0";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.435 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_2_0""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_3: TITAN_TELE_Button
		{
			idc = 1321;
			text = "TITAN 2-1";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.460 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_2_1""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_4: TITAN_TELE_Button
		{
			idc = 1422;
			text = "TITAN 2-2";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.485 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_2_2""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_5: TITAN_TELE_Button
		{
			idc = 1523;
			text = "TITAN 2-3";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.510 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_2_3""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_6: TITAN_TELE_Button
		{
			idc = 1630;
			text = "TITAN 3-0";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.535 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;
	
			action = "closeDialog 0;[""TITAN_3_0""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_7: TITAN_TELE_Button
		{
			idc = 1731;
			text = "TITAN 3-1";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.560 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_3_1""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};


		class button_1_8: TITAN_TELE_Button
		{
			idc = 1832;
			text = "TITAN 3-2";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.585 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "closeDialog 0;[""TITAN_3_2""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_1_9: TITAN_TELE_Button
		{
			idc = 1933;
			text = "TITAN 3-3";
			
			x = 0.365 * safezoneW + safezoneX;
			y = 0.610 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_3_3""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		
//================================= ZWEITE BUTTON REIHE =============================================
		class button_2_1: TITAN_TELE_Button
		{
			idc = 2140;
			text = "TITAN 4-0";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.410 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_4_0""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_2_2: TITAN_TELE_Button
		{
			idc = 2241;
			text = "TITAN 4-1";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.435 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "closeDialog 0;[""TITAN_4_1""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_2_3: TITAN_TELE_Button
		{
			idc = 2342;
			text = "TITAN 4-2";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.460 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_4_2""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_2_4: TITAN_TELE_Button
		{
			idc = 2443;
			text = "TITAN 4-3";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.485 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""TITAN_4_3""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};
		class button_2_5: TITAN_TELE_Button
		{
			idc = 2500;
			text = "EAGLE";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.510 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""EAGLE""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};

		class button_2_6: TITAN_TELE_Button
		{
			idc = 2600;
			text = "FALCON";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.535 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""FALCON""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};

		class button_2_7: TITAN_TELE_Button
		{
			idc = 2700;
			text = "HAWK";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.560 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""HAWK""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};

		class button_2_8: TITAN_TELE_Button
		{
			idc = 2800;
			text = "VULTURE";
			
			x = 0.442 * safezoneW + safezoneX;
			y = 0.585 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closeDialog 0;[""VULTURE""]ExecVM ""TITANAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
		};

//EXIT BUTTON
		class button_ex: TITAN_TELE_Button
		{
			idc = 1115;
			text = "close";
			
			x = 0.450 * safezoneW + safezoneX;
			y = 0.655 * safezoneH + safezoneY;
			w = 0.061 * safezoneW;
			h = 0.022 * safezoneH;

			action = "closedialog 0;";
		};
	};
};
