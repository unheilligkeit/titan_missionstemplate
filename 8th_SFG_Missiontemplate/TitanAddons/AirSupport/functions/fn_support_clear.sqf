

if (tablet == "_tablet_1") then {
	parken_1 = ParkPos_1;
	parken_2 = ParkPos_2;
	parken_3 = ParkPos_3;
	parken_4 = ParkPos_4;
};

if (tablet == "_tablet_2") then {
	parken_1 = ParkPos_5;
	parken_2 = ParkPos_6;
	parken_3 = ParkPos_7;
	parken_4 = ParkPos_8;
};

	_spCheck = nearestObjects[parken_1,["landVehicle","Air","Ship"],28] select 0;
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[parken_2,["landVehicle","Air","Ship"],28] select 0;
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[parken_3,["landVehicle","Air","Ship"],28] select 0;
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[parken_4,["landVehicle","Air","Ship"],28] select 0;
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
