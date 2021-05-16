
private [
	"_veh1", "_veh2", "_veh3", "_veh4", "_direction_1", "_direction_2", "_direction_3",
	"_direction_4",	"_vehicle", "_column1", "_column2", "_column3",	"_column4", "_i" ,
	"_spCheck", "_spawn_1", "_spawn_2", "_spawn_3", "_spawn_4"
];

if (tablet == "_tablet_1") then {
	ParkPos_1 = getMarkerPos "ParkPos_1";
	_direction_1 = markerDir "ParkPos_1";
	ParkPos_2 = getMarkerPos "ParkPos_2";
	_direction_2 = markerDir "ParkPos_2";
	ParkPos_3 = getMarkerPos "ParkPos_3";
	_direction_3 = markerDir "ParkPos_3";
	ParkPos_4 = getMarkerPos "ParkPos_4";
	_direction_4 = markerDir "ParkPos_4";

	parken_1 = ParkPos_1;
	parken_2 = ParkPos_2;
	parken_3 = ParkPos_3;
	parken_4 = ParkPos_4;
};

if (tablet == "_tablet_2") then {
	ParkPos_5 = getMarkerPos "ParkPos_5";
	_direction_1 = markerDir "ParkPos_5";
	ParkPos_6 = getMarkerPos "ParkPos_6";
	_direction_2 = markerDir "ParkPos_6";
	ParkPos_7 = getMarkerPos "ParkPos_7";
	_direction_3 = markerDir "ParkPos_7";
	ParkPos_8 = getMarkerPos "ParkPos_8";
	_direction_4 = markerDir "ParkPos_8";

	parken_1 = ParkPos_5;
	parken_2 = ParkPos_6;
	parken_3 = ParkPos_7;
	parken_4 = ParkPos_8;
};

#include "..\Vehicles.sqf"

_veh1 = "";
_veh2 = "";
_veh3 = "";
_veh4 = "";
_debug = false;

//------------------------------------------------------------------------------------------------
//Variables from Vehicles (_vehicle_+ _column+_row )
_vehicle = [_AS_RWM, _AS_RWS, _AS_FWSL, _AS_FWSS, _AS_FWM];
_column1 = [AS1101, AS1102, AS1103, AS2101, AS2102, AS2103, AS2104, AS3101, AS3102, AS3103, AS4101, AS4102, AS5101];
_column2 = [AS1201, AS1202, AS1203, AS2201, AS2202, AS2203, AS2204, AS3201, AS3202, AS3203, AS4201, AS4202, AS5201];
_column3 = [AS1301, AS1302, AS1303, AS2301, AS2302, AS2303, AS2304, AS3301, AS3302, AS3303, AS4301, AS4302, AS5301];
_column4 = [AS1401, AS1402, AS1403, AS2401, AS2402, AS2403, AS2404, AS3401, AS3402, AS3403, AS4401, AS4402, AS5401];


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
				_spCheck = nearestObjects[parken_2,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		};
		_spCheck = nearestObjects[parken_1,["landVehicle","Air","Ship"],28] select 0;
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
				_spCheck = nearestObjects[parken_1,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
				_spCheck = nearestObjects[parken_3,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		};
		_spCheck = nearestObjects[parken_2,["landVehicle","Air","Ship"],28] select 0;
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
				_spCheck = nearestObjects[parken_2,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
				_spCheck = nearestObjects[parken_4,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		};
		_spCheck = nearestObjects[parken_3,["landVehicle","Air","Ship"],28] select 0;
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
				_spCheck = nearestObjects[parken_3,["landVehicle","Air","Ship"],28] select 0;
				if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
			};
		};
		_spCheck = nearestObjects[parken_4,["landVehicle","Air","Ship"],28] select 0;
		if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	};
};



//------------------------------------------------------------------------------------------------
if ((surfaceIsWater parken_1) || (surfaceIsWater parken_2) || (surfaceIsWater parken_3) || (surfaceIsWater parken_4)) then {
	if ((_veh1 in AS_FWM) || (_veh1 in AS_FWSL)) then {
		_veh1 = "";
	};
	parken_1 = parken_1 vectorAdd [0,0,10.5];
	_spawn_1 = _veh1 createVehicle parken_1;
	_spawn_1 setPos parken_1;
	_spawn_1 setDir _direction_1;

	if ((_veh2 in AS_FWM) || (_veh2 in AS_FWSL)) then {
		_veh2 = "";
	};
	parken_2 = parken_2 vectorAdd [0,0,10.5];
	_spawn_2 = _veh2 createVehicle parken_2;
	_spawn_2 setPos parken_2;
	_spawn_2 setDir _direction_2;

	if ((_veh3 in AS_FWM) || (_veh3 in AS_FWSL)) then {
		_veh3 = "";
	};
	parken_3 = parken_3 vectorAdd [0,0,10.5];
	_spawn_3 = _veh3 createVehicle parken_3;
	_spawn_3 setPos parken_3;
	_spawn_3 setDir _direction_3;

	if ((_veh4 in AS_FWM) || (_veh4 in AS_FWSL)) then {
		_veh4 = "";
	};
	parken_4 = parken_4 vectorAdd [0,0,10.5];
	_spawn_4 = _veh4 createVehicle parken_4;
	_spawn_4 setPos parken_4;
	_spawn_4 setDir _direction_4;

} else {
	_spawn_1 = _veh1 createVehicle parken_1;
	_spawn_1 setPos parken_1;
	_spawn_1 setDir _direction_1;

	_spawn_2 = _veh2 createVehicle parken_2;
	_spawn_2 setPos parken_2;
	_spawn_2 setDir _direction_2;

	_spawn_3 = _veh3 createVehicle parken_3;
	_spawn_3 setPos parken_3;
	_spawn_3 setDir _direction_3;

	_spawn_4 = _veh4 createVehicle parken_4;
	_spawn_4 setPos parken_4;
	_spawn_4 setDir _direction_4;
};


if (true) exitWith {
	closeDialog 0;
	[] execVM "TitanAddons\AirSupport\functions\fn_ASBTN.sqf";
};
