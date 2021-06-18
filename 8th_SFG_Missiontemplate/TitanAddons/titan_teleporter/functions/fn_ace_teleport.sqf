params ["_controller"];




_titan_tp_main = ["titan_tp_main", "Teleport zu", "", {}, {true}] call ace_interact_menu_fnc_createAction;
[_controller, 0, ["ACE_MainActions"], _titan_tp_main] call ace_interact_menu_fnc_addActionToObject;




    _titan_tp_titan_1_0 = ["titan_tp_titan_1_0", "Titan 1_0", "", { [player, "TITAN_1_0"] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
    [_controller, 0, ["ACE_MainActions", "titan_tp_main"], _titan_tp_titan_1_0] call ace_interact_menu_fnc_addActionToObject;




    _titan_tp_titan_2 = ["titan_tp_titan_2", "Titan 2", "", { [player, "TITAN_2_0"] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
    [_controller, 0, ["ACE_MainActions", "titan_tp_main"], _titan_tp_titan_2] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_2_0 = ["titan_tp_titan_2_0", "Titan 2_0", "", { [player, "TITAN_2_0" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_2"], _titan_tp_titan_2_0] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_2_1 = ["titan_tp_titan_2_1", "Titan 2_1", "", { [player, "TITAN_2_1" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_2"], _titan_tp_titan_2_1] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_2_2 = ["titan_tp_titan_2_2", "Titan 2_2", "", { [player, "TITAN_2_2" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_2"], _titan_tp_titan_2_2] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_2_3 = ["titan_tp_titan_2_3", "Titan 2_3", "", { [player, "TITAN_2_3" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_2"], _titan_tp_titan_2_3] call ace_interact_menu_fnc_addActionToObject;


    _titan_tp_titan_3 = ["titan_tp_titan_3", "Titan 3", "", { [player, "TITAn_3_0"] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
    [_controller, 0, ["ACE_MainActions", "titan_tp_main"], _titan_tp_titan_3] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_3_0 = ["titan_tp_titan_3_0", "Titan 3_0", "", { [player, "TITAn_3_0" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_3"], _titan_tp_titan_3_0] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_3_1 = ["titan_tp_titan_3_1", "Titan 3_1", "", { [player, "TITAn_3_1" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_3"], _titan_tp_titan_3_1] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_3_2 = ["titan_tp_titan_3_2", "Titan 3_2", "", { [player, "TITAn_3_2" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_3"], _titan_tp_titan_3_2] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_3_3 = ["titan_tp_titan_3_3", "Titan 3_3", "", { [player, "TITAn_3_3" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_3"], _titan_tp_titan_3_3] call ace_interact_menu_fnc_addActionToObject;


    _titan_tp_titan_4 = ["titan_tp_titan_4", "Titan 4", "", { [player, "TITAn_4_0"] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
    [_controller, 0, ["ACE_MainActions", "titan_tp_main"], _titan_tp_titan_4] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_4_0 = ["titan_tp_titan_4_0", "Titan 4_0", "", { [player, "TITAn_4_0" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_4"], _titan_tp_titan_4_0] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_4_1 = ["titan_tp_titan_4_1", "Titan 4_1", "", { [player, "TITAn_4_1" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_4"], _titan_tp_titan_4_1] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_4_2 = ["titan_tp_titan_4_2", "Titan 4_2", "", { [player, "TITAn_4_2" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_4"], _titan_tp_titan_4_2] call ace_interact_menu_fnc_addActionToObject;

        _titan_tp_titan_4_3 = ["titan_tp_titan_4_3", "Titan 4_3", "", { [player, "TITAn_4_3" ] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
        [_controller, 0, ["ACE_MainActions", "titan_tp_main","titan_tp_titan_4"], _titan_tp_titan_4_3] call ace_interact_menu_fnc_addActionToObject;

    _titan_tp_squadron = ["titan_tp_SQUADRON", "Titan SQUADRON", "", { [player, "SQUADRON"] call titanTP_fnc_teleport_to_group }, {true}] call ace_interact_menu_fnc_createAction;
    [_controller, 0, ["ACE_MainActions", "titan_tp_main"], _titan_tp_squadron] call ace_interact_menu_fnc_addActionToObject;
