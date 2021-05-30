/*
Hinzufügen von Mmunition für rifle

[player] call titan_fnc_rifle_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 2 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 4 do {_unit addItem "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItem "ACE_CableTie";};

for "_i" from 1 to 2 do {_unit addItem "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 10 do {_unit addItem "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 5 do {_unit addItem "MiniGrenade";};
