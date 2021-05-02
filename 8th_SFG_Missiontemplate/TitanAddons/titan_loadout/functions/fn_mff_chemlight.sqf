/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_chemlight;

Returns: Nothing
*/

_loadclass = missionNamespace getVariable "titan_loadout_class";
missionNamespace setVariable ["titan_mff_chemlite_off", "chlight"];

switch (_loadclass) do
{
    case ("atmo"):
    {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("cct"): {
        chlight = "Chemlight_Yellow" createVehicle [0,0,0];
      	chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("eng"): {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("ftl"): {
        chlight = "Chemlight_Red" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("lrr"):
    {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("lrs"): {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("ptl"): {
        chlight = "Chemlight_Red" createVehicle [0,0,0];
			  chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("rct"): {
        chlight = "Chemlight_Red" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("rifle"): {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("sql"): {
        chlight = "Chemlight_Red" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("sotac"): {
        chlight = "Chemlight_Yellow" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };

    case ("wpn"): {
        chlight = "Chemlight_Green" createVehicle [0,0,0];
        chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
    };
};
