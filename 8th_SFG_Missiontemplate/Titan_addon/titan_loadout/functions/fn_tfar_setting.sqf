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

 params["_unit"];

_unit setVariable ["tf_sendingDistanceMultiplicator", 25, true];

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

	//side settings:
	//blufor:
	private _defaultFrequencies_sr_west = ["81", "82", "83", "84", "81.1", "83.1", "84.1", "89.3"];
	private _defaultFrequencies_lr_west = ["80.1","80.2","80.3","80.4","78","78.1","78.2","78.3","78.4"];
	private _west_code = "_bluefor";


	//// don't edit below this line ////

	_settingsSRWest = false call TFAR_fnc_generateSRSettings;
	_settingsLrWest = false call TFAR_fnc_generateLrSettings;

	_settingsSRWest set [2, _defaultFrequencies_sr_west];
	_settingsSRWest set [4, _west_code];
	TFAR_freq_sr_west = _settingsSRWest;

	_settingsLrWest set [2, _defaultFrequencies_lr_west];
	_settingsLrWest set [4, _west_code];
	TFAR_freq_lr_west = _settingsLrWest;

	missionNamespace setVariable ["tf_west_radio_code",_west_code];

	true;
};

false;
