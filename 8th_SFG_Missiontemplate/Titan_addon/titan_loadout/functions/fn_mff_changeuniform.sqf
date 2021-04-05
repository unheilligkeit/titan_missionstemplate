/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_changeuniform;

Returns: Nothing
*/

params ["_unit"];
_loadclass = missionNamespace getVariable "titan_loadout_class";
_chemlightoff = missionNamespace getVariable "titan_mff_chemlite_off";
deletevehicle chlight;

_fs_uniform = [
	"fs_uniform",
	"Uniform tauschen",
	"",
	{
			hint "Hallo welt";


  },
{true}
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions", "fs_uniform"], _fs_uniform] call ace_interact_menu_fnc_addActiontoObject;
