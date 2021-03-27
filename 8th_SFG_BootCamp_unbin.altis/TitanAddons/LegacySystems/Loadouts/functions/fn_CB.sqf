/*
 * *** TP_fn_CB ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 *
 * Bereitstellung Buttons für Fireteamleader und Fireteam
 *
 * Arguments:
 * 0: <STRING>
 * 1: <OBJECT>
 *
 * Return Value:
 * bool
 *
 * Example:
 * non
 *
 * Public: Yes
 */

 //----------------------------------------------------------------------------------------------------
/*
	!!!!!!!!!! DON´T TOUCH THIS !!!!!!!!!!!!!!!!
*/
//----------------------------------------------------------------------------------------------------

if (isDedicated) exitWith {};
waitUntil {!(isNull player)};

private ["_List_ag","_player","_allGRP","_grpID"];

_List_ag = [
	"B TITAN_1_0", 
	"B TITAN_2_0", "B TITAN_2_1", "B TITAN_2_2", "B TITAN_2_3",
	"B TITAN_3_0","B TITAN_3_1", "B TITAN_3_2", "B TITAN_3_3",
	"B TITAN_4_0", "B TITAN_4_1", "B TITAN_4_2", "B TITAN_4_3",
	"B EAGLE", "B FALCON", "B HAWK", "B VULTURE"
];						
_player = player;
_allGRP = format ["%1", allgroups]splitString "(""[],)";
_grpID = format ["B %1",groupID (group _player)]; 


//----------------------------------------------------------------------------------------------------
/*
		Definierung Zustand Buttons für Lead und Team 
		
		FTL7x = Fireteamleader
		
		FTB6x = Fireteam
		
		true = ist verfügbar false = nicht verfügbar

*/
//----------------------------------------------------------------------------------------------------

//Buttons Fireteamleader 
FTL_1_0 = true; publicVariable "FTL_1_0";
FTL_2_0 = true; publicVariable "FTL_2_0";	
FTL_2_1 = true; publicVariable "FTL_2_1";	
FTL_2_2 = true; publicVariable "FTL_2_2";
FTL_2_3 = true; publicVariable "FTL_2_3";	
FTL_3_0 = true; publicVariable "FTL_3_0";	
FTL_3_1 = true; publicVariable "FTL_3_1";
FTL_3_2 = true; publicVariable "FTL_3_2";
FTL_3_3 = true; publicVariable "FTL_3_3";
FTL_4_0 = true; publicVariable "FTL_4_0";
FTL_4_1 = true; publicVariable "FTL_4_1";
FTL_4_2 = true; publicVariable "FTL_4_2";
FTL_4_3 = true; publicVariable "FTL_4_3";
EAGLE_7 = true; publicVariable "EAGLE_7";
FALCON_7 = true; publicVariable "FALCON_7";
HAWK_7 = true; publicVariable "HAWK_7";
VULTURE_7 = true; publicVariable "VULTURE_7";

//Buttons Fireteam
FT_1_0 = false; publicVariable "FT_1_0";
FT_2_0 = false; publicVariable "FT_2_0";
FT_2_1 = false; publicVariable "FT_2_1";
FT_2_2 = false; publicVariable "FT_2_2";
FT_2_3 = false; publicVariable "FT_2_3";
FT_3_0 = false; publicVariable "FT_3_0";
FT_3_1 = false; publicVariable "FT_3_1";
FT_3_2 = false; publicVariable "FT_3_2";
FT_3_3 = false; publicVariable "FT_3_3";
FT_4_0 = false; publicVariable "FT_4_0";
FT_4_1 = false; publicVariable "FT_4_1";
FT_4_2 = false; publicVariable "FT_4_2";
FT_4_3 = false; publicVariable "FT_4_3";
EAGLE_8 = false; publicVariable "EAGLE_8";
FALCON_8 = false; publicVariable "FALCON_8";
HAWK_8 = false; publicVariable "HAWK_8";
VULTURE_8 = false; publicVariable "VULTURE_8";



//sleep 0.2;
//----------------------------------------------------------------------------------------------------
/*
	Abfrage auf Leader und Gruppenmitglied

	Setzen der jeweilig verfügbarkeiten
*/
//----------------------------------------------------------------------------------------------------
_debug = false;
if (_debug) then {hint format ["_grpID %1\n\n _List_ag %2\n\n _allGRP %3\n\n",_grpID,_List_ag,_allGRP]};


// TITAN 1-0
if (_grpID == (_List_ag select 0)) then {
	FTL_1_0 = false; //pl-t1 
	FT_1_0 = false; //t1
	publicVariable "FTL_1_0";
	publicVariable "FT_1_0";
} else {
	if ((_List_ag select 0) in _allGRP) then {
		FTL_1_0 = false;
		FT_1_0 = true;
		publicVariable "FTL_1_0";
		publicVariable "FT_1_0";
	} else {
		FTL_1_0 = true;
		FT_1_0 = false;
		publicVariable "FTL_1_0";
		publicVariable "FT_1_0";
	};
};
// TITAN 2-0
if (_grpID == (_List_ag select 1)) then {
	FTL_2_0 = false; 
	FT_2_0 = false; 
	publicVariable "FTL_2_0";
	publicVariable "FT_2_0";
} else {
	if ((_List_ag select 1) in _allGRP) then {
		FTL_2_0 = false;
		FT_2_0 = true;
		publicVariable "FTL_2_0";
		publicVariable "FT_2_0";
	} else {
		FTL_2_0 = true;
		FT_2_0 = false;
		publicVariable "FTL_2_0";
		publicVariable "FT_2_0";
	};
};
// TITAN 2-1
if (_grpID == (_List_ag select 2)) then {
	FTL_2_1 = false; 
	FT_2_1 = false;
	publicVariable "FTL_2_1";
	publicVariable "FT_2_1";
} else {
	if ((_List_ag select 2) in _allGRP) then {
		FTL_2_1 = false; 
		FT_2_1 = true;
		publicVariable "FTL_2_1";
		publicVariable "FT_2_1";
	} else {
		FTL_2_1 = true;
		FT_2_1 = false;
		publicVariable "FTL_2_1";
		publicVariable "FT_2_1";	
	};
};
// TITAN 2-2
if (_grpID == (_List_ag select 3)) then {
	FTL_2_2 = false;
	FT_2_2 = false;
	publicVariable "FTL_2_2";
	publicVariable "FT_2_2";
} else {
	if ((_List_ag select 3) in _allGRP) then {
		FTL_2_2 = false; 
		FT_2_2 = true;
		publicVariable "FTL_2_2";
		publicVariable "FT_2_2";
	} else {
		FTL_2_2 = true;
		FT_2_2 = false;
		publicVariable "FTL_2_2";
		publicVariable "FT_2_2";	
	};	 
};
// TITAN 2-3
if (_grpID == (_List_ag select 4)) then { 
	FTL_2_3 = false; 
	FT_2_3 = false;
	publicVariable "FTL_2_3";
	publicVariable "FT_2_3";
} else { 
	if ((_List_ag select 4) in _allGRP) then {
		FTL_2_3 = false; 
		FT_2_3 = true;
		publicVariable "FTL_2_3";
		publicVariable "FT_2_3";
	} else {
		FTL_2_3 = true;
		FT_2_3 = false;
		publicVariable "FTL_2_3";
		publicVariable "FT_2_3";	
	}; 
};   
// TITAN 3-0
if (_grpID == (_List_ag select 5)) then {
	FTL_3_0 = false; 
	FT_3_0 = false;
	publicVariable "FTL_3_0";
	publicVariable "FT_3_0";
} else {
	if ((_List_ag select 5) in _allGRP) then {
		FTL_3_0 = false; 
		FT_3_0 = true;
		publicVariable "FTL_3_0";
		publicVariable "FT_3_0";
	} else {
		FTL_3_0 = true;
		FT_3_0 = false;
		publicVariable "FTL_3_0";
		publicVariable "FT_3_0";	
	};
};
// TITAN 3-1
if (_grpID == (_List_ag select 6)) then {
	FTL_3_1 = false; 
	FT_3_1 = false;
	publicVariable "FTL_3_1";
	publicVariable "FT_3_1";
} else {
	if ((_List_ag select 6) in _allGRP) then {
		FTL_3_1 = false; 
		FT_3_1 = true;
		publicVariable "FTL_3_1";
		publicVariable "FT_3_1";
	} else {
		FTL_3_1 = true;
		FT_3_1 = false;
		publicVariable "FTL_3_1";
		publicVariable "FT_3_1";	
	};
};
// TITAN 3-2
if (_grpID == (_List_ag select 7)) then {
	FTL_3_2 = false; 
	FT_3_2 = false;
	publicVariable "FTL_3_2";
	publicVariable "FT_3_2";
} else {
	if ((_List_ag select 7) in _allGRP) then {
		FTL_3_2 = false; 
		FT_3_2 = true;
		publicVariable "FTL_3_2";
		publicVariable "FT_3_2";
	} else {
		FTL_3_2 = true;
		FT_3_2 = false;
		publicVariable "FTL_3_2";
		publicVariable "FT_3_2";	
	};
};
// TITAN 3-3
if (_grpID == (_List_ag select 8)) then {
	FTL_3_3 = false; 
	FT_3_3 = false;
	publicVariable "FTL_3_3";
	publicVariable "FT_3_3";
} else {
	if ((_List_ag select 8) in _allGRP) then {
		FTL_3_3 = false; 
		FT_3_3 = true;
		publicVariable "FTL_3_3";
		publicVariable "FT_3_3";
	} else {
		FTL_3_3 = true;
		FT_3_3 = false;
		publicVariable "FTL_3_3";
		publicVariable "FT_3_3";	
	};
};
// TITAN 4-0
if (_grpID == (_List_ag select 9)) then {
	FTL_4_0 = false; 
	FT_4_0 = false;
	publicVariable "FTL_4_0";
	publicVariable "FT_4_0";
} else {
	if ((_List_ag select 9) in _allGRP) then {
		FTL_4_0 = false; 
		FT_4_0 = true;
		publicVariable "FTL_4_0";
		publicVariable "FT_4_0";
	} else {
		FTL_4_0 = true;
		FT_4_0 = false;
		publicVariable "FTL_4_0";
		publicVariable "FT_4_0";	
	};
};
// TITAN 4-1
if (_grpID == (_List_ag select 10)) then {
	FTL_4_1 = false; 
	FT_4_1 = false;
	publicVariable "FTL_4_1";
	publicVariable "FT_4_1";
} else {
	if ((_List_ag select 10) in _allGRP) then {
		FTL_4_1 = false; 
		FT_4_1 = true;
		publicVariable "FTL_4_1";
		publicVariable "FT_4_1";
	} else {
		FTL_4_1 = true;
		FT_4_1 = false;
		publicVariable "FTL_4_1";
		publicVariable "FT_4_1";	
	};
};
// TITAN 4-2
if (_grpID == (_List_ag select 11)) then {
	FTL_4_2 = false; 
	FT_4_2 = false;
	publicVariable "FTL_4_2";
	publicVariable "FT_4_2";
} else {
	if ((_List_ag select 11) in _allGRP) then {
		FTL_4_2 = false; 
		FT_4_2 = true;
		publicVariable "FTL_4_2";
		publicVariable "FT_4_2";
	} else {
		FTL_4_2 = true;
		FT_4_2 = false;
		publicVariable "FTL_4_2";
		publicVariable "FT_4_2";	
	};
};
// TITAN 4-0
if (_grpID == (_List_ag select 12)) then {
	FTL_4_3 = false; 
	FT_4_3 = false;
	publicVariable "FTL_4_3";
	publicVariable "FT_4_3";
} else {
	if ((_List_ag select 12) in _allGRP) then {
		FTL_4_3 = false; 
		FT_4_3 = true;
		publicVariable "FTL_4_3";
		publicVariable "FT_4_3";
	} else {
		FTL_4_3 = true;
		FT_4_3 = false;
		publicVariable "FTL_4_3";
		publicVariable "FT_4_3";	
	};
};
// EAGLE
if (_grpID == (_List_ag select 13)) then {
	EAGLE_7 = false; 
	EAGLE_8 = false;
	publicVariable "EAGLE_7";
	publicVariable "EAGLE_8";
} else {
	if ((_List_ag select 13) in _allGRP) then {
		EAGLE_7 = false; 
		EAGLE_8 = true; 
		publicVariable "EAGLE_7";
		publicVariable "EAGLE_8";
	} else {
		EAGLE_7 = true;
		EAGLE_8 = false;
		publicVariable "EAGLE_7";
		publicVariable "EAGLE_8";	
	};
}; 
// FALCON
if (_grpID == (_List_ag select 14)) then {
	FALCON_7 = false; 
	FALCON_8 = false;
	publicVariable "FALCON_7";
	publicVariable "FALCON_8";
} else {
	if ((_List_ag select 14) in _allGRP) then {
		FALCON_7 = false; 
		FALCON_8 = true; 
		publicVariable "FALCON_7";
		publicVariable "FALCON_8";
	} else {
		FALCON_7 = true;
		FALCON_8 = false;
		publicVariable "FALCON_7";
		publicVariable "FALCON_8";	
	};
};
// HAWK
if (_grpID == (_List_ag select 15)) then {
	HAWK_7 = false; 
	HAWK_8 = false;
	publicVariable "HAWK_7";
	publicVariable "HAWK_8";
} else {
	if ((_List_ag select 15) in _allGRP) then {
		HAWK_7 = false; 
		HAWK_8 = true; 
		publicVariable "HAWK_7";
		publicVariable "HAWK_8";
	} else {
		HAWK_7 = true;
		HAWK_8 = false;
		publicVariable "HAWK_7";
		publicVariable "HAWK_8";	
	};
};
// VULTURE
if (_grpID == (_List_ag select 16)) then {
	VULTURE_7 = false; 
	VULTURE_8 = false;
	publicVariable "VULTURE_7";
	publicVariable "VULTURE_8";
} else {
	if ((_List_ag select 16) in _allGRP) then {
		VULTURE_7 = false; 
		VULTURE_8 = true; 
		publicVariable "VULTURE_7";
		publicVariable "VULTURE_8";
	} else {
		VULTURE_7 = true;
		VULTURE_8 = false;
		publicVariable "VULTURE_7";
		publicVariable "VULTURE_8";	
	};
};