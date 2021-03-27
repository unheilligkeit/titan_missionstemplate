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
	
	if ("lrs" in _vBPres) then {
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
	
	//---------------------------------------------------------------------------------
	// Setzung des Tarnwerts!
	//---------------------------------------------------------------------------------
	
	_player setUnitTrait ["camouflageCoef", 0.3];
	
		//---------------------------------------------------------------------------------
	// Setzung des Ghillie Anzuges!
	//---------------------------------------------------------------------------------
	
	_MTP = "MTP_V4_Full";
	_JTP = "JTP_V1_Sleeved"; //"U_B_T_FullGhillie_tna_F";
	_WTP = "WTP_V1_Full"; //"U_B_T_FullGhillie_tna_F";
	
	if (_debug) then {hint format ["Prüfung der Ghillie Uniform!\n\nMTP: %1 \nJTP: %2 \nWTP: %3",_MTP,_JTP,_WTP]; sleep 5;};
	
	if (_selectuni == "mtp") then {
			if (_debug) then {hint "Ghillie Anzug wird gesetzt!"; sleep 2;};
			removeUniform player;
			sleep 0.1;
			player forceAddUniform _MTP;
		};
		if (_selectuni == "jtp") then {
				if (_debug) then {hint "Ghillie Anzug wird gesetzt!"; sleep 2;};
				removeUniform player;
				sleep 0.1;
				player forceAddUniform _JTP;
		};
		if (_selectuni == "wtp") then {
			if (_debug) then {hint "Ghillie Anzug wird gesetzt!"; sleep 2;};
				removeUniform player;
				sleep 0.1;
				player forceAddUniform _WTP;
		};
	
	if (_debug) then {hint "Indu. Ausrüstung"; sleep 2;};
	//---------------------------------------------------------------------------------
	//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
	//---------------------------------------------------------------------------------
	if(local player) then {
		switch (_plastr) do {
			/* case "C1": {
				if (_debug) then {hint "FTL C1"; sleep 2;};
				};*/
			//Klasse Operator 1 bis 23
			
			/* case "o1": {	//Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};
				};*/
				
			
			/* case "o40": {
				if (_debug) then {hint "Operator o40"; sleep 2;};
				}; */
							
				
			//Klasse DEFAULT bei nicht gesetzter Variabel
			default {
				if (_debug) then {hint "Default"; sleep 2;};
				
				removeVest player;
				player addVest "JPC_4_OD";
				
				if (_selectuni == "mtp") then {
					removeHeadgear player;
					removeGoggles player;
					removeAllItems player;
					removeAllAssignedItems player;
					player addHeadgear "cap_tac_tan";
					player addGoggles "shesh_neck_tan";
					player addBackpack "SOG_spotter";
					player linkItem "milgp_f_tactical_khk";
					player addWeapon "SMA_Mk17_EGLM";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
				};
				if (_selectuni == "jtp") then {

				};
				if (_selectuni == "wtp") then {

				};
			};
		};
	};
};
if (_debug) then {hint "Standart Ausrüstung"; sleep 2;};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then { // Hier alles was kein Verbrauchsgut ist
		//sec Weapon
		player addWeapon "hgun_Pistol_heavy_01_F";
		
		//Weapon anheften
		player addHandgunItem  "optic_MRD";
		player addHandgunItem  "acc_flashlight_pistol";
		player addHandgunItem  "muzzle_snds_acp";
		player addPrimaryWeaponItem "dcd_suck_EGLM";
		
		//Items to Uniform
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "ACE_microDAGR";
		player addItemToUniform "SMA_eotech552";
		player addItemToUniform "ACE_Kestrel4500";
		player addItemToUniform "acc_pointer_IR";
		player addItemToUniform "SMA_supptan_762";
				
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "b_EasyTrack_PDA";
		player addItemToBackpack "ACE_SpraypaintRed";
		player addItemToBackpack "ABS_Base_Jump_peltor_grey";
		player addItemToBackpack "ACE_SpottingScope";
		player addItemToBackpack "ACE_HuntIR_monitor";
		player addItemToBackpack "itc_land_tablet_rover";
		player addItemToBackpack "ITC_ROVER_SIR";
		player addItemToBackpack "ACE_RangeCard";
		
		//Rangefinder
		player addItemToVest "ACE_MX2A";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "tf_anprc152";
		player linkItem "B_UavTerminal";
		
		//Items for Laser
		player addWeapon "Laserdesignator";
		player addMagazine "Laserbatteries";
		
	};
	
	// ab hier alles was Verbrauchsgut ist
	// Uniform REARM
	// Medical
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
	// Lights
	for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_HiYellow";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_Orange";};
	// Flares
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Yellow";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Green";};
	// Strobe
	for "_i" from 1 to 4 do {player addItemToUniform "ACE_IR_Strobe_Item";};
	// CableTie
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};

	// Backpack REARM
	for "_i" from 1 to 6 do {player addItemToBackpack "ACE_HuntIR_M203";};
	for "_i" from 1 to 2 do {player addItemToBackpack "UGL_FlareRed_F";};
	for "_i" from 1 to 2 do {player addItemToBackpack "UGL_FlareWhite_F";};
	for "_i" from 1 to 4 do {player addItemToBackpack "B_IR_Grenade";};
	for "_i" from 1 to 12 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 6 do {player addItemToBackpack "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellYellow";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
	for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
	for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
	for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
	for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};

	//Vest REARM
	for "_i" from 1 to 5 do {player addItemToVest "HandGrenade";};
	for "_i" from 1 to 8 do {player addItemToVest "SMA_20Rnd_762x51mm_Mk316_Mod_0_Special_Long_Range_Tracer";};
	for "_i" from 1 to 3 do {player addItemToVest "11Rnd_45ACP_Mag";};
	
	//add ammo at REARM
	for "_i" from 1 to 1 do {player addItemToVest "11Rnd_45ACP_Mag";};

	if (_debug) then {hint "Patches"; sleep 2;};
	
	//Patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;	
	[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	
};
/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
if (!_rearm) then {
	player action ["SwitchWeapon", player, player, 100];
	_myUnif = getUnitLoadout player;
	missionNamespace setVariable ["myUniform", _myUnif];
	missionNamespace setVariable ["permVar2"," "];
};

if (_debug) then {hint "Script 2 beendet"; sleep 2;};
if(true) exitWith{};