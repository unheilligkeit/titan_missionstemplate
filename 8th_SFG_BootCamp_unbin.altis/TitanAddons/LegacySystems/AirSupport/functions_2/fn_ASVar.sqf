//=========================================================================================
/*
						NERVER TOUCH THIS 
				define Aircraft and Variable names
*/
//=========================================================================================
#include "..\Vehicles.sqf"

//insert names for empty slots
_slot1 = "SLOT 1";
_slot2 = "SLOT 2";
_slot3 = "SLOT 3";
_slot4 = "SLOT 4";

//Variables from Vehicles
_RWM_1 = _AS_RWM select 0; 
_RWM_1 = format ["%1",_RWM_1]; 
_RWM_1 = gettext (configfile >> "CfgVehicles" >> _RWM_1 >> "displayName");

_RWM_2 = _AS_RWM select 1; 
_RWM_2 = format ["%1", _RWM_2];
_RWM_2 = gettext (configfile >> "CfgVehicles" >> _RWM_2 >> "displayName");

_RWM_3 = _AS_RWM select 2; 
_RWM_3 = format ["%1", _RWM_3]; 
_RWM_3 = gettext (configfile >> "CfgVehicles" >> _RWM_3 >> "displayName");

_RWS_1 = _AS_RWS select 0;
_RWS_1 = format ["%1", _RWS_1];
_RWS_1 = gettext (configfile >> "CfgVehicles" >> _RWS_1 >> "displayName");

_RWS_2 = _AS_RWS select 1; 
_RWS_2 = format ["%1", _RWS_2];
_RWS_2 = gettext (configfile >> "CfgVehicles" >> _RWS_2 >> "displayName");

_RWS_3 = _AS_RWS select 2; 
_RWS_3 = format ["%1", _RWS_3];
_RWS_3 = gettext (configfile >> "CfgVehicles" >> _RWS_3 >> "displayName");

_RWS_4 = _AS_RWS select 3; 
_RWS_4 = format ["%1", _RWS_4];
_RWS_4 = gettext (configfile >> "CfgVehicles" >> _RWS_4 >> "displayName");

_FWSL_1 = _AS_FWSL select 0; 
_FWSL_1 = format ["%1", _FWSL_1];
_FWSL_1 = gettext (configfile >> "CfgVehicles" >> _FWSL_1 >> "displayName");

_FWSL_2 = _AS_FWSL select 1; 
_FWSL_2 = format ["%1", _FWSL_2];
_FWSL_2 = gettext (configfile >> "CfgVehicles" >> _FWSL_2 >> "displayName");

_FWSL_3 = _AS_FWSL select 2; 
_FWSL_3 = format ["%1", _FWSL_3];
_FWSL_3 = gettext (configfile >> "CfgVehicles" >> _FWSL_3 >> "displayName");

_FWSS_1 = _AS_FWSS select 0; 
_FWSS_1 = format ["%1", _FWSS_1];
_FWSS_1 = gettext (configfile >> "CfgVehicles" >> _FWSS_1 >> "displayName");

_FWSS_2 = _AS_FWSS select 1; 
_FWSS_2 = format ["%1", _FWSS_2];
_FWSS_2 = gettext (configfile >> "CfgVehicles" >> _FWSS_2 >> "displayName");

_FWM_1 = _AS_FWM select 0; 
_FWM_1 = format ["%1", _FWM_1];
_FWM_1 = gettext (configfile >> "CfgVehicles" >> _FWM_1 >> "displayName");
