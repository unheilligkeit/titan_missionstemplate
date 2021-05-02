private ["_response","_status","_message"];
params ["_prefix","_key"];

_status = -1;
_message = "";
_return = [];

_keyspace = ["sts", _key] joinString ":";

if (!isNil "_prefix") then {
	_keyspace = ["sts", _prefix, _key] joinString ":";
};

while {_status < 0 || _status == 2} do {
	_response = "epochserver" callExtension format ["200|%1", _keyspace];
	_status = 0;
	if (_response != "") then {
		_response = call compile _response;
        _response params [
            ["_status", 0],
            ["_data", ""]
        ];
		_status = _status;
		if (_status >= 1) then {
			_message = _message + _data;
		};
	};
};

_message = if (_message isEqualTo "") then {[]} else {parseSimpleArray _message};

if (_status == 0 && _message isEqualType []) then {
	// diag_log("[STS] Get '" + _keyspace + "' = " + str _message);
	_return = _message;
};

_return
