/*
  * Author original: Belbo (ADV)
  * Author changes: Fallingstorm (8th SFG Titan-Platoon)
 *
 * Contains all the variables important for tfar in SeL missions.
 * Basic settings have to be set in cba_settings.sqf in main mission folder.

 * Put at the very start of your init.sqf.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * tfar present and set? - <BOOL>
 *
 * Example:
 * [] call compile preprocessFileLineNumbers "fn_tfar_settings.sqf";
 *
 * Public: No
 */


player setVariable ["tf_sendingDistanceMultiplicator", 25, true];

if (isClass(configFile >> "CfgPatches" >> "tfar_core")) exitWith {
	//general:
	tfar_terrain_interception_coefficient = 1.0;
	tfar_speakerDistance = 10;

	//radios:
	TFAR_DefaultRadio_Personal_West = "tfar_anprc152";

	TFAR_DefaultRadio_Rifleman_West = "tfar_anprc154";

	//tfar serious mode channel name and password:
	tf_radio_channel_name = "Operation";
	tf_radio_channel_password = "123";

	//update the plugin settings:
	call TFAR_fnc_sendPluginConfig;

	true;
};

false;
