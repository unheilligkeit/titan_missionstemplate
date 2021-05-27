


params ["_unit"];


_extraloadout = getUnitLoadout _unit;
_extrahelm = _extraloadout select 6;
_extrabrille = _extraloadout select 7;
_westenarray = _extraloadout select 4;
_extrawest = _westenarray select 0;


_loadclass = missionNamespace getVariable "titan_loadout_class";
_tarnmusterstring = "jtp";

_helmstring = format ["titan_%1_%2_helm", _tarnmusterstring, _loadclass];
_brillestring = format ["titan_%1_%2_brille", _tarnmusterstring, _loadclass];
_weststring = format ["titan_%1_%2_west", _tarnmusterstring, _loadclass];

profileNamespace setVariable [ _helmstring , _extrahelm ];
profileNamespace setVariable [ _brillestring ,_extrabrille];
profileNamespace setVariable [ _weststring ,_extrawest];
saveProfileNamespace;

_chatstring = format ["Loadout %1 ins Tarnmuster %2 gespeichert", _loadclass, _tarnmusterstring];

systemChat _chatstring;
