


params ["_unit"];


_extraloadout = getUnitLoadout _unit;
_extrahelm = _extraloadout select 6;
_extrabrille = _extraloadout select 7;
_loadclass = missionNamespace getVariable "titan_loadout_class";



_helmstring = format ["titan_%1_helm", _loadclass];
_brillestring = format ["titan_%1_brille", _loadclass];


profileNamespace setVariable [ _helmstring , _extrahelm ];
profileNamespace setVariable [ _brillestring ,_extrabrille];
saveProfileNamespace;

_chatstring = format ["Loadout %1 gespeichert", _loadclass];

systemChat _chatstring;
