fs_drone = [
	"spawn darter",
	"DARTER Spawnen",
	"",
	{ 
		params ["_unit", "_className", "_vehicle"];
		_className = "B_UAV_01_F";
		_unit = player;
		// Create UAV and set in front of User
		_vehicle  = createVehicle [_className, getpos _unit,[], 0, ""];
		_vehicle allowDamage false;
		_vehicle setpos  (_unit modelToWorld [0,3,0]);
		_vehicle setDir ([_vehicle, _unit] call BIS_fnc_dirTo);

		// UAV Hacking
		createVehicleCrew _vehicle;

		// UAV mit Terminal connect
		bool = _unit connectTerminalToUAV _vehicle;

		_vehicle allowDamage true;
		
		if (false) exitwith {
			[player, 1, ["ACE_SelfActions", "spawn darter"]]call ace_interact_menu_fnc_removeActionFromObject;
		};
	},
	{true},
	{},
	[], 
	[0,0,0],
	100
] call ace_interact_menu_fnc_createAction;