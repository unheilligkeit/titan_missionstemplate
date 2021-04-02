/*

Enfernt Loadouts

[player] call titan_fnc_loadoutremove;

Returns: Nothing

*/

params ["_unit"];



removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
if (player call zade_boc_fnc_chestpack != "")
then {
		[player] call zade_boc_fnc_actionSwap;
		[player] call zade_boc_fnc_removeChestpack;
	 };
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
