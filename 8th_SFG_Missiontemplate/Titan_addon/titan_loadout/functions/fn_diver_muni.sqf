/*
Hinzufügen von Mmunition für diver

[player] call titan_fnc_diver_muni;

Returns: Nothing
*/




params ["_unit"];

_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";

for "_i" from 1 to 4 do {_unit addItem "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItem "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_IR";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_HiRed";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_HiYellow";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_HiOrange";};
for "_i" from 1 to 1 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 1 do {_unit addItem "Chemlight_yellow";};
for "_i" from 1 to 1 do {_unit addItem "ACE_Chemlight_White";};
for "_i" from 1 to 1 do {_unit addItem "ACE_Chemlight_Orange";};
for "_i" from 1 to 1 do {_unit addItem "B_IR_Grenade";};
for "_i" from 1 to 5 do {_unit addItem "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_unit addItem "DemoCharge_Remote_Mag";};
for "_i" from 1 to 2 do {_unit addItem "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShell";};
