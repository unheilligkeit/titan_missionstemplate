




[
    uav1,											// Object the action is attached to
    "Rearm",										// Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Progress icon shown on screen
    "_this distance _target < 10",						// Condition for the action to be shown
    "_caller distance _target < 10",						// Condition for the action to progress
    {},													// Code executed when action starts
    {},													// Code executed on every progress tick
    { _caller call titan_fnc_loadout_rearm },				// Code executed on completion
    {},													// Code executed on interrupted
    [],													// Arguments passed to the scripts as _this select 3
    3,													// Action duration [s]
    0,													// Priority
    false,												// Remove on completion
    false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, uav1];

[box1] call titan_fnc_limitarsenal ;

[player] call titan_fnc_tfar_settings;
[player] call titan_fnc_mff_changeuniform;
[player] call titan_fnc_diver_changeuniform;
[] call compile preprocessFileLineNumbers "TitanAddons\AirSupport\functions\fn_ASBTN.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\AirSupport\functions_2\fn_ASBTN.sqf";
