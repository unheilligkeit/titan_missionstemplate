/*

fs_uniform script - by Fallingstorm

Tauscht Ausrüstung um

*/


fs_uniform = [
	"uniform change",
	"Uniform tauschen",
	"",
	{ 	
		params ["_backpack", "_parapools"];
		deleteVehicle chlight;
		_backpack = backpack player;
		_parapools = missionNamespace getVariable "parapool"; 
		
		params ["_ftl", "_tac", "_ope", "_sol"];
		_ftl = ["ftl", "sql", "ptl"];
		_tac = ["tac", "cct"];
		_ope = ["atmo", "eng", "mark", "spotter", "wpn"];
		_sol = ["soldier", "rifle"];
		player setUnitLoadout (configFile >> "EmptyLoadout"); 
		
		if (player call zade_boc_fnc_chestpack != "") then {
			[player,_backpack] call zade_boc_fnc_removeChestpack;
		};
		
		player setUnitLoadout (myUniform);
		player forceWalk false; //hebt "erzwinge gehen" auf 
		missionNamespace setVariable ["permVar2"," "];
		
		
		
		[[player,""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
		if (permVar in _ftl) then {[[player,"TITAN_Patch_C"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
		if (permVar in _tac) then {[[player,"TITAN_Patch_SOTAC"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
		if (permVar in _ope) then {[[player,"TITAN_Patch_OP"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
		if (permVar in _sol) then {[[player,"TITAN_Patch_Can"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;};
		

		[player, 1, ["ACE_SelfActions", "uniform change"]]call ace_interact_menu_fnc_removeActionFromObject;
				
	},
	{true},
	{},
	[], 
	[0,0,0],
	100
] call ace_interact_menu_fnc_createAction;






