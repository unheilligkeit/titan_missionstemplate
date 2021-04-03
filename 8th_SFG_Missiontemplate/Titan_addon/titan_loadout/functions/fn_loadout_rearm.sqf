






params ["_unit"];
_loadclass = missionNamespace getVariable "titan_loadout_class";

[_unit] call titan_fnc_removeitems;


switch (_loadclass) do {

    case ("atmo"):
    {

        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_atmo_muni;

    };
};
