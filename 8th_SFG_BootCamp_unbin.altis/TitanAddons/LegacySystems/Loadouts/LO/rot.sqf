if (!isServer) then {waitUntil {!(isNull player)}; };
/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
private ["_debug","_player","_selectuni","_vBPres","_plastr","_rearm"];
_debug	= _this select 0;
_selectuni = _this select 1;
_vBPres = _this select 2;
_rearm = _this select 3;
_player = player;
_plastr = format ["%1", _player];

if (_debug) then {hint "Script 3 start"; sleep 2;};

if (!_rearm) then {
	// Entfernt die komplette vorige Ausrüstung
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;

	if ("rot" in _vBPres) then {
		if (player call zade_boc_fnc_chestpack != "") then {
			[player] call zade_boc_fnc_actionSwap;
			[player] call zade_boc_fnc_removeChestpack;
		};
		removeBackpack player;
	};

	removeHeadgear player;
	removeGoggles player;
	
	/************************************************************************************************
	Einheit als Medic deklarieren
	//= 0 - kein Medic / Sanitäter 
	//= 1 - Medic / Sanitäter 
	//= 2 - Doctor / Arzt 
	************************************************************************************************/
	_player setVariable ["ace_medical_medicClass", 1, true]; 
	
	
	//---------------------------------------------------------------------------------

	//---------------------------------------------------------------------------------
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//---------------------------------------------------------------------------------
	if(local player) then {
		switch (_plastr) do {
			//Klasse Piloten 1 bis 10
			case "p1": {	//Recovery
				if (_debug) then {hint "Pilot p1"; sleep 2;};
				player addHeadgear "Heli_Helmet_Recovery";
			};
			case "p2": {	//p2
				if (_debug) then {hint "Pilot p2"; sleep 2;};
				player addHeadgear "Heli_Helmet_Base";
			};
			case "p3": {	//Zerocool
				if (_debug) then {hint "Pilot p3"; sleep 2;};
				player addHeadgear "Heli_Helmet_HiJack";
			};
			case "p4": {	//Baatscram
				if (_debug) then {hint "Pilot p4"; sleep 2;};
				player addHeadgear "Heli_Helmet_Wolverine";
			};
			case "p5": {	//Jannik
				if (_debug) then {hint "Pilot p5"; sleep 2;};
				player addHeadgear "Heli_Helmet_Jannik";
			};
			case "p6": {	//Set
				if (_debug) then {hint "Pilot p6"; sleep 2;};
				player addHeadgear "Heli_Helmet_Crow";
			};
			case "p7": {	//AirbornBeast
				if (_debug) then {hint "Pilot p7"; sleep 2;};
				player addHeadgear "Heli_Helmet_AirborneBeast";
			};
			case "p8": {	//Jalisco
				if (_debug) then {hint "Pilot p8"; sleep 2;};
				player addHeadgear "Heli_Helmet_Jalisco";
			};
/*
			case "p9": {	//P9
				if (_debug) then {hint "Pilot p9"; sleep 2;};
				player addHeadgear "Heli_Helmet_Base";
			};
			
			case "p14": {	//P14
				if (_debug) then {hint "Pilot p14"; sleep 2;};
				player addHeadgear "Heli_Helmet_Base";
			};
*/
			//Klasse DEFAULT bei nicht gesetzter Variabel
			default {
				if (_debug) then {hint "Default"; sleep 2;};
				player addHeadgear "Heli_Helmet_Base";
			};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then {
		//sec Weapon
		player addWeapon "hgun_Pistol_heavy_01_F";
		player addWeapon "Rangefinder";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "tf_anprc152";
		player linkItem "B_UavTerminal";
		
		//Uniform
		player forceAddUniform "U_B_HeliPilotCoveralls";
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "ACE_microDAGR";
		player addItemToUniform "ACE_EarPlugs";
		
		//Vest
		player addVest "V_PlateCarrier1_rgr_noflag_F";
		player addItemToVest "ACE_IR_Strobe_Item";
		player addItemToVest "ACE_NVG_Wide";
		player addItemToVest "b_EasyTrack_PDA";
	};
	
	//Add to Uniform
	for "_i" from 1 to 7 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 7 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 7 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 7 do {player addItemToUniform "ACE_bloodIV_250";};

	//Add to Vest
	for "_i" from 1 to 3 do {player addItemToVest "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 1 do {player addItemToVest "B_IR_Grenade";};
	for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 2 do {player addItemToVest "Chemlight_yellow";};
	for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
	for "_i" from 1 to 2 do {player addItemToVest "Chemlight_red";};
	for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Yellow";};
	for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Green";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellYellow";};

	//Patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	[[player,"TITAN_Patch_SQ"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	
};
/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
if (!_rearm) then {
	player action ["SwitchWeapon", player, player, 0];
	_myUnif = getUnitLoadout player;
	missionNamespace setVariable ["myUniform", _myUnif];
	missionNamespace setVariable ["permVar2"," "];
	
	// Funkfrequenzen
	sleep 2;
	_freq = TF_Pilot_sr_west select (2);
	_sw1 = format ["%1", _freq select 0];
	_sw2 = format ["%1", _freq select 1];
	_sw3 = format ["%1", _freq select 2];
	_sw4 = format ["%1", _freq select 3];
	_sw5 = format ["%1", _freq select 4];
	_sw6 = format ["%1", _freq select 5];
	_sw7 = format ["%1", _freq select 6];
	_sw8 = format ["%1", _freq select 7];
	if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
		[(call TFAR_fnc_activeSwRadio), 3] call TFAR_fnc_setSwChannel;
		[(call TFAR_fnc_activeSwRadio), 1, _sw1] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 2, _sw2] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 3, _sw3] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 4, _sw4] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 5, _sw5] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 6, _sw6] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 7, _sw7] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 8, _sw8] call TFAR_fnc_SetChannelFrequency;	
	};
	
};

if (_debug) then {hint "Script 3 beendet"; /*sleep 2;*/};
if(true) exitWith{};