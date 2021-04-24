if (!isServer) then {waitUntil {!(isNull Player)}; };

_AS_BTN = _this select 0;

_debug = false;
if (_debug) then {hint format ["Es wurde Scrpt vSup_2 aufgerufen \n und der Button = %1 gedrückt.", _AS_BTN];};




//------------------------------------CLEAR SLOTS----------------------------------------------
if (_AS_BTN == "RWM_5100") then {
	["",110,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_5200") then {
	["",120,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_5300") then {
	["",130,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWM_5400") then {
	["",140,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

//----------------------------------------------------------------------------------
if (_AS_BTN == "RWM_5101") then {
	[11,111,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5102") then {
	[11,112,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5103") then {
	[11,113,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_5201") then {
	[12,121,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5202") then {
	[12,122,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5203") then {
	[12,123,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_5301") then {
	[13,131,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5302") then {
	[13,132,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5303") then {
	[13,133,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};


if (_AS_BTN == "RWM_5401") then {
	[14,141,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5402") then {
	[14,142,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWM_5403") then {
	[14,143,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "RWS_6101") then {
	[21,211,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6102") then {
	[21,212,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6103") then {
	[21,213,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6104") then {
	[21,214,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_6201") then {
	[22,221,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6202") then {
	[22,222,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6203") then {
	[22,223,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6204") then {
	[22,224,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_6301") then {
	[23,231,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6302") then {
	[23,232,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6303") then {
	[23,233,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6304") then {
	[23,234,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "RWS_6401") then {
	[24,241,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6402") then {
	[24,242,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6403") then {
	[24,243,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "RWS_6404") then {
	[24,244,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWSL_7101") then {
	[31,311,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7102") then {
	[31,312,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7103") then {
	[31,313,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_7201") then {
	[32,321,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7202") then {
	[32,322,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7203") then {
	[32,323,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_7301") then {
	[33,331,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7302") then {
	[33,332,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7303") then {
	[33,333,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSL_7401") then {
	[34,341,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7402") then {
	[34,342,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSL_7403") then {
	[34,343,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWSS_8101") then {
	[41,411,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_8102") then {
	[41,412,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_8201") then {
	[42,421,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_8202") then {
	[42,422,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_8301") then {
	[43,431,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_8302") then {
	[43,432,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWSS_8401") then {
	[44,441,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};
if (_AS_BTN == "FWSS_8402") then {
	[44,442,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

//--------------------------------------------------------------------------------------
if (_AS_BTN == "FWM_9101") then {
	[51,511,1] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_9201") then {
	[52,521,2] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_9301") then {
	[53,531,3] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};

if (_AS_BTN == "FWM_9401") then {
	[54,541,4] execVM "Titan_addons\AirSupport\functions_2\fn_ASArray.sqf";
};



//============================ Exit =============================================================

if (true) exitWith {
	closeDialog 0;
	[] call compile preprocessFileLineNumbers "Titan_addons\AirSupport\support_entry_2.sqf";
};
