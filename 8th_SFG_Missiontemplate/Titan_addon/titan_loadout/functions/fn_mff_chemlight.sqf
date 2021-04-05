/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_chemlight;

Returns: Nothing
*/

_loadclass = missionNamespace getVariable "titan_loadout_class";


switch (_loadclass) do
{
    case ("atmo"):
    {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("cct"): {
        _chlight = "Chemlight_Yellow" createVehicle [0,0,0];
      	_chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("eng"): {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("ftl"): {
        _chlight = "Chemlight_Red" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("lrr"):
    {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("lrs"): {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("ptl"): {
        _chlight = "Chemlight_Red" createVehicle [0,0,0];
			  _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("rct"): {
        _chlight = "Chemlight_Red" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("rifle"): {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("sql"): {
        _chlight = "Chemlight_Red" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("sotac"): {
        _chlight = "Chemlight_Yellow" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("wpn"): {
        _chlight = "Chemlight_Green" createVehicle [0,0,0];
        _chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };
};
