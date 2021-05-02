
_loadclass = missionNamespace getVariable "titan_loadout_class";




if (_loadclass == "start") then {
    ctrlEnable [0801, false];
    ctrlEnable [0802, false];
} else {
    ctrlEnable [0801, true];
    ctrlEnable [0802, true];
};

if ((_loadclass == "rot") || (_loadclass == "fix")) then {
  if ([name player] call TitanAddons_SotacTabletSystem_fnc_isPilotLoggedIn) then {
		ctrlEnable [0601, false];
		ctrlEnable [0602, true];
	} else {
        ctrlEnable [0601, true];
        ctrlEnable [0602, false];
  };
};
