/*

Hinzufügen von Medicalequipment

[player] call titan_fnc_addpilotsmedical;

Returns: Nothing

*/

params ["_unit"];


for "_i" from 1 to 7 do {_unit addItem "ACE_epinephrine";};
for "_i" from 1 to 7 do {_unit addItem "ACE_morphine";};
for "_i" from 1 to 7 do {_unit addItem "ACE_fieldDressing";};
for "_i" from 1 to 7 do {_unit addItem "ACE_bloodIV_250";};
