
// Init
tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;
[player] call titan_fnc_mff_changeuniform;
[player] call titan_fnc_diver_changeuniform;
call compile preprocessFileLineNumbers "TitanAddons\AirSupport\init_air_support.sqf";
call compileFinal preprocessFileLineNumbers "TitanAddons\init.sqf";
[] spawn
{
	waitUntil {time > 1};
	[true] spawn titanMB_fnc_player_addtozeus;
};

schild1 setObjectTextureGlobal [0, "bilder\loadout.paa"];
schild2 setObjectTextureGlobal [0, "bilder\arsenal.paa"];
// rearm boxen
[muli1] call titan_fnc_open_rearm;
[muli2] call titan_fnc_open_rearm;
[muli3] call titan_fnc_open_rearm;

[little_box_1] call titan_fnc_open_rearm;
[little_box_2] call titan_fnc_open_rearm;
[little_box_3] call titan_fnc_open_rearm;


//teleport
[Flage] call titanTP_fnc_ace_teleport;
//Flage addAction ["<t color='#FCB514'> Teleport </t>","[player] call titanMB_fnc_teleport_to_group","",51,true,true,"","", 5];

//loadout kiste
loadout_box_1 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
loadout_box_2 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];

little_box_1 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
little_box_2 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
little_box_3 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];

muli1 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
muli2 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];
muli3 addAction ["<t color='#FCB514'> Loadout </t>","call titan_fnc_loadoutgui","", 100, false, True, "", "", 5];

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


// freefall test
[
    free,											// Object the action is attached to
    "HALO TRANING",										// Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa",	// Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa",	// Progress icon shown on screen
    "_this distance _target < 10",						// Condition for the action to be shown
    "_caller distance _target < 10",						// Condition for the action to progress
    {},													// Code executed when action starts
    {},													// Code executed on every progress tick
    { _caller setPos [14703.2,16721.4,6000] },				// Code executed on completion
    {},													// Code executed on interrupted
    [],													// Arguments passed to the scripts as _this select 3
    3,													// Action duration [s]
    10,													// Priority
    false,												// Remove on completion
    false												// Show in unconscious state
] call BIS_fnc_holdActionAdd;
