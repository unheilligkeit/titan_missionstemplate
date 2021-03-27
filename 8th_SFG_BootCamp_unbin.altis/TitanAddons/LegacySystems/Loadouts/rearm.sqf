//----------------------------------------------------------------------------------------------------
/*
	*** rearm ***

	Copyright:	8th Titan Platoon Clan
	Author:		Fallingstorm
	Date:		12.02.2018

*/
//----------------------------------------------------------------------------------------------------
if (!isServer) then {waitUntil {!(isNull player)}; };

private ["_debug","_selectuni","_ftl","_ope","_pil","_rek","_vBPres","_path","_permVar","_rearm"];

_debug = _this select 0;
_selectuni = _this select 1;
_vBPres = _this select 2;
_rearm = _this select 3;

_permVar = missionNamespace getVariable "permVar"; 
_permVar2 = missionNamespace getVariable "permVar2";

if ((_permVar2 == "diver") || (_permVar2 == "mff")) then {
	_path = format ["TitanAddons\LegacySystems\Loadouts\LO\%1.sqf",_permVar2]; 
} else {
 _path = format ["TitanAddons\LegacySystems\Loadouts\LO\%1.sqf",_permVar]; 
};
// Check auf Backpack und Vest

if ((_permVar == "rot") || (_permVar == "fix")) then {

} else { 
	_isBB = Backpack player;
	_isVest = vest player; 

};

// Remove Items and Magazines
{player removeMagazine _x} forEach magazines player;

player removeItems "ACE_epinephrine";
player removeItems "ACE_morphine";
player removeItems "ACE_fieldDressing";
player removeItems "ACE_bloodIV_500";
player removeItems "ACE_bloodIV_250";
player removeItems "ACE_personalAidKit";
player removeItems "ACE_bloodIV";
player removeItems "ACE_CableTie";
player removeItems "ACE_IR_Strobe_Item";
player removeItems "ACE_SpraypaintRed";

_this = [_debug,_selectuni,_vBPres,_rearm] call compile preprocessFileLineNumbers _path;//"TitanAddons\LegacySystems\Loadouts\LO\eng.sqf";

if(true) exitWith{closeDialog 0;Hint " You are Rearmed";}; //[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\Loadout.sqf"};

