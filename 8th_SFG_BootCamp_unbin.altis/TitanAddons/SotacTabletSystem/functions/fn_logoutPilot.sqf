#include "..\component_macros.hpp";
params ["_playerName"];

{
	if (_x == _playerName) then {
		connectedPilots deleteAt _forEachIndex;
	}
} forEach connectedPilots;

publicVariable "connectedPilots";
[nil, "pilot", connectedPilots] remoteExec [QFUNC(stsSet), 2];
