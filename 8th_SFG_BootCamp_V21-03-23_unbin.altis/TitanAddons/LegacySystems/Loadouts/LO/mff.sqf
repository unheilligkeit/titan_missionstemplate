//---------------------------------------------------------------------------------
/*
	Neues MFF Script
	
	Umgestellt und angepasst
	Random Ausrüstung der Einheiten
	Selfinteraction hinzugefügt zum Rückausrüsten am Boden
	
	Author: Fallingstorm 
	Stand:	27/05/2020
*/
//---------------------------------------------------------------------------------

if (!isServer) then {waitUntil {!(isNull player)}; };
if (permVar2 == "mff") then {[player, 1, ["ACE_SelfActions", "uniform change"]]call ace_interact_menu_fnc_removeActionFromObject;};


/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
//ptivate
private ["_debug","_player","_selectuni","_vBPres","_plastr","_rearm", "_command", "_control"];
_debug	= _this select 0;
_selectuni = _this select 1;
_vBPres = _this select 2; 
_rearm = _this select 3;
_player = player;
_plastr = format ["%1", _player]; 
_command = ["ptl", "sql", "ftl"];
_control = ["cct", "tac"];

if (_debug) then {hint "Script MFF start"; sleep 2; hint format ["SelectUni: %1 --- REARM: %2 --- Player: %5",_selectuni,_rearm,_player]; sleep 10;};

//---------------------------------------------------------------------------------
/*
	Sichern und entfernen der vorherige Ausrüstung 
*/
//---------------------------------------------------------------------------------

// komplette ausrüstung in Variable schreiben
params ["_myUnif", "_parapools","_backpack"];
if (!_rearm) then {
	//Ausrüstung sichern
	_myUnif = getUnitLoadout player;
	missionNamespace setVariable ["myUniform", _myUnif];
	_backpack = "drybag_blk";//backpack player;

	// Entfernt vorige Ausrüstung
	removeAllWeapons _player;
	removeAllItems _player;
	removeAllAssignedItems _player;
	//removeUniform _player;
	removeVest _player;
	removeBackpack _player;
	removeHeadgear _player;
	removeGoggles _player;
	
	if ("mff" in _vBPres) then {
		if (player call zade_boc_fnc_chestpack != "") then {
			[player] call zade_boc_fnc_actionSwap;
			[player] call zade_boc_fnc_removeChestpack;
		};
		removeBackpack player;
	};

	//---------------------------------------------------------------------------------
	//
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//	
	//---------------------------------------------------------------------------------
	if(local player) then {

		params ["_player", "_uniformPool", "_vestPool", "_backpackPool", "_headgearPool", "_gogglesPool", "_itemsPool"];
		
		if (_selectuni == "mtp") then {
			// Auswahl Bagpacks und übergabe in Globale Variable für Selfinteraction
			_parapools = ["COS_PARACHUTE"];
			missionNamespace setVariable ["parapool", _parapools];

			// Restliche Pool für mtp
			//_uniformPool = [""];
			_vestPool = ["halo_vest_L"];
			_backpackPool = _parapools;
			_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_Balaclava_lowprofile", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_G_tna_F", "BALA_SWAT_ESS_TAN", "BALA_SWAT_ESS_od", "BALA_SWAT_ESS_BLK"];
			_itemsPool = ["ACE_NVG_Wide"];
			_weaponPool = ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
			
			// Check und Neu einkleiden
		/*	if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
		*/
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
			if (count _headgearPool > 0) then {
				player addHeadgear (selectRandom _headgearPool);
			};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
			if (count _itemsPool > 0) then {
				player linkItem (selectRandom _itemsPool);
			};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		};
		
		if (_selectuni == "jtp") then {
			// Auswahl Fallschirme und übergabe in Globale Variable für Selfinteraction
			_parapools = ["COS_PARACHUTE"];
			missionNamespace setVariable ["parapool", _parapools];
			
			// Restliche Pool für jtp
			//_uniformPool = [""];
			_vestPool = ["halo_vest_L"];
			_backpackPool = _parapools;
			_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_Balaclava_lowprofile", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_G_tna_F", "BALA_SWAT_ESS_TAN", "BALA_SWAT_ESS_od", "BALA_SWAT_ESS_BLK"];
			_itemsPool = ["ACE_NVG_Wide"];
			_weaponPool = ["SMA_MK18afgTAN"];
			
			// Check und Neu einkleiden
		/*	if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
		*/
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
			if (count _headgearPool > 0) then {
				player addHeadgear (selectRandom _headgearPool);
			};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
			if (count _itemsPool > 0) then {
				player linkItem (selectRandom _itemsPool);
			};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		
		};
		
		if (_selectuni == "wtp") then {
			// Auswahl Fallschirme und übergabe in Globale Variable für Selfinteraction
			_parapools = ["PARACHUTE_W"];
			missionNamespace setVariable ["parapool", _parapools];
			
			// Restliche Pool für wtp
			//_uniformPool = [""];
			_vestPool = ["halo_vest_L"];
			_backpackPool = _parapools;
			_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_Balaclava_lowprofile", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_G_tna_F", "BALA_SWAT_ESS_TAN", "BALA_SWAT_ESS_od", "BALA_SWAT_ESS_BLK"];
			_itemsPool = ["ACE_NVG_Wide"];
			_weaponPool = ["SMA_MK18afgTAN"];
			
			// Check und Neu einkleiden
		/*	if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
		*/
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
			if (count _headgearPool > 0) then {
				player addHeadgear (selectRandom _headgearPool);
			};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
			if (count _itemsPool > 0) then {
				player linkItem (selectRandom _itemsPool);
			};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		};
		
		[player,_backpack] call zade_boc_fnc_addChestpack;
			
	};
};	

//---------------------------------------------------------------------------------
//	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
//---------------------------------------------------------------------------------
if(local player) then { 
	if (!_rearm) then { // Hier alles was kein Verbrauchsgut ist
		// Weapon
		player addWeapon "hgun_ACPC2_F";
		player addHandgunItem "acc_flashlight_pistol";
		
		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ACE_Altimeter";
		player linkItem "ItemGPS";
		player linkItem "tf_anprc152";
		
		if (permVar in _command) then {
			chlight = "Chemlight_Red" createVehicle [0,0,0]; 
			chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
		} else {
			if (permVar in _control) then {
				chlight = "Chemlight_Yellow" createVehicle [0,0,0]; 
				chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
			} else {
				chlight = "Chemlight_Green" createVehicle [0,0,0]; 
				chlight attachTo [player,[0,-0.073,0.056],"LeftShoulder"];
			};
		};
	};
	
	// ab hier alles was Verbrauchsgut ist
	//Vest
	for "_i" from 1 to 3 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 3 do {player addItemToVest"9Rnd_45ACP_Mag";};
	for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
	for "_i" from 1 to 3 do {player addItemToVest "ACE_Chemlight_HiRed";};
	for "_i" from 1 to 3 do {player addItemToVest "ACE_Chemlight_HiGreen";};
	for "_i" from 1 to 3 do {player addItemToVest "ACE_Chemlight_HiOrange";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
	//Backpack


	//Add ammmo to Gun
	player addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
	player addHandgunItem "9Rnd_45ACP_Mag";
	
};
/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/

if (!_rearm) then {// Waffen Holstern / Schultern
	_player action ["SwitchWeapon", _player, _player, 100];

	//Funk festlegen !!!FINGER WEG!!!
	if (isClass(configFile >> "cfgPatches" >> "task_force_radio")) then {
		sleep 2;
		isNil {
			[(call TFAR_fnc_activeSwRadio), 1, "81.1"] call TFAR_fnc_setChannelFrequency;
			hint "Die SW Frequenz wurde auf 81.1 MHz gewechselt";
		};	
	};	
};

// Ende Debug und Exit Script 
if (_debug) then {hint "Script 2 beendet"; sleep 2;};
if(true) exitWith{};