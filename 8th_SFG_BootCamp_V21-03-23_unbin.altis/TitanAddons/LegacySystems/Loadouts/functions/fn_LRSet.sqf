hint"";  
private ["_freq", "_compStr"];

_compStr = _this select 0;
_reconList =["EAGLE", "FALCON", "HAWK", "VULTURE"];

switch true do {
	case (_compStr == "TITAN_1_0"): {_freq = T_1_0_LW_FQ select 2};
	case (_compStr == "TITAN_2_0"): {_freq = T_2_0_LW_FQ select 2};
	case (_compStr == "TITAN_2_1"): {_freq = T_2_1_LW_FQ select 2};
	case (_compStr == "TITAN_2_2"): {_freq = T_2_2_LW_FQ select 2};
	case (_compStr == "TITAN_2_3"): {_freq = T_2_3_LW_FQ select 2};
	case (_compStr == "TITAN_3_0"): {_freq = T_3_0_LW_FQ select 2};	
	case (_compStr == "TITAN_3_1"): {_freq = T_3_1_LW_FQ select 2};
	case (_compStr == "TITAN_3_2"): {_freq = T_3_2_LW_FQ select 2};
	case (_compStr == "TITAN_3_3"): {_freq = T_3_3_LW_FQ select 2};
	case (_compStr == "TITAN_4_0"): {_freq = T_4_0_LW_FQ select 2};
	case (_compStr == "TITAN_4_1"): {_freq = T_4_1_LW_FQ select 2};
	case (_compStr == "TITAN_4_2"): {_freq = T_4_2_LW_FQ select 2};
	case (_compStr == "TITAN_4_3"): {_freq = T_4_3_LW_FQ select 2};	
	case (_compStr == "EAGLE"): {_freq = TF_EAGLE_LW_FQ select 2};
	case (_compStr == "FALCON"): {_freq = TF_FALCON_LW_FQ select 2};
	case (_compStr == "HAWK"): {_freq = TF_HAWK_LW_FQ select 2};
	case (_compStr == "VULTURE"): {_freq = TF_VULTURE_LW_FQ select 2};
};	

_lw1 = format ["%1", _freq select 0];
_lw2 = format ["%1", _freq select 1];
_lw3 = format ["%1", _freq select 2];
_lw4 = format ["%1", _freq select 3];
_lw5 = format ["%1", _freq select 4];
_lw6 = format ["%1", _freq select 5];
_lw7 = format ["%1", _freq select 6];
_lw8 = format ["%1", _freq select 7];
_lw9 = format ["%1", _freq select 8];


if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[call TFAR_fnc_activeLRRadio, _lw1] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 0] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw2] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw3] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 2] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw4] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 3] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw5] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 4] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw6] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 5] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw7] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 6] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw8] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 7] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLRRadio), _lw9] call TFAR_fnc_setLrFrequency;
	[call TFAR_fnc_activeLrRadio, 8] call TFAR_fnc_setLrChannel;
};

if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[call TFAR_fnc_activeLrRadio, 8] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 7, _lW9] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 7] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 7, _lW8] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 6] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 6, _lw7] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 5] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 5, _lw6] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 4] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 5, _lw5] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 3] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 4, _lw4] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 2] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 3, _lw3] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 1] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 2, _lw2] call TFAR_fnc_SetChannelFrequency;
	[call TFAR_fnc_activeLrRadio, 0] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_activeLrRadio), 1, _lw1] call TFAR_fnc_SetChannelFrequency;
};


// Ausgabe
if (_compstr in _reconList) then {
	hint format ["Du bist nun Leader der Gruppe %1", _compStr];
} else {
	_cs = format ["TITAN %1", _compStr splitstring "TITAN_" joinString "-" ]; 
	hint format ["Du bist nun Leader der Gruppe %1", _cs];
};

//hint format ["%1", _freq ];


//if (true) exitWith {};
if (true) exitWith {closeDialog 0;[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf"};
 