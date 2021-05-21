params["_control"];

_tablet = format ["%1", _control];

if (_tablet == "ASVS_1") then {
	#include "fn_ASBTN.sqf"
	tablet = "_tablet_1"; publicVariable "tablet";
};

if (_tablet == "ASVS_2") then {
	#include "fn_ASBTN.sqf"
	tablet = "_tablet_2"; publicVariable "tablet";
};

[] call titan_air_fnc_support_entry;
