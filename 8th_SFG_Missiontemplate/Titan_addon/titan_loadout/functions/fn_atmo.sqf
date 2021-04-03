
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

switch (_tarnmuster) do {

    // BDU
    case (0): {

        _bdu_helm = profileNamespace getVariable "titan_bdu_helm";
        if (isNil _bdu_helm) then {

            _helmearray = selectRandom ["TITAN_Beret_Enlisted"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _bdu_helm;

        };

    };

    // MTP
    case (1): {
        //code
    };

    case (2): {
        //code
    };

    case (3): {
        //code
    };
};






// waffen laden









//munition und gegenstände
