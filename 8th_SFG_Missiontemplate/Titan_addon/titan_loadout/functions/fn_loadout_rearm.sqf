






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

    case ("cct"): {
        //code
    };

    case ("eng"): {
        //code
    };

    case ("fix"): {
        //code
    };

    case ("ftl"): {
        //code
    };

    case ("lrr"):
    {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_lrr_muni;
    };

    case ("lrs"): {
        //code //Long-range surveillance
    };

    case ("ptl"): {
        //code
    };

    case ("rct"): {
        //code //Recon Controller
    };

    case ("rifle"): {
        //code
    };

    case ("rot"): {
        //code
    };

    case ("sql"): {
        //code
    };

    case ("sotac"): {
        //code
    };

    case ("wpn"): {
        //code
    };


};

systemChat "Rearm Done";
