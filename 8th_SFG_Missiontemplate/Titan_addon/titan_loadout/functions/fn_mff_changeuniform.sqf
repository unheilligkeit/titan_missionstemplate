/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_changeuniform;

Returns: Nothing
*/

fs_uniform = [
	"uniform change",
	"Uniform tauschen",
	"",
	{
      params ["_unit"];
      _loadclass = missionNamespace getVariable "titan_loadout_class";
      _chemlightoff = missionNamespace getVariable "titan_mff_chemlite_off";
      deletevehicle chlight;

      _backpack = backpack player;
      if (_unit call zade_boc_fnc_chestpack != "") then
      {
          [_unit,_backpack] call zade_boc_fnc_removeChestpack;
      };

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

  },
{true},
{},
[],
[0,0,0],
100
] call ace_interact_menu_fnc_createAction;
