//----------------------------------------------------------------------------------------------------
/*
	*** FNC_TDA ***	

	Copyright:			8th Titan Platoon Clan
	Entwicklung:		Fallingstorm, Sajiki
	
*/
//----------------------------------------------------------------------------------------------------
	
#include "..\lo_uniform.sqf"; //

private ["_debug","_uniform","_player","_arry1","_arry2","_arry3","_arry4","_arry5"];


_debug = false;											//Schaltet den Debug Modus an
_uniform = _this select 0;								//Übernimmt die mit gelieferte Variable
_change = _this select 1;								//Übernimmt Variabel von Dialogbutton
_vSet = _this select 2;									//Übernimmt Variabel von Dialogbutton
_player = player; 										//übernimmt PlayerVarName
_plastr = format ["%1", _player];						//formatiert PlayerVarName zu String
_selectuni = "";
_uni = uniform _player;

missionNamespace setVariable ["varName", _vSet];

if (_debug) then {hint "Script fnc_tda wird gestartet"; sleep 2; hint format ["Gewand: %1, Change: %2",_uniform,_change ]; sleep 5;};	//Debugmodus
	
//---------------------------------------------------------------------------------
//	ZUWEISUNG DER KLAMOTTEN
//---------------------------------------------------------------------------------
if (_change == 0) then {

	// Entfernt die komplette vorherigen Ausrüstung
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player; 

	switch (_plastr) do {
		case "C1": {	//Sharp
			if (_debug) then {hint "FTL C1"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _aC1 select 0; _arry2 = _aC1 select 1; _arry3 = _aC1 select 2; _arry4 = _aC1 select 3; _arry5 = _aC1 select 4;};
			if (_uniform == "wtp") then {_arry1 = _aC1 select 5; _arry2 = _aC1 select 6; _arry3 = _aC1 select 7; _arry4 = _aC1 select 8; _arry5 = _aC1 select 9;};
			if (_uniform == "jtp") then {_arry1 = _aC1 select 10; _arry2 = _aC1 select 11; _arry3 = _aC1 select 12; _arry4 = _aC1 select 13; _arry5 = _aC1 select 14;};
			if (_uniform == "tda") then {_arry1 = _aC1 select 15; _arry2 = _aC1 select 16; _arry3 = _aC1 select 17; _arry4 = _aC1 select 18; _arry5 = _aC1 select 19;};
		};
		//Klasse Operator 1 bis 23
		case "o1": {	//Wargams
			if (_debug) then {hint "Operator o1"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao1 select 0; _arry2 = _ao1 select 1; _arry3 = _ao1 select 2; _arry4 = _ao1 select 3; _arry5 = _ao1 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao1 select 5; _arry2 = _ao1 select 6; _arry3 = _ao1 select 7; _arry4 = _ao1 select 8; _arry5 = _ao1 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao1 select 10; _arry2 = _ao1 select 11; _arry3 = _ao1 select 12; _arry4 = _ao1 select 13; _arry5 = _ao1 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao1 select 15; _arry2 = _ao1 select 16; _arry3 = _ao1 select 17; _arry4 = _ao1 select 18; _arry5 = _ao1 select 19;};
		};
		case "o2": {	//Sittich
			if (_debug) then {hint "Operator o2"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao2 select 0; _arry2 = _ao2 select 1; _arry3 = _ao2 select 2; _arry4 = _ao2 select 3; _arry5 = _ao2 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao2 select 5; _arry2 = _ao2 select 6; _arry3 = _ao2 select 7; _arry4 = _ao2 select 8; _arry5 = _ao2 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao2 select 10; _arry2 = _ao2 select 11; _arry3 = _ao2 select 12; _arry4 = _ao2 select 13; _arry5 = _ao2 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao2 select 15; _arry2 = _ao2 select 16; _arry3 = _ao2 select 17; _arry4 = _ao2 select 18; _arry5 = _ao2 select 19;};
		};
		case "o3": {	//Fallingstorm
			if (_debug) then {hint "Operator o3"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao3 select 0; _arry2 = _ao3 select 1; _arry3 = _ao3 select 2; _arry4 = _ao3 select 3; _arry5 = _ao3 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao3 select 5; _arry2 = _ao3 select 6; _arry3 = _ao3 select 7; _arry4 = _ao3 select 8; _arry5 = _ao3 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao3 select 10; _arry2 = _ao3 select 11; _arry3 = _ao3 select 12; _arry4 = _ao3 select 13; _arry5 = _ao3 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao3 select 15; _arry2 = _ao3 select 16; _arry3 = _ao3 select 17; _arry4 = _ao3 select 18; _arry5 = _ao3 select 19;};
		};
		case "o4": {	//Latzerus
			if (_debug) then {hint "Operator o4"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao4 select 0; _arry2 = _ao4 select 1; _arry3 = _ao4 select 2; _arry4 = _ao4 select 3; _arry5 = _ao4 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao4 select 5; _arry2 = _ao4 select 6; _arry3 = _ao4 select 7; _arry4 = _ao4 select 8; _arry5 = _ao4 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao4 select 10; _arry2 = _ao4 select 11; _arry3 = _ao4 select 12; _arry4 = _ao4 select 13; _arry5 = _ao4 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao4 select 15; _arry2 = _ao4 select 16; _arry3 = _ao4 select 17; _arry4 = _ao4 select 18; _arry5 = _ao4 select 19;};
		};
		case "o5": {	//Nessa
			if (_debug) then {hint "Operator o5"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao5 select 0; _arry2 = _ao5 select 1; _arry3 = _ao5 select 2; _arry4 = _ao5 select 3; _arry5 = _ao5 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao5 select 5; _arry2 = _ao5 select 6; _arry3 = _ao5 select 7; _arry4 = _ao5 select 8; _arry5 = _ao5 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao5 select 10; _arry2 = _ao5 select 11; _arry3 = _ao5 select 12; _arry4 = _ao5 select 13; _arry5 = _ao5 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao5 select 15; _arry2 = _ao5 select 16; _arry3 = _ao5 select 17; _arry4 = _ao5 select 18; _arry5 = _ao5 select 19;};
		};
		case "o6": {	//MistaSirious
			if (_debug) then {hint "Operator o6"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao6 select 0; _arry2 = _ao6 select 1; _arry3 = _ao6 select 2; _arry4 = _ao6 select 3; _arry5 = _ao6 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao6 select 5; _arry2 = _ao6 select 6; _arry3 = _ao6 select 7; _arry4 = _ao6 select 8; _arry5 = _ao6 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao6 select 10; _arry2 = _ao6 select 11; _arry3 = _ao6 select 12; _arry4 = _ao6 select 13; _arry5 = _ao6 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao6 select 15; _arry2 = _ao6 select 16; _arry3 = _ao6 select 17; _arry4 = _ao6 select 18; _arry5 = _ao6 select 19;};
		};
		case "o7": {	//Deathwalker
			if (_debug) then {hint "Operator o7"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao7 select 0; _arry2 = _ao7 select 1; _arry3 = _ao7 select 2; _arry4 = _ao7 select 3; _arry5 = _ao7 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao7 select 5; _arry2 = _ao7 select 6; _arry3 = _ao7 select 7; _arry4 = _ao7 select 8; _arry5 = _ao7 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao7 select 10; _arry2 = _ao7 select 11; _arry3 = _ao7 select 12; _arry4 = _ao7 select 13; _arry5 = _ao7 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao7 select 15; _arry2 = _ao7 select 16; _arry3 = _ao7 select 17; _arry4 = _ao7 select 18; _arry5 = _ao7 select 19;};
		};
		case "o8": {	//Hokan
			if (_debug) then {hint "Operator o8"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao8 select 0; _arry2 = _ao8 select 1; _arry3 = _ao8 select 2; _arry4 = _ao8 select 3; _arry5 = _ao8 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao8 select 5; _arry2 = _ao8 select 6; _arry3 = _ao8 select 7; _arry4 = _ao8 select 8; _arry5 = _ao8 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao8 select 10; _arry2 = _ao8 select 11; _arry3 = _ao8 select 12; _arry4 = _ao8 select 13; _arry5 = _ao8 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao8 select 15; _arry2 = _ao8 select 16; _arry3 = _ao8 select 17; _arry4 = _ao8 select 18; _arry5 = _ao8 select 19;};
		};
		case "o9": {	//Desertop
			if (_debug) then {hint "Operator o9"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao9 select 0; _arry2 = _ao9 select 1; _arry3 = _ao9 select 2; _arry4 = _ao9 select 3; _arry5 = _ao9 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao9 select 5; _arry2 = _ao9 select 6; _arry3 = _ao9 select 7; _arry4 = _ao9 select 8; _arry5 = _ao9 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao9 select 10; _arry2 = _ao9 select 11; _arry3 = _ao9 select 12; _arry4 = _ao9 select 13; _arry5 = _ao9 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao9 select 15; _arry2 = _ao9 select 16; _arry3 = _ao9 select 17; _arry4 = _ao9 select 18; _arry5 = _ao9 select 19;};
		};
		case "o10": {	//Sabaz
			if (_debug) then {hint "Operator o10"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao10 select 0; _arry2 = _ao10 select 1; _arry3 = _ao10 select 2; _arry4 = _ao10 select 3; _arry5 = _ao10 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao10 select 5; _arry2 = _ao10 select 6; _arry3 = _ao10 select 7; _arry4 = _ao10 select 8; _arry5 = _ao10 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao10 select 10; _arry2 = _ao10 select 11; _arry3 = _ao10 select 12; _arry4 = _ao10 select 13; _arry5 = _ao10 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao10 select 15; _arry2 = _ao10 select 16; _arry3 = _ao10 select 17; _arry4 = _ao10 select 18; _arry5 = _ao10 select 19;};
		};
		case "o11": {	//Tobi
			if (_debug) then {hint "Operator o11"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao11 select 0; _arry2 = _ao11 select 1; _arry3 = _ao11 select 2; _arry4 = _ao11 select 3; _arry5 = _ao11 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao11 select 5; _arry2 = _ao11 select 6; _arry3 = _ao11 select 7; _arry4 = _ao11 select 8; _arry5 = _ao11 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao11 select 10; _arry2 = _ao11 select 11; _arry3 = _ao11 select 12; _arry4 = _ao11 select 13; _arry5 = _ao11 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao11 select 15; _arry2 = _ao11 select 16; _arry3 = _ao11 select 17; _arry4 = _ao11 select 18; _arry5 = _ao11 select 19;};
		};
		case "o12": {	//Argonox
			if (_debug) then {hint "Operator o12"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao12 select 0; _arry2 = _ao12 select 1; _arry3 = _ao12 select 2; _arry4 = _ao12 select 3; _arry5 = _ao12 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao12 select 5; _arry2 = _ao12 select 6; _arry3 = _ao12 select 7; _arry4 = _ao12 select 8; _arry5 = _ao12 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao12 select 10; _arry2 = _ao12 select 11; _arry3 = _ao12 select 12; _arry4 = _ao12 select 13; _arry5 = _ao12 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao12 select 15; _arry2 = _ao12 select 16; _arry3 = _ao12 select 17; _arry4 = _ao12 select 18; _arry5 = _ao12 select 19;};
		};
		case "o13": {	//Victor
			if (_debug) then {hint "Operator o13"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao13 select 0; _arry2 = _ao13 select 1; _arry3 = _ao13 select 2; _arry4 = _ao13 select 3; _arry5 = _ao13 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao13 select 5; _arry2 = _ao13 select 6; _arry3 = _ao13 select 7; _arry4 = _ao13 select 8; _arry5 = _ao13 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao13 select 10; _arry2 = _ao13 select 11; _arry3 = _ao13 select 12; _arry4 = _ao13 select 13; _arry5 = _ao13 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao13 select 15; _arry2 = _ao13 select 16; _arry3 = _ao13 select 17; _arry4 = _ao13 select 18; _arry5 = _ao13 select 19;};
		};
		case "o14": {	//Sajiki
			if (_debug) then {hint "Operator o14"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao14 select 0; _arry2 = _ao14 select 1; _arry3 = _ao14 select 2; _arry4 = _ao14 select 3; _arry5 = _ao14 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao14 select 5; _arry2 = _ao14 select 6; _arry3 = _ao14 select 7; _arry4 = _ao14 select 8; _arry5 = _ao14 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao14 select 10; _arry2 = _ao14 select 11; _arry3 = _ao14 select 12; _arry4 = _ao14 select 13; _arry5 = _ao14 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao14 select 15; _arry2 = _ao14 select 16; _arry3 = _ao14 select 17; _arry4 = _ao14 select 18; _arry5 = _ao14 select 19;};
		};
		case "o15": {	//
			if (_debug) then {hint "Operator o15"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao15 select 0; _arry2 = _ao15 select 1; _arry3 = _ao15 select 2; _arry4 = _ao15 select 3; _arry5 = _ao15 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao15 select 5; _arry2 = _ao15 select 6; _arry3 = _ao15 select 7; _arry4 = _ao15 select 8; _arry5 = _ao15 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao15 select 10; _arry2 = _ao15 select 11; _arry3 = _ao15 select 12; _arry4 = _ao15 select 13; _arry5 = _ao15 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao15 select 15; _arry2 = _ao15 select 16; _arry3 = _ao15 select 17; _arry4 = _ao15 select 18; _arry5 = _ao15 select 19;;};
		};
		case "o16": {	//
			if (_debug) then {hint "Operator o16"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao16 select 0; _arry2 = _ao16 select 1; _arry3 = _ao16 select 2; _arry4 = _ao16 select 3; _arry5 = _ao16 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao16 select 5; _arry2 = _ao16 select 6; _arry3 = _ao16 select 7; _arry4 = _ao16 select 8; _arry5 = _ao16 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao16 select 10; _arry2 = _ao16 select 11; _arry3 = _ao16 select 12; _arry4 = _ao16 select 13; _arry5 = _ao16 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao16 select 15; _arry2 = _ao16 select 16; _arry3 = _ao16 select 17; _arry4 = _ao16 select 18; _arry5 = _ao16 select 19;};
		};
		case "o17": {	//
			if (_debug) then {hint "Operator o17"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao17 select 0; _arry2 = _ao17 select 1; _arry3 = _ao17 select 2; _arry4 = _ao17 select 3; _arry5 = _ao17 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao17 select 5; _arry2 = _ao17 select 6; _arry3 = _ao17 select 7; _arry4 = _ao17 select 8; _arry5 = _ao17 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao17 select 10; _arry2 = _ao17 select 11; _arry3 = _ao17 select 12; _arry4 = _ao17 select 13; _arry5 = _ao17 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao17 select 15; _arry2 = _ao17 select 16; _arry3 = _ao17 select 17; _arry4 = _ao17 select 18; _arry5 = _ao17 select 19;};
		};
		case "o18": {	//
			if (_debug) then {hint "Operator o18"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao18 select 0; _arry2 = _ao18 select 1; _arry3 = _ao18 select 2; _arry4 = _ao18 select 3; _arry5 = _ao18 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao18 select 5; _arry2 = _ao18 select 6; _arry3 = _ao18 select 7; _arry4 = _ao18 select 8; _arry5 = _ao18 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao18 select 10; _arry2 = _ao18 select 11; _arry3 = _ao18 select 12; _arry4 = _ao18 select 13; _arry5 = _ao18 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao18 select 15; _arry2 = _ao18 select 16; _arry3 = _ao18 select 17; _arry4 = _ao18 select 18; _arry5 = _ao18 select 19;};
		};
		case "o19": {	//
			if (_debug) then {hint "Operator o19"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao19 select 0; _arry2 = _ao19 select 1; _arry3 = _ao19 select 2; _arry4 = _ao19 select 3; _arry5 = _ao19 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao19 select 5; _arry2 = _ao19 select 6; _arry3 = _ao19 select 7; _arry4 = _ao19 select 8; _arry5 = _ao19 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao19 select 10; _arry2 = _ao19 select 11; _arry3 = _ao19 select 12; _arry4 = _ao19 select 13; _arry5 = _ao19 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao19 select 15; _arry2 = _ao19 select 16; _arry3 = _ao19 select 17; _arry4 = _ao19 select 18; _arry5 = _ao19 select 19;};
		};
		case "o20": {	//
			if (_debug) then {hint "Operator o20"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao20 select 0; _arry2 = _ao20 select 1; _arry3 = _ao20 select 2; _arry4 = _ao20 select 3; _arry5 = _ao20 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao20 select 5; _arry2 = _ao20 select 6; _arry3 = _ao20 select 7; _arry4 = _ao20 select 8; _arry5 = _ao20 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao20 select 10; _arry2 = _ao20 select 11; _arry3 = _ao20 select 12; _arry4 = _ao20 select 13; _arry5 = _ao20 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao20 select 15; _arry2 = _ao20 select 16; _arry3 = _ao20 select 17; _arry4 = _ao20 select 18; _arry5 = _ao20 select 19;};
		};
		case "o21": {	//
			if (_debug) then {hint "Operator o21"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao21 select 0; _arry2 = _ao21 select 1; _arry3 = _ao21 select 2; _arry4 = _ao21 select 3; _arry5 = _ao21 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao21 select 5; _arry2 = _ao21 select 6; _arry3 = _ao21 select 7; _arry4 = _ao21 select 8; _arry5 = _ao21 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao21 select 10; _arry2 = _ao21 select 11; _arry3 = _ao21 select 12; _arry4 = _ao21 select 13; _arry5 = _ao21 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao21 select 15; _arry2 = _ao21 select 16; _arry3 = _ao21 select 17; _arry4 = _ao21 select 18; _arry5 = _ao21 select 19;};
		};
		case "o22": {	//
			if (_debug) then {hint "Operator o22"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao22 select 0; _arry2 = _ao22 select 1; _arry3 = _ao22 select 2; _arry4 = _ao22 select 3; _arry5 = _ao22 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao22 select 5; _arry2 = _ao22 select 6; _arry3 = _ao22 select 7; _arry4 = _ao22 select 8; _arry5 = _ao22 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao22 select 10; _arry2 = _ao22 select 11; _arry3 = _ao22 select 12; _arry4 = _ao22 select 13; _arry5 = _ao22 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao22 select 15; _arry2 = _ao22 select 16; _arry3 = _ao22 select 17; _arry4 = _ao22 select 18; _arry5 = _ao22 select 19;};
		};
		case "o23": {	//
			if (_debug) then {hint "Operator o23"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao23 select 0; _arry2 = _ao23 select 1; _arry3 = _ao23 select 2; _arry4 = _ao23 select 3; _arry5 = _ao23 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao23 select 5; _arry2 = _ao23 select 6; _arry3 = _ao23 select 7; _arry4 = _ao23 select 8; _arry5 = _ao23 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao23 select 10; _arry2 = _ao23 select 11; _arry3 = _ao23 select 12; _arry4 = _ao23 select 13; _arry5 = _ao23 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao23 select 15; _arry2 = _ao23 select 16; _arry3 = _ao23 select 17; _arry4 = _ao23 select 18; _arry5 = _ao23 select 19;};
		};
		case "o24": {	//
			if (_debug) then {hint "Operator o24"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao24 select 0; _arry2 = _ao24 select 1; _arry3 = _ao24 select 2; _arry4 = _ao24 select 3; _arry5 = _ao24 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao24 select 5; _arry2 = _ao24 select 6; _arry3 = _ao24 select 7; _arry4 = _ao24 select 8; _arry5 = _ao24 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao24 select 10; _arry2 = _ao24 select 11; _arry3 = _ao24 select 12; _arry4 = _ao24 select 13; _arry5 = _ao24 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao24 select 15; _arry2 = _ao24 select 16; _arry3 = _ao24 select 17; _arry4 = _ao24 select 18; _arry5 = _ao24 select 19;};
		};
		case "o25": {	//
			if (_debug) then {hint "Operator o25"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao25 select 0; _arry2 = _ao25 select 1; _arry3 = _ao25 select 2; _arry4 = _ao25 select 3; _arry5 = _ao25 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao25 select 5; _arry2 = _ao25 select 6; _arry3 = _ao25 select 7; _arry4 = _ao25 select 8; _arry5 = _ao25 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao25 select 10; _arry2 = _ao25 select 11; _arry3 = _ao25 select 12; _arry4 = _ao25 select 13; _arry5 = _ao25 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao25 select 15; _arry2 = _ao25 select 16; _arry3 = _ao25 select 17; _arry4 = _ao25 select 18; _arry5 = _ao25 select 19;};
		};
		case "o26": {	//
			if (_debug) then {hint "Operator o26"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao26 select 0; _arry2 = _ao26 select 1; _arry3 = _ao26 select 2; _arry4 = _ao26 select 3; _arry5 = _ao26 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao26 select 5; _arry2 = _ao26 select 6; _arry3 = _ao26 select 7; _arry4 = _ao26 select 8; _arry5 = _ao26 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao26 select 10; _arry2 = _ao26 select 11; _arry3 = _ao26 select 12; _arry4 = _ao26 select 13; _arry5 = _ao26 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao26 select 15; _arry2 = _ao26 select 16; _arry3 = _ao26 select 17; _arry4 = _ao26 select 18; _arry5 = _ao26 select 19;};
		};
		case "o27": {	//
			if (_debug) then {hint "Operator o27"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao27 select 0; _arry2 = _ao27 select 1; _arry3 = _ao27 select 2; _arry4 = _ao27 select 3; _arry5 = _ao27 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao27 select 5; _arry2 = _ao27 select 6; _arry3 = _ao27 select 7; _arry4 = _ao27 select 8; _arry5 = _ao27 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao27 select 10; _arry2 = _ao27 select 11; _arry3 = _ao27 select 12; _arry4 = _ao27 select 13; _arry5 = _ao27 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao27 select 15; _arry2 = _ao27 select 16; _arry3 = _ao27 select 17; _arry4 = _ao27 select 18; _arry5 = _ao27 select 19;};
		};
		case "o28": {	//
			if (_debug) then {hint "Operator o28"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao28 select 0; _arry2 = _ao28 select 1; _arry3 = _ao28 select 2; _arry4 = _ao28 select 3; _arry5 = _ao28 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao28 select 5; _arry2 = _ao28 select 6; _arry3 = _ao28 select 7; _arry4 = _ao28 select 8; _arry5 = _ao28 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao28 select 10; _arry2 = _ao28 select 11; _arry3 = _ao28 select 12; _arry4 = _ao28 select 13; _arry5 = _ao28 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao28 select 15; _arry2 = _ao28 select 16; _arry3 = _ao28 select 17; _arry4 = _ao28 select 18; _arry5 = _ao28 select 19;};
		};
		case "o29": {	//
			if (_debug) then {hint "Operator o29"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao29 select 0; _arry2 = _ao29 select 1; _arry3 = _ao29 select 2; _arry4 = _ao29 select 3; _arry5 = _ao29 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao29 select 5; _arry2 = _ao29 select 6; _arry3 = _ao29 select 7; _arry4 = _ao29 select 8; _arry5 = _ao29 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao29 select 10; _arry2 = _ao29 select 11; _arry3 = _ao29 select 12; _arry4 = _ao29 select 13; _arry5 = _ao29 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao29 select 15; _arry2 = _ao29 select 16; _arry3 = _ao29 select 17; _arry4 = _ao29 select 18; _arry5 = _ao29 select 19;};
		};
		case "o30": {	//
			if (_debug) then {hint "Operator o30"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao30 select 0; _arry2 = _ao30 select 1; _arry3 = _ao30 select 2; _arry4 = _ao30 select 3; _arry5 = _ao30 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao30 select 5; _arry2 = _ao30 select 6; _arry3 = _ao30 select 7; _arry4 = _ao30 select 8; _arry5 = _ao30 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao30 select 10; _arry2 = _ao30 select 11; _arry3 = _ao30 select 12; _arry4 = _ao30 select 13; _arry5 = _ao30 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao30 select 15; _arry2 = _ao30 select 16; _arry3 = _ao30 select 17; _arry4 = _ao30 select 18; _arry5 = _ao30 select 19;};
		};
		case "o31": {	//
			if (_debug) then {hint "Operator o31"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao31 select 0; _arry2 = _ao31 select 1; _arry3 = _ao31 select 2; _arry4 = _ao31 select 3; _arry5 = _ao31 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao31 select 5; _arry2 = _ao31 select 6; _arry3 = _ao31 select 7; _arry4 = _ao31 select 8; _arry5 = _ao31 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao31 select 10; _arry2 = _ao31 select 11; _arry3 = _ao31 select 12; _arry4 = _ao31 select 13; _arry5 = _ao31 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao31 select 15; _arry2 = _ao31 select 16; _arry3 = _ao31 select 17; _arry4 = _ao31 select 18; _arry5 = _ao31 select 19;};
		};
		case "o32": {	//
			if (_debug) then {hint "Operator o32"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao32 select 0; _arry2 = _ao32 select 1; _arry3 = _ao32 select 2; _arry4 = _ao32 select 3; _arry5 = _ao32 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao32 select 5; _arry2 = _ao32 select 6; _arry3 = _ao32 select 7; _arry4 = _ao32 select 8; _arry5 = _ao32 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao32 select 10; _arry2 = _ao32 select 11; _arry3 = _ao32 select 12; _arry4 = _ao32 select 13; _arry5 = _ao32 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao32 select 15; _arry2 = _ao32 select 16; _arry3 = _ao32 select 17; _arry4 = _ao32 select 18; _arry5 = _ao32 select 19;};
		};
		case "o33": {	//
			if (_debug) then {hint "Operator o33"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao33 select 0; _arry2 = _ao33 select 1; _arry3 = _ao33 select 2; _arry4 = _ao33 select 3; _arry5 = _ao33 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao33 select 5; _arry2 = _ao33 select 6; _arry3 = _ao33 select 7; _arry4 = _ao33 select 8; _arry5 = _ao33 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao33 select 10; _arry2 = _ao33 select 11; _arry3 = _ao33 select 12; _arry4 = _ao33 select 13; _arry5 = _ao33 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao33 select 15; _arry2 = _ao33 select 16; _arry3 = _ao33 select 17; _arry4 = _ao33 select 18; _arry5 = _ao33 select 19;};
		};
		case "o34": {	//
			if (_debug) then {hint "Operator o34"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao34 select 0; _arry2 = _ao34 select 1; _arry3 = _ao34 select 2; _arry4 = _ao34 select 3; _arry5 = _ao34 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao34 select 5; _arry2 = _ao34 select 6; _arry3 = _ao34 select 7; _arry4 = _ao34 select 8; _arry5 = _ao34 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao34 select 10; _arry2 = _ao34 select 11; _arry3 = _ao34 select 12; _arry4 = _ao34 select 13; _arry5 = _ao34 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao34 select 15; _arry2 = _ao34 select 16; _arry3 = _ao34 select 17; _arry4 = _ao34 select 18; _arry5 = _ao34 select 19;};
		};
		case "o35": {	//
			if (_debug) then {hint "Operator o35"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao35 select 0; _arry2 = _ao35 select 1; _arry3 = _ao35 select 2; _arry4 = _ao35 select 3; _arry5 = _ao35 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao35 select 5; _arry2 = _ao35 select 6; _arry3 = _ao35 select 7; _arry4 = _ao35 select 8; _arry5 = _ao35 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao35 select 10; _arry2 = _ao35 select 11; _arry3 = _ao35 select 12; _arry4 = _ao35 select 13; _arry5 = _ao35 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao35 select 15; _arry2 = _ao35 select 16; _arry3 = _ao35 select 17; _arry4 = _ao35 select 18; _arry5 = _ao35 select 19;};
		};
		case "o36": {	//
			if (_debug) then {hint "Operator o36"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao36 select 0; _arry2 = _ao36 select 1; _arry3 = _ao36 select 2; _arry4 = _ao36 select 3; _arry5 = _ao36 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao36 select 5; _arry2 = _ao36 select 6; _arry3 = _ao36 select 7; _arry4 = _ao36 select 8; _arry5 = _ao36 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao36 select 10; _arry2 = _ao36 select 11; _arry3 = _ao36 select 12; _arry4 = _ao36 select 13; _arry5 = _ao36 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao36 select 15; _arry2 = _ao36 select 16; _arry3 = _ao36 select 17; _arry4 = _ao36 select 18; _arry5 = _ao36 select 19;};
		};
		case "o37": {	//
			if (_debug) then {hint "Operator o37"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao37 select 0; _arry2 = _ao37 select 1; _arry3 = _ao37 select 2; _arry4 = _ao37 select 3; _arry5 = _ao37 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao37 select 5; _arry2 = _ao37 select 6; _arry3 = _ao37 select 7; _arry4 = _ao37 select 8; _arry5 = _ao37 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao37 select 10; _arry2 = _ao37 select 11; _arry3 = _ao37 select 12; _arry4 = _ao37 select 13; _arry5 = _ao37 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao37 select 15; _arry2 = _ao37 select 16; _arry3 = _ao37 select 17; _arry4 = _ao37 select 18; _arry5 = _ao37 select 19;};
		};
		case "o38": {	//
			if (_debug) then {hint "Operator o38"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao38 select 0; _arry2 = _ao38 select 1; _arry3 = _ao38 select 2; _arry4 = _ao38 select 3; _arry5 = _ao38 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao38 select 5; _arry2 = _ao38 select 6; _arry3 = _ao38 select 7; _arry4 = _ao38 select 8; _arry5 = _ao38 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao38 select 10; _arry2 = _ao38 select 11; _arry3 = _ao38 select 12; _arry4 = _ao38 select 13; _arry5 = _ao38 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao38 select 15; _arry2 = _ao38 select 16; _arry3 = _ao38 select 17; _arry4 = _ao38 select 18; _arry5 = _ao38 select 19;};
		};
		case "o39": {	//
			if (_debug) then {hint "Operator o39"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao39 select 0; _arry2 = _ao39 select 1; _arry3 = _ao39 select 2; _arry4 = _ao39 select 3; _arry5 = _ao39 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao39 select 5; _arry2 = _ao39 select 6; _arry3 = _ao39 select 7; _arry4 = _ao39 select 8; _arry5 = _ao39 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao39 select 10; _arry2 = _ao39 select 11; _arry3 = _ao39 select 12; _arry4 = _ao39 select 13; _arry5 = _ao39 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao39 select 15; _arry2 = _ao39 select 16; _arry3 = _ao39 select 17; _arry4 = _ao39 select 18; _arry5 = _ao39 select 19;};
		};
		case "o40": {	//
			if (_debug) then {hint "Operator o40"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao40 select 0; _arry2 = _ao40 select 1; _arry3 = _ao40 select 2; _arry4 = _ao40 select 3; _arry5 = _ao40 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao40 select 5; _arry2 = _ao40 select 6; _arry3 = _ao40 select 7; _arry4 = _ao40 select 8; _arry5 = _ao40 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao40 select 10; _arry2 = _ao40 select 11; _arry3 = _ao40 select 12; _arry4 = _ao40 select 13; _arry5 = _ao40 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao40 select 15; _arry2 = _ao40 select 16; _arry3 = _ao40 select 17; _arry4 = _ao40 select 18; _arry5 = _ao40 select 19;};
		};
		case "o41": {	//
			if (_debug) then {hint "Operator o41"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao41 select 0; _arry2 = _ao41 select 1; _arry3 = _ao41 select 2; _arry4 = _ao41 select 3; _arry5 = _ao41 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao41 select 5; _arry2 = _ao41 select 6; _arry3 = _ao41 select 7; _arry4 = _ao41 select 8; _arry5 = _ao41 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao41 select 10; _arry2 = _ao41 select 11; _arry3 = _ao41 select 12; _arry4 = _ao41 select 13; _arry5 = _ao41 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao41 select 15; _arry2 = _ao41 select 16; _arry3 = _ao41 select 17; _arry4 = _ao41 select 18; _arry5 = _ao41 select 19;};
		};
		case "o42": {	//
			if (_debug) then {hint "Operator o42"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao42 select 0; _arry2 = _ao42 select 1; _arry3 = _ao42 select 2; _arry4 = _ao42 select 3; _arry5 = _ao42 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao42 select 5; _arry2 = _ao42 select 6; _arry3 = _ao42 select 7; _arry4 = _ao42 select 8; _arry5 = _ao42 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao42 select 10; _arry2 = _ao42 select 11; _arry3 = _ao42 select 12; _arry4 = _ao42 select 13; _arry5 = _ao42 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao42 select 15; _arry2 = _ao42 select 16; _arry3 = _ao42 select 17; _arry4 = _ao42 select 18; _arry5 = _ao42 select 19;};
		};
		case "o43": {	//
			if (_debug) then {hint "Operator o43"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao43 select 0; _arry2 = _ao43 select 1; _arry3 = _ao43 select 2; _arry4 = _ao43 select 3; _arry5 = _ao43 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao43 select 5; _arry2 = _ao43 select 6; _arry3 = _ao43 select 7; _arry4 = _ao43 select 8; _arry5 = _ao43 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao43 select 10; _arry2 = _ao43 select 11; _arry3 = _ao43 select 12; _arry4 = _ao43 select 13; _arry5 = _ao43 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao43 select 15; _arry2 = _ao43 select 16; _arry3 = _ao43 select 17; _arry4 = _ao43 select 18; _arry5 = _ao43 select 19;};
		};
		case "o44": {	//
			if (_debug) then {hint "Operator o44"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao44 select 0; _arry2 = _ao44 select 1; _arry3 = _ao44 select 2; _arry4 = _ao44 select 3; _arry5 = _ao44 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao44 select 5; _arry2 = _ao44 select 6; _arry3 = _ao44 select 7; _arry4 = _ao44 select 8; _arry5 = _ao44 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao44 select 10; _arry2 = _ao44 select 11; _arry3 = _ao44 select 12; _arry4 = _ao44 select 13; _arry5 = _ao44 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao44 select 15; _arry2 = _ao44 select 16; _arry3 = _ao44 select 17; _arry4 = _ao44 select 18; _arry5 = _ao44 select 19;};
		};
		case "o45": {	//
			if (_debug) then {hint "Operator o45"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao45 select 0; _arry2 = _ao45 select 1; _arry3 = _ao45 select 2; _arry4 = _ao45 select 3; _arry5 = _ao45 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao45 select 5; _arry2 = _ao45 select 6; _arry3 = _ao45 select 7; _arry4 = _ao45 select 8; _arry5 = _ao45 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao45 select 10; _arry2 = _ao45 select 11; _arry3 = _ao45 select 12; _arry4 = _ao45 select 13; _arry5 = _ao45 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao45 select 15; _arry2 = _ao45 select 16; _arry3 = _ao45 select 17; _arry4 = _ao45 select 18; _arry5 = _ao45 select 19;};
		};
		case "o46": {	//
			if (_debug) then {hint "Operator o46"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao46 select 0; _arry2 = _ao46 select 1; _arry3 = _ao46 select 2; _arry4 = _ao46 select 3; _arry5 = _ao46 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao46 select 5; _arry2 = _ao46 select 6; _arry3 = _ao46 select 7; _arry4 = _ao46 select 8; _arry5 = _ao46 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao46 select 10; _arry2 = _ao46 select 11; _arry3 = _ao46 select 12; _arry4 = _ao46 select 13; _arry5 = _ao46 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao46 select 15; _arry2 = _ao46 select 16; _arry3 = _ao46 select 17; _arry4 = _ao46 select 18; _arry5 = _ao46 select 19;};
		};
		case "o47": {	//
			if (_debug) then {hint "Operator o47"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao47 select 0; _arry2 = _ao47 select 1; _arry3 = _ao47 select 2; _arry4 = _ao47 select 3; _arry5 = _ao47 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao47 select 5; _arry2 = _ao47 select 6; _arry3 = _ao47 select 7; _arry4 = _ao47 select 8; _arry5 = _ao47 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao47 select 10; _arry2 = _ao47 select 11; _arry3 = _ao47 select 12; _arry4 = _ao47 select 13; _arry5 = _ao47 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao47 select 15; _arry2 = _ao47 select 16; _arry3 = _ao47 select 17; _arry4 = _ao47 select 18; _arry5 = _ao47 select 19;};
		};
		case "o48": {	//
			if (_debug) then {hint "Operator o48"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao48 select 0; _arry2 = _ao48 select 1; _arry3 = _ao48 select 2; _arry4 = _ao48 select 3; _arry5 = _ao48 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao48 select 5; _arry2 = _ao48 select 6; _arry3 = _ao48 select 7; _arry4 = _ao48 select 8; _arry5 = _ao48 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao48 select 10; _arry2 = _ao48 select 11; _arry3 = _ao48 select 12; _arry4 = _ao48 select 13; _arry5 = _ao48 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao48 select 15; _arry2 = _ao48 select 16; _arry3 = _ao48 select 17; _arry4 = _ao48 select 18; _arry5 = _ao48 select 19;};
		};
		case "o49": {	//
			if (_debug) then {hint "Operator o49"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao49 select 0; _arry2 = _ao49 select 1; _arry3 = _ao49 select 2; _arry4 = _ao49 select 3; _arry5 = _ao49 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao49 select 5; _arry2 = _ao49 select 6; _arry3 = _ao49 select 7; _arry4 = _ao49 select 8; _arry5 = _ao49 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao49 select 10; _arry2 = _ao49 select 11; _arry3 = _ao49 select 12; _arry4 = _ao49 select 13; _arry5 = _ao49 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao49 select 15; _arry2 = _ao49 select 16; _arry3 = _ao49 select 17; _arry4 = _ao49 select 18; _arry5 = _ao49 select 19;};
		};
		case "o50": {	//
			if (_debug) then {hint "Operator o50"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ao50 select 0; _arry2 = _ao50 select 1; _arry3 = _ao50 select 2; _arry4 = _ao50 select 3; _arry5 = _ao50 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ao50 select 5; _arry2 = _ao50 select 6; _arry3 = _ao50 select 7; _arry4 = _ao50 select 8; _arry5 = _ao50 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ao50 select 10; _arry2 = _ao50 select 11; _arry3 = _ao50 select 12; _arry4 = _ao50 select 13; _arry5 = _ao50 select 14;};
			if (_uniform == "tda") then {_arry1 = _ao50 select 15; _arry2 = _ao50 select 16; _arry3 = _ao50 select 17; _arry4 = _ao50 select 18; _arry5 = _ao50 select 19;};
		};

		//Klasse Piloten 1 bis 10
		case "p1": {//Recovery
			if (_debug) then {hint "Pilot p1"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap1 select 0; _arry2 = _ap1 select 1; _arry3 = _ap1 select 2; _arry4 = _ap1 select 3; _arry5 = _ap1 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap1 select 5; _arry2 = _ap1 select 6; _arry3 = _ap1 select 7; _arry4 = _ap1 select 8; _arry5 = _ap1 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap1 select 10; _arry2 = _ap1 select 11; _arry3 = _ap1 select 12; _arry4 = _ap1 select 13; _arry5 = _ap1 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap1 select 15; _arry2 = _ap1 select 16; _arry3 = _ap1 select 17; _arry4 = _ap1 select 18; _arry5 = _ap1 select 19;};
		};
		case "p2": {	
			if (_debug) then {hint "Pilot p2"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap2 select 0; _arry2 = _ap2 select 1; _arry3 = _ap2 select 2; _arry4 = _ap2 select 3; _arry5 = _ap2 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap2 select 5; _arry2 = _ap2 select 6; _arry3 = _ap2 select 7; _arry4 = _ap2 select 8; _arry5 = _ap2 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap2 select 10; _arry2 = _ap2 select 11; _arry3 = _ap2 select 12; _arry4 = _ap2 select 13; _arry5 = _ap2 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap2 select 15; _arry2 = _ap2 select 16; _arry3 = _ap2 select 17; _arry4 = _ap2 select 18; _arry5 = _ap2 select 19;};
		};
		case "p3": {	// Zer0cool HighJack
			if (_debug) then {hint "Pilot p3"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap3 select 0; _arry2 = _ap3 select 1; _arry3 = _ap3 select 2; _arry4 = _ap3 select 3; _arry5 = _ap3 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap3 select 5; _arry2 = _ap3 select 6; _arry3 = _ap3 select 7; _arry4 = _ap3 select 8; _arry5 = _ap3 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap3 select 10; _arry2 = _ap3 select 11; _arry3 = _ap3 select 12; _arry4 = _ap3 select 13; _arry5 = _ap3 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap3 select 15; _arry2 = _ap3 select 16; _arry3 = _ap3 select 17; _arry4 = _ap3 select 18; _arry5 = _ap3 select 19;};
		};
		case "p4": {	// Baatscram Wolverin
			if (_debug) then {hint "Pilot p4"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap4 select 0; _arry2 = _ap4 select 1; _arry3 = _ap4 select 2; _arry4 = _ap4 select 3; _arry5 = _ap4 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap4 select 5; _arry2 = _ap4 select 6; _arry3 = _ap4 select 7; _arry4 = _ap4 select 8; _arry5 = _ap4 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap4 select 10; _arry2 = _ap4 select 11; _arry3 = _ap4 select 12; _arry4 = _ap4 select 13; _arry5 = _ap4 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap4 select 15; _arry2 = _ap4 select 16; _arry3 = _ap4 select 17; _arry4 = _ap4 select 18; _arry5 = _ap4 select 19;};
		};
		case "p5": {	// Vollkornsprudel
			if (_debug) then {hint "Pilot p5"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap5 select 0; _arry2 = _ap5 select 1; _arry3 = _ap5 select 2; _arry4 = _ap5 select 3; _arry5 = _ap5 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap5 select 5; _arry2 = _ap5 select 6; _arry3 = _ap5 select 7; _arry4 = _ap5 select 8; _arry5 = _ap5 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap5 select 10; _arry2 = _ap5 select 11; _arry3 = _ap5 select 12; _arry4 = _ap5 select 13; _arry5 = _ap5 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap5 select 15; _arry2 = _ap5 select 16; _arry3 = _ap5 select 17; _arry4 = _ap5 select 18; _arry5 = _ap5 select 19;};
		};
		case "p6": {	// SetCrow Crow
			if (_debug) then {hint "Pilot p6"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap6 select 0; _arry2 = _ap6 select 1; _arry3 = _ap6 select 2; _arry4 = _ap6 select 3; _arry5 = _ap6 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap6 select 5; _arry2 = _ap6 select 6; _arry3 = _ap6 select 7; _arry4 = _ap6 select 8; _arry5 = _ap6 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap6 select 10; _arry2 = _ap6 select 11; _arry3 = _ap6 select 12; _arry4 = _ap6 select 13; _arry5 = _ap6 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap6 select 15; _arry2 = _ap6 select 16; _arry3 = _ap6 select 17; _arry4 = _ap6 select 18; _arry5 = _ap6 select 19;};
		};
		case "p7": {	// AirbornBeast
			if (_debug) then {hint "Pilot p7"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap7 select 0; _arry2 = _ap7 select 1; _arry3 = _ap7 select 2; _arry4 = _ap7 select 3; _arry5 = _ap7 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap7 select 5; _arry2 = _ap7 select 6; _arry3 = _ap7 select 7; _arry4 = _ap7 select 8; _arry5 = _ap7 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap7 select 10; _arry2 = _ap7 select 11; _arry3 = _ap7 select 12; _arry4 = _ap7 select 13; _arry5 = _ap7 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap7 select 15; _arry2 = _ap7 select 16; _arry3 = _ap7 select 17; _arry4 = _ap7 select 18; _arry5 = _ap7 select 19;};
		};
		case "p8": {	// Jalisco
			if (_debug) then {hint "Pilot p8"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap8 select 0; _arry2 = _ap8 select 1; _arry3 = _ap8 select 2; _arry4 = _ap8 select 3; _arry5 = _ap8 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap8 select 5; _arry2 = _ap8 select 6; _arry3 = _ap8 select 7; _arry4 = _ap8 select 8; _arry5 = _ap8 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap8 select 10; _arry2 = _ap8 select 11; _arry3 = _ap8 select 12; _arry4 = _ap8 select 13; _arry5 = _ap8 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap8 select 15; _arry2 = _ap8 select 16; _arry3 = _ap8 select 17; _arry4 = _ap8 select 18; _arry5 = _ap8 select 19;};
		};
		case "p9": {	//
			if (_debug) then {hint "Pilot p9"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap9 select 0; _arry2 = _ap9 select 1; _arry3 = _ap9 select 2; _arry4 = _ap9 select 3; _arry5 = _ap9 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap9 select 5; _arry2 = _ap9 select 6; _arry3 = _ap9 select 7; _arry4 = _ap9 select 8; _arry5 = _ap9 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap9 select 10; _arry2 = _ap9 select 11; _arry3 = _ap9 select 12; _arry4 = _ap9 select 13; _arry5 = _ap9 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap9 select 15; _arry2 = _ap9 select 16; _arry3 = _ap9 select 17; _arry4 = _ap9 select 18; _arry5 = _ap9 select 19;};
		};
		case "p10": {	//
			if (_debug) then {hint "Pilot p10"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap10 select 0; _arry2 = _ap10 select 1; _arry3 = _ap10 select 2; _arry4 = _ap10 select 3; _arry5 = _ap10 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap10 select 5; _arry2 = _ap10 select 6; _arry3 = _ap10 select 7; _arry4 = _ap10 select 8; _arry5 = _ap10 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap10 select 10; _arry2 = _ap10 select 11; _arry3 = _ap10 select 12; _arry4 = _ap10 select 13; _arry5 = _ap10 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap10 select 15; _arry2 = _ap10 select 16; _arry3 = _ap10 select 17; _arry4 = _ap10 select 18; _arry5 = _ap10 select 19;};
		};
		case "p11": {	//
			if (_debug) then {hint "Pilot p11"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap11 select 0; _arry2 = _ap11 select 1; _arry3 = _ap11 select 2; _arry4 = _ap11 select 3; _arry5 = _ap11 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap11 select 5; _arry2 = _ap11 select 6; _arry3 = _ap11 select 7; _arry4 = _ap11 select 8; _arry5 = _ap11 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap11 select 10; _arry2 = _ap11 select 11; _arry3 = _ap11 select 12; _arry4 = _ap11 select 13; _arry5 = _ap11 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap11 select 15; _arry2 = _ap11 select 16; _arry3 = _ap11 select 17; _arry4 = _ap11 select 18; _arry5 = _ap11 select 19;};
		};
		case "p12": {	//
			if (_debug) then {hint "Pilot p12"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap12 select 0; _arry2 = _ap12 select 1; _arry3 = _ap12 select 2; _arry4 = _ap12 select 3; _arry5 = _ap12 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap12 select 5; _arry2 = _ap12 select 6; _arry3 = _ap12 select 7; _arry4 = _ap12 select 8; _arry5 = _ap12 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap12 select 10; _arry2 = _ap12 select 11; _arry3 = _ap12 select 12; _arry4 = _ap12 select 13; _arry5 = _ap12 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap12 select 15; _arry2 = _ap12 select 16; _arry3 = _ap12 select 17; _arry4 = _ap12 select 18; _arry5 = _ap12 select 19;};
		};
		case "p13": {	//
			if (_debug) then {hint "Pilot p13"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap13 select 0; _arry2 = _ap13 select 1; _arry3 = _ap13 select 2; _arry4 = _ap13 select 3; _arry5 = _ap13 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap13 select 5; _arry2 = _ap13 select 6; _arry3 = _ap13 select 7; _arry4 = _ap13 select 8; _arry5 = _ap13 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap13 select 10; _arry2 = _ap13 select 11; _arry3 = _ap13 select 12; _arry4 = _ap13 select 13; _arry5 = _ap13 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap13 select 15; _arry2 = _ap13 select 16; _arry3 = _ap13 select 17; _arry4 = _ap13 select 18; _arry5 = _ap13 select 19;};
		};
		case "p14": {	//
			if (_debug) then {hint "Pilot p14"; sleep 2;};
			if (_uniform == "mtp") then {_arry1 = _ap14 select 0; _arry2 = _ap14 select 1; _arry3 = _ap14 select 2; _arry4 = _ap14 select 3; _arry5 = _ap14 select 4;};
			if (_uniform == "wtp") then {_arry1 = _ap14 select 5; _arry2 = _ap14 select 6; _arry3 = _ap14 select 7; _arry4 = _ap14 select 8; _arry5 = _ap14 select 9;};
			if (_uniform == "jtp") then {_arry1 = _ap14 select 10; _arry2 = _ap14 select 11; _arry3 = _ap14 select 12; _arry4 = _ap14 select 13; _arry5 = _ap14 select 14;};
			if (_uniform == "tda") then {_arry1 = _ap14 select 15; _arry2 = _ap14 select 16; _arry3 = _ap14 select 17; _arry4 = _ap14 select 18; _arry5 = _ap14 select 19;};
		};
	};

	player forceAddUniform _arry1; 
	player addVest		_arry2;
	player addHeadgear	_arry3;
	player addGoggles	_arry4;
	player linkItem		_arry5;
};