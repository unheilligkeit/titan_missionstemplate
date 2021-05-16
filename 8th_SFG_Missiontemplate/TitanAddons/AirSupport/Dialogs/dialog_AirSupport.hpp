class air_support
{
	idd = 10000;
	movingable = 0;

//========================================= CONTROLLS BACKGROUND =============================
	class ControlsBackground
	{
		// HINTERGRUND
		class home_screen: RscPicture
		{
			idc = -1;
			text = "TitanAddons\AirSupport\picture\Air_Panel.paa";
			/*
			x = 0 - pixelW * pixelGrid * 12;
			y = 0 - pixelH * pixelGrid * 17;
			w = pixelW * pixelGrid * 116;
			h = pixelH * pixelGrid * 95;
			*/
			x = 0.240 * safezoneW + safezoneX;
			y = 0.070 * safezoneH + safezoneY;
			w = 0.590 * SafeZoneW;
			h = 0.880 * SafeZoneH;
			
		};

		// TITAN LOGO
		class Logo: TITANLogo
		{
			idc = -1;
			text = "TitanAddons\AirSupport\picture\TITANLogo.paa";

			x = 0.306 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.150 * safezoneW;
			h = 0.090 * safezoneH;
		};

		// HEADER
		class txtHeader: TITANHeader
		{
			idc = -1;
			text = "AIR SUPPORT";

			x = 0.456 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.314 * safezoneW;
			h = 0.090 * safezoneH;
		};

/*		// AUTHOR
		class createby: TITANMade
		{
			idc = -1;

			x = 0.307 * safezoneW + safezoneX;
			y = 0.758 * safezoneH + safezoneY;
			w = 0.328 * safezoneW;
			h = 0.020 * safezoneH;
		};
*/
//========================================= SLOTS ====================================
		//SLOT 1
		class slot_1: TITANSlots
		{
			idc = 100;

			x = 0.307 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW;
			h = 0.040 * safezoneH;
		};

		//SLOT 2
		class slot_2: TITANSlots
		{
			idc = 200;

			x = 0.422 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW;
			h = 0.040 * safezoneH;
		};

		//SLOT 3
		class slot_3: TITANSlots
		{
			idc = 300;

			x = 0.537 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW;
			h = 0.040 * safezoneH;
		};

		//SLOT 4
		class slot_4: TITANSlots
		{
			idc = 400;

			x = 0.652 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW;
			h = 0.040 * safezoneH;
		};


//========================================= FRAMES =============================
		//ROTARY TRANSPORT
		class txtBoxRWM: TITANBoxLow
		{
			idc = -1;
			text = "SPECIAL PACK ROTARY MATS";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.364 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.093 * safezoneH;
		};

		//ROTARY STRIKE
		class txtBoxRWS: TITANBoxLow
		{
			idc = -1;
			text = "ROTARY STRIKE";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.460 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.117 * safezoneH;
		};

		//FIXED LAND
		class txtBoxFWLS: TITANBoxLow
		{
			idc = -1;
			text = "FIXED WING STRIKE LAND";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.580 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.093 * safezoneH;
		};

		//FIXED SEA
		class txtBoxFWSS: TITANBoxLow
		{
			idc = -1;
			text = "FIXED WING STRIKE SEA";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.069 * safezoneH;
		};

		//FIXED TRANSPORT
		class txtBoxFWM: TITANBoxLow
		{
			idc = -1;
			text = "FIXED WING TRANSPORT";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.748 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.045 * safezoneH;
		};

		// STANDARD PACK
		class txtBoxSP: TITANBoxLow
		{
			idc = -1;
			text = "STANDARD PACK";

			x = 0.597 * safezoneW + safezoneX;
			y = 0.364 * safezoneH + safezoneY;
			w = 0.170 * safezoneW;
			h = 0.432 * safezoneH;
		};
	};

//========================================= CONTROLS =========================================
	class Controls
	{
		// VEHICLE SPAWN
		class button_spawn: TITAN_AS_Button
		{
			idc = 1001;
			text = "VEHICLE SPAWN";

			x = 0.307 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[] execVM ""TitanAddons\AirSupport\functions\fn_AS_spawn.sqf"";";
		};

		// CLEAR SPAWN AREA
		class button_clear: TITAN_AS_Button
		{
			idc = 1002;
			text = "CLEAR_AREA";

			x = 0.597 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.170 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[] execVM ""TitanAddons\AirSupport\functions\fn_ASClear.sqf"";";
		};

		// CLOSE BUTTON
		class CloseButton: TITAN_Close_Button
		{
			idc = 1000;
			//text = "CLOSE";

			x = 0.650 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "CLOSE";
			action = "closeDialog 10000;";
		};

		// BIS Virtual - Arsenal
		class F1_AVA_Button: TITAN_Close_Button
		{
			idc = 10001;
			//text = "AVA";

			x = 0.385 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "ACE Virtual Arsenal";
			action = "[player, player, true] call ace_arsenal_fnc_openBox; closeDialog 10000;";
		};

		// ACE Virtual - Arsenal
		class F2_BVA_Button: TITAN_Close_Button
		{
			idc = 10001;
			//text = "BVA";

			x = 0.410 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "BIS Virtual Arsenal";
			action = "[""Open"",true] call BIS_fnc_arsenal; closeDialog 10000;";
		};

//========================================= CLEAR BUTTONS ====================================
//-------------------------------------RWM11-------------------------------------
		class button_RWM_110: TITAN_AS_Button
		{
			idc = 1100;
			type = 1;
			text = "CLEAR";

			x = 0.314 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1100""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_120: TITAN_AS_Button
		{
			idc = 1200;
			type = 1;
			text = "CLEAR";

			x = 0.383 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1200""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_130: TITAN_AS_Button
		{
			idc = 1300;
			type = 1;
			text = "CLEAR";

			x = 0.452 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1300""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_140: TITAN_AS_Button
		{
			idc = 1400;
			type = 1;
			text = "CLEAR";

			x = 0.521 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1400""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//========================================= Rotary Wing mats ====================================
//-------------------------------------RWM11-------------------------------------
		class button_RWM_111: TITAN_AS_Button
		{
			idc = 1101;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1101""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_112: TITAN_AS_Button
		{
			idc = 1102;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1102""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_113: TITAN_AS_Button
		{
			idc = 1103;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1103""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------RWM12-------------------------------------
		class button_RWM_121: TITAN_AS_Button
		{
			idc = 1201;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1201""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_122: TITAN_AS_Button
		{
			idc = 1202;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1202""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_123: TITAN_AS_Button
		{
			idc = 1203;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1203""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------RWM13-------------------------------------
		class button_RWM_131: TITAN_AS_Button
		{
			idc = 1301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1301""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_132: TITAN_AS_Button
		{
			idc = 1302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1302""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_133: TITAN_AS_Button
		{
			idc = 1303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1303""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------RWM14-------------------------------------
		class button_RWM_141: TITAN_AS_Button
		{
			idc = 1401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1401""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_142: TITAN_AS_Button
		{
			idc = 1402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1402""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWM_143: TITAN_AS_Button
		{
			idc = 1403;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWM_1403""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//========================================= Rotary Wing Strike =======================================
//-------------------------------------RWS21-------------------------------------
		class button_RWS_211: TITAN_AS_Button
		{
			idc = 2101;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2101""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_212: TITAN_AS_Button
		{
			idc = 2102;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2102""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_213: TITAN_AS_Button
		{
			idc = 2103;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2103""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_214: TITAN_AS_Button
		{
			idc = 2104;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2104""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};
//-------------------------------------RWS22-------------------------------------
		class button_RWS_221: TITAN_AS_Button
		{
			idc = 2201;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.474 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2201""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_222: TITAN_AS_Button
		{
			idc = 2202;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2202""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_223: TITAN_AS_Button
		{
			idc = 2203;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2203""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_224: TITAN_AS_Button
		{
			idc = 2204;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2204""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------RWS23-------------------------------------
		class button_RWS_231: TITAN_AS_Button
		{
			idc = 2301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.474 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2301""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_232: TITAN_AS_Button
		{
			idc = 2302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2302""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_233: TITAN_AS_Button
		{
			idc = 2303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2303""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_234: TITAN_AS_Button
		{
			idc = 2304;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2304""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};
//-------------------------------------RWS24-------------------------------------
		class button_RWS_241: TITAN_AS_Button
		{
			idc = 2401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2401""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_242: TITAN_AS_Button
		{
			idc = 2402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2402""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_243: TITAN_AS_Button
		{
			idc = 2403;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2403""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_RWS_244: TITAN_AS_Button
		{
			idc = 2404;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""RWS_2404""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//========================================= Fixed Wing Strike Land =======================================
//-------------------------------------FWLS31-------------------------------
		class button_FWLS_311: TITAN_AS_Button
		{
			idc = 3101;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3101""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_312: TITAN_AS_Button
		{
			idc = 3102;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3102""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_313: TITAN_AS_Button
		{
			idc = 3103;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3103""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWLS32-------------------------------
		class button_FWLS_321: TITAN_AS_Button
		{
			idc = 3201;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3201""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_322: TITAN_AS_Button
		{
			idc = 3202;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3202""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_323: TITAN_AS_Button
		{
			idc = 3203;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3203""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWLS33-------------------------------
		class button_FWLS_331: TITAN_AS_Button
		{
			idc = 3301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3301""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_332: TITAN_AS_Button
		{
			idc = 3302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3302""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_333: TITAN_AS_Button
		{
			idc = 3303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3303""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWLS34-------------------------------
		class button_FWLS_341: TITAN_AS_Button
		{
			idc = 3401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3401""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_342: TITAN_AS_Button
		{
			idc = 3402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3402""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWLS_343: TITAN_AS_Button
		{
			idc = 3403;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_3403""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//========================================= Fix Strike Sea =======================================
//-------------------------------------FWSS41-------------------------------
		class button_FWSS_411: TITAN_AS_Button
		{
			idc = 4101;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;//0.578
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4101""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWSS_412: TITAN_AS_Button
		{
			idc = 4102;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;//0.602
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4102""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWSS42-------------------------------
		class button_FWSS_421: TITAN_AS_Button
		{
			idc = 4201;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4201""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWSS_422: TITAN_AS_Button
		{
			idc = 4202;
			type = 1;

			x = 0.383 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4202""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWSS43-------------------------------
		class button_FWSS_431: TITAN_AS_Button
		{
			idc = 4301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4301""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWSS_432: TITAN_AS_Button
		{
			idc = 4302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4302""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWSS44-------------------------------
		class button_FWSS_441: TITAN_AS_Button
		{
			idc = 4401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4401""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

		class button_FWSS_394: TITAN_AS_Button
		{
			idc = 4402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSS_4402""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//========================================= Fixed Wing mats =======================================
//-------------------------------------FWM51-------------------------------
		class button_FWM_511: TITAN_AS_Button
		{
			idc = 5101;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;//0.656
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWM_5101""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWM52--------------------------------------------------------------
/*

		class button_FWM_521: TITAN_AS_Button
		{
			idc = 5201;
			type = 1;

			x = 0.314 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWM_5201""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};
*/

//-------------------------------------FWM53-------------------------------
		class button_FWM_531: TITAN_AS_Button
		{
			idc = 5301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWM_5301""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};

//-------------------------------------FWM54-------------------------------
/*
		class button_FWM_541: TITAN_AS_Button
		{
			idc = 5401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWM_5401""] execVM ""TitanAddons\AirSupport\vSup.sqf"";";
		};
*/
	};
};
