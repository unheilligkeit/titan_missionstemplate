/*
Hinzufügen von SWFrequenzen

[player] call titan_fnc_sw_radiosettings;

Returns: Nothing
*/

_fqSW =[
	"80.1",
	"81",
	"82", "82.1", "82.2", "82.3",
	"83", "83.1", "83.2", "83.3",
	"84", "84.1", "84.2", "84.3",
	"88", "88.1", "88.2", "88.3","88.4"
];

switch true do {
	case ("TITAN_1_0"):
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
	case ("TITAN_2_0"):
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
	case ("TITAN_2_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 3],
    	format ["%1", _fqSW select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_2_2"):
  {
    _freq = [
    	format ["%1", _fqSW select 4],
    	format ["%1", _fqSW select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_2_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 5],
    	format ["%1", _fqSW select 2],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_3_0"):
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
	case ("TITAN_3_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 7],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_3_2"):
  {
    _freq =[
    	format ["%1", _fqSW select 8],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_3_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 9],
    	format ["%1", _fqSW select 6],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_4_0"):
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
	case ("TITAN_4_1"):
  {
    _freq = [
    	format ["%1", _fqSW select 11],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_4_2"):
  {
    _freq = [
    	format ["%1", _fqSW select 12],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("TITAN_4_3"):
  {
    _freq = [
    	format ["%1", _fqSW select 13],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 0],
    	format ["%1", _fqSW select 1],
    	format ["%1", _fqSW select 10],
    	format ["%1", _fqSW select 14],
    	format ["%1", _fqSW select 15],
    	format ["%1", _fqSW select 16]
    ];
  };
	case ("EAGLE"):
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
	case ("FALCON"):
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
	case ("HAWK"):
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
	case ("VULTURE"):
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
	case ("TITAN_1_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_2_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_2_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_2_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_2_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_3_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_3_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_3_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_3_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_4_0"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_4_1"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_4_2"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("TITAN_4_3"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("EAGLE"): {TITAN_Channel = 0; TITAN_Freq = 1; TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("FALCON"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("HAWK"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
	case ("VULTURE"): {TITAN_Channel = 0; TITAN_Freq = 1;TITAN_Freq_Set = format ["%1", _freq select 0]};
};


if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	[(call TFAR_fnc_activeSwRadio), TITAN_Channel] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), TITAN_Freq, TITAN_Freq_Set] call TFAR_fnc_SetChannelFrequency;
};
