params ["_prefix","_key","_value"];

_keyspace = ["sts", _key] joinString ":";
_valueArray = _value;

if (!isNil "_prefix") then {
	_keyspace = ["sts", _prefix, _key] joinString ":";
};

if (typeName _value != "ARRAY") then {
	_valueArray = [_value];
};

// diag_log("[STS] Set '" + _keyspace + "' = " + str _valueArray);

"epochserver" callExtension ([111,_keyspace,"",_valueArray] joinString "|");
