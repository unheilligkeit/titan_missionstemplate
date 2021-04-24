/*
Hinzufügen von Radioeinstellungen

[player] call titan_fnc_lr_radiosettings;

Returns: channels and frequencies
*/
params ["_groupID", "_fqSW", "_freq", "_lr1", "_lr2", "_lr3", "_lr4", "_lr5", "_lr6", "_lr7", "_lr8", "_lr9"];
_groupID = format ["%1", group player];

_fqLW =[
	"78",
	"80.1", "80.2", "80.3", "80.4", "80.8",
	"88", "88.1", "88.2", "88.3"
];

switch true do {
	case (_groupID isEqualTo "B TITAN_1_0"):
  {
    _freq =
    [
       		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_2_0"):
  {
    _freq =
    [

        format ["%1", _fqLW select 2],
        format ["%1", _fqLW select 1],
        format ["%1", _fqLW select 3],
        format ["%1", _fqLW select 4],
        format ["%1", _fqLW select 5],
        format ["%1", _fqLW select 6],
        format ["%1", _fqLW select 7],
        format ["%1", _fqLW select 8],
        format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_2_1"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_2_2"):
  {
    _freq =
    [

       format ["%1", _fqLW select 2],
       format ["%1", _fqLW select 1],
       format ["%1", _fqLW select 3],
       format ["%1", _fqLW select 4],
       format ["%1", _fqLW select 5],
       format ["%1", _fqLW select 6],
       format ["%1", _fqLW select 7],
       format ["%1", _fqLW select 8],
       format ["%1", _fqLW select 0]

   ];
  };
	case (_groupID isEqualTo "B TITAN_2_3"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_3_0"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_3_1"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_3_2"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_3_3"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_4_0"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_4_1"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_4_2"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 4],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 3],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B TITAN_4_3"):
  {
    _freq =
    [

       format ["%1", _fqLW select 4],
       format ["%1", _fqLW select 1],
       format ["%1", _fqLW select 2],
       format ["%1", _fqLW select 3],
       format ["%1", _fqLW select 5],
       format ["%1", _fqLW select 6],
       format ["%1", _fqLW select 7],
       format ["%1", _fqLW select 8],
       format ["%1", _fqLW select 0]

   ];
  };
	case (_groupID isEqualTo "B EAGLE"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 6],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 0],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 9],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B FALCON"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 0],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 9],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B HAWK"):
  {
    _freq =
    [

    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 5],
    		format ["%1", _fqLW select 1],
    		format ["%1", _fqLW select 0],
    		format ["%1", _fqLW select 7],
    		format ["%1", _fqLW select 8],
    		format ["%1", _fqLW select 9],
    		format ["%1", _fqLW select 2],
    		format ["%1", _fqLW select 0]

    ];
  };
	case (_groupID isEqualTo "B VULTURE"):
  {
    _freq =
    [

       format ["%1", _fqLW select 9],
       format ["%1", _fqLW select 5],
       format ["%1", _fqLW select 1],
       format ["%1", _fqLW select 0],
       format ["%1", _fqLW select 7],
       format ["%1", _fqLW select 8],
       format ["%1", _fqLW select 9],
       format ["%1", _fqLW select 2],
       format ["%1", _fqLW select 0]

   ];
 };
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
