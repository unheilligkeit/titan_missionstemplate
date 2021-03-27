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



	if ("ftl" in _vBPres) then {
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
		
			// FTL TITAN-1 Sharp
			case "C1": { 
				if (_debug) then {hint "FTL C1"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTAN";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgOD";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_GREEN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK18afgBLK";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
			};			
			//Klasse Operator 1 bis 40
			
			/* case "o1": {	//Wargasm
				if (_debug) then {hint "Operator o1"; sleep 2;};
				}; */
						
			 case "o4": {	//Latzerus
				if (_debug) then {hint "Operator o4"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18TAN_GL";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18BLK_GL";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK18BLK_GL";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
				};
			}; 
			
			case "o8": { //Playground
				if (_debug) then {hint "Operator o8"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK16";
					player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_EGLM";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK16_green";
					player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_EGLM";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK16_black";
					player addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_EGLM";
				};
			};
								
			/* case "o10": {
				if (_debug) then {hint "Operator o10"; sleep 2;};
				}; */
						
			case "o11": { //Blake
				if (_debug) then {hint "Operator o11"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
			};
				
			case "o12": { //Argonox
				if (_debug) then {hint "Operator o12"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafg";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafgODP";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_HK416customCQBafgB";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
			};
			
			case "o13": { //Capon
				if (_debug) then {hint "Operator o13"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafg";
					player addPrimaryWeaponItem "SMA_SFPEQ_hkTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafgODP";
					player addPrimaryWeaponItem "SMA_SFPEQ_hkTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_HK416customCQBafgB";
					player addPrimaryWeaponItem "SMA_SFPEQ_hkTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";	
				};	
			};
				
			/* case "o15": {
				if (_debug) then {hint "Operator o15"; sleep 2;};
				}; */
				
			case "o16": { //Sasch
				if (_debug) then {hint "Operator o16"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_AUG_A3_MCAM_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_grn_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_AUG_A3_MCAM_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_grn_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_AUG_A3_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
				
			};
				
			/* case "o17": {
				if (_debug) then {hint "Operator o17"; sleep 2;};
				}; */
				
			case "o18": { //AnteroVeli
				if (_debug) then {hint "Operator o18"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK18afgTANBLK_SM";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_eotech552";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
			};
				
			/* case "o19": { 
				if (_debug) then {hint "Operator o19"; sleep 2;};
			}; */
				
			case "o20": { //Shrimpy
				if (_debug) then {hint "Operator o20"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafg";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_HK416customCQBafgODP";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_HK416customCQBafgB";
					player addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
					player addPrimaryWeaponItem "SMA_CMORE";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
			};
			
			case "o24": { //LousieSC
				if (_debug) then {hint "Operator o24"; sleep 2;};
				
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_AUG_A3_MCAM_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_grn_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_AUG_A3_MCAM_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_grn_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_AUG_A3_F";
					player addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
					player addPrimaryWeaponItem "SMA_eotechg33_3XDOWN";
					player addItemToUniform "SMA_supp1b_556";
					player addItemToBackpack "dcd_suck_m203";
				};
			};
				
			/* case "o40": {
				if (_debug) then {hint "Operator o40"; sleep 2;};
				}; */
				
			//Klasse DEFAULT bei nicht gesetzter Variabel
			default {
				if (_debug) then {hint "Default"; sleep 2;};
				removeVest player;
				player addVest "milgp_v_marciras_teamleader_belt_RGR";
				
				if (_selectuni == "mtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgTAN";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_TAN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "jtp") then {
					player addBackpack "SOG_FTL_MTP";
					player addWeapon "SMA_MK18afgOD";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_GREEN_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};
				if (_selectuni == "wtp") then {
					player addBackpack "SOG_FTL_WTP";
					player addWeapon "SMA_MK18afgBLK";
					player addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
					player addPrimaryWeaponItem "SMA_BARSKA";
					player addItemToUniform "SMA_ELCAN_SPECTER_ARDRDS";
					player addItemToBackpack "dcd_suck_m203";
				};					
			};
		};
	};
};
//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
	if (!_rearm) then {
		//sec Weapon
		//if ((_plastr != "o19")&&(_plastr != "o14")) then {	//Nimmt gewisse Operator aus!
			player addWeapon "hgun_P07_F";
		//}else{
		//	player addWeapon "CUP_hgun_Glock17";
		//};
		//player addPrimaryWeaponItem "dcd_suck_M203";
		
		
		//Rangefinder
		player addWeapon "Rangefinder";

		//Items
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ItemWatch";
		player linkItem "tf_anprc152";
		player linkItem "B_UavTerminal";
		
		//Uniform
		player addItemToUniform "SMA_BARSKA";
		//if (_plastr != "o19 ") then {	//Nimmt gewisse Operator aus!
			player addItemToUniform "acc_pointer_IR";
			player addItemToUniform "SMA_supp1tan_556";
			player addItemToUniform "muzzle_snds_acp";
		/*}else{
			player addHandgunItem "muzzle_snds_L";
			player addHandgunItem "cup_acc_glock17_flashlight";
		};*/
		player addItemToUniform "ACE_microDAGR";
		player addItemToUniform "ACE_MapTools";

		//Vest
		player addItemToVest "ACE_Vector";
		
		//Backpack
		player addItemToBackpack "ACE_NVG_Wide";
		player addItemToBackpack "Patrol_Cap";
		player addItemToBackpack "b_EasyTrack_PDA";
		player addItemToBackpack "ACE_HuntIR_monitor";
		player addItemToBackpack "itc_land_tablet_rover";
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
	//if (_plastr != "o19") then {	//Nimmt gewisse Operator aus!
		for "_i" from 1 to 3 do {player addItemToVest "16Rnd_9x21_red_Mag";};
	/*}else{
		for "_i" from 1 to 3 do {player addItemToVest "cup_17rnd_9x19_glock17";};
	};*/
	for "_i" from 1 to 10 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 5 do {player addItemToVest "MiniGrenade";};
	for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
	for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};

	//Backpack
	for "_i" from 1 to 5 do {player addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 4 do {player addItemToBackpack "B_IR_Grenade";};
	for "_i" from 1 to 15 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 6 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 6 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
	for "_i" from 1 to 6 do {player addItemToBackpack "UGL_FlareGreen_F";};
	for "_i" from 1 to 6 do {player addItemToBackpack "UGL_FlareRed_F";};
	for "_i" from 1 to 6 do {player addItemToBackpack "UGL_FlareCIR_F";};

	//add ammo
	for "_i" from 1 to 1 do {player addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 1 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};

	//Patch
	[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	[[player,"TITAN_Patch_C"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	
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