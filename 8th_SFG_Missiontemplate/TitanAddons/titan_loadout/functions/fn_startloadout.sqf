





params ["_unit"];

[_unit] call titan_fnc_loadoutremove;


_unit forceAddUniform "U_B_CombatUniform_mcam";

_bdu_helm = profileNamespace getVariable "titan_bdu_start_helm";
if ( isNil "_bdu_helm" ) then
{

    _unit addHeadgear "TITAN_Beret_Enlisted";

} else {

    _unit addHeadgear _bdu_helm;

};

_bdu_brille = profileNamespace getVariable "titan_bdu_start_brille";
if (isNil "_bdu_brille") then
{

    _brillearray = selectRandom ["","G_Aviator"];
    _unit addGoggles _brillearray;

} else {

    _unit addGoggles _bdu_brille;

};

_unit addVest "V_Rangemaster_belt";

_unit addWeapon "hgun_Pistol_heavy_01_F";
for "_i" from 1 to 2 do {_unit addItem "11Rnd_45ACP_Mag";};

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemGPS";
_unit addItem "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItem "Chemlight_red";};
for "_i" from 1 to 2 do {_unit addItem "Chemlight_green";};

_unit action ["SwitchWeapon", _unit, _unit, 100];

missionNamespace setVariable ["titan_loadout_class", "start"];
