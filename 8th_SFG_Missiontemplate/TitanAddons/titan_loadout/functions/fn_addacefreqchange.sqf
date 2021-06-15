params ["_unit"];


		_titan_tfar_set = ["titan_tfar_set", "Funk einstellen", "", {player remoteExec ['titan_fnc_sw_radiosettings', player]; systemChat 'Funk eingestellt'}, {true}] call ace_interact_menu_fnc_createAction;
		[_unit, 1, ["ACE_SelfActions"], _titan_tfar_set] call ace_interact_menu_fnc_addActionToObject;
