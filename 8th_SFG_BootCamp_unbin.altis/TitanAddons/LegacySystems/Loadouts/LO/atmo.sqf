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

if (_debug) then {hint "Script 2 start"; sleep 2; hint format ["SelectUni: %1 --- REARM: %2 --- Player: %5",_selectuni,_rearm,_player]; sleep 10;};

if (!_rearm) then {
	// Entfernt die komplette vorige Ausrüstung
	removeAllWeapons player;
	removeAllItems player;
	// removeAllAssignedItems player;
	if ("atmo" in _vBPres) then {
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
	_player setVariable ["ace_medical_medicClass", 1, true];

	//---------------------------------------------------------------------------------
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//
	//	Nutze "if (_selectuni == "mtp") then {player addWeapon "SMA_M4_GL";};" um ein
	//	spezifisches Objekt nach Uniform zu vergeben!
	//---------------------------------------------------------------------------------
	if(local player) then {
		switch (_plastr) do {
		
			/* case "C1": {
				if (_debug) then {hint "FTL C1"; sleep 2;};
				player addItemToUniform "ACE_microDAGR";
				}; */			
			//Klasse Operator 1 bis 23
			
			/* case "o1": {	//Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};
				}; */
			

			case "o4": { //diablo
				if (_debug) then {hint "Operator o4"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_grenadier_belt_rgr";
					
				if (_selectuni == "mtp") then {
						player addBackpack "SOG_ATMO_MTP";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2smaB_556";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_atmo";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2smaB_556";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ATMO_WTP";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2BW_556";
					};				
				}; 
			
				
			case "o20": { //shrimpi
				if (_debug) then {hint "Operator o20"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_grenadier_belt_rgr";
					
				if (_selectuni == "mtp") then {
						player addBackpack "SOG_ATMO_MTP";
						player addWeapon "SMA_HK416GLOD";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2BW_556";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_atmo";
						player addWeapon "SMA_HK416GLOD";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2BW_556";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ATMO_WTP";
						player addWeapon "SMA_HK416GL";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2BW_556";
					};				
				}; 
				
			/*	case "o24": { 
				if (_debug) then {hint "Operator o24"; sleep 2;};
				}; 
			*/
			
			/* case "o40": {
				if (_debug) then {hint "Operator o40"; sleep 2;};
				}; */
							
			//Klasse DEFAULT bei nicht gesetzter Variabel
			default {
				if (_debug) then {hint "Default"; sleep 2;};
				removeVest player;
				player addVest "milgp_v_marciras_grenadier_belt_rgr";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_ATMO_MTP";
					player addWeapon "SMA_HK416GLCQB";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_TAN";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_RDS";
					player addItemToUniform "SMA_BARSKA";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "8th_Kitbag_JTP_atmo";
					player addWeapon "SMA_HK416GLCQB_ODP";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_GREEN_RDS";
					player addItemToUniform "SMA_BARSKA";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_ATMO_WTP";
					player addWeapon "SMA_HK416GLCQB_B";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
					player addItemToUniform "SMA_BARSKA";
				};
			};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then { // Hier alles was kein Verbrauchsgut ist
		
		//sec Weapon
		player addWeapon "hgun_Pistol_heavy_01_F";

		//Launcher
		player addWeapon "launch_MRAWS_green_F";
		player addSecondaryWeaponItem "acc_pointer_IR";
		player addWeapon "Rangefinder";
		player addPrimaryWeaponItem "dcd_suck_M203";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "tf_anprc152";
		player linkItem "B_UavTerminal";
		
		//Uniform
		player addItemToUniform "acc_pointer_IR";
		player addItemToUniform "SMA_supp1tan_556";
		player addItemToUniform "muzzle_snds_acp";
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "ACE_microDAGR";
		player addItemToUniform "SMA_CMORE";
		
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "Patrol_Cap";
		player addItemToBackpack "b_EasyTrack_PDA";
	};
	
	// ab hier alles was Verbrauchsgut ist
	//Uniform
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 20 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_red";};
	for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Red";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Green";};
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};

	//Vest
	for "_i" from 1 to 2 do {player addItemToVest "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 10 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 5 do {player addItemToVest "MiniGrenade";};
	for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};

	//Backpack
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 4 do {player addItemToBackpack "MRAWS_HEAT_F";};
	for "_i" from 1 to 2 do {player addItemToBackpack "MRAWS_HEAT55_F";};
	for "_i" from 1 to 3 do {player addItemToBackpack "MRAWS_HE_F";};

	// add ammo
	for "_i" from 1 to 1 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 1 do {player addItemToVest "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 1 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	
	//Patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	
};

/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
if (!_rearm) then {
	_player action ["SwitchWeapon", _player, _player, 100];
	_myUnif = getUnitLoadout player;
	missionNamespace setVariable ["myUniform", _myUnif];
	missionNamespace setVariable ["permVar2"," "];
};

if (_debug) then {hint "Script 2 beendet"; sleep 2;};
if(true) exitWith{};