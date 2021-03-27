#include "..\component_macros.hpp";
params ["_player"];

// On ship formation update
_assignedShipFormation = ["pilot.shipFormation", _pilotName] call FUNC(stsGet);
if (count _assignedShipFormation != 0) then {
	_assignedShipFormation = _assignedShipFormation select 0;

	// Set frequency of vehicle radio
	if !(isNull objectParent _player) then {
		_radioFrequencyResult = ["shipFormation.radioFrequency", _assignedShipFormation] call FUNC(stsGet);
		if (count _radioFrequencyResult != 0) then {
			_radioFrequency = _radioFrequencyResult select 0;
			[_radioFrequency] remoteExecCall [QFUNC(setVehicleRadioFrequency), _player];
		};
	};

	// Add pilot to group
	if (groupId (group _player) != _assignedShipFormation) then {
		_alreadyCreatedGroups = [[], []]; // [Groups, GroupIDs]
		{
			if (side (leader _x) == west) then {
				(_alreadyCreatedGroups select 0) pushBack _x;
				(_alreadyCreatedGroups select 1) pushBack groupId _x;
			};
		} forEach allGroups;

		[_player] joinSilent grpNull;
		if (_assignedShipFormation in (_alreadyCreatedGroups select 1)) then {
			// Group exists already => join
			{
				if (groupId _x == _assignedShipFormation) then {
					[_player] joinSilent _x;
				};
			} forEach (_alreadyCreatedGroups select 0);
		} else {
			// Group doesn't exist => create & join
			_newGroupForShipFormation = createGroup west;
			_newGroupForShipFormation setGroupIdGlobal [_assignedShipFormation];
			[_player] joinSilent _newGroupForShipFormation;
		};
	};
} else {
	// Reset group
	_playerName = name _player;
	_playerGroupId = groupId (group _player);

	if (_playerName != _playerGroupId) then {
		[_player] joinSilent grpNull;
		_newDefaultGroup = createGroup west;
		_newDefaultGroup setGroupIdGlobal [_playerName];
		[_player] joinSilent _newDefaultGroup;
	};
};


// On fireteam update
_assignedFireteam = ["pilot.fireteam", _pilotName] call FUNC(stsGet);
if (count _assignedFireteam != 0) then {
	_assignedFireteam = _assignedFireteam select 0;

	// Set short wave radio frequency
	_fireteamAirFrequency = ["fireteam.airFrequency", _assignedFireteam] call FUNC(stsGet);
	if (count _fireteamAirFrequency != 0) then {
		_fireteamAirFrequency = _fireteamAirFrequency select 0;
		[_fireteamAirFrequency] remoteExecCall [QFUNC(setSwRadioFrequency), _player];
	};
} else {
	// Reset short wave radio frequency to 78
	["78"] remoteExecCall [QFUNC(setSwRadioFrequency), _player];
};
