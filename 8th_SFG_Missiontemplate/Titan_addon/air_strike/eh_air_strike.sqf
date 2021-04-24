//--------------------------------------------------------------------------
/*
	Author: Fallingstorm

	Titel: AirTarget.sqf

	Action:	Wenn Chemlight / Smoke <farbe> geworfen, dann erstelle Marker AirTarget
			Marker existiert solange Grenade true plus 18 sec. (Theoretisch solange der Rauch existiert)

	TP_count ist in Loadout\functions\fn_serverInit.sqf deklariert

	Change - 23.04.2020 Fallingstorm
			- von _smoke1, smoke2 etc zu _array _smoke gewechselt, alten code gelöscht.
*/
//---------------------------------------------------------------------------
_permVar = missionNamespace getVariable "titan_loadout_class";

if (_permvar == "sotac") then {
	player addEventHandler ["Fired",
		{
			//_isSmoke = (_this select 4); hint format ["%1", _isSmoke]; //Abfrage bezeichnung des Fired objects

			private _smoke = ["G_40mm_SmokeGreen","G_40mm_SmokeYellow","G_40mm_SmokeBlue","G_40mm_SmokePurple","F_40mm_Green","F_40mm_Yellow"];

			if ((_this select 4) in _smoke ) then
			{
				_grenadeObj = (_this select 6);
				_moveMarker = [_grenadeObj] spawn {

					private ["_color","_colort","_count","_grenadePos","_grenadeObj"];
					// initialize
					_color = "colorRed";
					_colort = "ColorBlue";
					_count = TP_count;
					_grenadeObj = (_this select 0);
					waitUntil { (getPosATL _grenadeObj select 2) < 0.2 };
					_grenadePos = getPosATL _grenadeObj;
					_grenadeDir = getDir player;

					// marker AirStrike
					_marker = createMarker [format ["%1_marker",_count],_grenadePos];
					_marker setMarkerDir _grenadeDir;
					_marker setMarkerShape "RECTANGLE";
					_marker setMarkerAlpha 0.4;
					_marker	setMarkerColor _color;//"ColorRed";
					_marker setMarkerSize [200, 50];

					// marker Text
					_markert = createMarker [format ["KillZone_%1",_count],_grenadePos];
					_markert setMarkerType "Select";
					_markert setMarkerColor _colort;//"ColorBlue";
					_markert setMarkerText format["KillZone_%1", _count];
					_markert setMarkerPos _grenadePos;

					publicVariable "TP_count";

					hint format ["KillZone_%1 \n HOT!",_count];

					TP_count = _count + 1; //TP_count = anzahl vorhandener  Smoke


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
