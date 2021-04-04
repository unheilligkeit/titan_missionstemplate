/*
Hinzufügen von Mmunition für rct (Reacon Controller)

[player] call titan_fnc_rct_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Yellow";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 4 do {_unit addItem "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItem "ACE_CableTie";};

for "_i" from 1 to 8 do {_unit addItem "SMA_20Rnd_762x51mm_M80A1_EPR_Tracer";};
for "_i" from 1 to 4 do {_unit addItem "11Rnd_45ACP_Mag";};

for "_i" from 1 to 6 do {_unit addItem "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShell";};
for "_i" from 1 to 4 do {_unit addItem "HandGrenade";};
for "_i" from 1 to 12 do {_unit addItem "MiniGrenade";};
for "_i" from 1 to 6 do {_unit addItem "DemoCharge_Remote_Mag";};
for "_i" from 1 to 2 do {_unit addItem "SatchelCharge_Remote_Mag";};
for "_i" from 1 to 2 do {_unit addItem "ACE_M84";};
