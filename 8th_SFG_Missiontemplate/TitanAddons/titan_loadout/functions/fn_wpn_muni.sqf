/*
Hinzufügen von Mmunition für wpn

[player] call titan_fnc_wpn_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 2 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 4 do {_unit addItem "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItem "ACE_CableTie";};

for "_i" from 1 to 3 do {_unit addItem "11Rnd_45ACP_Mag";};
for "_i" from 1 to 12 do {_unit addItem "hlc_200rnd_556x45_M_SAW";};
for "_i" from 1 to 5 do {_unit addItem "MiniGrenade";};
for "_i" from 1 to 10 do {_unit addItem "SmokeShell";};
