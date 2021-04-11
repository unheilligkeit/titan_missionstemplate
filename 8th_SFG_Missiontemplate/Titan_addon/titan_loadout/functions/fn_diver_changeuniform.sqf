/*
Hinzufügen von Mmunition für diver

[player] call titan_fnc_diver_changeuniform;

Returns: Nothing
*/

params ["_unit"];

diver_changeuniform = [
	"diver_changeuniform",
	"Taucher Uniform tauschen",
	"",
	{

		params ["_unit"];
		_loadclass = missionNamespace getVariable "titan_loadout_class";

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

		[_unit, 1, ["ACE_SelfActions", "diver_changeuniform"]] call ace_interact_menu_fnc_removeActionFromObject;


  },
{true}
] call ace_interact_menu_fnc_createAction;

