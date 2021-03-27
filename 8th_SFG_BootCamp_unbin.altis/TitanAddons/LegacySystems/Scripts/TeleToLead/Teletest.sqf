// get all players
_allPlayers = allPlayers - entities "HeadlessClient_F";
// get leader of players group
_leader = leader player;
// get list of players buddies
_units = ((units player) select {(_x != player) && (_x in _allPlayers)});
_teleportTarget = _leader;

// check if player is the leader
if (_leader isEqualTo player) then {
    if ((count _units) <= 0) then {
        _units = (_allPlayers select {(alive _x) && ((side _x) isEqualTo side player) && (_x != player)}); 
    };
    if ((count _units) > 0) then {
      // find center of all other units
      _posNumber = count _units;
      _posX = 0;
      _posY = 0;
      {
        _posX = _posX + (_x select 0);
        _posY = _posY + (_x select 1);
      } forEach _units;
      _posX = _posX / _posNumber;
      _posY = _posY / _posNumber;

      // set player nearest to center as target
      _teleportTarget = [_units, [_posX, _posY]] call BIS_fnc_nearestPosition;
    };
};

if (_teleportTarget != player) then {
  // check if target player is in vehicle
  if ((vehicle _teleportTarget) != _teleportTarget) then {
    _vehicle = vehicle _teleportTarget;
    if ((_vehicle emptyPositions "cargo") > 0) then {
        player moveInCargo _vehicle;
    } else {
      if ((_vehicle emptyPositions "gunner") > 0) then {
          player moveInGunner _vehicle;
        } else {
          if ((_vehicle emptyPositions "commander") > 0) then {
              player moveInCommander _vehicle;
        };
    };
  } else {
    _teleportPosition = findEmptyPosition [1, 15];
    if (_teleportPosition isEqualTo []) then {
        _teleportPosition = getPos _teleportTarget;
    };
    player setPos _teleportPosition;
  };
};