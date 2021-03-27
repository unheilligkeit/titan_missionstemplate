#include "..\component_macros.hpp";
params ["_newFrequency"];

_hasVehicleRadio = (vehicle player) call TFAR_fnc_hasVehicleRadio;

if (!_hasVehicleRadio) exitWith {};

_activeLRRadio = call TFAR_fnc_activeLRRadio;
_currentFrequency = _activeLRRadio call TFAR_fnc_getLrFrequency;

if (_newFrequency != _currentFrequency) then {
	_newFrequency call TFAR_fnc_setLongRangeRadioFrequency;
	_updatedFrequency = _activeLRRadio call TFAR_fnc_getLrFrequency;
	vehicle player vehicleChat "Long range radio frequency of vehicle changed to " + _updatedFrequency;
};
