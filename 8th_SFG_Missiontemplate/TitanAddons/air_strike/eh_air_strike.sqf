//--------------------------------------------------------------------------
/*
	Author: Fallingstorm

	Titel: eh_air_strike.sqf

	Action:	When chemlight / smoke <color> thrown, then set marker air_strike
			Marker exist as long as grenade / smoke is true plus 18 sec.

*/
//---------------------------------------------------------------------------
params ["_smoke", "_smoke1", "_isSmoke", "_color", "_colort", "_count", "_grenadePos", "_grenadeObj", "_grenadeDir", "_marker", "_smokes"];

_loadclass = missionNamespace getVariable "titan_loadout_class";

counter = 0;

if (_loadclass == "sotac") then {
	player addEventHandler ["Fired",
		{
			//_isSmoke = (_this select 4); hint format ["%1", _isSmoke]; //Abfrage bezeichnung des Fired objects

			_smoke = ["G_40mm_SmokeGreen","G_40mm_SmokeYellow","G_40mm_SmokeBlue","G_40mm_SmokePurple","F_40mm_Green","F_40mm_Yellow"];

			if ((_this select 4) in _smoke ) then
			{
				
				
				_grenadeObj = (_this select 6);
				_moveMarker = [_grenadeObj] spawn {

					
					// initialize
					_color = "colorRed";
					_colort = "ColorBlue";
					_count = counter;
					_grenadeObj = (_this select 0);
					waitUntil { (getPosATL _grenadeObj select 2) < 0.2 };
					_grenadePos = getPosATL _grenadeObj;
					_grenadeDir = getDir player;

					// marker air_strike
					_marker = createMarker [format ["%1_marker",_count],_grenadePos];
					_marker setMarkerDir _grenadeDir;
					_marker setMarkerShape "RECTANGLE";
					_marker setMarkerAlpha 0.4;
					_marker	setMarkerColor _color;
					_marker setMarkerSize [200, 50];

					// marker text
					_markert = createMarker [format ["KillZone_%1",_count],_grenadePos];
					_markert setMarkerType "Select";
					_markert setMarkerColor _colort;
					_markert setMarkerText format["KillZone_%1", _count];
					_markert setMarkerPos _grenadePos;

					hint format ["KillZone_%1 \n HOT!",_count];

					counter = _count + 1;

					// delete marker after smoke
					waitUntil {(!alive _grenadeObj)};
					if (!alive _grenadeObj) then {
						sleep 90;
						deleteMarker _marker;
						deleteMarker _markert;
						hint format ["KillZone_%1 \n COLD",_count]
					};
				};
			};
		}
	];
};
