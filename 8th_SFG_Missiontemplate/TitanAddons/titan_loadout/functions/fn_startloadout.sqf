





params ["_unit"];

[_unit] call titan_fnc_loadoutremove;


_unit forceAddUniform "USP_SOFTSHELL_G3C_MX_RGR_MC";

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

    _brillearray = selectRandom [""];
    _unit addGoggles _brillearray;

} else {

    _unit addGoggles _bdu_brille;

};

_bdu_start_west = profileNamespace getVariable "titan_bdu_start_west";
if (isNil "_bdu_start_west") then
{

    _unit addVest "V_Rangemaster_belt";

} else {

    _unit addVest _bdu_start_west;

};


//[_unit,"TITAN_Patch_SF"] call bis_fnc_setUnitInsignia;

_unit addWeapon "hgun_P07_F";
for "_i" from 1 to 2 do {_unit addItem "16Rnd_9x21_red_Mag";};

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
missionNamespace setVariable ["titan_special_loadout", "start"];
