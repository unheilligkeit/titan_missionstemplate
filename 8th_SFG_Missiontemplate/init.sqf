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
// Titan arsenal
box_arsenal_normal addAction ["<t color='#FCB514'> Titan Arsenal </t>","createDialog 'titan_arsenal_gui'","", 100, false, True, "", "", 5];
box_arsenal_pilot addAction ["<t color='#FCB514'> Titan Arsenal Piloten </t>","createDialog 'titan_arsenal_pilot_gui'","", 100, false, True, "", "", 5];
// Storyline
_hcvar = "param_hc" call BIS_fnc_getParamValue;

if ( _hcvar == 1 ) then {
    // Run on the HC only
    if !(isServer or hasInterface) then {
        execVM "TitanAddons\titan_missionsbau\storyline.sqf";
    };
} else {
    // Run on the server only
    if isServer then {
        execVM "TitanAddons\titan_missionsbau\storyline.sqf";
    };
};



// Tasks

if (isServer) then {execVM "TitanAddons\titan_missionsbau\task.sqf"};
