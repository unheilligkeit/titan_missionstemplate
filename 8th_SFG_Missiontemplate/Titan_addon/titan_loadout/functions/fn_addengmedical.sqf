/*

Hinzufügen von Medicalequipment

[player] call titan_fnc_addpilotsmedical;

Returns: Nothing

*/

params ["_unit"];

_unit addItem "ACE_personalAidKit";
for "_i" from 1 to 25 do {_unit addItem "ACE_epinephrine";};
for "_i" from 1 to 25 do {_unit addItem "ACE_morphine";};
for "_i" from 1 to 40 do {_unit addItem "ACE_fieldDressing";};
for "_i" from 1 to 8 do {_unit addItem "ACE_bloodIV";};
