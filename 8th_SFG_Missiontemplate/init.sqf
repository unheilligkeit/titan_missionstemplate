
[player] call titan_fnc_tfar_settings;
[player] call titan_fnc_mff_changeuniform;
[player] call titan_fnc_diver_changeuniform;
[] call compile preprocessFileLineNumbers "TitanAddons\AirSupport\functions\fn_ASBTN.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\AirSupport\functions_2\fn_ASBTN.sqf";

call compileFinal preprocessFileLineNumbers "TitanAddons\init.sqf";

[box1] call titan_fnc_limitarsenal;

[] call titan_fnc_open_rearm;
