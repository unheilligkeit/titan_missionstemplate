/*
 *	*** TP_fn_CBpil ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 * 
 * Bereitstellung Buttons für STS Login/Logoff
 *
 * Arguments:
 * 0: <STRING>
 * 1: <OBJECT>
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

if (isDedicated) exitWith {};
waitUntil {!(isNull player)};

//----------------------------------------------------------------------------------------------------
/*
		Definierung Zustand Buttons für STS (Sotac Table System) Login/Logoff
		
		STSIN = Login STS
		
		STSOUT = Logout STS
		
		true = ist verfügbar false = nicht verfügbar

*/
//----------------------------------------------------------------------------------------------------

PFIX = true;
PROT = true;

STSIN = false;
STSOUT = false;

//----------------------------------------------------------------------------------------------------
/*
		Abfrage ob Pilot eingeloggt.
		
		Setzen der Buttonverfügbarkeit.
*/
//----------------------------------------------------------------------------------------------------

if (permVar == "fix" || permVar == "rot") then {
	STSIN = true;
	STSOUT = false;

	if ([name player] call TitanAddons_SotacTabletSystem_fnc_isPilotLoggedIn) then {
		STSIN = false;
		STSOUT = true;
	};
};
if (permVar == "fix") then {
	PFIX = false;
	PROT = true;
};

if (permVar == "rot") then {
	PFIX = true;
	PROT = false;
};


_debug = false;
if (_debug) then {hint format ["Zustand IN %1\n\n Zustand OUT %2\n\n",STSIN,STSOUT]};



