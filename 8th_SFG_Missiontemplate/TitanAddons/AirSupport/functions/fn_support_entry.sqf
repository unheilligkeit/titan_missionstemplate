//----------------------------------------------------------------------------------------------------
/*
		*** Air Support ***
*/
//----------------------------------------------------------------------------------------------------

// Var for slots and vehicles
#include "fn_ASVar.sqf"


//open dialog
_ok = createDialog "support";

//=========================================================================================
/*
					set spawn button false
*/
//=========================================================================================

if ((AS1100 == false) && (AS1200 == false) && (AS1300 == false) && (AS1400 == false)) then {
	AS1001 = false
} else {
	AS1001 = true
};


//=========================================================================================
/*
						NERVER TOUCH THIS
						define Buttons bool

*/
//=========================================================================================

//SPAWN
ctrlEnable [1001, AS1001];

// CLEAR Slot 1
ctrlEnable [1100, AS1100];
if (AS1100 == false) then {ctrlSetText [100, _slot1];};

// CLEAR Slot 1
ctrlEnable [1200, AS1200];
if (AS1200 == false) then {ctrlSetText [200, _slot2];};

// CLEAR Slot 1
ctrlEnable [1300, AS1300];
if (AS1300 == false) then {ctrlSetText [300, _slot3];};

// CLEAR Slot 1
ctrlEnable [1400, AS1400];
if (AS1400 == false) then {ctrlSetText [400, _slot4];};

//=========================================================================================
//RWM
ctrlEnable [1101, AS1101];
if (AS1101 == false) then {ctrlSetText [100, _RWM_1];};
ctrlEnable [1102, AS1102];
if (AS1102 == false) then {ctrlSetText [100, _RWM_2];};
ctrlEnable [1103, AS1103];
if (AS1103 == false) then {ctrlSetText [100, _RWM_3];};

ctrlEnable [1201, AS1201];
if (AS1201 == false) then {ctrlSetText [200, _RWM_1];};
ctrlEnable [1202, AS1202];
if (AS1202 == false) then {ctrlSetText [200, _RWM_2];};
ctrlEnable [1203, AS1203];
if (AS1203 == false) then {ctrlSetText [200, _RWM_3];};

ctrlEnable [1301, AS1301];
if (AS1301 == false) then {ctrlSetText [300, _RWM_1];};
ctrlEnable [1302, AS1302];
if (AS1302 == false) then {ctrlSetText [300, _RWM_2];};
ctrlEnable [1303, AS1303];
if (AS1303 == false) then {ctrlSetText [300, _RWM_3];};

ctrlEnable [1401, AS1401];
if (AS1401 == false) then {ctrlSetText [400, _RWM_1];};
ctrlEnable [1402, AS1402];
if (AS1402 == false) then {ctrlSetText [400, _RWM_2];};
ctrlEnable [1403, AS1403];
if (AS1403 == false) then {ctrlSetText [400, _RWM_3];};

//=========================================================================================
//RWS
ctrlEnable [2101, AS2101];
if (AS2101 == false) then {ctrlSetText [100, _RWS_1];};
ctrlEnable [2102, AS2102];
if (AS2102 == false) then {ctrlSetText [100, _RWS_2];};
ctrlEnable [2103, AS2103];
if (AS2103 == false) then {ctrlSetText [100, _RWS_3];};
ctrlEnable [2104, AS2104];
if (AS2104 == false) then {ctrlSetText [100, _RWS_4];};

ctrlEnable [2201, AS2201];
if (AS2201 == false) then {ctrlSetText [200, _RWS_1];};
ctrlEnable [2202, AS2202];
if (AS2202 == false) then {ctrlSetText [200, _RWS_2];};
ctrlEnable [2203, AS2203];
if (AS2203 == false) then {ctrlSetText [200, _RWS_3];};
ctrlEnable [2204, AS2204];
if (AS2204 == false) then {ctrlSetText [200, _RWS_4];};

ctrlEnable [2301, AS2301];
if (AS2301 == false) then {ctrlSetText [300, _RWS_1];};
ctrlEnable [2302, AS2302];
if (AS2302 == false) then {ctrlSetText [300, _RWS_2];};
ctrlEnable [2303, AS2303];
if (AS2303 == false) then {ctrlSetText [300, _RWS_3];};
ctrlEnable [2304, AS2304];
if (AS2304 == false) then {ctrlSetText [300, _RWS_4];};

ctrlEnable [2401, AS2401];
if (AS2401 == false) then {ctrlSetText [400, _RWS_1];};
ctrlEnable [2402, AS2402];
if (AS2402 == false) then {ctrlSetText [400, _RWS_2];};
ctrlEnable [2403, AS2403];
if (AS2403 == false) then {ctrlSetText [400, _RWS_3];};
ctrlEnable [2404, AS2404];
if (AS2404 == false) then {ctrlSetText [400, _RWS_4];};

//=========================================================================================
//FWSL
ctrlEnable [3101, AS3101];
if (AS3101 == false) then {ctrlSetText [100, _FWSL_1];};
ctrlEnable [3102, AS3102];
if (AS3102 == false) then {ctrlSetText [100, _FWSL_2];};
ctrlEnable [3103, AS3103];
if (AS3103 == false) then {ctrlSetText [100, _FWSL_3];};

ctrlEnable [3201, AS3201];
if (AS3201 == false) then {ctrlSetText [200, _FWSL_1];};
ctrlEnable [3202, AS3202];
if (AS3202 == false) then {ctrlSetText [200, _FWSL_2];};
ctrlEnable [3203, AS3203];
if (AS3203 == false) then {ctrlSetText [200, _FWSL_3];};

ctrlEnable [3301, AS3301];
if (AS3301 == false) then {ctrlSetText [300, _FWSL_1];};
ctrlEnable [3302, AS3302];
if (AS3302 == false) then {ctrlSetText [300, _FWSL_2];};
ctrlEnable [3303, AS3303];
if (AS3303 == false) then {ctrlSetText [300, _FWSL_3];};

ctrlEnable [3401, AS3401];
if (AS3401 == false) then {ctrlSetText [400, _FWSL_1];};
ctrlEnable [3402, AS3402];
if (AS3402 == false) then {ctrlSetText [400, _FWSL_2];};
ctrlEnable [3403, AS3403];
if (AS3403 == false) then {ctrlSetText [400, _FWSL_3];};

//=========================================================================================
//FWSS
ctrlEnable [4101, AS4101];
if (AS4101 == false) then {ctrlSetText [100, _FWSS_1];};
ctrlEnable [4102, AS4102];
if (AS4102 == false) then {ctrlSetText [100, _FWSS_2];};


ctrlEnable [4201, AS4201];
if (AS4201 == false) then {ctrlSetText [200, _FWSS_1];};
ctrlEnable [4202, AS4202];
if (AS4202 == false) then {ctrlSetText [200, _FWSS_2];};


ctrlEnable [4301, AS4301];
if (AS4301 == false) then {ctrlSetText [300, _FWSS_1];};
ctrlEnable [4302, AS4302];
if (AS4302 == false) then {ctrlSetText [300, _FWSS_2];};


ctrlEnable [4401, AS4401];
if (AS4401 == false) then {ctrlSetText [400, _FWSS_1];};
ctrlEnable [4402, AS4402];
if (AS4402 == false) then {ctrlSetText [400, _FWSS_2];};

//=========================================================================================
//FWM
ctrlEnable [5101, AS5101];
if (AS5101 == false) then {ctrlSetText [100, _FWM_1];};

ctrlEnable [5201, AS5201];
if (AS5201 == false) then {ctrlSetText [200, _FWM_1];};

ctrlEnable [5301, AS5301];
if (AS5301 == false) then {ctrlSetText [300, _FWM_1];};

ctrlEnable [5401, AS5401];
if (AS5401 == false) then {ctrlSetText [400, _FWM_1];};

//=========================================================================================
/*
						NERVER TOUCH THIS
				Buttons become Variable for Aircraft Names
					from "include fn_ASVar"
*/
//=========================================================================================

//RWM
ctrlSetText [1101, _RWM_1];
ctrlSetText [1102, _RWM_2];
ctrlSetText [1103, _RWM_3];

ctrlSetText [1201, _RWM_1];
ctrlSetText [1202, _RWM_2];
ctrlSetText [1203, _RWM_3];

ctrlSetText [1301, _RWM_1];
ctrlSetText [1302, _RWM_2];
ctrlSetText [1303, _RWM_3];

ctrlSetText [1401, _RWM_1];
ctrlSetText [1402, _RWM_2];
ctrlSetText [1403, _RWM_3];

//RWS
ctrlSetText [2101, _RWS_1];
ctrlSetText [2102, _RWS_2];
ctrlSetText [2103, _RWS_3];
ctrlSetText [2104, _RWS_4];

ctrlSetText [2201, _RWS_1];
ctrlSetText [2202, _RWS_2];
ctrlSetText [2203, _RWS_3];
ctrlSetText [2204, _RWS_4];

ctrlSetText [2301, _RWS_1];
ctrlSetText [2302, _RWS_2];
ctrlSetText [2303, _RWS_3];
ctrlSetText [2304, _RWS_4];

ctrlSetText [2401, _RWS_1];
ctrlSetText [2402, _RWS_2];
ctrlSetText [2403, _RWS_3];
ctrlSetText [2404, _RWS_4];

//FWSL
ctrlSetText [3101, _FWSL_1];
ctrlSetText [3102, _FWSL_2];
ctrlSetText [3103, _FWSL_3];

ctrlSetText [3201, _FWSL_1];
ctrlSetText [3202, _FWSL_2];
ctrlSetText [3203, _FWSL_3];

ctrlSetText [3301, _FWSL_1];
ctrlSetText [3302, _FWSL_2];
ctrlSetText [3303, _FWSL_3];

ctrlSetText [3401, _FWSL_1];
ctrlSetText [3402, _FWSL_2];
ctrlSetText [3403, _FWSL_3];

//FWSS
ctrlSetText [4101, _FWSS_1];
ctrlSetText [4102, _FWSS_2];

ctrlSetText [4201, _FWSS_1];
ctrlSetText [4202, _FWSS_2];

ctrlSetText [4301, _FWSS_1];
ctrlSetText [4302, _FWSS_2];

ctrlSetText [4401, _FWSS_1];
ctrlSetText [4402, _FWSS_2];

//FWM
ctrlSetText [5101, _FWM_1];

ctrlSetText [5201, _FWM_1];

ctrlSetText [5301, _FWM_1];

ctrlSetText [5401, _FWM_1];
