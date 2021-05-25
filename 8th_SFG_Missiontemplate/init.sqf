tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;
[player] call titan_fnc_tfar_settings;
[player] call titan_fnc_mff_changeuniform;
[player] call titan_fnc_diver_changeuniform;

call compile preprocessFileLineNumbers "TitanAddons\AirSupport\init_air_support.sqf";

call compileFinal preprocessFileLineNumbers "TitanAddons\init.sqf";
[muli1] call titan_fnc_open_rearm;
[muli2] call titan_fnc_open_rearm;
[muli3] call titan_fnc_open_rearm;
