/*

Hinzufügen von Medicalequipment

[player] call titan_fnc_addmedicalequipment;

Returns: Nothing

*/

params ["_unit"];


for "_i" from 1 to 10 do {_unit addItem "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItem "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItem "ACE_fieldDressing";};
