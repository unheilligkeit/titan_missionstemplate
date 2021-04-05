/*
Hinzufügen von Mmunition für mff

[player] call titan_fnc_mff_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 3 do {_unit addItem "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 3 do {_unit addItem "9Rnd_45ACP_Mag";};
for "_i" from 1 to 4 do {_unit addItem "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellGreen";};
for "_i" from 1 to 3 do {_unit addItem "ACE_Chemlight_HiRed";};
for "_i" from 1 to 3 do {_unit addItem "ACE_Chemlight_HiGreen";};
for "_i" from 1 to 3 do {_unit addItem "ACE_Chemlight_HiOrange";};
