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

	_spCheck = nearestObjects[ParkPos_1,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_2,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_3,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};
	_spCheck = nearestObjects[ParkPos_4,["landVehicle","Air","Ship"],28] select 0; 
	if(!isNil "_spCheck") then {deleteVehicle _spCheck;};


if (true) exitWith {};
