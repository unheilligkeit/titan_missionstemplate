params ["_titanpos","_titanunits","_titanside","_titanradius","_titanvcom"];


_titangroup = [getPos _titanpos, _titanside, _titanunits] call BIS_fnc_spawnGroup;
_titangroup deleteGroupWhenEmpty true;
if ( _titanvcom) then {
    _titangroup setVariable ["Vcm_Disable",true];
};
[_titangroup, getPos _titanpos, _titanradius] call lambs_wp_fnc_taskPatrol;
