

[
    muli1,											// Object the action is attached to
    "Rearm",										// Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Progress icon shown on screen
    "_this distance _target < 10",						// Condition for the action to be shown
    "_caller distance _target < 10",						// Condition for the action to progress
    {},													// Code executed when action starts
    {},													// Code executed on every progress tick
    { _caller call titan_fnc_loadout_rearm },				// Code executed on completion
    {},													// Code executed on interrupted
    [],													// Arguments passed to the scripts as _this select 3
    3,													// Action duration [s]
    0,													// Priority
    false,												// Remove on completion
    false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, muli1];

[
    muli2,											// Object the action is attached to
    "Rearm",										// Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Progress icon shown on screen
    "_this distance _target > 10",						// Condition for the action to be shown
    "_caller distance _target > 10",						// Condition for the action to progress
    {},													// Code executed when action starts
    {},													// Code executed on every progress tick
    { _caller call titan_fnc_loadout_rearm },				// Code executed on completion
    {},													// Code executed on interrupted
    [],													// Arguments passed to the scripts as _this select 3
    3,													// Action duration [s]
    0,													// Priority
    false,												// Remove on completion
    false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, muli2];

[
    muli3,											// Object the action is attached to
    "Rearm",										// Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa",	// Progress icon shown on screen
    "_this distance _target > 10",						// Condition for the action to be shown
    "_caller distance _target > 10",						// Condition for the action to progress
    {},													// Code executed when action starts
    {},													// Code executed on every progress tick
    { _caller call titan_fnc_loadout_rearm },				// Code executed on completion
    {},													// Code executed on interrupted
    [],													// Arguments passed to the scripts as _this select 3
    3,													// Action duration [s]
    0,													// Priority
    false,												// Remove on completion
    false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, muli3];