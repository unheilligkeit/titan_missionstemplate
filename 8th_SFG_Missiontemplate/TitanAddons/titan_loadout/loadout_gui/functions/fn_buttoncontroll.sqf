createDialog "loadout_gui";
_loadclass = missionNamespace getVariable "titan_loadout_class";




if (_loadclass == "start") then {
    ctrlEnable [0801, false];
    ctrlEnable [0802, false];
} else {
    ctrlEnable [0801, true];
    ctrlEnable [0802, true];
};
