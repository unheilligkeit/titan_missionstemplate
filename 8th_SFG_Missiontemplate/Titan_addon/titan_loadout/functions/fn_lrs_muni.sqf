/*
Hinzufügen von Mmunition für lrr (long-range reconnaissance operator)

[_unit] call titan_fnc_lrs_muni;

Returns: Nothing
*/




params ["_unit"];

for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_HiYellow";};
for "_i" from 1 to 2 do {_unit addItem "ACE_Chemlight_Orange";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Yellow";};
for "_i" from 1 to 2 do {_unit addItem "ACE_HandFlare_Green";};
for "_i" from 1 to 4 do {_unit addItem "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItem "ACE_CableTie";};

for "_i" from 1 to 5 do {_unit addItem "HandGrenade";};
for "_i" from 1 to 8 do {_unit addItem "SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer";};
for "_i" from 1 to 4 do {_unit addItem "11Rnd_45ACP_Mag";};

for "_i" from 1 to 6 do {_unit addItem "ACE_HuntIR_M203";};
for "_i" from 1 to 2 do {_unit addItem "UGL_FlareRed_F";};
for "_i" from 1 to 2 do {_unit addItem "UGL_FlareWhite_F";};
for "_i" from 1 to 4 do {_unit addItem "B_IR_Grenade";};
for "_i" from 1 to 12 do {_unit addItem "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 6 do {_unit addItem "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellYellow";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellOrange";};
for "_i" from 1 to 2 do {_unit addItem "SmokeShellPurple";};
for "_i" from 1 to 5 do {_unit addItem "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 5 do {_unit addItem "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 5 do {_unit addItem "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 5 do {_unit addItem "1Rnd_SmokePurple_Grenade_shell";};
