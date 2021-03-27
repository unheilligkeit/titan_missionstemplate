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
	//removeAllAssignedItems player;

	if ("eng" in _vBPres) then {
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
	Einheit als Engenieer deklarieren
	//= 0 - kein Engenieer
	//= 1 - Engenieer
	Einheit als Sprengspezialist (EOD)deklarieren
	//= 0 - kein EOD
	//= 1 - EOD
	************************************************************************************************/
	_player setVariable ["ace_medical_medicClass", 2, true];
	_player setVariable ["ACE_IsEngineer",1,true];
	_player setVariable ["ACE_isEOD",1,true];
	//---------------------------------------------------------------------------------
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//
	//	Nutze "if (_selectuni == "mtp") then {player addWeapon "SMA_M4_GL";};" um ein
	//	spezifisches Objekt nach Uniform zu vergeben!
	//---------------------------------------------------------------------------------
	if(local player) then {
		switch (_plastr) do {
		
			/* case "C1": {	//Sharp
				if (_debug) then {hint "FTL C1"; sleep 2;};
				}; */
			//Klasse Operator 1 bis 23

			/*case "o1": { //Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};
				}; */
				
			case "o2": { //Sittich
				if (_debug) then {hint "Operator o2"; sleep 2;};
				
					removeVest player;
					player addVest "milgp_v_marciras_medic_belt_rgr";
					
					if (_selectuni == "mtp") then {
						player addBackpack "SOG_ENG_MTP_1";
						player addWeapon "SMA_MK16_EGLM_black";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_Olv_ENG_Sittich";
						player addWeapon "SMA_MK16_EGLM_green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ENG_WTP_1";
						player addWeapon "SMA_MK16_EGLM_black";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
				
				};
			case "o3": { //Fallingstorm
				if (_debug) then {hint "Operator o3"; sleep 2;};
					
					removeVest player;
					player addVest "milgp_v_mmac_medic_belt_rgr";
					
					if (_selectuni == "mtp") then {
						player addBackpack "SOG_ENG_MTP_1";
						player addWeapon "SMA_M4_GL_SM";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_ENG";
						player addWeapon "SMA_MK16_EGLM_green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ENG_WTP_1";
						player addWeapon "SMA_M4_GL_SM";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_BARSKA";
					};
				
				};
				
			case "o4": { //Diablo
				if (_debug) then {hint "Operator o4"; sleep 2;};
					
					removeVest player;
					player addVest "milgp_v_mmac_medic_belt_rgr";
					
					if (_selectuni == "mtp") then {
						player addBackpack "SOG_ENG_MTP_1";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2BW_556";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_ENG";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2BW_556";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ENG_WTP_1";
						player addWeapon "SMA_Mk16_EGLM_Green";
						player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
						player addItemToUniform "SMA_supp2BW_556";

					};
				
				};

				
				
			case "o20": { // Shrimpi
				if (_debug) then {hint "Operator o20"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_medic_belt_rgr";
					
				if (_selectuni == "mtp") then {
						player addBackpack "SOG_ENG_MTP_1";
						player addWeapon "SMA_HK416GLOD";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2smaB_556";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_ENG";
						player addWeapon "SMA_HK416GLOD";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2smaB_556";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ENG_WTP_1";
						player addWeapon "SMA_HK416GL";
						player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
						player addItemToUniform "SMA_supp2BW_556";
					};
				
				}; 
				
			/* case "o21": { 
				if (_debug) then {hint "Operator o21"; sleep 2;};
				}; */
			
			/* case "o24": { 
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
					player addVest "milgp_v_marciras_medic_belt_rgr";
					
					if (_selectuni == "mtp") then {
						player addBackpack "SOG_ENG_MTP_1";
						player addWeapon "SMA_M4_GL";
						player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "jtp") then {
						player addBackpack "8th_Kitbag_JTP_ENG";
						player addWeapon "SMA_M4_GL";
						player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
						player addItemToUniform "SMA_BARSKA";
					};
					if (_selectuni == "wtp") then {
						player addBackpack "SOG_ENG_WTP_1";
						player addWeapon "SMA_M4_GL";
						player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
						player addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
						player addItemToUniform "SMA_BARSKA";
					};
					
				};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then {
		//prim Weapon
		player addWeapon "Rangefinder";

		//sec Weapon
		if (_plastr != "o3") then {	//Nimmt gewisse Operator aus!
			player addWeapon "hgun_Pistol_heavy_02_F";
		} else {
			player addWeapon "hgun_P07_F";
		};
		player addPrimaryWeaponItem "dcd_suck_M203";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "tf_anprc152";
		player linkItem "B_UavTerminal";
		
		//Uniform
		player addItemToUniform "acc_pointer_IR";
		player addItemToUniform "SMA_Silencer_556";
		player addItemToUniform "muzzle_snds_L";
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "SMA_CMORE";
		
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "Patrol_Cap";
		player addItemToBackpack "MCC_videoProbe";
		player addItemToBackpack "ACE_wirecutter";
		player addItemToBackpack "ACE_Clacker";
		player addItemToBackpack "ACE_M26_Clacker";
		player addItemToBackpack "ACE_DeadManSwitch";
		player addItemToBackpack "ACE_DefusalKit";
	//	player addItemToBackpack "ACE_VMH3";
		player addItemToBackpack "b_EasyTrack_PDA";
	};
	
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
	if (_plastr != "o3") then {	//Nimmt gewisse Operator aus!
		for "_i" from 1 to 2 do {player addItemToVest "6Rnd_45ACP_Cylinder";};
	} else {
		for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_red_Mag";};
	};
	
	for "_i" from 1 to 10 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 5 do {player addItemToVest "MiniGrenade";};
	for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
	
	//Backpack
	player addItemToBackpack "ACE_personalAidKit";
	for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 40 do {player addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_bloodIV";};
	for "_i" from 1 to 8 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_M84";};
	for "_i" from 1 to 6 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SatchelCharge_Remote_Mag";};

	//Add ammmo
	for "_i" from 1 to 1 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	
	if (_plastr != "o3") then {	//Nimmt gewisse Operator aus!
		for "_i" from 1 to 1 do {player addItemToVest "6Rnd_45ACP_Cylinder";};
	} else {
		for "_i" from 1 to 1 do {player addItemToVest "16Rnd_9x21_red_Mag";};
	};
	
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