//----------------------------------------------------------------------------------------------------
/*
		*** LOADOUT SYSTEM ***
*/
//----------------------------------------------------------------------------------------------------
if (!isServer) then {waitUntil {!(isNull player)}; };

#include "functions\fn_tda.sqf"; 				//bindet TDA mit ein

private ["_debug","_uniform","_player"];

_debug = false;						//Schaltet den Debug Modus an/aus
_uniform = _this select 0;			//übernimmt Wert aus Dialog
_change = _this select 1;			//übernimmt Wert aus Dialog
_vSet = _this select 2;				//übernimmt Wert aus Dialog
_rearm = _this select 3;
_player = player; 					//übernimmt PlayerVarName
_plastr = format ["%1", _player];	//formatiert PlayerVarBName zu String
_selectuni = "";					//definiert leere Variable
_uni = uniform _player;				//übernimmt Uniform von Player

missionNamespace setVariable ["varName", _vSet];

if (_debug) then {hint "Script SYSTEM wird gestartet"; sleep 2; hint format ["Gewand: %1 \nChange: %2",_uniform,_change ]; sleep 5;}; //Debugmode

if ((!_rearm) && (_change == 0201)) then {missionNamespace setVariable ["permVar","ptl"];};
if ((!_rearm) && (_change == 0202)) then {missionNamespace setVariable ["permVar","sql"];};
if ((!_rearm) && (_change == 0203)) then {missionNamespace setVariable ["permVar","ftl"];};
if ((!_rearm) && (_change == 0301)) then {missionNamespace setVariable ["permVar","cct"];};
if ((!_rearm) && (_change == 0302)) then {missionNamespace setVariable ["permVar","tac"];
	_this = [] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Marker\AirStrike.sqf";
};
if ((!_rearm) && (_change == 0401)) then {missionNamespace setVariable ["permVar","atmo"];};
if ((!_rearm) && (_change == 0402)) then {missionNamespace setVariable ["permVar","wpn"];};
if ((!_rearm) && (_change == 0403)) then {missionNamespace setVariable ["permVar","eng"];};
if ((!_rearm) && (_change == 0404)) then {missionNamespace setVariable ["permVar","rifle"];};
if ((!_rearm) && (_change == 0501)) then {missionNamespace setVariable ["permVar","rct"];};
if ((!_rearm) && (_change == 0502)) then {missionNamespace setVariable ["permVar","lrr"];};
if ((!_rearm) && (_change == 0503)) then {missionNamespace setVariable ["permVar","lrs"];};
if ((!_rearm) && (_change == 0601)) then {missionNamespace setVariable ["permVar","fix"];};
if ((!_rearm) && (_change == 0602)) then {missionNamespace setVariable ["permVar","rot"];};
if ((!_rearm) && (_change == 9001)) then {missionNamespace setVariable ["permVar2","diver"];};
if ((!_rearm) && (_change == 9002)) then {missionNamespace setVariable ["permVar2","mff"];};


// Setzt _selectuni für die erkennung der Uniform!
if (_uniform != "") then {permVar = ""; [name player] call TitanAddons_SotacTabletSystem_fnc_logoutPilot;};
if (_uni in _listMTPUni) then {_selectuni = "mtp";};
if (_uni in _listWTPUni) then {_selectuni = "wtp";};
if (_uni in _listJTPUni) then {_selectuni = "jtp";};


// Heilt den Spieler
//[ player ] call ACE_medical_treatment_fnc_fullHealLocal; // nur neues ACE-Health, zur Zeit fehlerhaft und nicht zu verwenden
[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal; // nur altes ACE-Health

//selfinteraction remove
if ((permVar != "rct")||(permVar != "lrr")||(permVar != "lrs") ) then {
			//[player, 1, ["ACE_SelfActions", "spawn raven_backpack"]]call ace_interact_menu_fnc_removeActionFromObject;
		};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES TDA
//---------------------------------------------------------------------------------
if(_uniform == "tda") then {
	_this = [_debug,_selectuni,_vBPres] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\tda.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES PLATOONLEAD
//---------------------------------------------------------------------------------
if (_change == 0201) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\ptl.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES SQUADLEAD
//---------------------------------------------------------------------------------
if (_change == 0202) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\sql.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES FTL
//---------------------------------------------------------------------------------
if (_change == 0203) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\ftl.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES CCT
//---------------------------------------------------------------------------------
if (_change == 0301) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\cct.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES SOTAC
//---------------------------------------------------------------------------------
if (_change == 0302) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\tac.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES ATMO
//---------------------------------------------------------------------------------
if (_change == 0401) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\atmo.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES WPN
//---------------------------------------------------------------------------------
if (_change == 0402) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\wpn.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES ENGs
//---------------------------------------------------------------------------------
if (_change == 0403) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\eng.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES RIFLEMANS
//---------------------------------------------------------------------------------
if (_change == 0404) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\rifle.sqf";
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES RECON CONTROLLER
//---------------------------------------------------------------------------------
if (_change == 0501) then { 
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\rct.sqf";
	//[player, 1, ["ACE_SelfActions", "spawn raven_backpack"]]call ace_interact_menu_fnc_removeActionFromObject;
	//[player, 1, ["ACE_SelfActions"], fs_raven] call ace_interact_menu_fnc_addActiontoObject; 
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES LRR
//---------------------------------------------------------------------------------
if (_change == 0502) then { 
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\lrr.sqf";
	//[player, 1, ["ACE_SelfActions", "spawn raven_backpack"]]call ace_interact_menu_fnc_removeActionFromObject;
	//[player, 1, ["ACE_SelfActions"], fs_raven] call ace_interact_menu_fnc_addActiontoObject; 
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES LRS
//---------------------------------------------------------------------------------
if (_change == 0503) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\lrs.sqf";
	//[player, 1, ["ACE_SelfActions", "spawn raven_backpack"]]call ace_interact_menu_fnc_removeActionFromObject;
	//[player, 1, ["ACE_SelfActions"], fs_raven] call ace_interact_menu_fnc_addActiontoObject; 
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES FIX
//---------------------------------------------------------------------------------
if (_change == 0601) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] execVM "TitanAddons\LegacySystems\Loadouts\LO\fix.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES ROT
//---------------------------------------------------------------------------------
if (_change == 0602) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] execVM "TitanAddons\LegacySystems\Loadouts\LO\rot.sqf";
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES DIVER
//---------------------------------------------------------------------------------
if (_change == 9001) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\diver.sqf";
	[player, 1, ["ACE_SelfActions"], fs_uniform] call ace_interact_menu_fnc_addActiontoObject;
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG AUSRÜSTUNG DES MFF
//---------------------------------------------------------------------------------
if (_change == 9002) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\LO\mff.sqf";
	[player, 1, ["ACE_SelfActions"], fs_uniform] call ace_interact_menu_fnc_addActiontoObject;
};
//---------------------------------------------------------------------------------
//	ZUWEISUNG STSIN
//---------------------------------------------------------------------------------
if (_change == 10001) then {
	[] call TitanAddons_SotacTabletSystem_fnc_loginPilot;
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG STSOUT
//---------------------------------------------------------------------------------
if (_change == 10002) then {
	[name player] call TitanAddons_SotacTabletSystem_fnc_logoutPilot;
};

//---------------------------------------------------------------------------------
//	ZUWEISUNG REARM
//---------------------------------------------------------------------------------
if (_change == 0006) then {
	_this = [_debug,_selectuni,_vBPres,_rearm] execVM "TitanAddons\LegacySystems\Loadouts\rearm.sqf";
};

if (_debug) then {hint "Script SYSTEM beendet"; sleep 2;}; 
//if(true) exitWith{closeDialog 0;[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf";};
if(true) exitWith{
	closeDialog 0;
	if ((_change == 9001) || (_change == 9002)) then {
		
	} else {
		[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf";
	};
};