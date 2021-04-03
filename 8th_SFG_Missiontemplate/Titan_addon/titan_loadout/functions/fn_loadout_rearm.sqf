






params ["_unit"];
_loadclass = missionNamespace getVariable "titan_loadout_class";


switch (_loadclass) do
{
    case ("start"): {

        hint "Die Jugend ist die Zeit, Weisheit zu lernen. Das Alter ist die Zeit, sie auszuüben."
    };

    case ("atmo"):
    {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_atmo_muni;

    };
};

systemChat "Rearm Done";
