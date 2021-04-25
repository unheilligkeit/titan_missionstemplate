/*
 * *** fn_ASArray ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 *
 * Define buttons after select
 *
 * Arguments:
 * 0: <INTAGER>
 * 1: <INTAGER>
 * 2: <INTAGER>
 *
 * Return Value:
 * bool
 *
 * Example:
 * non
 *
 * Public: Yes
 */

//----------------------------------------------------------------------------------------------------
/*
	!!!!!!!!!! DON´T TOUCH THIS !!!!!!!!!!!!!!!!
*/
//----------------------------------------------------------------------------------------------------

params ["_row", "_column", "_pos"];
private ["_debug"];

_debug = false;
if (_debug) then {
		hint format ["Es wurde Script fn_ASArray aufgerufen\n und folgende Werte übergeben: \n\n Reihe  %1, \n Spalte  %2, \n Position  %3", _row, _column, _pos];
};
//ParkPositionen für AirSupport Vehicle Spawner
ParkPos_5 = [0,0,0];
ParkPos_6 = [0,0,0];
ParkPos_7 = [0,0,0];
ParkPos_8 = [0,0,0];


switch (_row) do {
//-----------------------------------------------------------------------------------
	//RWM
	case 11: {
		AS5001 = true;
		
		AS5100 = false;
		
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS7101 = true; AS7102 = true; AS7103 = true;
		AS8101 = true; AS8102 = true; 
		
		AS9101 = true; AS9201 = true;
	};
	case 12: {
		AS5001 = true;
		
		AS5200 = false;
		
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
		AS8201 = true; AS8202 = true; 
		
		AS9101 = true; AS9201 = true; AS9301 = true;
	};
	case 13: {
		AS5001 = true;
		
		AS5300 = false;
		
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		AS8301 = true; AS8302 = true;
		
		AS9201 = true; AS9301 = true; AS9401 = true;
	};
	case 14: {
		AS5001 = true;
		
		AS5400 = false;
		
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		AS8401 = true; AS8402 = true;
		
		AS9301 = true; AS9401 = true; 
	};
	
	//RWS
	case 21: {
		AS5001 = true;
		
		AS5100 = false;
		
		AS5101 = true; AS5102 = true; AS5103 = true;
		AS7101 = true; AS7102 = true; AS7103 = true;
		AS8101 = true; AS8102 = true; 
		
		AS9101 = true; AS9201 = true;
	};
	case 22: {
		AS5001 = true;	
		
		AS5200 = false; 
		
		AS5201 = true; AS5202 = true; AS5203 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
		AS8201 = true; AS8202 = true; 
		
		AS9101 = true; AS9201 = true; AS9301 = true;
	};
	case 23: {
		AS5001 = true;	
		
		AS5300 = false; 
		
		AS5301 = true; AS5302 = true; AS5303 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		AS8301 = true; AS8302 = true; 
		
		AS9201 = true; AS9301 = true; AS9401 = true; 
	};
		case 24: {
		AS5001 = true;
		
		AS5400 = false; 
		
		AS5401 = true; AS5402 = true; AS5403 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		AS8401 = true; AS8402 = true; 
		
		AS9301 = true; AS9401 = true; 
	};

	//FWLS
	case 31: {
		AS5001 = true;
		
		AS5100 = false; 
		
		AS5101 = true; AS5102 = true; AS5103 = true;
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS8101 = true; AS8102 = true; 
		
		AS9101 = true; AS9201 = true;
	};
	case 32: {
		AS5001 = true;	
		
		AS5200 = false; 
		
		AS5201 = true; AS5202 = true; AS5203 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS8201 = true; AS8202 = true; 
		
		AS9101 = true; AS9201 = true; AS9301 = true;
	};
	case 33: {
		AS5001 = true;	
	
		AS5300 = false; 
		
		AS5301 = true; AS5302 = true; AS5303 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS8301 = true; AS8302 = true; 
		
		AS9201 = true; AS9301 = true; AS9401 = true; 
	};
	case 34: {
		AS5001 = true;	
		
		AS5400 = false;
		
		AS5401 = true; AS5402 = true; AS5403 = true;
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS8401 = true; AS8402 = true; AS8403 = true;
		
		AS9301 = true; AS9401 = true;  
	};

	//FWSS
	case 41: {
		AS5001 = true;
		
		AS5100 = false; 
		
		AS5101 = true; AS5102 = true; AS5103 = true;
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS7101 = true; AS7102 = true; AS7103 = true;
		
		AS9101 = true; AS9201 = true;
	};
	case 42: {
		AS5001 = true;	
		
		AS5200 = false; 
		
		AS5201 = true; AS5202 = true; AS5203 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS7201 = true; AS7202 = true; AS7202 = true;
		
		AS9101 = true; AS9201 = true; AS9301 = true;
	};
	case 43: {
		AS5001 = true;	
		
		AS5300 = false; 
		
		AS5301 = true; AS5302 = true; AS5303 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		
		AS9201 = true; AS9301 = true; AS9401 = true; 
	};
	case 44: {
		AS5001 = true;	
		
		AS5400 = false; 
		
		AS5401 = true; AS5402 = true; AS5403 = true;
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		
		AS9301 = true; AS9401 = true; 
	};

	//FWM
	case 51: {
		AS5001 = true;
	
		AS5100 = false; 
		AS5200 = false; 
				
		AS5101 = true; AS5102 = true; AS5103 = true;
		AS5201 = true; AS5202 = true; AS5203 = true;
		
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		
		AS7101 = true; AS7102 = true; AS7103 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
		
		AS8101 = true; AS8102 = true;
		AS8201 = true; AS8202 = true;
	};
	case 52: {
		AS5001 = true;
		
		AS5100 = false; 
		AS5200 = false; 
		AS5300 = false; 
		
		AS5101 = true; AS5102 = true; AS5103 = true;
		AS5201 = true; AS5202 = true; AS5203 = true;
		AS5301 = true; AS5302 = true; AS5303 = true;
		
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		
		AS7101 = true; AS7102 = true; AS7103 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		
	};
	case 53: {
		AS5001 = true;
		
		AS5200 = false;
		AS5300 = true; 
		AS5400 = false;
		
		AS5201 = true; AS5202 = true; AS5203 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
 		AS8201 = true; AS8202 = true;
		
		AS5301 = true; AS5302 = true; AS5303 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		AS8301 = true; AS8302 = true;
		
		AS5401 = true; AS5402 = true; AS5403 = true;
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		AS8401 = true; AS8402 = true;
		
	};
	case 54: {
		AS5001 = true;
		
		AS5300 = false;
		AS5400 = false; 
		
		AS5301 = true; AS5302 = true; AS5303 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		AS8301 = true; AS8302 = true; 
		
		AS5401 = true; AS5402 = true; AS5403 = true;
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		AS8401 = true; AS8402 = true;
	};
};

switch (_column) do {
	//Slot 1
	case 110: {
		AS5100 = false; AS5101 = true; AS5102 = true; AS5103 = true;
		AS6101 = true; AS6102 = true; AS6103 = true; AS6104 = true;
		AS7101 = true; AS7102 = true; AS7103 = true;
		AS8101 = true; AS8102 = true;
		AS9101 = true;
	};
	
	//Slot 2
	case 120: {
		AS5200 = false; AS5201 = true; AS5202 = true; AS5203 = true;
		AS6201 = true; AS6202 = true; AS6203 = true; AS6204 = true;
		AS7201 = true; AS7202 = true; AS7203 = true;
		AS8201 = true; AS8202 = true;
		AS9201 = true;
	};
	
	//Slot 3
	case 130: {
		AS5300 = false; AS5301 = true; AS5302 = true; AS5303 = true;
		AS6301 = true; AS6302 = true; AS6303 = true; AS6304 = true;
		AS7301 = true; AS7302 = true; AS7303 = true;
		AS8301 = true; AS8302 = true;
		AS9301 = true;
	};
	//Slot 4
	case 140: {
		AS5400 = false; AS5401 = true; AS5402 = true; AS5403 = true;
		AS6401 = true; AS6402 = true; AS6403 = true; AS6404 = true;
		AS7401 = true; AS7402 = true; AS7403 = true;
		AS8401 = true; AS8402 = true;
		AS9401 = true;
	};
	
//---------------------------------------------------------------------------------	
	case 111: {AS5100 = true; AS5101 = false; AS5102 = true; AS5103 = true;};
	case 112: {AS5100 = true; AS5101 = true; AS5102 = false; AS5103 = true;};
	case 113: {AS5100 = true; AS5101 = true; AS5102 = true;	AS5103 = false;};	
		
	case 121: {AS5200 = true; AS5201 = false; AS5202 = true; AS5203 = true;};
	case 122: {AS5200 = true; AS5201 = true; AS5202 = false; AS5203 = true;};
	case 123: {AS5200 = true; AS5201 = true; AS5202 = true;	AS5203 = false;};
		
	case 131: {AS5300 = true; AS5301 = false; AS5302 = true; AS5303 = true;};
	case 132: {AS5300 = true; AS5301 = true; AS5302 = false; AS5303 = true;};
	case 133: {AS5300 = true; AS5301 = true; AS5302 = true;	AS5303 = false;};
		
	case 141: {AS5400 = true; AS5401 = false; AS5402 = true; AS5403 = true;};
	case 142: {AS5400 = true; AS5401 = true; AS5402 = false; AS5403 = true;};
	case 143: {AS5400 = true; AS5401 = true; AS5402 = true;	AS5403 = false;};
	
//---------------------------------------------------------------------------------
	case 211: {AS5100 = true; AS6101 = false; AS6102 = true; AS6103 = true; AS6104 = true;};
	case 212: {AS5100 = true; AS6101 = true; AS6102 = false; AS6103 = true; AS6104 = true;};
	case 213: {AS5100 = true; AS6101 = true; AS6102 = true;	AS6103 = false; AS6104 = true;};
	case 214: {AS5100 = true; AS6101 = true; AS6102 = true;	AS6103 = true; AS6104 = false;};
	
	case 221: {AS5200 = true; AS6201 = false; AS6202 = true; AS6203 = true; AS6204 = true;};
	case 222: {AS5200 = true; AS6201 = true; AS6202 = false; AS6203 = true; AS6204 = true;};
	case 223: {AS5200 = true; AS6201 = true; AS6202 = true;	AS6203 = false; AS6204 = true;};
	case 224: {AS5200 = true; AS6201 = true; AS6202 = true;	AS6203 = true; AS6204 = false;};

	case 231: {AS5300 = true; AS6301 = false; AS6302 = true; AS6303 = true; AS6304 = true;};
	case 232: {AS5300 = true; AS6301 = true; AS6302 = false; AS6303 = true; AS6304 = true;};
	case 233: {AS5300 = true; AS6301 = true; AS6302 = true;	AS6303 = false; AS6304 = true;};
	case 234: {AS5300 = true; AS6301 = true; AS6302 = true;	AS6303 = true; AS6304 = false;};
	
	case 241: {AS5400 = true; AS6401 = false; AS6402 = true; AS6403 = true; AS6404 = true;};
	case 242: {AS5400 = true; AS6401 = true; AS6402 = false; AS6403 = true; AS6404 = true;};
	case 243: {AS5400 = true; AS6401 = true; AS6402 = true;	AS6403 = false; AS6404 = true;};	
	case 244: {AS5400 = true; AS6401 = true; AS6402 = true;	AS6403 = true; AS6404 = false;};

//---------------------------------------------------------------------------------
	case 311: {AS5100 = true; AS7101 = false; AS7102 = true; AS7103 = true;};
	case 312: {AS5100 = true; AS7101 = true; AS7102 = false; AS7103 = true;};
	case 313: {AS5100 = true; AS7101 = true; AS7102 = true;	AS7103 = false;};

	case 321: {AS5200 = true; AS7201 = false; AS7202 = true; AS7203 = true;};
	case 322: {AS5200 = true; AS7201 = true; AS7202 = false; AS7203 = true;};
	case 323: {AS5200 = true; AS7201 = true; AS7202 = true;	AS7203 = false;};
	
	case 331: {AS5300 = true; AS7301 = false; AS7302 = true; AS7303 = true;};
	case 332: {AS5300 = true; AS7301 = true; AS7302 = false; AS7303 = true;};
	case 333: {AS5300 = true; AS7301 = true; AS7302 = true;	AS7303 = false;};
	
	case 341: {AS5400 = true; AS7401 = false; AS7402 = true; AS7403 = true;};
	case 342: {AS5400 = true; AS7401 = true; AS7402 = false; AS7403 = true;};
	case 343: {AS5400 = true; AS7401 = true; AS7402 = true;	AS7403 = false;};

//---------------------------------------------------------------------------------
	case 411: {AS5100 = true; AS8101 = false; AS8102 = true}; 
	case 412: {AS5100 = true; AS8101 = true; AS8102 = false}; 

	case 421: {AS5200 = true; AS8201 = false; AS8202 = true}; 
	case 422: {AS5200 = true; AS8201 = true; AS8202 = false}; 

	case 431: {AS5300 = true; AS8301 = false; AS8302 = true}; 
	case 432: {AS5300 = true; AS8301 = true; AS8302 = false}; 

	case 441: {AS5400 = true; AS8401 = false; AS8402 = true}; 
	case 442: {AS5400 = true; AS8401 = true; AS8402 = false}; 


//---------------------------------------------------------------------------------
	case 511: {AS5100 = true; AS9101 = false}; 

	case 521: {AS5200 = true; AS9201 = false}; 

	case 531: {AS5300 = true; AS9301 = false}; 

	case 541: {AS5400 = true; AS9401 = false}; 
};

//set variable of SLOT X back to false if no FWM in use
if (AS9101 && AS5101 && AS5102 && AS5103 && AS6101 && AS6102 && AS6103 && AS6104 &&
	AS7101 && AS7102 && AS7103 && AS8101 && AS8102) then {AS5100 = false;}; 
if (AS9301 && AS5301 && AS5302 && AS5303 && AS6301 && AS6302 && AS6303 && AS6304 &&
	AS7301 && AS7302 && AS7303 && AS8301 && AS8302) then {AS5300 = false;};

//=============================== EXIT =============================================
if (true) exitWith {
	closeDialog 0;
	[] call compile preprocessFileLineNumbers "Titan_addon\AirSupport\support_entry_2.sqf";
};
