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

if (_debug) then {hint "Script Diver start"; sleep 2; hint format ["SelectUni: %1 --- FTL: %2 --- OPE: %3 --- REK: %4 --- Player: %5",_selectuni,_ftl,_ope,_rek,_player]; sleep 10;};

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

	// Entfernt die komplette vorige Ausrüstung
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeHeadgear player;
	removeGoggles player;

	if ("diver" in _vBPres) then {
		if (player call zade_boc_fnc_chestpack != "") then {
			[player] call zade_boc_fnc_actionSwap;
			[player] call zade_boc_fnc_removeChestpack;
		};
		removeBackpack player;
	};
	//---------------------------------------------------------------------------------

	/************************************************************************************************
	Einheit als Medic deklarieren
	//= 0 - kein Medic / Sanitäter 
	//= 1 - Medic / Sanitäter 
	//= 2 - Doctor / Arzt 
	************************************************************************************************/
	_player setVariable ["ace_medical_medicClass", 0, true];

	//---------------------------------------------------------------------------------
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//
	//	Nutze "if (_selectuni == "mtp") then {player addWeapon "SMA_M4_GL";};" um ein
	//	spezifisches Objekt nach Uniform zu vergeben!
	//---------------------------------------------------------------------------------
	if(local player) then {
		params ["_player", "_uniformPool", "_vestPool", "_backpackPool", "_headgearPool", "_gogglesPool", "_itemsPool"];
		
		if (_selectuni == "mtp") then {
			// Auswahl Bagpacks und übergabe in Globale Variable für Selfinteraction
			_parapools = ["B_AssaultPack_blk"];
			missionNamespace setVariable ["parapool", _parapools];

			// Restliche Pool für mtp
			_uniformPool = ["U_B_Wetsuit"];
			_vestPool = ["V_RebreatherB"];
			_backpackPool = _parapools;
	//		_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_B_Diving"];
	//		_itemsPool = ["O_NVGoggles_urb_F", "O_NVGoggles_hex_F", "O_NVGoggles_ghex_F"];
			_weaponPool = ["SMA_M4afg_BLK1"];
			
			// Check und Neu einkleiden
			if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
	//		if (count _headgearPool > 0) then {
	//			player addHeadgear (selectRandom _headgearPool);
	//		};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
	//		if (count _itemsPool > 0) then {
	//			player linkItem (selectRandom _itemsPool);
	//		};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		};
		if (_selectuni == "jtp") then {
			// Auswahl Fallschirme und übergabe in Globale Variable für Selfinteraction
			_parapools = ["B_AssaultPack_blk"];
			missionNamespace setVariable ["parapool", _parapools];
			
			// Restliche Pool für jtp
			_uniformPool = ["U_B_Wetsuit"];
			_vestPool = ["V_RebreatherB"];
			_backpackPool = _parapools;
	//		_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_B_Diving"];		
	//		_itemsPool = ["O_NVGoggles_urb_F", "O_NVGoggles_hex_F", "O_NVGoggles_ghex_F"];
			_weaponPool = ["SMA_M4afg_BLK1"];
			
			// Check und Neu einkleiden
			if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
	//		if (count _headgearPool > 0) then {
	//			player addHeadgear (selectRandom _headgearPool);
	//		};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
	//		if (count _itemsPool > 0) then {
	//			player linkItem (selectRandom _itemsPool);
	//		};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		};

		if (_selectuni == "wtp") then {
			// Auswahl Fallschirme und übergabe in Globale Variable für Selfinteraction
			_parapools = ["B_AssaultPack_blk"];
			missionNamespace setVariable ["parapool", _parapools];
			
			// Restliche Pool für wtp
			_uniformPool = ["U_B_Wetsuit"];
			_vestPool = ["V_RebreatherB"];
			_backpackPool = _parapools;
	//		_headgearPool = ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
			_gogglesPool = ["G_B_Diving"];		
	//		_itemsPool = ["O_NVGoggles_urb_F", "O_NVGoggles_hex_F", "O_NVGoggles_ghex_F"];
			_weaponPool = ["SMA_M4afg_BLK1"];
			
			// Check und Neu einkleiden
			if (count _uniformPool > 0) then {
				player forceAddUniform (selectRandom _uniformPool);
			};
			if (count _vestPool > 0) then {
				player addVest (selectRandom _vestPool);
			};
			if (count _backpackPool > 0) then {
				player addBackpackGlobal (selectRandom _backpackPool);
			};
	//		if (count _headgearPool > 0) then {
	//			player addHeadgear (selectRandom _headgearPool);
	//		};
			if (count _gogglesPool > 0) then {
				player addGoggles (selectRandom _gogglesPool);
			};
	//		if (count _itemsPool > 0) then {
	//			player linkItem (selectRandom _itemsPool);
	//		};
			if (count _weaponPool > 0) then {
				player addWeapon (selectRandom _weaponPool);
			};
		};	
	};

};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!

	if (!_rearm) then {
		//prim Weapon
		player addPrimaryWeaponItem "SMA_supp2smaB_556";
		player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
		player addPrimaryWeaponItem "SMA_BARSKA";


		//sec Weapon
		player addWeapon "hgun_P07_F";
		player addHandgunItem "muzzle_snds_L";

		//Rangefinder
		player addWeapon "Rangefinder";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "tf_anprc152";
		player linkItem "ItemGPS";
		player linkItem "B_UavTerminal";
		
		
		//Uniform
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "ACE_microDAGR";
		
		//Vest


		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "b_EasyTrack_PDA";
		player addItemToBackpack "ACE_Clacker";
	};
	
	//Uniform
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_bloodIV_250";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Red";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Green";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_IR";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_HiRed";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_HiYellow";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_HiOrange";};
	
	player addItemToUniform "Chemlight_red";
	player addItemToUniform "Chemlight_yellow";
	player addItemToUniform "ACE_Chemlight_White";
	player addItemToUniform "ACE_Chemlight_Orange";

	//Backpack
	player addItemToBackpack "B_IR_Grenade";
	for "_i" from 1 to 5 do {player addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {player addItemToBackpack "16Rnd_9x21_red_Mag";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};

	//goggles
	
	
	// Ammo in Gun
	player addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";

	/*//Patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	if (_plastr in _ftl) then {[[player,"TITAN_Patch_C"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
	if (_plastr in _ope) then {[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
	if (_plastr in _rek) then {[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
	*/
};

/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
if (!_rearm) then {
	_player action ["SwitchWeapon", _player, _player, 100];

	//Funk festlegen !!!FINGER WEG!!!
	if (isClass(configFile >> "cfgPatches" >> "task_force_radio")) then {
		sleep 2;
		isNil {
			[(call TFAR_fnc_activeSwRadio), 1, "81.1"] call TFAR_fnc_setChannelFrequency;
		};	
	};	
};

// Ende Debug und Exit Script 
if (_debug) then {hint "Diver Script beendet"; sleep 2;};
if(true) exitWith{closeDialog 0;};