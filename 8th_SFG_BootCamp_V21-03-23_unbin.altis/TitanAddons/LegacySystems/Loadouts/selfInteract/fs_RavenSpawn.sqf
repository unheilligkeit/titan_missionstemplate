//Spawn Raven

fs_raven = [
	"spawn raven_backpack",
	"RAVEN-BACKPACK Spawnen",
	"",
	{ 	
		params ["_unit", "_className", "_vehicle"];
		_className = "B_MAV_B_BACKPACK";
		_unit = player;
				
		// Create UAV and set in front of User
		_vehicle = _className createVehicle [0,0,0];
		_vehicle = createVehicle [_className, (_unit getPos [3, getdir _unit]),[],0,"none"];
		_vehicle allowDamage false;
		
		//_vehicle = createVehicle [_className, getpos _unit,[], 0, "CAN_COLLIDE"];
		//_vehicle allowDamage false;
		
		
		if (false) exitwith {
			[player, 1, ["ACE_SelfActions", "spawn raven_backpack"]]call ace_interact_menu_fnc_removeActionFromObject;
		};
	},
	{true},
	{},
	[], 
	[0,0,0],
	100
] call ace_interact_menu_fnc_createAction;

