private _success = false;
private _targetInVehicle = false;
private _unit = _this select 0;
private _targetgroup = _this select 1;
private _group = nil;

switch (_targetgroup) do {
    case ("TITAN_1_0"): {
        _group = titan_1_0;
    };

    case ("TITAN_2_0"): {
        _group = titan_2_0;
    };

    case ("TITAN_2_1"): {
        _group = titan_2_1;
    };

    case ("TITAN_2_2"): {
        _group = titan_2_2;
    };

    case ("TITAN_2_3"): {
        _group = titan_2_3;
    };

    case ("TITAN_3_0"): {
        _group = titan_3_0;
    };

    case ("TITAN_3_1"): {
        _group = titan_3_1;
    };

    case ("TITAN_3_2"): {
        _group = titan_3_2;
    };

    case ("TITAN_3_3"): {
        _group = titan_3_3;
    };

    case ("TITAN_4_0"): {
        _group = titan_4_0;
    };

    case ("TITAN_4_1"): {
        _group = titan_4_1;
    };

    case ("TITAN_4_2"): {
        _group = titan_4_2;
    };

    case ("TITAN_4_3"): {
        _group = titan_4_3;
    };

    case ("SQUADRON"): {
        _group = SQUADRON;
    };
};

private _leader = leader _group;
private _target = _leader;


if ((count (units _group)) < 2) exitWith {
	    //hint "Du bist alleine in der Gruppe";
};

if (_unit == _leader) then {
    _units = (units _group);
    private _shuffle = _units call BIS_fnc_arrayShuffle;
    {
        if ((!isNil "_x") && (_x != _leader)) exitWith {
            _target = _x;
        };
    } forEach _shuffle;
};

waitUntil {if (preloadCamera (getPos _target)) exitWith {true}; false};

if (vehicle _unit != _unit) then {
    unassignVehicle _unit;
    moveOut _unit;
};

if (vehicle _target != _target) then {
    _targetInVehicle = true;
    private _vehicle = vehicle _target;
    private _freeDriver = _vehicle emptyPositions "driver";
    if (_freeDriver > 0) then {
        _unit moveInDriver _vehicle;
        _success = true;
    } else {
        private _freeGunner = _vehicle emptyPositions "gunner";
        if (_freeGunner > 0) then {
            _unit moveInGunner _vehicle;
            _success = true;
        } else {
            private _freeCommander = _vehicle emptyPositions "commander";
            if (_freeCommander > 0) then {
                _unit moveInCommander _vehicle;
                _success = true;
            } else {
                private _turrets = fullCrew [_vehicle, "turret", true];
                {
                    if ((isNull (_x select 0)) && (_x select 4) && (!_success)) then {
                        _unit moveInTurret [_vehicle, (_x select 3)];
                        _success = true;
                    };
                } forEach _turrets;
                if (!_success) then {
                    private _freeCargo = _vehicle emptyPositions "cargo";
                    if (_freeCargo > 0) then {
                        _unit moveInCargo _vehicle;
                        _success = true;
                    };
                };
            };
        };
    };
} else {
    private _pos = _target modelToWorld [0, -2, 0];
    _pos = _pos findEmptyPosition [0, 30, (typeOf _unit)];
    if (!(_pos isEqualTo [])) then {
        private _dir = _pos getDir _target;
        _unit setDir _dir;
        _unit setPos _pos;
        _success = true;
    };
};

systemChat "Teleport done";
