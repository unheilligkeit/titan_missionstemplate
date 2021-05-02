

params ["_boxarsenal"];


[_boxarsenal,
  [
      "TITAN_Beret_1LT",
      "TITAN_Beret_2LT",
      "TITAN_Beret_CPT",
      "TITAN_Beret_Enlisted",
      "Heli_Helmet_Recovery",
      "Heli_Helmet_HiJack",
      "Heli_Helmet_Wolverine",
      "Heli_Helmet_Jannik",
      "Heli_Helmet_Crow",
      "Heli_Helmet_AirborneBeast",
      "Heli_Helmet_Jalisco",
      "Heli_Helmet_Base",
      "Titan_ScorpionHMCS",
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
