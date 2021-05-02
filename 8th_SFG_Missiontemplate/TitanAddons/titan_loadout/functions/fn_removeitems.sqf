/*

Enfernt items

[player] call titan_fnc_removeitems;

Returns: Nothing

*/




params ["_unit"];


{_unit removeMagazine _x} forEach magazines _unit;

_unit removeItems "ACE_epinephrine";
_unit removeItems "ACE_morphine";
_unit removeItems "ACE_fieldDressing";
_unit removeItems "ACE_bloodIV_500";
_unit removeItems "ACE_bloodIV_250";
_unit removeItems "ACE_personalAidKit";
_unit removeItems "ACE_bloodIV";
_unit removeItems "ACE_CableTie";
_unit removeItems "ACE_IR_Strobe_Item";
_unit removeItems "ACE_SpraypaintRed";
