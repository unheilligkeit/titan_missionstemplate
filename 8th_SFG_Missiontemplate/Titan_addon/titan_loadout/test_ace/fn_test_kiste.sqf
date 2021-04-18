params ["_testobjekt"];





//ACE Mainmenü Führung
 _testobjekt_command = ["test_Command", "Command", "", {}, {true}] call ace_interact_menu_fnc_createAction;
 [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_command] call ace_interact_menu_fnc_addActionToObject;

//ACe untermneü

 _test_platoonlead = ["test_platoonlead", "PTL", "", { [ _this select 1 ] call titan_fnc_ptl }, {true}] call ace_interact_menu_fnc_createAction;
 [_testobjekt, 0, ["ACE_MainActions", "test_Command"], _test_platoonlead] call ace_interact_menu_fnc_addActionToObject;

 _test_squadleader = ["test_squadleader", "SQL", "", { [_this select 1 ] call titan_fnc_sql }, {true}] call ace_interact_menu_fnc_createAction;
 [_testobjekt, 0, ["ACE_MainActions", "test_Command"], _test_squadleader] call ace_interact_menu_fnc_addActionToObject;

 _test_ftl = ["test_ftl", "FTL", "", { [ _this select 1 ] call titan_fnc_extraitems_ftl }, {true}] call ace_interact_menu_fnc_createAction;
 [_testobjekt, 0, ["ACE_MainActions", "test_Command"], _test_ftl] call ace_interact_menu_fnc_addActionToObject;


 //ACE Mainmenü control
  _testobjekt_control = ["test_control", "Control", "", {}, {true}] call ace_interact_menu_fnc_createAction;
  [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_control] call ace_interact_menu_fnc_addActionToObject;

 //ACe untermneü

  _test_cct = ["test_cct", "CCT", "", { [ _this select 1 ] call titan_fnc_cct }, {true}] call ace_interact_menu_fnc_createAction;
  [_testobjekt, 0, ["ACE_MainActions", "test_control"], _test_cct] call ace_interact_menu_fnc_addActionToObject;

  _test_sotac = ["test_sotac", "SOTAC", "", { [_this select 1 ] call titan_fnc_sotac }, {true}] call ace_interact_menu_fnc_createAction;
  [_testobjekt, 0, ["ACE_MainActions", "test_control"], _test_sotac] call ace_interact_menu_fnc_addActionToObject;


  //ACE Mainmenü operator
   _testobjekt_operator = ["test_operator", "Operator", "", {}, {true}] call ace_interact_menu_fnc_createAction;
   [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_operator] call ace_interact_menu_fnc_addActionToObject;

  //ACe untermneü

   _test_atmo = ["test_atmo", "ATMO", "", { [ _this select 1 ] call titan_fnc_atmo }, {true}] call ace_interact_menu_fnc_createAction;
   [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_atmo] call ace_interact_menu_fnc_addActionToObject;

   _test_wpn = ["test_wpn", "WPN", "", { [_this select 1 ] call titan_fnc_wpn }, {true}] call ace_interact_menu_fnc_createAction;
   [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_wpn] call ace_interact_menu_fnc_addActionToObject;

   _test_eng = ["test_eng", "ENG", "", { [ _this select 1 ] call titan_fnc_eng }, {true}] call ace_interact_menu_fnc_createAction;
   [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_eng] call ace_interact_menu_fnc_addActionToObject;

   _test_rifle = ["test_rifle", "RIFLE", "", { [ _this select 1 ] call titan_fnc_rifle }, {true}] call ace_interact_menu_fnc_createAction;
   [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_rifle] call ace_interact_menu_fnc_addActionToObject;


   //ACE Mainmenü recon
    _testobjekt_recon = ["test_recon", "Recon", "", {}, {true}] call ace_interact_menu_fnc_createAction;
    [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_recon] call ace_interact_menu_fnc_addActionToObject;

   //ACe untermneü

    _test_rct = ["test_rct", "RCT", "", { [ _this select 1 ] call titan_fnc_rct }, {true}] call ace_interact_menu_fnc_createAction;
    [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_rct] call ace_interact_menu_fnc_addActionToObject;

    _test_lrr = ["test_lrr", "LRR", "", { [_this select 1 ] call titan_fnc_lrr }, {true}] call ace_interact_menu_fnc_createAction;
    [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_lrr] call ace_interact_menu_fnc_addActionToObject;

    _test_lrs = ["test_lrs", "LRS", "", { [ _this select 1 ] call titan_fnc_lrs }, {true}] call ace_interact_menu_fnc_createAction;
    [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_lrs] call ace_interact_menu_fnc_addActionToObject;


    //ACE Mainmenü piloten
     _testobjekt_pilot = ["test_pilot", "Pilot", "", {}, {true}] call ace_interact_menu_fnc_createAction;
     [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_pilot] call ace_interact_menu_fnc_addActionToObject;

    //ACe untermneü

     _test_fix = ["test_fix", "FIX", "", { [ _this select 1 ] call titan_fnc_fix }, {true}] call ace_interact_menu_fnc_createAction;
     [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_fix] call ace_interact_menu_fnc_addActionToObject;

     _test_rot = ["test_rot", "ROT", "", { [_this select 1 ] call titan_fnc_rot }, {true}] call ace_interact_menu_fnc_createAction;
     [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_rot] call ace_interact_menu_fnc_addActionToObject;


     //ACE Mainmenü spzeial
      _testobjekt_special = ["test_special", "Special", "", {}, {true}] call ace_interact_menu_fnc_createAction;
      [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_special] call ace_interact_menu_fnc_addActionToObject;

     //ACe untermneü

      _test_mff = ["test_mff", "MFF", "", { [ _this select 1 ] call titan_fnc_mff }, {true}] call ace_interact_menu_fnc_createAction;
      [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_mff] call ace_interact_menu_fnc_addActionToObject;

      _test_diver = ["test_diver", "Diver", "", { [_this select 1 ] call titan_fnc_diver }, {true}] call ace_interact_menu_fnc_createAction;
      [_testobjekt, 0, ["ACE_MainActions", "test_operator"], _test_diver] call ace_interact_menu_fnc_addActionToObject;



     _testobjekt_radio = ["test_radio", "Funkeinstellen", "", {[ _this select 1 ] call titan_fnc_sw_radiosettings}, {true}] call ace_interact_menu_fnc_createAction;
     [_testobjekt, 0, ["ACE_MainActions"], _testobjekt_radio] call ace_interact_menu_fnc_addActionToObject;
