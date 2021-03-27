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

	if ("wpn" in _vBPres) then {
		if (player call zade_boc_fnc_chestpack != "") then {
			[player] call zade_boc_fnc_actionSwap;
			[player] call zade_boc_fnc_removeChestpack;
		};
		removeBackpack player;
	};
	//---------------------------------------------------------------------------------
	
	if (_debug) then {hint "Medic JA/NEIN"; sleep 2;};
	/************************************************************************************************
	Einheit als Medic deklarieren
	//= 0 - kein Medic / Sanitäter 
	//= 1 - Medic / Sanitäter 
	//= 2 - Doctor / Arzt 
	************************************************************************************************/
	_player setVariable ["ace_medical_medicClass", 1, true]; 
	if (_debug) then {hint "Indu. Ausrüstung"; sleep 2;};
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
				}; */
			//Klasse Operator 1 bis 23
			
			/* case "o1": {	//Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};
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
				player addVest "milgp_v_marciras_hgunner_belt_rgr";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_WPN_MTP_1";
					player addWeapon "sma_minimi_mk3_762tlb_des";
					player addPrimaryWeaponItem "ACE_acc_pointer_green";
					player addPrimaryWeaponItem "SMA_BARSKA";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "8th_Kitbag_JTP_WPN";
					player addWeapon "sma_minimi_mk3_762tlb_wdl";
					player addPrimaryWeaponItem "ACE_acc_pointer_green";
					player addPrimaryWeaponItem "SMA_BARSKA";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_WPN_WTP_1";
					player addWeapon "sma_minimi_mk3_762tsb";
					player addPrimaryWeaponItem "ACE_acc_pointer_green";
					player addPrimaryWeaponItem "SMA_BARSKA";
				};
			};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then {
		//prim Weapon

		//sec Weapons
		player addWeapon "hgun_Pistol_heavy_01_F";

		//Rangfinder
		player addWeapon "Rangefinder";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "B_UavTerminal";
		player linkItem "tf_anprc152";
		
		
		//Uniform

		player addItemToUniform "acc_pointer_IR";
		player addItemToUniform "sma_gemtech_one_blk";
		player addItemToUniform "muzzle_snds_acp";

		player addItemToUniform "ACE_MapTools";
		
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "Patrol_Cap";
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
	for "_i" from 1 to 2 do {player addItemToVest "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {player addItemToVest "SMA_150Rnd_762_M80A1_Tracer";};
	for "_i" from 1 to 5 do {player addItemToVest "MiniGrenade";};
	for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};

	//Backpack
	for "_i" from 1 to 12 do {player addItemToBackpack "SMA_150Rnd_762_M80A1_Tracer";};
	
	//add ammo
	for "_i" from 1 to 1 do {player addItemToVest "SMA_150Rnd_762_M80A1_Tracer";};
	for "_i" from 1 to 1 do {player addItemToVest "11Rnd_45ACP_Mag";};

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