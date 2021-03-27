/*
 * *** fn_ASClear ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 *
 * Delet all Vehicles near spawnpoints
 *
 */

//----------------------------------------------------------------------------------------------------
/*
	!!!!!!!!!! DON´T TOUCH THIS !!!!!!!!!!!!!!!!
*/
//----------------------------------------------------------------------------------------------------

	_spCheck = nearestObjects[ParkPos_5,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_6,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_7,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_8,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};


if (true) exitWith {};
