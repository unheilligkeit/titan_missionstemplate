if (!isServer) then {waitUntil {!(isNull Player)}; };

_AS_BTN = _this select 0;

_debug = false;
if (_debug) then {hint format ["Es wurde Scrpt vSup aufgerufen \n und der Button = %1 gedrückt.", _AS_BTN];};




//------------------------------------CLEAR SLOTS----------------------------------------------
if (_AS_BTN == "RWM_1100") then {
	["",110,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_1200") then {
	["",120,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_1300") then {
	["",130,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_1400") then {
	["",140,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

//----------------------------------------------------------------------------------
if (_AS_BTN == "RWM_1101") then {
	[11,111,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1102") then {
	[11,112,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1103") then {
	[11,113,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_1201") then {
	[12,121,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1202") then {
	[12,122,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1203") then {
	[12,123,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_1301") then {
	[13,131,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1302") then {
	[13,132,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1303") then {
	[13,133,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_1401") then {
	[14,141,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1402") then {
	[14,142,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_1403") then {
	[14,143,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "RWS_2101") then {
	[21,211,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2102") then {
	[21,212,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2103") then {
	[21,213,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2104") then {
	[21,214,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_2201") then {
	[22,221,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2202") then {
	[22,222,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2203") then {
	[22,223,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2204") then {
	[22,224,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_2301") then {
	[23,231,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2302") then {
	[23,232,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2303") then {
	[23,233,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2304") then {
	[23,234,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_2401") then {
	[24,241,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2402") then {
	[24,242,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2403") then {
	[24,243,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_2404") then {
	[24,244,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWSL_3101") then {
	[31,311,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3102") then {
	[31,312,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3103") then {
	[31,313,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_3201") then {
	[32,321,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3202") then {
	[32,322,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3203") then {
	[32,323,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_3301") then {
	[33,331,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3302") then {
	[33,332,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3303") then {
	[33,333,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_3401") then {
	[34,341,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3402") then {
	[34,342,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_3403") then {
	[34,343,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWSS_4101") then {
	[41,411,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_4102") then {
	[41,412,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_4201") then {
	[42,421,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_4202") then {
	[42,422,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_4301") then {
	[43,431,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_4302") then {
	[43,432,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_4401") then {
	[44,441,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_4402") then {
	[44,442,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWM_5101") then {
	[51,511,1] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_5201") then {
	[52,521,2] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_5301") then {
	[53,531,3] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_5401") then {
	[54,541,4] execVM "Titan_addons\AirSupport\functions\fn_ASArray.sqf";
};



//============================ Exit =============================================================

if (true) exitWith {
	closeDialog 0;
	[] call compile preprocessFileLineNumbers "Titan_addons\AirSupport\support_entry.sqf";
};
