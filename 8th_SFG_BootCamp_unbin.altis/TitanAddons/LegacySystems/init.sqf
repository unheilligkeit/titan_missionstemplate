#include ".\component_macros.hpp";

//-----------------------------------------------------------------
// Namespace nötig für ingame, nicht löschen
missionNamespace setVariable ["permVar"," "];
missionNamespace setVariable ["permVar2"," "];
missionNamespace setVariable ["parapool"," "];
missionNamespace setVariable ["myUniform"," "];
missionNamespace setVariable ["fs_uniform"," "];
//-----------------------------------------------------------------

// JIP Check
	if (!isServer && isNull player) then {isJIP=1;} else {isJIP=0;};

// TFAR settings: Pre
	[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Scripts\TFAR\tfar_Pre.sqf";

// Wait until player is initialized
	if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

// TFAR settings: Post (Client Side)
	if (isClass(configFile >> "CfgPatches" >> "task_force_radio")) then {[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Scripts\TFAR\tfar_Post.sqf";};

// AH-64 Skip Start
	fza_ah64_cem = false;

// Weapon to Holster (secure for Start)
	player action ["SwitchWeapon", player, player, 100];

//-----------------------------------------------------------------------------------------------
// EventHandler
//-----------------------------------------------------------------------------------------------

//[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\selfInteract\fs_RavenSpawn.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\selfInteract\fs_uniform.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Loadouts\functions\fn_FQSets.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\AirSupport\functions\fn_ASBTN.sqf";
[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\AirSupport\functions_2\fn_ASBTN.sqf";
