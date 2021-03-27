#include "..\component_macros.hpp";
params ["_newFrequency"];

_hasSwRadio = call TFAR_fnc_haveSWRadio;

if (!_hasSwRadio) exitWith {};

_activeSWRadio = call TFAR_fnc_activeSwRadio;
_currentFrequency = _activeSWRadio call TFAR_fnc_getSwFrequency;

if (_newFrequency != _currentFrequency) then {
	[_activeSWRadio, _newFrequency] call TFAR_fnc_setSwFrequency;
	_updatedFrequency = _activeSWRadio call TFAR_fnc_getSwFrequency;
	player sideChat "Personal radio frequency changed to " + _updatedFrequency;
};
