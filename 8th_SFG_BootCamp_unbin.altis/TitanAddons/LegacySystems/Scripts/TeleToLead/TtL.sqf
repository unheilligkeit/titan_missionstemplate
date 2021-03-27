/*
		*** Teleport to Leader***

	Copyright:		8th SFG Titan Platoon
	Entwicklung:	Fallingstorm
	Homepage:		http://titan-platoon.de/

	for integration:

		in Pole

			this addAction ["<t color='#FCB514'> Teleport </t>","TitanAddons\LegacySystems\Scripts\TeleToLead.sqf","",51,true,true,"","", 5];

		in Dialog

			action = "closeDialog 0;[TITAN_x]ExecVM ""TitanAddons\LegacySystems\Scripts\TeleToLead\TtL.sqf"","""",51,true,true,"""",5";
			x = Number of FT (1 - ... 99)

		in description.ext

			// Teleport to Lead	-------------------------------------------------------
			#include "TitanAddons\LegacySystems\Scripts\TeleToLead\dialog_TtL.hpp"

	Parameter

		_compStr get the Team Number from Button
		_unit  is player
		_input Get the Variable of TITAN_x example "C1"

	BIS_fnc_findSafePos

		Parameter Description
		1	Position
		2	Minimum distance
		3	Maximum distance
		4	Maximum distance from nearest object
		5	0 - cant be in water, 1 - ?
		6	Terrain gradient (how steep terrain)
		7	0 - shore mode; does not have to be in shore

	Example
		Find position minimum 3m from from _pos but not further than 15m,
		not closer than 10m to any other object,
		not in the water,
		maximum gradient of 20,
		not on the shoreline:

		_newPos = [_pos, 3, 15, 10, 0, 20, 0] call BIS_fnc_findSafePos;

*/
//=======================================================================================================================
//   Teleport 
//=======================================================================================================================
private ["_compStr","_input","_unit","_lead","_pos","_dir","_newpos"];

_compStr = _this select 0; //Button FTL input
_unit = player;
if (_compStr == "TITAN_1_0") then {_pos = getpos Leader TITAN_1_0;_dir = getdir Leader TITAN_1_0;};
if (_compStr == "TITAN_2_0") then {_pos = getpos Leader TITAN_2_0;_dir = getdir Leader TITAN_2_0;};
if (_compStr == "TITAN_2_1") then {_pos = getpos Leader TITAN_2_1;_dir = getdir Leader TITAN_2_1;};
if (_compStr == "TITAN_2_2") then {_pos = getpos Leader TITAN_2_2;_dir = getdir Leader TITAN_2_2;};
if (_compStr == "TITAN_2_3") then {_pos = getpos Leader TITAN_2_3;_dir = getdir Leader TITAN_2_3;};
if (_compStr == "TITAN_3_0") then {_pos = getpos Leader TITAN_3_0;_dir = getdir Leader TITAN_3_0;};
if (_compStr == "TITAN_3_1") then {_pos = getpos Leader TITAN_3_1;_dir = getdir Leader TITAN_3_1;};
if (_compStr == "TITAN_3_2") then {_pos = getpos Leader TITAN_3_2;_dir = getdir Leader TITAN_3_2;};
if (_compStr == "TITAN_3_3") then {_pos = getpos Leader TITAN_3_3;_dir = getdir Leader TITAN_3_3;};
if (_compStr == "TITAN_4_0") then {_pos = getpos Leader TITAN_4_0;_dir = getdir Leader TITAN_4_0;};
if (_compStr == "TITAN_4_1") then {_pos = getpos Leader TITAN_4_1;_dir = getdir Leader TITAN_4_1;};
if (_compStr == "TITAN_4_2") then {_pos = getpos Leader TITAN_4_2;_dir = getdir Leader TITAN_4_2;};
if (_compStr == "TITAN_4_3") then {_pos = getpos Leader TITAN_4_3;_dir = getdir Leader TITAN_4_3;};

if (_compStr == "EAGLE") then {_pos = getpos Leader EAGLE;_dir = getdir Leader EAGLE; };
if (_compStr == "FALCON") then {_pos = getpos Leader FALCON;_dir = getdir Leader FALCON; };
if (_compStr == "HAWK") then {_pos = getpos Leader HAWK;_dir = getdir Leader HAWK; };
if (_compStr == "VULTURE") then {_pos = getpos Leader VULTURE;_dir = getdir Leader VULTURE; };

// set direction of player to group
_unit setDir _dir;

// set safe position to Group
_newPos = [_pos, 3, 5, 5, 0, 20, 0] call BIS_fnc_findSafePos;

// set Unit to Group
_unit setPos _newpos;

if (true) exitWith {};
