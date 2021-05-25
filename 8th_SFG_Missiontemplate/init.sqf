tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;
[player] call titan_fnc_tfar_settings;
[player] call titan_fnc_mff_changeuniform;
[player] call titan_fnc_diver_changeuniform;
call compile preprocessFileLineNumbers "TitanAddons\AirSupport\init_air_support.sqf";
call compileFinal preprocessFileLineNumbers "TitanAddons\init.sqf";

// rearm boxen
[muli1] call titan_fnc_open_rearm;
[muli2] call titan_fnc_open_rearm;
[muli3] call titan_fnc_open_rearm;

//teleport
Flage addAction ["<t color='#FCB514'> Teleport </t>","[player] call titanMB_fnc_teleport_to_group","",51,true,true,"","", 5];

//loadout kiste
loadout_box_1 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
loadout_box_2 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
ASVS_1 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
ASVS_2 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];

//air support
ASVS_1 addAction ["<t color='#FCB514'> Air-Support </t>","call titan_air_fnc_support_gui","", 100, false, True, "", "", 5];
ASVS_2 addAction ["<t color='#FCB514'> Air-Support </t>","call titan_air_fnc_support_gui","", 100, false, True, "", "", 5];
