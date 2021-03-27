if (isDedicated) exitWith {};

private ["_freq", "_permVar", "_compStr", "_spoterList", "_sotacList"];
_permVar = missionNamespace getVariable "permVar";
_compStr = _this select 0; //Button FT input
_reconList =["EAGLE", "HAWK", "FALCON", "VULTURE"];


//---------------------------------------------------------------------------------------------------------------------------
//	Zuweisung Fireteam und Funkkanäle / -frequenzen --- By Fallingstorm 11.10.2020
//---------------------------------------------------------------------------------------------------------------------------
// TITAN Preset frequencies


if (_compStr == "TITAN_1_0") then {_freq = T_1_0_SW_FQ;};
if (_compStr == "TITAN_2_0") then {_freq = T_2_0_SW_FQ};
if (_compStr == "TITAN_2_1") then {_freq = T_2_1_SW_FQ};
if (_compStr == "TITAN_2_2") then {_freq = T_2_2_SW_FQ};
if (_compStr == "TITAN_2_3") then {_freq = T_2_3_SW_FQ};
if (_compStr == "TITAN_3_0") then {_freq = T_3_0_SW_FQ};	
if (_compStr == "TITAN_3_1") then {_freq = T_3_1_SW_FQ};
if (_compStr == "TITAN_3_2") then {_freq = T_3_2_SW_FQ};
if (_compStr == "TITAN_3_3") then {_freq = T_3_3_SW_FQ};
if (_compStr == "TITAN_4_0") then {_freq = T_4_0_SW_FQ};
if (_compStr == "TITAN_4_1") then {_freq = T_4_1_SW_FQ};
if (_compStr == "TITAN_4_2") then {_freq = T_4_2_SW_FQ};
if (_compStr == "TITAN_4_3") then {_freq = T_4_3_SW_FQ};	
if (_compStr == "EAGLE") then {_freq = TF_EAGLE_SW_FQ};
if (_compStr == "FALCON") then {_freq = TF_FALCON_SW_FQ};
if (_compStr == "HAWK") then {_freq = TF_HAWK_SW_FQ};
if (_compStr == "VULTURE") then {_freq = TF_VULTURE_SW_FQ};

_sw1 = format ["%1", _freq select 0];
_sw2 = format ["%1", _freq select 1];
_sw3 = format ["%1", _freq select 2];
_sw4 = format ["%1", _freq select 3];
_sw5 = format ["%1", _freq select 4];
_sw6 = format ["%1", _freq select 5];
_sw7 = format ["%1", _freq select 6];
_sw8 = format ["%1", _freq select 7];

if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[(call TFAR_fnc_activeSwRadio), 0] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 1, _sw1] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 2, _sw2] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 2] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 3, _sw3] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 3] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 4, _sw4] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 4] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 5, _sw5] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 5] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 6, _sw6] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 6] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), 7, _sw7] call TFAR_fnc_SetChannelFrequency;
};

switch true do {
	case (_compStr == "TITAN_1_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_2_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};	
	case (_compStr == "TITAN_2_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_2_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_2_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_3_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_3_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_3_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_3_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};	
	case (_compStr == "TITAN_4_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_4_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_4_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "TITAN_4_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "EAGLE"): {TITAN_Channel = 0; TITAN_Freq = 1; TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "FALCON"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};	
	case (_compStr == "HAWK"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_compStr == "VULTURE"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
};

//---------------------------------------------------------------------------------------------------------------------------
//	Zuweisung Fireteam--- By Fallingstorm 12.05.18
//---------------------------------------------------------------------------------------------------------------------------
// Fireteam, Frequenz und Channel zuweisung
if (_compStr == "TITAN_1_0") then {
	call compile format [
		"	
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_1_0;
			publicVariable '(group player)';
			
		",
		_compStr
	];
};
if (_compStr == "TITAN_2_0") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_2_0;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_2_1") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_2_1;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_2_2") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_2_2;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_2_3") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_2_3;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_3_0") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_3_0;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_3_1") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_3_1;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_3_2") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_3_2;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_3_3") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_3_3;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_4_0") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_4_0;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_4_1") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_4_1;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_4_2") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_4_2;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "TITAN_4_3") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent TITAN_4_3;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "EAGLE") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent EAGLE;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "FALCON") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent FALCON;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "HAWK") then {
	call compile format [
		"	
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent HAWK;
			publicVariable '(group player)';
		",
		_compStr
	];
};
if (_compStr == "VULTURE") then {
	call compile format [
		"
			[ player ] joinSilent (grpNull);
			[ player ] joinSilent VULTURE;
			publicVariable '(group player)';
		",
		_compStr
	];
};


if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[(call TFAR_fnc_activeSwRadio), TITAN_Channel] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), TITAN_Freq, TITAN_Freq_Set] call TFAR_fnc_SetChannelFrequency;
};

//Ausgabe

if (_compstr in _reconList) then {
	hint format ["Du bist nun in Gruppe %1", _compStr];
} else {
	_cs = format ["TITAN %1", _compStr splitstring "TITAN_" joinString "-" ]; 
	hint format ["Du bist nun in Gruppe %1", _cs];
};


// zurück zum Loadout
if (true) exitWith {closeDialog 0;[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf";};
