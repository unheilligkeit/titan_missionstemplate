#include "..\component_macros.hpp";

if ([name player] call FUNC(isPilotLoggedIn)) exitWith {};

connectedPilots pushBack name player;
publicVariable "connectedPilots";
[nil, "pilot", connectedPilots] remoteExec [QFUNC(stsSet), 2];

player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf vehicle _unit >> "displayName");
	["pilot.plane", name _unit, _vehicleName] remoteExec [QFUNC(stsSet), 2];
	[] spawn {
		while { !(isNull objectParent player) } do {
			_vehicleFuel = fuel vehicle player;
			["pilot.fuel", name player, _vehicleFuel] remoteExec [QFUNC(stsSet), 2];
			sleep 2;
		};
	};
}];

player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	["pilot.plane", name _unit, "-"] remoteExec [QFUNC(stsSet), 2];
	["pilot.fuel", name _unit, 0] remoteExec [QFUNC(stsSet), 2];
}];

player addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	["pilot.plane", name _unit, "-"] remoteExec [QFUNC(stsSet), 2];
	["pilot.fuel", name _unit, 0] remoteExec [QFUNC(stsSet), 2];
}];
