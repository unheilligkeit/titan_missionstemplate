if (!isServer) exitWith {};


params [
	["_curator", true, [true, objNull]]
];


    switch (typeName _curator) do {
	case "OBJECT": {
		//adds objects placed in editor:
        _allPlayers = call BIS_fnc_listPlayers;
        _curator addCuratorEditableObjects [_allPlayers,true];
		//makes all units continuously available to Zeus (for respawning players and AI that's being spawned by a script.)
		while {true} do {
            _allPlayers = call BIS_fnc_listPlayers;
			_curator addCuratorEditableObjects [_allPlayers,true];
			sleep 5;
		};
	};
	default {
		{
            _allPlayers = call BIS_fnc_listPlayers;
			_x addCuratorEditableObjects [_allPlayers,true];
		} forEach allCurators;
		while {true} do {
			{
                _allPlayers = call BIS_fnc_listPlayers;
    			_x addCuratorEditableObjects [_allPlayers,true];;
			} forEach allCurators;
			sleep 5;
		};
	};
};

if (true) exitWith {};
