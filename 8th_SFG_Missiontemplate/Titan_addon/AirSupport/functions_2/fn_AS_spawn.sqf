/*
 * *** fn_AS_spawn ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 *
 * get selected button and spawn vehicle
 *
 * Arguments:
 * 
 *
 * Return Value:
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
private [
	"_veh1", "_veh2", "_veh3", "_veh4", "_vehicle", "_column1", "_column2", "_column3", 
	"_column4", "_i" , "_spCheck", "_spawn_1", "_spawn_2", "_spawn_3", "_spawn_4"
];

#include "..\Vehicles.sqf"

_veh1 = "";
_veh2 = "";
_veh3 = "";
_veh4 = "";
_debug = false;

ParkPos_5 = getMarkerPos "ParkPos_5";
_direction_1 = markerDir "ParkPos_5";  
ParkPos_6 = getMarkerPos "ParkPos_6";
_direction_2 = markerDir "ParkPos_6";
ParkPos_7 = getMarkerPos "ParkPos_7";
_direction_3 = markerDir "ParkPos_7";
ParkPos_8 = getMarkerPos "ParkPos_8";
_direction_4 = markerDir "ParkPos_8";


//------------------------------------------------------------------------------------------------
//Variables from Vehicles (_vehicle_+ _column+_row )
_vehicle = [_AS_RWM, _AS_RWS, _AS_FWSL, _AS_FWSS, _AS_FWM];
_column1 = [AS5101, AS5102, AS5103, AS6101, AS6102, AS6103, AS6104, AS7101, AS7102, AS7103, AS8101, AS8102, AS9101];
_column2 = [AS5201, AS5202, AS5203, AS6201, AS6202, AS6203, AS6204, AS7201, AS7202, AS7203, AS8201, AS8202, AS9201];
_column3 = [AS5301, AS5302, AS5303, AS6301, AS6302, AS6303, AS6304, AS7301, AS7302, AS7303, AS8301, AS8302, AS9301];
_column4 = [AS5401, AS5402, AS5403, AS6401, AS6402, AS6403, AS6404, AS7401, AS7402, AS7403, AS8401, AS8402, AS9401];


//------------------------------------------------------------------------------------------------
//Check Buttons Column 1 Box 1 to 5
for "_i" from 0 to 12 do {
	if ((_column1 select _i) == false) then {
		_column = _i; 
		switch (_column) do {
			case (0): {_veh1 = format ["%1", (_vehicle select 0) select 0];};
			case (1): {_veh1 = format ["%1", (_vehicle select 0) select 1];};
			case (2): {_veh1 = format ["%1",  (_vehicle select 0) select 2];};
			case (3): {_veh1 = format ["%1",  (_vehicle select 1) select 0];};
			case (4): {_veh1 = format ["%1",  (_vehicle select 1) select 1];};
			case (5): {_veh1 = format ["%1",  (_vehicle select 1) select 2];};
			case (6): {_veh1 = format ["%1",  (_vehicle select 2) select 3];};
			case (7): {_veh1 = format ["%1",  (_vehicle select 2) select 0];};
			case (8): {_veh1 = format ["%1",  (_vehicle select 2) select 1];};
			case (9): {_veh1 = format ["%1",  (_vehicle select 2) select 2];};
			case (10): {_veh1 = format ["%1",  (_vehicle select 3) select 0];};
			case (11): {_veh1 = format ["%1", (_vehicle select 3) select 1];};
			case (12): {
				_veh1 = format["%1", (_vehicle select 4) select 0];
				_spCheck = nearestObjects[ParkPos_6,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		}; 
		_spCheck = nearestObjects[ParkPos_5,["landVehicle","Air","Ship"],28] select 0; 
		if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	};	
};


//------------------------------------------------------------------------------------------------
//Check Buttons Column 2 Box 1 to 5
for "_i" from 0 to 12 do {
	if ((_column2 select _i) == false) then {
		_column = _i; 
		switch (_column) do {
			case (0): {_veh2 = format ["%1",  (_vehicle select 0) select 0];};
			case (1): {_veh2 = format ["%1",  (_vehicle select 0) select 1];};
			case (2): {_veh2 = format ["%1",  (_vehicle select 0) select 2];};
			case (3): {_veh2 = format ["%1",  (_vehicle select 1) select 0];};
			case (4): {_veh2 = format ["%1",  (_vehicle select 1) select 1];};
			case (5): {_veh2 = format ["%1",  (_vehicle select 1) select 2];};
			case (6): {_veh2 = format ["%1",  (_vehicle select 2) select 3];};
			case (7): {_veh2 = format ["%1",  (_vehicle select 2) select 0];};
			case (8): {_veh2 = format ["%1",  (_vehicle select 2) select 1];};
			case (9): {_veh2 = format ["%1",  (_vehicle select 2) select 2];};
			case (10): {_veh2 = format ["%1",  (_vehicle select 3) select 0];};
			case (11): {_veh2 = format ["%1", (_vehicle select 3) select 1];};
			case (12): {
				_veh2 = format ["%1",  (_vehicle select 4) select 0];
				_spCheck = nearestObjects[ParkPos_5,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
				_spCheck = nearestObjects[ParkPos_7,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		}; 	
		_spCheck = nearestObjects[ParkPos_6,["landVehicle","Air","Ship"],28] select 0; 
		if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	};
};

//------------------------------------------------------------------------------------------------
//Check Buttons Column 1 Box 1 to 5
for "_i" from 0 to 12 do {
	if ((_column3 select _i) == false) then {
		_column = _i; 
		switch (_column) do {
			case (0): {_veh3 = format ["%1",  (_vehicle select 0) select 0];};
			case (1): {_veh3 = format ["%1",  (_vehicle select 0) select 1];};
			case (2): {_veh3 = format ["%1",  (_vehicle select 0) select 2];};
			case (3): {_veh3 = format ["%1",  (_vehicle select 1) select 0];};
			case (4): {_veh3 = format ["%1",  (_vehicle select 1) select 1];};
			case (5): {_veh3 = format ["%1",  (_vehicle select 1) select 2];};
			case (6): {_veh3 = format ["%1",  (_vehicle select 2) select 3];};
			case (7): {_veh3 = format ["%1",  (_vehicle select 2) select 0];};
			case (8): {_veh3 = format ["%1",  (_vehicle select 2) select 1];};
			case (9): {_veh3 = format ["%1",  (_vehicle select 2) select 2];};
			case (10): {_veh3 = format ["%1",  (_vehicle select 3) select 0];};
			case (11): {_veh3 = format ["%1", (_vehicle select 3) select 1];};
			case (12): {
				_veh3 = format ["%1",  (_vehicle select 4) select 0];
				_spCheck = nearestObjects[ParkPos_6,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
				_spCheck = nearestObjects[ParkPos_8,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};			
			};
		}; 
		_spCheck = nearestObjects[ParkPos_7,["landVehicle","Air","Ship"],28] select 0; 
		if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	};
};

//------------------------------------------------------------------------------------------------
//Check Buttons Column 1 Box 1 to 5
for "_i" from 0 to 12 do {
	if ((_column4 select _i) == false) then {
		_column = _i;
		switch (_column) do {
			case (0): {_veh4 = format ["%1",  (_vehicle select 0) select 0];};
			case (1): {_veh4 = format ["%1",  (_vehicle select 0) select 1];};
			case (2): {_veh4 = format ["%1",  (_vehicle select 0) select 2];};
			case (3): {_veh4 = format ["%1",  (_vehicle select 1) select 0];};
			case (4): {_veh4 = format ["%1",  (_vehicle select 1) select 1];};
			case (5): {_veh4 = format ["%1",  (_vehicle select 1) select 2];};
			case (6): {_veh4 = format ["%1",  (_vehicle select 2) select 3];};
			case (7): {_veh4 = format ["%1",  (_vehicle select 2) select 0];};
			case (8): {_veh4 = format ["%1",  (_vehicle select 2) select 1];};
			case (9): {_veh4 = format ["%1",  (_vehicle select 2) select 2];};
			case (10): {_veh4 = format ["%1",  (_vehicle select 3) select 0];};
			case (11): {_veh4 = format ["%1", (_vehicle select 3) select 1];};
			case (12): {
				_veh4 = format ["%1",  (_vehicle select 4) select 0];
				_spCheck = nearestObjects[ParkPos_7,["landVehicle","Air","Ship"],28] select 0; 
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};			
			};
		}; 
		_spCheck = nearestObjects[ParkPos_8,["landVehicle","Air","Ship"],28] select 0; 
		if(!isNil "_spCheck") then {deleteVehicle _spCheck;}; 
	};
};
sleep 0.5;


//------------------------------------------------------------------------------------------------
if ((surfaceIsWater ParkPos_5) || (surfaceIsWater ParkPos_6) || (surfaceIsWater ParkPos_7) || (surfaceIsWater ParkPos_8)) then {
	if ((_veh1 in AS_FWM) || (_veh1 in AS_FWSL)) then {
		_veh1 = "";
	};
	ParkPos_5 = ParkPos_5 vectorAdd [0,0,10.5];
	_spawn_1 = _veh1 createVehicle ParkPos_5;
	_spawn_1 setPos ParkPos_5;
	_spawn_1 setDir _direction_1;

	if ((_veh2 in AS_FWM) || (_veh2 in AS_FWSL)) then {
		_veh2 = "";
	};
	ParkPos_6 = ParkPos_6 vectorAdd [0,0,10.5];
	_spawn_2 = _veh2 createVehicle ParkPos_6;
	_spawn_2 setPos ParkPos_6;
	_spawn_2 setDir _direction_2;
	
	if ((_veh3 in AS_FWM) || (_veh3 in AS_FWSL)) then {
		_veh3 = "";
	};
	ParkPos_7 = ParkPos_7 vectorAdd [0,0,10.5];
	_spawn_3 = _veh3 createVehicle ParkPos_7;
	_spawn_3 setPos ParkPos_7;
	_spawn_3 setDir _direction_3;
	
	if ((_veh4 in AS_FWM) || (_veh4 in AS_FWSL)) then {
		_veh4 = "";
	};
	ParkPos_8 = ParkPos_8 vectorAdd [0,0,10.5];
	_spawn_4 = _veh4 createVehicle ParkPos_8;
	_spawn_4 setPos ParkPos_8;
	_spawn_4 setDir _direction_4;
	
} else {
	_spawn_1 = _veh1 createVehicle ParkPos_5;
	_spawn_1 setPos ParkPos_5;
	_spawn_1 setDir _direction_1;
	
	_spawn_2 = _veh2 createVehicle ParkPos_6;
	_spawn_2 setPos ParkPos_6;
	_spawn_2 setDir _direction_2;

	_spawn_3 = _veh3 createVehicle ParkPos_7;
	_spawn_3 setPos ParkPos_7;
	_spawn_3 setDir _direction_3;
	
	_spawn_4 = _veh4 createVehicle ParkPos_8;
	_spawn_4 setPos ParkPos_8;
	_spawn_4 setDir _direction_4;
};


//============================================== Reset und Exit ===========================
if (_debug) then {
	hint format [ "Dies ist functions_2 fn_AS_Spawn DEBUG \n\n Pos1: %1 \n Pos2: %2 \n Pos3: %3 \n Pos4: %4", _veh1, _veh2, _veh3, _veh4];
};


if (true) exitWith {
	closeDialog 0;
	[] execVM "Titan_addon\AirSupport\functions_2\fn_ASBTN.sqf";
};
