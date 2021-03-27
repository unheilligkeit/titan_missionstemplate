/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
	Version Fallingstorm v1.01

	License:

	insert into description.ext;
		- #include "TitanAddons\LegacySystems\Scripts\veh_dialogs.hpp"

	insert into trigger:

	condition:
		- this and (vehicle player in thisList)

	activation:
		- _nul = [vehicle player,<trigger name>]execVM "TitanAddons\LegacySystems\Scripts\VehicleService.sqf";

	example for Helicopter:
		- _nul = [vehicle player,heli_0]execVM "TitanAddons\LegacySystems\Scripts\VehicleService.sqf"; //heli_0 => heli = Name for Trigger / 0 = ID for Trigger
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//TODO TEXTCOLOR colorText[] = {0.804,0.584,0.047,1};

private
[
	"_object", "_trg", "_trg_pos", "_trg_pos", "_loop", "_damage", "_damage2",
	"_fuel", "_type", "_vehicle", "_magazine", "_removed", "_config2", "_n", "_count"
];

_object = _this select 0;
_trg = _this select 1;

_trg_pos = getPos _trg;
_trg_agl = ((triggerArea _trg) select 2);
_trg_txt = triggerText _trg;


sleeptimer_s = 0.7;
sleeptimer_sm = 1.1;
sleeptimer_m = 2;
sleeptimer_l = 4;
sleeptimer_cut = 5;
_loop = 0;

fs_repair =
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;

	_damage = getDammage _object;
	_damage2 = _damage / 0.02;

	if(_damage > 0 && triggerActivated _trg) then
	{
		sleep sleeptimer_s;

		disableSerialization;
		14 cutRsc ["FSvehServ","PLAIN"];

		_display = uiNameSpace getVariable "FSvehServ";
		_setText = _display displayCtrl 1001;

		_setText ctrlSetStructuredText (parseText format ["Repair needed!!"]);
		_setText ctrlSetBackgroundColor [0.6,0,0,0.5];// [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		14 cutRsc ["default","PLAIN"];

		disableSerialization;
		3 cutRsc ["FSvehServ","PLAIN"];
		while {_damage > 0 && triggerActivated _trg} do
		{

			_damage2 = 100 - (_damage / 0.02);

			_display = uiNameSpace getVariable "FSvehServ";
			_setText = _display displayCtrl 1001;

			_setText ctrlSetStructuredText (parseText format ["%1 %2 repaired",_damage2,"%"]);
			_setText ctrlSetBackgroundColor [0.6,0,0,0.5];// [0.27,0.35,0.29,0.5];
			_setText ctrlSetTextColor [0.804,0.584,0.047,1];

			sleep sleeptimer_s;

			_object setDamage (_damage - 0.02);
			_damage = getDammage vehicle player;

			//3 cutRsc ["default","PLAIN"];
		};
		3 cutRsc ["default","PLAIN"];

		disableSerialization;
		4 cutRsc ["FSvehServ","PLAIN"];

		_display = uiNameSpace getVariable "FSvehServ";
		_setText = _display displayCtrl 1001;

		_setText ctrlSetStructuredText (parseText format ["Repair done"]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		_setText ctrlSetStructuredText (parseText format ["Starting refuel"]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];

		sleep sleeptimer_m;

		4 cutRsc ["default","PLAIN"];
	}
	else
	{
		disableSerialization;
		5 cutRsc ["FSvehServ","PLAIN"];

		_display = uiNameSpace getVariable "FSvehServ";
		_setText = _display displayCtrl 1001;

		_setText ctrlSetStructuredText (parseText format ["No repair needed"]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		_setText ctrlSetStructuredText (parseText format ["Check fuel...."]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		5 cutRsc ["default","PLAIN"];
	};
};

fs_refuel =
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;

	_fuel = fuel _object;

	if(_fuel < 1 && triggerActivated _trg) then
	{
		while {_fuel < 0.99 && triggerActivated _trg} do
		{
			disableSerialization;
			6 cutRsc ["FSvehServ","PLAIN"];

			_display = uiNameSpace getVariable "FSvehServ";
			_setText = _display displayCtrl 1001;

			_setText ctrlSetStructuredText (parseText format ["fuel...%1%2",(_fuel*100),"%"]);
			_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
			_setText ctrlSetTextColor [0.804,0.584,0.047,1];

			sleep sleeptimer_sm;

			_object setFuel (_fuel + 0.05);
			_fuel = fuel vehicle player;

			6 cutRsc ["default","PLAIN"];
		};
	};

	if(_fuel > 0.99 && triggerActivated _trg) then
	{
		disableSerialization;
		7 cutRsc ["FSvehServ","PLAIN"];

		_display = uiNameSpace getVariable "FSvehServ";
		_setText = _display displayCtrl 1001;

		_setText ctrlSetStructuredText (parseText format ["Fuel done"]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		_setText ctrlSetStructuredText (parseText format ["Starting rearming"]);
		_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
		_setText ctrlSetTextColor [0.804,0.584,0.047,1];

		sleep sleeptimer_m;

		7 cutRsc ["default","PLAIN"];
	};
};

fs_rearm =
{
	_object = _this select 3 select 0;
	_type = typeOf _object;
	_trg = _this select 3 select 1;

	_vehicle = typeOf _object;
	_magazine = getArray (configFile >> "CfgVehicles" >> _vehicle >> "magazines");

	if (count _magazine > 0) then
	{
		_removed = [];
		{
			if (!(_x in _removed)) then {
				_object removeMagazines _x;
				_removed = _removed + [_x];
			};
		}
		forEach _magazine;

		disableSerialization;
		8 cutRsc ["FSvehServ","PLAIN"];
		{
			_n = format ["%1",_x];

			_display = uiNameSpace getVariable "FSvehServ";
			_setText = _display displayCtrl 1001;

			_setText ctrlSetStructuredText (parseText format ["Rearming Magazines %1",_n]);
			_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
			_setText ctrlSetTextColor [0.804,0.584,0.047,1];

			_object addMagazine _x;
			sleep sleeptimer_s;
		}
		forEach _magazine;

		8 cutRsc ["default","PLAIN"];

		sleep sleeptimer_s;
	};

	_count = count (configFile >> "CfgVehicles" >> _type >> "Turrets");

	if (_count > 0) then
	{
		for "_i" from 0 to (_count - 1) do
		{
			scopeName "xx_reload2_xx";
			_config = (configFile >> "CfgVehicles" >> _type >> "Turrets") select _i;
			_magazine = getArray(_config >> "magazines");
			_removed = [];

			{
				if (!(_x in _removed)) then
				{
					_object removeMagazines _x;
					_removed = _removed + [_x];
				};
			}
			forEach _magazine;

			disableSerialization;
			9 cutRsc ["FSvehServ","PLAIN"];
			{
				_n = format ["%1",_x];

				_display = uiNameSpace getVariable "FSvehServ";
				_setText = _display displayCtrl 1001;

				_setText ctrlSetStructuredText (parseText format ["Rearming Magazines %1",_n]);
				_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
				_setText ctrlSetTextColor [0.804,0.584,0.047,1];

				_object addMagazine _x;
				sleep sleeptimer_s;
			}
			forEach _magazine;

			9 cutRsc ["default","PLAIN"];

			sleep sleeptimer_s;

			disableSerialization;
			11 cutRsc ["FSvehServ","PLAIN"];

			{
				_n = format ["%1",_x];

				_display = uiNameSpace getVariable "FSvehServ";
				_setText = _display displayCtrl 1001;

				_setText ctrlSetStructuredText (parseText format ["Rearming Turrets %1",_n]);
				_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
				_setText ctrlSetTextColor [0.804,0.584,0.047,1];

				_object addMagazine _x;
				sleep sleeptimer_s;
			}
			forEach _magazine;

			sleep sleeptimer_s;

			11 cutRsc ["default","PLAIN"];

			_count_other = count (_config >> "Turrets");

			if (_count_other > 0) then
			{
				for "_i" from 0 to (_count_other - 1) do
				{
					_config2 = (_config >> "Turrets") select _i;
					_magazine = getArray(_config2 >> "magazines");
					_removed = [];

					{
						if (!(_x in _removed)) then
						{
							_object removeMagazines _x;
							_removed = _removed + [_x];
						};
					}
					forEach _magazine;

					disableSerialization;
					12 cutRsc ["FSvehServ","PLAIN"];
					{
						_n = format ["%1",_x];

						_display = uiNameSpace getVariable "FSvehServ";
						_setText = _display displayCtrl 1001;
						_setText ctrlSetStructuredText (parseText format ["Rearming Turrets %1",_n]);
						_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
						_setText ctrlSetTextColor [0.804,0.584,0.047,1];

						_object addMagazine _x;
						sleep sleeptimer_s;
					}
					forEach _magazine;

					12 cutRsc ["default","PLAIN"];
titleText ["Rearming Turrets left done","PLAIN DOWN"];
				};
			};
		};
	};

	sleep sleeptimer_s;

	disableSerialization;
	13 cutRsc ["FSvehServ","PLAIN"];

	_display = uiNameSpace getVariable "FSvehServ";
	_setText = _display displayCtrl 1001;

	_setText ctrlSetStructuredText (parseText format ["Rearming done"]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	_object setVehicleAmmo 1;
	sleep sleeptimer_m;

	13 cutRsc ["default","PLAIN"];
};

delAction =
{
	_object = vehicle player;
	driver _object removeAction SS;
};

into =
{
	call delAction;

	sleep 2;

	disableSerialization;
	1 cutRsc ["FSvehServ","PLAIN"];

	_name= name player;
	_display = uiNameSpace getVariable "FSvehServ";
	_setText = _display displayCtrl 1001;

	_setText ctrlSetStructuredText (parseText format ["Welcome %1 to Service.",_name]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	player action ["engineOff", vehicle player];

	sleep sleeptimer_cut;

	_setText ctrlSetStructuredText (parseText format ["Engins will stopped..."]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	sleep sleeptimer_m;

	_setText ctrlSetStructuredText (parseText format ["Let's see what we have here..."]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	sleep sleeptimer_m;

	1 cutRsc ["default","PLAIN"];
};

outo =
{
	sleep sleeptimer_s ;

	disableSerialization;
	2 cutRsc ["FSvehServ","PLAIN"];

	_display = uiNameSpace getVariable "FSvehServ";
	_setText = _display displayCtrl 1001;

	_setText ctrlSetStructuredText (parseText format ["We are done for now. Have a good one!"]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	sleep sleeptimer_m;

	_setText ctrlSetStructuredText (parseText format ["Caution engines start"]);
	_setText ctrlSetBackgroundColor [0.27,0.35,0.29,0.5];
	_setText ctrlSetTextColor [0.804,0.584,0.047,1];

	sleep sleeptimer_s;
	player action ["engineOn", vehicle player];

	sleep sleeptimer_m;

	2 cutRsc ["default","PLAIN"];
};

fs_ss =
{
	_object = _this select 3 select 0;
	call into;

	call fs_repair;
	call fs_refuel;
	call fs_rearm;

	call outo;
};
//==========================================================================================================================================================

if (triggerActivated _trg && _object != player && player == driver _object) then
{

	//sleep sleeptimer_s;

	if(triggerActivated _trg) then
	{
		SS = driver _object addAction ["<t color='#f69619'>Service Station</t>", {call fs_ss}, [_object,_trg,_trg_pos,_trg_agl,_trg_txt]];

		_loop = 1;
	};

	while {_loop == 1} do { if (!triggerActivated _trg) exitWith {call delAction}};
};
