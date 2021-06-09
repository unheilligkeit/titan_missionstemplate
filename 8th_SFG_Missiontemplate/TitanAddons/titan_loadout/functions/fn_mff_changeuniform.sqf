/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_changeuniform;

Returns: Nothing
*/

params ["_unit"];


mff_changeuniform = [
	"mff_changeuniform",
	"Fallschirm Uniform tauschen",
	"",
	{

		params ["_unit"];
		//params ["_unit"];
		_loadclass = missionNamespace getVariable "titan_loadout_class";
		_chemlightoff = missionNamespace getVariable "titan_mff_chemlite_off";
		_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;

		if (_unit call zade_boc_fnc_chestpack != "") then
		{
				[_unit, (backpack _unit)] call zade_boc_fnc_removeChestpack;
		};

		deletevehicle chlight;

		switch (_loadclass) do
		{
				case ("atmo"):
				{
						[_unit, _tarnmuster] call titan_fnc_atmo;
				};

				case ("cct"):
				{
						[_unit, _tarnmuster] call titan_fnc_cct;
				};

				case ("eng"):
				{
						[_unit, _tarnmuster] call titan_fnc_eng;
				};

				case ("ftl"):
				{
						[_unit, _tarnmuster] call titan_fnc_ftl;
				};

				case ("lrr"):
				{
						[_unit, _tarnmuster] call titan_fnc_lrr;
				};

				case ("lrs"):
				{
						[_unit, _tarnmuster] call titan_fnc_lrs;
				};

				case ("ptl"):
				{
						[_unit, _tarnmuster] call titan_fnc_ptl;
				};

				case ("rct"):
				{
						[_unit, _tarnmuster] call titan_fnc_rct;
				};

				case ("rifle"):
				{
						[_unit, _tarnmuster] call titan_fnc_rifle;
				};

				case ("sql"):
				{
						[_unit, _tarnmuster] call titan_fnc_sql;
				};

				case ("sotac"):
				{
						[_unit, _tarnmuster] call titan_fnc_sotac;
				};

				case ("wpn"):
				{
						[_unit, _tarnmuster] call titan_fnc_wpn;
				};

		};

		[_unit, 1, ["ACE_SelfActions", "mff_changeuniform"]] call ace_interact_menu_fnc_removeActionFromObject;


  },
{true}
] call ace_interact_menu_fnc_createAction;
