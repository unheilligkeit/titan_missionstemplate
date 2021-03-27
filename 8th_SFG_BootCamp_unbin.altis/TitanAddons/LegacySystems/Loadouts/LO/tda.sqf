if (!isServer) then {waitUntil {!(isNull player)}; };
/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
private ["_debug","_player","_selectuni","_ftl","_ope","_rek","_prek","_pil","_vBPres","_plastr","_rearm"];
_debug	= _this select 0;
_selectuni = _this select 1;
_vBPres = _this select 2;
_rearm = false;//_this select 3;
_player = player;
_plastr = format ["%1", _player];

if (_debug) then {hint "Script TDA start"; sleep 2; hint format ["SelectUni: %1 --- FTL: %2 --- OPE: %3 --- REK: %4 --- PREK: %5 --- Pil: %6 --- Player: %7",_selectuni,_ftl,_ope,_rek,_prek,_pil,_player]; sleep 10;};
//---------------------------------------------------------------------------------------------
// Unit eintragen die FIX die gewünschte Position besitzen sollen!		--- HARDCODE FIND DOWN!
//---------------------------------------------------------------------------------------------
//			---	Fireteamleader ---
_ftl = ["C1", "o4", "o11", "o12", "o14", "o19"];
//			---	Operator ---
_ope = ["o2", "o3", "o5", "o7", "o8", "o9", "o10", "o13", "o15", "o16", "o17","o18", "o20", "o21", "o23", "o24", "o25", "o26", "o27", "o28", "o29", "o30", "o31", "o32","o33", "o34", "o35", "o36", "o37", "o38", "o39", "o40" ];
//			---	Piloten ---
_pil = ["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "p10"];
//			---	Sotac ---
_tac = ["o1", "o6", "o22"];
//			---	Special Force ---
_sf	 = [];
//			---	Rekruten ---
_rek = ["r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10"];
//			--- PilotenRekruten ----
_prek = ["rp1", "rp2", "rp3", "rp4"];

/************************************************************************************************
Einheit als Medic deklarieren
//= 0 - kein Medic / Sanitäter 
//= 1 - Medic / Sanitäter 
//= 2 - Doctor / Arzt 
************************************************************************************************/
_player setVariable ["ace_medical_medicClass", 1, true]; 

if (_player call zade_boc_fnc_chestpack != "") then {
	[player] call zade_boc_fnc_actionSwap;
	[player] call zade_boc_fnc_removeChestpack;
	removeBackpack player;
};
//---------------------------------------------------------------------------------
//	AB HIER WIRD DIE INDIVIDUALITÄT DEFINIERT!
//
//	Nutze "if (_selectuni == "mtp") then {player addWeapon "SMA_M4_GL";};" um ein
//	spezifisches Objekt nach Uniform zu vergeben!
//---------------------------------------------------------------------------------
switch (_plastr) do {
    case "C1": {	//Sharp
		if (_debug) then {hint "FTL C1"; sleep 2;};
		player removeWeapon "hgun_P07_F";
		player removeMagazines "16Rnd_9x21_Mag";
		for "_i" from 1 to 4 do {player addItemToVest "6Rnd_45ACP_Cylinder";};
		player addWeapon "hgun_Pistol_heavy_02_F";
	};
	//Klasse Operator 1 bis 23
    case "o1": {	//Wargasm
		if (_debug) then {hint "Operator o1"; sleep 2;};
		player removeWeapon "hgun_P07_F";
		player removeMagazines "16Rnd_9x21_Mag";
		for "_i" from 1 to 4 do {player addItemToVest "9Rnd_45ACP_Mag";};
		player addWeapon "hgun_ACPC2_F";
	};
    case "o2": {	//Sittich
		if (_debug) then {hint "Operator o2"; sleep 2;};
		player removeWeapon "hgun_P07_F";
		player removeMagazines "16Rnd_9x21_Mag";
		for "_i" from 1 to 4 do {player addItemToVest "9Rnd_45ACP_Mag";};
		player addWeapon "hgun_ACPC2_F";
	};
    /* case "o3": {	//Fallingstorm
		if (_debug) then {hint "Operator o3"; sleep 2;};
		player removeMagazines "16Rnd_9x21_Mag";
		for "_i" from 1 to 3 do {player addItemToVest "6Rnd_45ACP_Cylinder";};
	}; */
   
	/* case "o40": {
		if (_debug) then {hint "Operator o40"; sleep 2;};
	}; */
							
	//Klasse Piloten 1 bis 10
    /*case "p1": {	
		if (_debug) then {hint "Pilot p1"; sleep 2;};	
	};*/
   
    /*case "p10": {	
		if (_debug) then {hint "Pilot p7"; sleep 2;};	
		for "_i" from 1 to 1 do {player addItemToUniform "ACE_microDAGR";};
	};*/
	//Klasse DEFAULT bei nicht gesetzter Variabel
    default {
		if (_debug) then {hint "Default Klasse"; sleep 2;};
	};
};

//---------------------------------------------------------------------------------
if(local player) then { //	AB HIER WIRD STANDART AUSRÜSTUNG FESTGELEGT!
for "_i" from 1 to 4 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_bloodIV_250";};
for "_i" from 1 to 1 do {player addItemToUniform "ACE_MapTools";};
if (_plastr in _pil) then {
	player addItemToUniform "ACE_microDAGR";
};



//Vest
for "_i" from 1 to 3 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 3 do {player addItemToVest "Chemlight_red";};
for "_i" from 1 to 3 do {player addItemToVest "Chemlight_blue";};
for "_i" from 1 to 3 do {player addItemToVest "16Rnd_9x21_Mag";};

//sec Weapon
player addWeapon "hgun_P07_F";
player addWeapon "Binocular";

//Items
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "B_UavTerminal";

//Patch
[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
if (_plastr in _ftl) then {[[player,"TITAN_Patch_C"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _ope) then {[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _pil) then {[[player,"TITAN_Patch_SQ"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _tac) then {[[player,"TITAN_Patch_SOTAC"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _sf) then {[[player,"TITAN_Patch_SF"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _rek) then {[[player,"TITAN_Patch_Can"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
if (_plastr in _prek) then {[[player,"TITAN_Patch_SQ"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
};

/************************************************************************************************
			!!! FINGER WEG !!! DONT TOUCH THIS !!!
************************************************************************************************/
_player action ["SwitchWeapon", _player, _player, 100];
missionNamespace setVariable ["permVar2"," "];

if (_debug) then {hint "Script TDA beendet"; sleep 2;};
if(true) exitWith{};