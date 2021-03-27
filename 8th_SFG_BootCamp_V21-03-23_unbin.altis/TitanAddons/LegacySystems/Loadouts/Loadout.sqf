//----------------------------------------------------------------------------------------------------
/*
		*** LOADOUT SYSTEM ***
*/
//----------------------------------------------------------------------------------------------------
if (!isServer) then {waitUntil {!(isNull player)}; };

#include "lo_uniform.sqf";
#include "functions\fn_CB.sqf"
#include "functions\fn_CBpil.sqf"

private ["_permVar", "_spotterList", "_sotacList", "_leadList", "_specList", "_pilot", "_player", "_plastr", "_uni", "_ftl", "_ope", "_pil", "_rek"];
_spotterList = ["rct", "lrr", "lrs"];
_sotacList = ["tac", "cct"];
_leadList = ["ptl", "sql", "ftl"];
_specList = ["diver", "mff"];
_pilot = ["fix", "rot"];
_permVar = missionNamespace getVariable "permVar";
_permVar2 = missionNamespace getVariable "permVar2";
_player = player; 						//übernimmt PlayerVarName
_plastr = format ["%1", player];		//formatiert PlayervarName zu String	
_uni = uniform player;					//übernimmt Uniform von Player 

private _vSet = missionNamespace getVariable "varName";
if (isNil "_vSet") then
{
	missionNamespace setVariable ["varName", 1]; 
	_vSet = 0;
};

//öffne dialog
_ok = createDialog "loadout_big";

//----------------------------------------------------------------------------------------------------
/*
	START BUTTONS!!! Schaltet die Buttons beim Aufruf passend, unabhänging von der system.sqf. 
	
		Erläuterung: 1011 --> 10 = Reihe 1, 11 = Button 1. So ergibt 3012 Reihe 3 und Button 3.
*/
//----------------------------------------------------------------------------------------------------
if (_uni in _listMTPUni || _uni in _listJTPUni || _uni in _listWTPUni || _permVar in _pilot || _uni == "U_B_Wetsuit" || _permVar in _spotterList) then {
	

	if (_vSet == 1) then { //Öffnet wenn Uniformen und Ausrüstung ausgewählt sind
	//Uniform-Box1
		ctrlEnable [0102, true];//mtp
		ctrlEnable [0103, true];//jtp
		ctrlEnable [0104, true];//wtp
	//Command-Box2 
		ctrlEnable [0201, false];//ptl
		ctrlEnable [0202, false];//sql
		ctrlEnable [0203, false];//ftl
	//Control-Box3
		ctrlEnable [0301, false];//cct	
		ctrlEnable [0302, false];//sotac
	//Operators-Box4
		ctrlEnable [0401, false];//atmo
		ctrlEnable [0402, false];//wpn
		ctrlEnable [0403, false];//eng
		ctrlEnable [0404, false];//rifle	
	//Recon-Box5
		ctrlEnable [0501, false];//rct
		ctrlEnable [0502, false];//lrr
		ctrlEnable [0503, false];//lrs
	//Pilots-Box6
		ctrlEnable [0601, PFIX];//fix
		ctrlEnable [0602, PROT];//rot
	//Fireteamleader-Box7
		if (_permVar in _leadList) then {
			ctrlEnable [7100, FTL_1_0];
			ctrlEnable [7200, FTL_2_0];
			ctrlEnable [7201, FTL_2_1];
			ctrlEnable [7202, FTL_2_2];
			ctrlEnable [7203, FTL_2_3];
			ctrlEnable [7300, FTL_3_0];
			ctrlEnable [7301, FTL_3_1];
			ctrlEnable [7302, FTL_3_2];
			ctrlEnable [7303, FTL_3_3];
			ctrlEnable [7400, FTL_4_0];
			ctrlEnable [7401, FTL_4_1];
			ctrlEnable [7402, FTL_4_2];
			ctrlEnable [7403, FTL_4_3];
			ctrlEnable [7900, EAGLE_7];
			ctrlEnable [7901, FALCON_7];
			ctrlEnable [7902, HAWK_7];
			ctrlEnable [7903, VULTURE_7];
		} else {
			if (_permVar in _sotacList) then {
				ctrlEnable [7100, false];
				ctrlEnable [7200, false];
				ctrlEnable [7201, FTL_2_1];
				ctrlEnable [7202, FTL_2_2];
				ctrlEnable [7203, FTL_2_3];
				ctrlEnable [7300, false];
				ctrlEnable [7301, FTL_3_1];
				ctrlEnable [7302, FTL_3_2];
				ctrlEnable [7303, FTL_3_3];
				ctrlEnable [7400, false];
				ctrlEnable [7401, FTL_4_1];
				ctrlEnable [7402, FTL_4_2];
				ctrlEnable [7403, FTL_4_3];
				ctrlEnable [7900, EAGLE_7];
				ctrlEnable [7901, FALCON_7];
				ctrlEnable [7902, HAWK_7];
				ctrlEnable [7903, VULTURE_7];
			} else {
				if (_permVar in _spotterList) then {
					ctrlEnable [7100, false];
					ctrlEnable [7200, false];
					ctrlEnable [7201, false];
					ctrlEnable [7202, false];
					ctrlEnable [7203, false];
					ctrlEnable [7300, false];
					ctrlEnable [7301, false];
					ctrlEnable [7302, false];
					ctrlEnable [7303, false];
					ctrlEnable [7400, false];
					ctrlEnable [7401, false];
					ctrlEnable [7402, false];
					ctrlEnable [7403, false];
					ctrlEnable [7900, EAGLE_7];
					ctrlEnable [7901, FALCON_7];
					ctrlEnable [7902, HAWK_7];
					ctrlEnable [7903, VULTURE_7];
				} else {
					ctrlEnable [7100, false];
					ctrlEnable [7200, false];
					ctrlEnable [7201, false];
					ctrlEnable [7202, false];
					ctrlEnable [7203, false];
					ctrlEnable [7300, false];
					ctrlEnable [7301, false];
					ctrlEnable [7302, false];
					ctrlEnable [7303, false];
					ctrlEnable [7400, false];
					ctrlEnable [7401, false];
					ctrlEnable [7402, false];
					ctrlEnable [7403, false];
					ctrlEnable [7900, false];
					ctrlEnable [7901, false];
					ctrlEnable [7902, false];
					ctrlEnable [7903, false];
				};
			};
		};
	//Fireteam-box8
		ctrlEnable [8100, FT_1_0];
		ctrlEnable [8200, FT_2_0];
		ctrlEnable [8201, FT_2_1];
		ctrlEnable [8202, FT_2_2];
		ctrlEnable [8203, FT_2_3];
		ctrlEnable [8300, FT_3_0];
		ctrlEnable [8301, FT_3_1];
		ctrlEnable [8302, FT_3_2];//t8 
		ctrlEnable [8303, FT_3_3];//t9 
		ctrlEnable [8400, FT_4_0];//t10 
		ctrlEnable [8401, FT_4_1];//t10 
		ctrlEnable [8402, FT_4_2];//t10 
		ctrlEnable [8403, FT_4_3];//t10 
		ctrlEnable [8900, EAGLE_8];//Eagle
		ctrlEnable [8901, FALCON_8];//Falcon
		ctrlEnable [8902, HAWK_8];//Hawk		
		ctrlEnable [8903, VULTURE_8];//Vulture
	//Specials-Box9
		if (_permVar2 in _specList) then {
			ctrlEnable [9001, false];//diver
			ctrlEnable [9002, false];//mff
		} else {
			ctrlEnable [9001, true];//diver
			ctrlEnable [9002, true];//mff
		};
	//STS-Box10
		ctrlEnable [10001, STSIN];//sts
		ctrlEnable [10002, STSOUT];//sts
	//Rearm	
		ctrlEnable [0006, true];//rearm
	}else{	
	//Öffnet wenn Uniformen ausgewählt sind
	//Uniform-Box1
		if (_uni in _listMTPUni) then {ctrlEnable [0102, false];}else {ctrlEnable [0102, true];}; 
		//ctrlEnable [1020, true];//mtp
		if (_uni in _listJTPUni) then {ctrlEnable [0103, false];}else {ctrlEnable [0103, true];};
		//ctrlEnable [1030, true];//jtp
		if (_uni in _listWTPUni) then {ctrlEnable [0104, false];}else {ctrlEnable [0104, true];};
		//ctrlEnable [1040, true];//wtp
		
	//Command-Box2
		ctrlEnable [0201, true];//ptl
		ctrlEnable [0202, true];//sql
		ctrlEnable [0203, true];//ftl
	//Control-Box3
		ctrlEnable [0301, true];//cct
		ctrlEnable [0302, true];//sotac
	//Operators-Box4
		ctrlEnable [0401, true];//atmo
		ctrlEnable [0402, true];//wpn
		ctrlEnable [0403, true];//eng
		ctrlEnable [0404, true];//rifle
	//Recon-Box5
		ctrlEnable [0501, true];//rct
		ctrlEnable [0502, true];//mark
		ctrlEnable [0503, true];//spot
	//Pilots-Box6
		ctrlEnable [0601, PFIX];//fix
		ctrlEnable [0602, PROT];//rot
	//Fireteamleader-Box7
		ctrlEnable [7100, false];
		ctrlEnable [7200, false];
		ctrlEnable [7201, false];
		ctrlEnable [7202, false];
		ctrlEnable [7203, false];
		ctrlEnable [7300, false];
		ctrlEnable [7301, false];
		ctrlEnable [7302, false];
		ctrlEnable [7303, false];
		ctrlEnable [7400, false];
		ctrlEnable [7401, false];
		ctrlEnable [7402, false];
		ctrlEnable [7403, false];
		ctrlEnable [7900, false];//rc-e
		ctrlEnable [7901, false];//rc-h
		ctrlEnable [7902, false];//rc-f
		ctrlEnable [7903, false];//rc-v
	//Fireteam-Box8
		ctrlEnable [8100, false];
		ctrlEnable [8200, false];
		ctrlEnable [8201, false];
		ctrlEnable [8202, false];
		ctrlEnable [8203, false];
		ctrlEnable [8300, false];
		ctrlEnable [8301, false];
		ctrlEnable [8302, false];
		ctrlEnable [8303, false];
		ctrlEnable [8400, false];
		ctrlEnable [8401, false];
		ctrlEnable [8402, false];
		ctrlEnable [8403, false];
		ctrlEnable [8900, false];//eagle
		ctrlEnable [8901, false];//falcon
		ctrlEnable [8902, false];//hawk
		ctrlEnable [8903, false];//vulture
	//Specials-Box9
		ctrlEnable [9001, false];//mff
		ctrlEnable [9002, false];//diver
	//STS-Box10
		ctrlEnable [10001, STSIN];//sts
		ctrlEnable [10002, STSOUT];//sts
	//Rearm	
		ctrlEnable [0006, false];
	};
} else { //Öffnet wenn noch nichts ausgewählt ist
//Uniform
	ctrlEnable [0102, true];//mtp
	ctrlEnable [0103, true];//jtp
	ctrlEnable [0104, true];//wtp
//Command
	ctrlEnable [0201, false];//ptl
	ctrlEnable [0202, false];//sql
	ctrlEnable [0203, false];//ftl
//Control
	ctrlEnable [0301, false];//cct
	ctrlEnable [0302, false];//sotac
//Operators
	ctrlEnable [0401, false];//atmo
	ctrlEnable [0402, false];//wpn
	ctrlEnable [0403, false];//eng
	ctrlEnable [0404, false];//rifle	
//Recon
	ctrlEnable [0501, false];//rct
	ctrlEnable [0502, false];//mark
	ctrlEnable [0503, false];//spot
//Pilots
	ctrlEnable [0601, PFIX];//fix
	ctrlEnable [0602, PROT];//rot
//Fireteamleader
	ctrlEnable [7100, false];
	ctrlEnable [7200, false];
	ctrlEnable [7201, false];
	ctrlEnable [7202, false];
	ctrlEnable [7203, false];
	ctrlEnable [7300, false];
	ctrlEnable [7301, false];
	ctrlEnable [7302, false];
	ctrlEnable [7303, false];
	ctrlEnable [7400, false];
	ctrlEnable [7401, false];
	ctrlEnable [7402, false];
	ctrlEnable [7403, false];
	ctrlEnable [7900, false];//rc-e
	ctrlEnable [7901, false];//rc-h
	ctrlEnable [7902, false];//rc-f
	ctrlEnable [7903, false];//rc-v
//Fireteams
			ctrlEnable [8100, false];
		ctrlEnable [8200, false];
		ctrlEnable [8201, false];
		ctrlEnable [8202, false];
		ctrlEnable [8203, false];
		ctrlEnable [8300, false];
		ctrlEnable [8301, false];
		ctrlEnable [8302, false];
		ctrlEnable [8303, false];
		ctrlEnable [8400, false];
		ctrlEnable [8401, false];
		ctrlEnable [8402, false];
		ctrlEnable [8403, false];
		ctrlEnable [8900, false];//eagle
		ctrlEnable [8901, false];//falcon
		ctrlEnable [8902, false];//hawk
		ctrlEnable [8903, false];//vulture
//Specials
	ctrlEnable [9001, false];//mff
	ctrlEnable [9002, false];//diver
//STS 
	ctrlEnable [10001, STSIN];//sts
	ctrlEnable [10002, STSOUT];//sts
//Rearm
	ctrlEnable [0006, false];//rearm
};
//=================================================================================================

// Dialog Abfrage
if (!_ok) then {hint "Dialog couldn't be opened!"};
if(true) exitWith{};

