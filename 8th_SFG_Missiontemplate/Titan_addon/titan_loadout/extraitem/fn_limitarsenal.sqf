

params ["_boxarsenal"];


[_boxarsenal,
[
"TITAN_Beret_1LT",
"TITAN_Beret_2LT",
"TITAN_Beret_CPT",
"TITAN_Beret_Enlisted",
"G_Aviator",
"Balaclava_blk"
 ]
 ] call ace_arsenal_fnc_initBox;


//ACE Mainmenü
 _extraitems_main = ["extraitems_main", "Speichern", "", {}, {true}] call ace_interact_menu_fnc_createAction;
 [_boxarsenal, 0, ["ACE_MainActions"], _extraitems_main] call ace_interact_menu_fnc_addActionToObject;

//ACe untermneü

 _extraitems_bdu = ["extraitems_bdu", "In BDU Speichern", "", { [ _this select 1 ] call titan_fnc_extraitems_bdu }, {true}] call ace_interact_menu_fnc_createAction;
 [_boxarsenal, 0, ["ACE_MainActions", "extraitems_main"], _extraitems_bdu] call ace_interact_menu_fnc_addActionToObject;

 _extraitems_mtp = ["extraitems_bdu", "In MTP Speichern", "", { [_this select 1 ] call titan_fnc_extraitems_mtp }, {true}] call ace_interact_menu_fnc_createAction;
 [_boxarsenal, 0, ["ACE_MainActions", "extraitems_main"], _extraitems_mtp] call ace_interact_menu_fnc_addActionToObject;

 _extraitems_jtp = ["extraitems_bdu", "In JTP Speichern", "", { [ _this select 1 ] call titan_fnc_extraitems_jtp }, {true}] call ace_interact_menu_fnc_createAction;
 [_boxarsenal, 0, ["ACE_MainActions", "extraitems_main"], _extraitems_jtp] call ace_interact_menu_fnc_addActionToObject;

 _extraitems_wtp = ["extraitems_bdu", "In WTP Speichern", "", { [ _this select 1 ] call titan_fnc_extraitems_wtp }, {true}] call ace_interact_menu_fnc_createAction;
 [_boxarsenal, 0, ["ACE_MainActions", "extraitems_main"], _extraitems_wtp] call ace_interact_menu_fnc_addActionToObject;