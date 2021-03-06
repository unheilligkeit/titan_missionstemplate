/*
Hinzufügen von SWFrequenzen

[player] call titan_fnc_sw_radiosettings;

Returns: Nothing
*/

params ["_unit", "_groupID", "_fqSW", "_freq", "_sw1", "_sw2", "_sw3", "_sw4", "_sw5", "_sw6", "_sw7"];
_groupID = format ["%1", group player];


_fqSW =[
	"80.1","81","82","82.1", "82.2","82.3","83","83.1","83.2","83.3","84","84.1","84.2","84.3",
	"88", "88.1", "88.2", "88.3","88.4",
	//Pilot
	"78","78.1","78.2","78.3","78.4","80.1","81","88"
];

_fqSQ =[
	"80.1", "80.2", "80.3", "80.4", "80.5", "80.6"
];

switch true do {
	case (_groupID isEqualTo "B TITAN_1_0"):
  {
    _freq = [
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 2],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_2_0"):
  {
    _freq = [
    	format ["%1", _fqSW select 2],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_2_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 3],
    	format ["%1", _fqSQ select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_2_2"):
  {
    _freq = [
    	format ["%1", _fqSW select 4],
    	format ["%1", _fqSQ select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_2_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 5],
    	format ["%1", _fqSQ select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_3_0"):
  {
    _freq = [
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_3_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 7],
    	format ["%1", _fqSQ select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_3_2"):
  {
    _freq =[
    	format ["%1", _fqSW select 8],
    	format ["%1", _fqSQ select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_3_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 9],
    	format ["%1", _fqSQ select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_4_0"):
  {
    _freq =  [
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_4_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 11],
    	format ["%1", _fqSQ select 3],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_4_2"):
  {
    _freq = [
    	format ["%1", _fqSW select 12],
    	format ["%1", _fqSQ select 3],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B TITAN_4_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 13],
    	format ["%1", _fqSQ select 3],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case (_groupID isEqualTo "B EAGLE"):
  {
    _freq = [
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 17],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14]
    ];
  };
	case (_groupID isEqualTo "B FALCON"):
  {
    _freq = [
      format ["%1", _fqSW select 16],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 17],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14]
    ];
  };
	case (_groupID isEqualTo "B HAWK"):
  {
    _freq = [
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 17],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14]
    ];
  };
	case (_groupID isEqualTo "B VULTURE"):
  {
    _freq = [
    	format ["%1", _fqSW select 17],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 17],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14]
    ];
  };
	case (_groupID isEqualTo "B SQUADRON"):
	{
		_freq = [
			format ["%1", _fqSW select 19],
			format ["%1", _fqSW select 20],
			format ["%1", _fqSW select 21],
			format ["%1", _fqSW select 22],
			format ["%1", _fqSW select 23],
			format ["%1", _fqSW select 24],
			format ["%1", _fqSW select 25],
			format ["%1", _fqSW select 26]
		];
	};
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
	case (_groupID isEqualTo "B TITAN_1_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_2_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_2_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_2_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_2_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_3_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_3_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_3_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_3_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_4_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_4_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_4_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B TITAN_4_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B EAGLE"): {TITAN_Channel = 0; TITAN_Freq = 1; TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B FALCON"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B HAWK"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B VULTURE"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case (_groupID isEqualTo "B SQUADRON"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
};


if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[(call TFAR_fnc_activeSwRadio), TITAN_Channel] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), TITAN_Freq, TITAN_Freq_Set] call TFAR_fnc_SetChannelFrequency;
};

_hasLR = call TFAR_fnc_haveLRRadio;
if (_hasLR) then {[_unit] call titan_fnc_lr_radiosettings;};
