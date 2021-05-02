#include ".\component_macros.hpp";

if (isServer) then {

	connectedPilots = [];
	publicVariable "connectedPilots";

	[{
		_connectedPlayers = allPlayers - entities "HeadlessClient_F";
		{
			_pilotName = _x;
			{
				if (name _x == _pilotName) then {
					[_x] call FUNC(updatePilot);
				};
			} forEach _connectedPlayers;
		} forEach connectedPilots;
	}, 2] call CBA_fnc_addPerFrameHandler;

	addMissionEventHandler ["PlayerDisconnected", {
		params ["_id", "_uid", "_name", "_jip", "_owner"];
		[_name] call FUNC(logoutPilot);
	}];

};
