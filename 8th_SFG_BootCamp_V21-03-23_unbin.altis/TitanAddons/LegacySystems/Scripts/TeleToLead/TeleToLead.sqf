/*
		*** Teleport to Leader***

	Version:		3.0.0
	Copyright:		8th Titan Platoon Clan
	Entwicklung:	Fallingstorm
	Scriptvorlage:	Sajiki
	Homepage:		http://TITAN_platoon.clans.de/

	Zum Integrieren:

		in Pole:
			this addAction ["<t color='#FCB514'> Teleport </t>","TitanAddons\LegacySystems\Scripts\TeleToLead.sqf","",51,true,true,"","", 5];

		in Dialog:
			action = "closeDialog 0;[Cx]ExecVM ""TitanAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
			x= Nummer des FT z.B. C5

		in description.ext:
			// Teleport to Lead	-------------------------------------------------------
			#include "TitanAddons\LegacySystems\Scripts\TeleToLead\dialog_TtL.hpp" C1 in units player
*/
if (!isServer) then {waitUntil {!(isNull player)};};

private ["_allGRP","_player","_varSet","_grpID"];
_allGRP = format ["%1", allgroups]splitString "(""[],)";
_player = player;
_grpID = format ["B %1",groupID (group player)];


private _varSet = missionNamespace getVariable "varName";
if (isNil "_varSet") then
{
	missionNamespace setVariable ["varName", 1];
	_varSet = 1;
};

_ok = createDialog "TeleToLead";

// Alle Buttons auf "AUS"
if (_varSet == 1) then {
		ctrlEnable [1110, false];
		ctrlEnable [1220, false];
		ctrlEnable [1321, false];
		ctrlEnable [1422, false];
		ctrlEnable [1523, false];
		ctrlEnable [1630, false];
		ctrlEnable [1731, false];
		ctrlEnable [1832, false];
		ctrlEnable [1933, false];
	
		ctrlEnable [2140, false];
		ctrlEnable [2241, false];
		ctrlEnable [2342, false];
		ctrlEnable [2443, false];
		ctrlEnable [2500, false];
		ctrlEnable [2600, false];
		ctrlEnable [2700, false];
		ctrlEnable [2800, false];
};

// Freigabe Buttons wenn Gruppe existiert
if ("B TITAN_1_0" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_1_0")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1110, true];
		};
	};
};
if ("B TITAN_2_0" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_2_0")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1220, true];
		};
	};
};
if ("B TITAN_2_1" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_2_1")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1321, true];
		};
	};
};
if ("B TITAN_2_2" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_2_2")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1422, true];
		};
	};
};
if ("B TITAN_2_3" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_2_3")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1523, true];
		};
	};
};
if ("B TITAN_3_0" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_3_0")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1630, true];
		};
	};
};
if ("B TITAN_3_1" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_3_1")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1731, true];
		};
	};
};
if ("B TITAN_3_2" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_3_2")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1832, true];
		};
	};
};
if ("B TITAN_3_3" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_3_3")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [1933, true];
		};
	};
};
//============ 2. Zeile
if ("B TITAN_4_0" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_4_0")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2140, true];
		};
	};
};
if ("B TITAN_4_1" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_4_1")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2241, true];
		};
	};
};
if ("B TITAN_4_2" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_4_2")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2342, true];
		};
	};
};
if ("B TITAN_4_3" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B TITAN_4_3")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2443, true];
		};
	};
};


if ("B EAGLE" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B EAGLE")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2500, true];
		};
	};
};
if ("B FALCON" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B FALCON")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2600, true];
		};
	};
};
if ("B HAWK" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B HAWK")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2700, true];
		};
	};
};
if ("B VULTURE" in _allGRP) then {
	if  ((_player == leader _player) && (_grpID == "B VULTURE")) then {
	} else {
		if (_varSet == 1) then {
			ctrlEnable [2800, true];
		};
	};
};


if (!_ok) then {hint "Dialog couldn't be opened!"};
if(true) exitWith{};
