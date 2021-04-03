





params ["_unit"];

[_unit] call titan_fnc_loadoutremove;


_unit forceAddUniform "U_B_CombatUniform_mcam";

_bdu_helm = profileNamespace getVariable "titan_bdu_helm";
if (isNil "_bdu_atmo_helm") then
{

    _unit addHeadgear "TITAN_Beret_Enlisted";

} else {

    _unit addHeadgear _bdu_helm;

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
