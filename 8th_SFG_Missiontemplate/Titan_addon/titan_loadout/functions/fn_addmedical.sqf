/*

Hinzufügen von Medicalequipment

[player] call titan_fnc_medicalequipment;

Returns: Nothing

*/

params ["_unit"];


for "_i" from 1 to 10 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 20 do {player addItemToUniform "ACE_fieldDressing";};
