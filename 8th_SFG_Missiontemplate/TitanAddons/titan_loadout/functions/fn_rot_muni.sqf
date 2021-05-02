/*
Hinzufügen von Mmunition für rot

[player] call titan_fnc_rot_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 3 do {_unit addItem "11Rnd_45ACP_Mag";};
for "_i" from 1 to 1 do {_unit addItem "B_IR_Grenade";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_yellow";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Yellow";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellYellow";};
