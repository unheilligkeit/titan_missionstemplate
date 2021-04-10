//----------------------------------------------------------------------------------------------------
/*
		*** Air Support ***
*/
//----------------------------------------------------------------------------------------------------
if (!isServer) then {waitUntil {!(isNull player)};};

// Var for slots and vehicles
#include "functions_2\fn_ASVar.sqf" 

//open dialog
_ok = createDialog "air_support_2";

//=========================================================================================
/*
					set spawn button false 
*/
//=========================================================================================

if ((AS5100 == false) && (AS5200 == false) && (AS5300 == false) && (AS5400 == false)) then { 
	AS5001 = false
} else {
	AS5001 = true
};


//=========================================================================================
/*
						NERVER TOUCH THIS 
						define Buttons bool
						
*/
//=========================================================================================

//SPAWN
ctrlEnable [5001, AS5001];

// CLEAR Slot 1
ctrlEnable [5100, AS5100]; 
if (AS5100 == false) then {ctrlSetText [500, _slot1];};

// CLEAR Slot 1
ctrlEnable [5200, AS5200]; 
if (AS5200 == false) then {ctrlSetText [600, _slot2];};

// CLEAR Slot 1
ctrlEnable [5300, AS5300]; 
if (AS5300 == false) then {ctrlSetText [700, _slot3];};

// CLEAR Slo0t 1
ctrlEnable [5400, AS5400]; 
if (AS5400 == false) then {ctrlSetText [800, _slot4];};

//=========================================================================================
//RWM 
ctrlEnable [5101, AS5101];
if (AS5101 == false) then {ctrlSetText [500, _RWM_1];};
ctrlEnable [5102, AS5102];
if (AS5102 == false) then {ctrlSetText [500, _RWM_2];};
ctrlEnable [5103, AS5103];
if (AS5103 == false) then {ctrlSetText [500, _RWM_3];};

ctrlEnable [5201, AS5201];
if (AS5201 == false) then {ctrlSetText [600, _RWM_1];};
ctrlEnable [5202, AS5202];
if (AS5202 == false) then {ctrlSetText [600, _RWM_2];};
ctrlEnable [5203, AS5203];
if (AS5203 == false) then {ctrlSetText [600, _RWM_3];};

ctrlEnable [5301, AS5301];
if (AS5301 == false) then {ctrlSetText [700, _RWM_1];};
ctrlEnable [5302, AS5302];
if (AS5302 == false) then {ctrlSetText [700, _RWM_2];};
ctrlEnable [5303, AS5303];
if (AS5303 == false) then {ctrlSetText [700, _RWM_3];};

ctrlEnable [5401, AS5401];
if (AS5401 == false) then {ctrlSetText [800, _RWM_1];};
ctrlEnable [5402, AS5402];
if (AS5402 == false) then {ctrlSetText [800, _RWM_2];};
ctrlEnable [5403, AS5403];
if (AS5403 == false) then {ctrlSetText [800, _RWM_3];};

//=========================================================================================
//RWS
ctrlEnable [6101, AS6101];
if (AS6101 == false) then {ctrlSetText [500, _RWS_1];};
ctrlEnable [6102, AS6102];
if (AS6102 == false) then {ctrlSetText [500, _RWS_2];};
ctrlEnable [6103, AS6103];
if (AS6103 == false) then {ctrlSetText [500, _RWS_3];};
ctrlEnable [6104, AS6104];
if (AS6104 == false) then {ctrlSetText [500, _RWS_4];};

ctrlEnable [6201, AS6201];
if (AS6201 == false) then {ctrlSetText [600, _RWS_1];};
ctrlEnable [6202, AS6202];
if (AS6202 == false) then {ctrlSetText [600, _RWS_2];};
ctrlEnable [6203, AS6203];
if (AS6203 == false) then {ctrlSetText [600, _RWS_3];};
ctrlEnable [6204, AS6204];
if (AS6204 == false) then {ctrlSetText [600, _RWS_4];};

ctrlEnable [6301, AS6301];
if (AS6301 == false) then {ctrlSetText [700, _RWS_1];};
ctrlEnable [6302, AS6302];
if (AS6302 == false) then {ctrlSetText [700, _RWS_2];};
ctrlEnable [6303, AS6303];
if (AS6303 == false) then {ctrlSetText [700, _RWS_3];};
ctrlEnable [6304, AS6304];
if (AS6304 == false) then {ctrlSetText [700, _RWS_4];};

ctrlEnable [6401, AS6401];
if (AS6401 == false) then {ctrlSetText [800, _RWS_1];};
ctrlEnable [6402, AS6402];
if (AS6402 == false) then {ctrlSetText [800, _RWS_2];};
ctrlEnable [6403, AS6403];
if (AS6403 == false) then {ctrlSetText [800, _RWS_3];};
ctrlEnable [6404, AS6404];
if (AS6404 == false) then {ctrlSetText [800, _RWS_4];};

//=========================================================================================
//FWSL
ctrlEnable [7101, AS7101];
if (AS7101 == false) then {ctrlSetText [500, _FWSL_1];};
ctrlEnable [7102, AS7102];
if (AS7102 == false) then {ctrlSetText [500, _FWSL_2];};
ctrlEnable [7103, AS7103];
if (AS7103 == false) then {ctrlSetText [500, _FWSL_3];};

ctrlEnable [7201, AS7201];
if (AS7201 == false) then {ctrlSetText [600, _FWSL_1];};
ctrlEnable [7202, AS7202];
if (AS7202 == false) then {ctrlSetText [600, _FWSL_2];};
ctrlEnable [7203, AS7203];
if (AS7203 == false) then {ctrlSetText [600, _FWSL_3];};

ctrlEnable [7301, AS7301];
if (AS7301 == false) then {ctrlSetText [700, _FWSL_1];};
ctrlEnable [7302, AS7302];
if (AS7302 == false) then {ctrlSetText [700, _FWSL_2];};
ctrlEnable [7303, AS7303];
if (AS7303 == false) then {ctrlSetText [700, _FWSL_3];};

ctrlEnable [7401, AS7401];
if (AS7401 == false) then {ctrlSetText [800, _FWSL_1];};
ctrlEnable [7402, AS7402];
if (AS7402 == false) then {ctrlSetText [800, _FWSL_2];};
ctrlEnable [7403, AS7403];
if (AS7403 == false) then {ctrlSetText [800, _FWSL_3];};

//=========================================================================================
//FWSS
ctrlEnable [8101, AS8101];
if (AS8101 == false) then {ctrlSetText [500, _FWSS_1];};
ctrlEnable [8102, AS8102];
if (AS8102 == false) then {ctrlSetText [500, _FWSS_2];};


ctrlEnable [8201, AS8201];
if (AS8201 == false) then {ctrlSetText [600, _FWSS_1];};
ctrlEnable [8202, AS8202];
if (AS8202 == false) then {ctrlSetText [600, _FWSS_2];};


ctrlEnable [8301, AS8301];
if (AS8301 == false) then {ctrlSetText [700, _FWSS_1];};
ctrlEnable [8302, AS8302];
if (AS8302 == false) then {ctrlSetText [700, _FWSS_2];};


ctrlEnable [8401, AS8401];
if (AS8401 == false) then {ctrlSetText [800, _FWSS_1];};
ctrlEnable [8402, AS8402];
if (AS8402 == false) then {ctrlSetText [800, _FWSS_2];};

//=========================================================================================
//FWM
ctrlEnable [9101, AS9101];
if (AS9101 == false) then {ctrlSetText [500, _FWM_1];};

ctrlEnable [9201, AS9201];
if (AS9201 == false) then {ctrlSetText [600, _FWM_1];};

ctrlEnable [9301, AS9301];
if (AS9301 == false) then {ctrlSetText [700, _FWM_1];};

ctrlEnable [9401, AS9401];
if (AS9401 == false) then {ctrlSetText [800, _FWM_1];};

//=========================================================================================
/*
						NERVER TOUCH THIS 
				Buttons become Variable for Aircraft Names
					from "include fn_ASVar"
*/
//=========================================================================================

//RWM
ctrlSetText [5101, _RWM_1];
ctrlSetText [5102, _RWM_2];
ctrlSetText [5103, _RWM_3];

ctrlSetText [5201, _RWM_1];
ctrlSetText [5202, _RWM_2];
ctrlSetText [5203, _RWM_3];

ctrlSetText [5301, _RWM_1];
ctrlSetText [5302, _RWM_2];
ctrlSetText [5303, _RWM_3];

ctrlSetText [5401, _RWM_1];
ctrlSetText [5402, _RWM_2];
ctrlSetText [5403, _RWM_3];

//RWS
ctrlSetText [6101, _RWS_1];
ctrlSetText [6102, _RWS_2];
ctrlSetText [6103, _RWS_3];
ctrlSetText [6104, _RWS_4];

ctrlSetText [6201, _RWS_1];
ctrlSetText [6202, _RWS_2];
ctrlSetText [6203, _RWS_3];
ctrlSetText [6204, _RWS_4];

ctrlSetText [6301, _RWS_1];
ctrlSetText [6302, _RWS_2];
ctrlSetText [6303, _RWS_3];
ctrlSetText [6304, _RWS_4];

ctrlSetText [6401, _RWS_1];
ctrlSetText [6402, _RWS_2];
ctrlSetText [6403, _RWS_3];
ctrlSetText [6404, _RWS_4];

//FWSL
ctrlSetText [7101, _FWSL_1];
ctrlSetText [7102, _FWSL_2];
ctrlSetText [7103, _FWSL_3];

ctrlSetText [7201, _FWSL_1];
ctrlSetText [7202, _FWSL_2];
ctrlSetText [7203, _FWSL_3];

ctrlSetText [7301, _FWSL_1];
ctrlSetText [7302, _FWSL_2];
ctrlSetText [7303, _FWSL_3];

ctrlSetText [7401, _FWSL_1];
ctrlSetText [7402, _FWSL_2];
ctrlSetText [7403, _FWSL_3];

//FWSS
ctrlSetText [8101, _FWSS_1];
ctrlSetText [8102, _FWSS_2];

ctrlSetText [8201, _FWSS_1];
ctrlSetText [8202, _FWSS_2];

ctrlSetText [8301, _FWSS_1];
ctrlSetText [8302, _FWSS_2];

ctrlSetText [8401, _FWSS_1];
ctrlSetText [8402, _FWSS_2];

//FWM
ctrlSetText [9101, _FWM_1];

ctrlSetText [9201, _FWM_1];

ctrlSetText [9301, _FWM_1];

ctrlSetText [9401, _FWM_1];


//============================== EXIT ===========================================================

if (!_ok) then {hint "Dialog couldn't be opened!"};
if(true) exitWith{};



