
[player] call titan_fnc_startloadout;
["Preload"] spawn BIS_fnc_arsenal;

[player] execVM "TitanAddons\titan_missionsbau\briefing.sqf";

waitUntil {!(isNull (findDisplay 46))};
_text = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='bilder\titan.paa'/><br/><t size='.9' color='#ff8800'>%1</t>", "Willkommen Operator"];
[_text,0,0,8,2] spawn BIS_fnc_dynamicText;
