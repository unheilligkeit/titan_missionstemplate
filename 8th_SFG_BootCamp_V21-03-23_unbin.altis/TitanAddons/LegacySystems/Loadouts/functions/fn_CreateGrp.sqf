if (isDedicated) exitWith {};

private ["_freq", "_permVar", "_compStr", "_spoterList", "_sotacList"];
_permVar = missionNamespace getVariable "permVar";
_compStr = _this select 0;
_reconList =["EAGLE", "FALCON", "HAWK", "VULTURE"];
_oldGrp = group player;

//---------------------------------------------------------------------------------------------------------------------------
// Create Group
//---------------------------------------------------------------------------------------------------------------------------
call compile format [
   "
    %1 = createGroup (side player);
	%1 setGroupIDGlobal [_compStr];
	[ player ] joinSilent %1;
	[[(group player),[groupID (group player)]],'setGroupId',true,true] call BIS_fnc_mp;
	TPGROUPS pushBack %1;
	publicVariable 'TPGROUPS';
   ",
	_compStr
];

if (count (units _oldGrp) == 0) then {
	if (_oldGrp in TPGROUPS) exitWith {
		TPGROUPS deleteAt (TPGROUPS find _oldGrp);
		publicVariable "TPGROUPS";
		publicVariable "_oldGrp";
	};
};


//---------------------------------------------------------------------------------------------------------------------------
//	Zuweisung Fireteam By Fallingstorm 12.05.18
//---------------------------------------------------------------------------------------------------------------------------
// Fireteam, Frequenz und Channel zuweisung

if (_compstr == "TITAN_1_0") then {
	TITAN_1_0 = group player;
	publicVariable "TITAN_1_0";
};
if (_compstr == "TITAN_2_0") then {
	TITAN_2_0 = group player;
	publicVariable "TITAN_2_0";
};
if (_compstr == "TITAN_2_1") then {
	TITAN_2_1 = group player;
	publicVariable "TITAN_2_1";
};
if (_compstr == "TITAN_2_2") then {
	TITAN_2_2 = group player;
	publicVariable "TITAN_2_2";
};
if (_compstr == "TITAN_2_3") then {
	TITAN_2_2 = group player;
	publicVariable "TITAN_2_3";
};
if (_compstr == "TITAN_3_0") then {
	TITAN_3_0 = group player;
	publicVariable "TITAN_3_0";
};
if (_compstr == "TITAN_3_1") then {
	TITAN_3_1 = group player;
	publicVariable "TITAN_3_1";
};
if (_compstr == "TITAN_3_2") then {
	TITAN_3_2 = group player;
	publicVariable "TITAN_3_2";
};
if (_compstr == "TITAN_3_3") then {
	TITAN_3_2 = group player;
	publicVariable "TITAN_3_3";
};
if (_compstr == "TITAN_4_0") then {
	TITAN_4_0 = group player;
	publicVariable "TITAN_4_0";
};
if (_compstr == "TITAN_4_1") then {
	TITAN_4_1 = group player;
	publicVariable "TITAN_4_1";
};
if (_compstr == "TITAN_4_2") then {
	TITAN_4_2 = group player;
	publicVariable "TITAN_4_2";
};
if (_compstr == "TITAN_4_3") then {
	TITAN_4_3 = group player;
	publicVariable "TITAN_4_2";
};
if (_compstr == "EAGLE") then {
	EAGLE = group player;
	publicVariable "EAGLE";
};
if (_compstr == "FALCON") then {
	FALCON = group player;
	publicVariable "FALCON";
};
if (_compstr == "HAWK") then {
	HAWK = group player;
	publicVariable "HAWK";
};
if (_compstr == "VULTURE") then {
	VULTURE = group player;
	publicVariable "VULTURE";
};

//---------------------------------------------------------------------------------------------------------------------------
//	Zuweisung Fireteam und Funkkanäle / -frequenzen --- By Fallingstorm 08.11.2020
//---------------------------------------------------------------------------------------------------------------------------
// TITAN Preset frequencies

switch true do {
	case (_compStr == "TITAN_1_0"): {_freq = T_1_0_SW_FQ};
	case (_compStr == "TITAN_2_0"): {_freq = T_2_0_SW_FQ};
	case (_compStr == "TITAN_2_1"): {_freq = T_2_1_SW_FQ};
	case (_compStr == "TITAN_2_2"): {_freq = T_2_2_SW_FQ};
	case (_compStr == "TITAN_2_3"): {_freq = T_2_3_SW_FQ};
	case (_compStr == "TITAN_3_0"): {_freq = T_3_0_SW_FQ};	
	case (_compStr == "TITAN_3_1"): {_freq = T_3_1_SW_FQ};
	case (_compStr == "TITAN_3_2"): {_freq = T_3_2_SW_FQ};
	case (_compStr == "TITAN_3_3"): {_freq = T_3_3_SW_FQ};
	case (_compStr == "TITAN_4_0"): {_freq = T_4_0_SW_FQ};
	case (_compStr == "TITAN_4_1"): {_freq = T_4_1_SW_FQ};
	case (_compStr == "TITAN_4_2"): {_freq = T_4_2_SW_FQ};
	case (_compStr == "TITAN_4_3"): {_freq = T_4_3_SW_FQ};	
	case (_compStr == "EAGLE"): {_freq = TF_EAGLE_SW_FQ};
	case (_compStr == "FALCON"): {_freq = TF_FALCON_SW_FQ};
	case (_compStr == "HAWK"): {_freq = TF_HAWK_SW_FQ};
	case (_compStr == "VULTURE"): {_freq = TF_VULTURE_SW_FQ};
};

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


if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[(call TFAR_fnc_activeSwRadio), TITAN_Channel] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), TITAN_Freq, TITAN_Freq_Set] call TFAR_fnc_SetChannelFrequency;
};

//---------------------------------------------------------------------------------------------------------------------------
// ToDo
//[(call TFAR_fnc_activeSwRadio), 4] call TFAR_fnc_setAdditionalSwChannel;
 

//---------------------------------------------------------------------------------------------------------------------------
// LongRange Radio Settings 
_this = [_compstr, _reconList] execVM "TitanAddons\LegacySystems\Loadouts\functions\fn_LRSet.sqf";


//---------------------------------------------------------------------------------------------------------------------------
/*
// Ausgabe
if (_compstr in _reconList) then {
	hint format ["Du bist nun Leader der Gruppe %1", _compStr];
} else {
	_cs = format ["TITAN %1", _compStr splitstring "TITAN_" joinString "-" ]; 
	hint format ["Du bist nun Leader der Gruppe %1", _cs];
};
*/

//if (true) exitWith {closeDialog 0;[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf"};
