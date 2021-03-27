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

	if ("cct" in _vBPres) then {
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
				}; */
			//Klasse Operator 1 bis 23
			
			case "o1": { //Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};	
				
				removeVest player;
				player addVest "milgp_v_mmac_teamleader_belt_rgr";
			
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_CCT_MTP";
					player addWeapon "SMA_MK18TAN_GL";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
					player addPrimaryWeaponItem "SMA_eotech552_3XDOWN_des";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "8th_ilbe_CCT_JTP";
					player addWeapon "SMA_MK18ODBLK_GL";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552_3XUP_wdl";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_CCT_WTP";
					player addWeapon "SMA_MK18_GL_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552_3XDOWN_des";
				};
			};
				
			/* case "o2": {	//Sittich
				if (_debug) then {hint "Operator o2"; sleep 2;};
				}; */
				
			
				
			/* case "o7": {	
				if (_debug) then {hint "Operator o7"; sleep 2;};
				}; */

			
			/* case "o40": {
				if (_debug) then {hint "Operator o40"; sleep 2;};
				}; */
								
			//Klasse DEFAULT bei nicht gesetzter Variabel
			default {
				if (_debug) then {hint "Default"; sleep 2;};
					
				removeVest player;
				player addVest "milgp_v_mmac_teamleader_belt_rgr";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_CCT_MTP";
					player addWeapon "SMA_HK416GLCQB";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_TAN";
					player addPrimaryWeaponItem "SMA_eotech552_3XDOWN_des";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "8th_ilbe_TAC_jtp";
					player addWeapon "SMA_HK416GLCQB_ODP";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552_3XUP_wdl";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_CCT_MTP";
					player addWeapon "SMA_HK416GLCQB_B";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552_3XUP_wdl";
				};
				
			};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDARD AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then { // Hier alles was kein Verbrauchsgut ist
		//sec Weapon
		player addWeapon "hgun_ACPC2_F";
		player addHandgunItem "acc_flashlight_pistol";
		player addWeapon "Laserdesignator";
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
		player addItemToUniform "ACE_Kestrel4500";
		player addItemToUniform "ACE_MapTools";
		player addItemToUniform "ACE_microDAGR";
		
		
		//Vest
		player addItemToVest "ACE_Vector";
		player addItemToVest "ACE_MX2A";
		player addItemToVest"SMA_ELCAN_SPECTER_TAN_RDS";
		
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "ACE_HuntIR_monitor";
		player addItemToBackpack "b_EasyTrack_PDA";
		player addItemToBackpack "milgp_h_cap_03_RGR";
		player addItemToBackpack "itc_land_tablet_rover";

	};
	
	// ab hier alles was Verbrauchsgut ist
	//Uniform
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 10 do {player addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 20 do {player addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_Chemlight_HiYellow";};
	for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Yellow";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Green";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
	for "_i" from 1 to 1 do {player addItemToUniform "ACE_Chemlight_Orange";};

	//Vest
	
	for "_i" from 1 to 10 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 3 do {player addItemToVest "9Rnd_45ACP_Mag";};
	
	for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellYellow";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
	
	//Backpack
	for "_i" from 1 to 2 do {player addItemToBackpack "Laserbatteries";};
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 5 do {player addItemToBackpack "MiniGrenade";};

	//Markers
	for "_i" from 1 to 4 do {player addItemToBackpack "B_IR_Grenade";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_HuntIR_M203";};
	for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Yellow";};
	for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Green";};
	for "_i" from 1 to 4 do {player addItemToBackpack "UGL_FlareYellow_F";};
	for "_i" from 1 to 4 do {player addItemToBackpack "UGL_FlareGreen_F";};
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
	for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
	for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellYellow";};
	for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellGreen";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_M14";};
	for "_i" from 1 to 1 do {player addItemToBackpack "ACE_SpraypaintRed";};
	
	//add ammo
	for "_i" from 1 to 1 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 1 do {player addItemToBackpack "Laserbatteries";};

	//patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	[[player,"TITAN_Patch_SOTAC"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;

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