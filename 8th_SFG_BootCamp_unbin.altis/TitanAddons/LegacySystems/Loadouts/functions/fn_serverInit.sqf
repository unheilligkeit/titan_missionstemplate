if (!(isServer)) exitWith {};

TPGROUPS = [];
publicVariable "TPGROUPS";

TITAN_1_0 = "TITAN_1_0";
publicVariable "TITAN_1_0";

TITAN_2_0 = "TITAN_2_0";
publicVariable "TITAN_2_0";

TITAN_2_1 = "TITAN_2_1";
publicVariable "TITAN_2_1";

TITAN_2_2 = "TITAN_2_2";
publicVariable "TITAN_2_2";

TITAN_2_3 = "TITAN_2_3";
publicVariable "TITAN_2_3";

TITAN_3_0 = "TITAN_3_0";
publicVariable "TITAN_3_0";

TITAN_3_1 = "TITAN_3_1";
publicVariable "TITAN_3_1";

TITAN_3_2 = "TITAN_3_2";
publicVariable "TITAN_3_2";

TITAN_3_3 = "TITAN_3_3";
publicVariable "TITAN_3_3";

TITAN_4_0 = "TITAN_4_0";
publicVariable "TITAN_4_0";

TITAN_4_1 = "TITAN_4_1";
publicVariable "TITAN_4_1";

TITAN_4_2 = "TITAN_4_2";
publicVariable "TITAN_4_2";

TITAN_4_3 = "TITAN_4_3";
publicVariable "TITAN_4_3";

EAGLE = "EAGLE";//Eagle
publicVariable "EAGLE";

HAWK = "HAWK";//Hawk
publicVariable "HAWK";

FALCON = "FALCON";//FALCON
publicVariable "FALCON";

VULTURE = "VULTURE";//VULTURE
publicVariable "VULTURE";

//TP_count benötig für TitanAddons\LegacySystems\Marker\AirStrike.sqf
TP_count = 1;
publicVariable "TP_count";

//ASbtn für Air Support Vehicle Spawner
AS_btn = "";

// TFAR settings: Pre
	if (isClass(configFile >> "CfgPatches" >> "task_force_radio")) then {[] call compile preprocessFileLineNumbers "TitanAddons\LegacySystems\Scripts\TFAR\tfar_Pre.sqf";};
// Frequenzen die vergeben werden

nil
