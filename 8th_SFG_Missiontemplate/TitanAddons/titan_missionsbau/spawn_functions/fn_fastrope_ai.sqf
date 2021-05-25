params ["_titanspawn","_titanheli","_titanside","_titanwaypoint","_titanunits"];



_titanhelispawn = [getPos _titanspawn, 270, _titanheli, _titanside] call BIS_fnc_spawnVehicle;
[_titanhelispawn select 0] call ace_fastroping_fnc_equipFRIES;

_titangroup = [getPos _titanspawn, _titanside, _titanunits] call BIS_fnc_spawnGroup;
{
        _x moveInCargo (_titanhelispawn select 0);
} forEach units _titangroup;
_titangroup setCombatMode "RED";
_titangroup enableIRLasers true;


    _wp1 =(_titanhelispawn select 2) addWaypoint [getPos _titanwaypoint , 0];
    _wp1 setWaypointType "SCRIPTED";
    _wp1 setWaypointScript "\x\zen\addons\ai\functions\fnc_waypointFastrope.sqf";


    _wp2 =(_titanhelispawn select 2) addWaypoint [getPos _titanspawn, 1];
    _wp2 setWaypointType "DISMISS";
