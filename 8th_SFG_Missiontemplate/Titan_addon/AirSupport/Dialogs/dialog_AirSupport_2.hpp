class air_support_2
{
	idd = 50001;
	movingable = 0;

//========================================= CONTROLLS BACKGROUND =============================	
	class ControlsBackground
	{
		// HINTERGRUND
		class home_screen: RscPicture
		{
			idc = -1;
			text = "Titan_addon\AirSupport\picture\Air_Panel.paa";
			
			x = 0.240 * safezoneW + safezoneX;
			y = 0.070 * safezoneH + safezoneY;
			w = 0.590 * SafeZoneW;
			h = 0.880 * SafeZoneH;
		};

		// TITAN LOGO
		class Logo: TITANLogo
		{
			idc = -1;
			text = "Titan_addon\AirSupport\picture\TITANLogo.paa";
			
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
			idc = 500;
			
			x = 0.307 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW; 
			h = 0.040 * safezoneH;
		};
		
		//SLOT 2
		class slot_2: TITANSlots
		{
			idc = 600;
			
			x = 0.422 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW; 
			h = 0.040 * safezoneH;
		};
		
		//SLOT 3
		class slot_3: TITANSlots
		{
			idc = 700;
			
			x = 0.537 * safezoneW + safezoneX; 
			y = 0.269 * safezoneH + safezoneY;
			w = 0.115 * safezoneW; 
			h = 0.040 * safezoneH;
		};		

		//SLOT 4
		class slot_4: TITANSlots
		{
			idc = 800;
			
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
			idc = 5001;
			text = "VEHICLE SPAWN";
			
			x = 0.307 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.283 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[] execVM ""Titan_addon\AirSupport\functions_2\fn_AS_spawn.sqf"";";
		};
		
		// CLEAR SPAWN AREA
		class button_clear: TITAN_AS_Button
		{
			idc = 5002;
			text = "CLEAR_AREA";
			
			x = 0.597 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.170 * safezoneW;
			h = 0.022 * safezoneH;
		
			action = "[] execVM ""Titan_addon\AirSupport\functions_2\fn_ASClear.sqf"";";
		};
		
		// CLOSE BUTTON
		class CloseButton: TITAN_Close_Button
		{
			idc = 5000;
			//text = "CLOSE";
			
			x = 0.650 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "CLOSE";
			action = "closeDialog 50000;";
		};
		
		// BIS Virtual - Arsenal 
		class F1_AVA_Button: TITAN_Close_Button
		{
			idc = 50001;
			//text = "AVA";
			
			x = 0.385 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "ACE Virtual Arsenal";
			action = "[player, player, true] call ace_arsenal_fnc_openBox; closeDialog 50001;";
		};
		
		// ACE Virtual - Arsenal 
		class F2_BVA_Button: TITAN_Close_Button
		{
			idc = 50001;
			//text = "BVA";
			
			x = 0.410 * safezoneW + safezoneX;
			y = 0.866 * safezoneH + safezoneY;
			w = "(40.0000000000003 / 1920) * SafeZoneW";
			h = "(40 / 1080) * SafeZoneH";
			tooltip = "BIS Virtual Arsenal";
			action = "[""Open"",true] call BIS_fnc_arsenal; closeDialog 50000;";
		};

//========================================= CLEAR BUTTONS ====================================
//-------------------------------------RWM11-------------------------------------
		class button_RWM_510: TITAN_AS_Button
		{
			idc = 5100;
			type = 1; 
			text = "CLEAR";
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5100""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_520: TITAN_AS_Button
		{
			idc = 5200;
			type = 1; 
			text = "CLEAR";
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5200""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_530: TITAN_AS_Button
		{
			idc = 5300;
			type = 1;
			text = "CLEAR";

			x = 0.452 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5300""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_540: TITAN_AS_Button
		{
			idc = 5400;
			type = 1; 
			text = "CLEAR";

			x = 0.521 * safezoneW + safezoneX;
			y = 0.337 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5400""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
//========================================= Rotary Wing mats ====================================
//-------------------------------------RWM11-------------------------------------
		class button_RWM_511: TITAN_AS_Button
		{
			idc = 5101;
			type = 1; 
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5101""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_512: TITAN_AS_Button
		{
			idc = 5102;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5102""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_513: TITAN_AS_Button
		{
			idc = 5103;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5103""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
//-------------------------------------RWM12-------------------------------------		
		class button_RWM_521: TITAN_AS_Button
		{
			idc = 5201;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5201""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWM_522: TITAN_AS_Button
		{
			idc = 5202;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5202""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWM_523: TITAN_AS_Button
		{
			idc = 5203;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5203""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";	
		};
 
//-------------------------------------RWM13-------------------------------------
		class button_RWM_531: TITAN_AS_Button
		{
			idc = 5301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5301""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWM_532: TITAN_AS_Button
		{
			idc = 5302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5302""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWM_533: TITAN_AS_Button
		{
			idc = 5303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5303""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
//-------------------------------------RWM14-------------------------------------	
		class button_RWM_541: TITAN_AS_Button
		{
			idc = 5401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.378 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5401""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_542: TITAN_AS_Button
		{
			idc = 5402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5402""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWM_543: TITAN_AS_Button
		{
			idc = 5403;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.426 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWM_5403""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
//========================================= Rotary Wing Strike =======================================
//-------------------------------------RWS21-------------------------------------
		class button_RWS_611: TITAN_AS_Button
		{
			idc = 6101;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6101""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_612: TITAN_AS_Button
		{
			idc = 6102;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6102""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_613: TITAN_AS_Button
		{
			idc = 6103;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6103""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_614: TITAN_AS_Button
		{
			idc = 6104;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6104""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
//-------------------------------------RWS22-------------------------------------		
		class button_RWS_621: TITAN_AS_Button
		{
			idc = 6201;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.474 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6201""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_622: TITAN_AS_Button
		{
			idc = 6202;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6202""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_623: TITAN_AS_Button
		{
			idc = 6203;
			type = 1; 
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_2203""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWS_624: TITAN_AS_Button
		{
			idc = 2204;
			type = 1; 
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_2204""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------RWS23-------------------------------------
		class button_RWS_631: TITAN_AS_Button
		{
			idc = 6301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.474 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6301""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_632: TITAN_AS_Button
		{
			idc = 6302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6302""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_633: TITAN_AS_Button
		{
			idc = 6303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6303""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
		class button_RWS_634: TITAN_AS_Button
		{
			idc = 6304;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6304""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
//-------------------------------------RWS24-------------------------------------	
		class button_RWS_641: TITAN_AS_Button
		{
			idc = 6401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6401""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_642: TITAN_AS_Button
		{
			idc = 6402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.498 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6402""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_643: TITAN_AS_Button
		{
			idc = 6403;
			type = 1;
			
			x = 0.521 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6403""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_RWS_644: TITAN_AS_Button
		{
			idc = 6404;
			type = 1;
			
			x = 0.521 * safezoneW + safezoneX;
			y = 0.546 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""RWS_6404""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//========================================= Fixed Wing Strike Land =======================================
//-------------------------------------FWLS31-------------------------------	
		class button_FWLS_711: TITAN_AS_Button
		{
			idc = 7101;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7101""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_712: TITAN_AS_Button
		{
			idc = 7102;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7102""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
	
		class button_FWLS_713: TITAN_AS_Button
		{
			idc = 7103;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7103""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------FWLS32-------------------------------		
		class button_FWLS_721: TITAN_AS_Button
		{
			idc = 7201;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7201""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_722: TITAN_AS_Button
		{
			idc = 7202;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7202""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_723: TITAN_AS_Button
		{
			idc = 7203;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;

			action = "[""FWSL_7203""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
	
//-------------------------------------FWLS33-------------------------------
		class button_FWLS_731: TITAN_AS_Button
		{
			idc = 7301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7301""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_732: TITAN_AS_Button
		{
			idc = 7302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7302""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_733: TITAN_AS_Button
		{
			idc = 7303;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7303""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------FWLS34-------------------------------	
		class button_FWLS_741: TITAN_AS_Button
		{
			idc = 7401;
			type = 1;
			
			x = 0.521 * safezoneW + safezoneX;
			y = 0.594 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7401""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_742: TITAN_AS_Button
		{
			idc = 7402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.618 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7402""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWLS_743: TITAN_AS_Button
		{
			idc = 7403;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSL_7403""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//========================================= Fix Strike Sea =======================================
//-------------------------------------FWSS41-------------------------------	
		class button_FWSS_811: TITAN_AS_Button
		{
			idc = 8101;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;//0.578
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8101""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWSS_812: TITAN_AS_Button
		{
			idc = 8102;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;//0.602
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8102""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------FWSS42-------------------------------	
		class button_FWSS_821: TITAN_AS_Button
		{
			idc = 8201;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8201""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWSS_822: TITAN_AS_Button
		{
			idc = 8202;
			type = 1;
			
			x = 0.383 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8202""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------FWSS43-------------------------------
		class button_FWSS_831: TITAN_AS_Button
		{
			idc = 8301;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8301""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWSS_832: TITAN_AS_Button
		{
			idc = 8302;
			type = 1;

			x = 0.452 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8302""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//-------------------------------------FWSS44-------------------------------	
		class button_FWSS_841: TITAN_AS_Button
		{
			idc = 8401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.690 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8401""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

		class button_FWSS_894: TITAN_AS_Button
		{
			idc = 8402;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.714 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWSS_8402""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};

//========================================= Fixed Wing mats =======================================
//-------------------------------------FWM51-------------------------------	
		class button_FWM_811: TITAN_AS_Button
		{
			idc = 9101;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;//0.656
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWM_9101""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
		
//-------------------------------------FWM52--------------------------------------------------------------	
/*		
		
		class button_FWM_921: TITAN_AS_Button
		{
			idc = 9201;
			type = 1;
			
			x = 0.314 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWM_9201""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
*/		

//-------------------------------------FWM53-------------------------------	
		class button_FWM_931: TITAN_AS_Button
		{
			idc = 9301;
			type = 1;
			
			x = 0.452 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWM_9301""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
	
//-------------------------------------FWM54-------------------------------	
/*
		class button_FWM_941: TITAN_AS_Button
		{
			idc = 9401;
			type = 1;

			x = 0.521 * safezoneW + safezoneX;
			y = 0.762 * safezoneH + safezoneY;
			w = 0.062 * safezoneW;
			h = 0.022 * safezoneH;
			
			action = "[""FWM_9401""] execVM ""Titan_addon\AirSupport\vSup_2.sqf"";";
		};
*/		
	};
};