/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_changeuniform;

Returns: Nothing
*/

params ["_unit"];


_mff_changeuniform = [
	"mff_changeuniform",
	"Uniform tauschen",
	"",
	{

		params ["_unit"];
		_loadclass = missionNamespace getVariable "titan_loadout_class";
		_chemlightoff = missionNamespace getVariable "titan_mff_chemlite_off";

		if (_unit call zade_boc_fnc_chestpack != "") then
		{
				[_unit, (backpack _unit)] call zade_boc_fnc_removeChestpack;
		};

		deletevehicle chlight;

		switch (_loadclass) do
		{
				case ("atmo"):
				{
						[_unit] call titan_fnc_atmo;
				};

				case ("cct"):
				{
						[_unit] call titan_fnc_cct;
				};

				case ("eng"):
				{
						[_unit] call titan_fnc_eng;
				};

				case ("ftl"):
				{
					[_unit] call titan_fnc_ftl;
				};

				case ("lrr"):
				{
						[_unit] call titan_fnc_lrr;
				};

				case ("lrs"):
				{
						[_unit] call titan_fnc_lrs;
				};

				case ("ptl"):
				{
						[_unit] call titan_fnc_ptl;
				};

				case ("rct"):
				{
						[_unit] call titan_fnc_rct;
				};

				case ("rifle"):
				{
						[_unit] call titan_fnc_rifle;
				};

				case ("sql"):
				{
						[_unit] call titan_fnc_sql;
				};

				case ("sotac"):
				{
						[_unit] call titan_fnc_sotac;
				};

				case ("wpn"):
				{
						[_unit] call titan_fnc_wpn;
				};

		};

		[_unit, 1, ["ACE_SelfActions", "_mff_changeuniform"]] call ace_interact_menu_fnc_removeActionFromObject;


  },
{true}
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _mff_changeuniform] call ace_interact_menu_fnc_addActiontoObject;
