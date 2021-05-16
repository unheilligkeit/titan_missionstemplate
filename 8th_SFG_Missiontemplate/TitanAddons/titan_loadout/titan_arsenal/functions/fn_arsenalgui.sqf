
params ["_control"];
_button = format ["%1", _control];

if (_button == "pilot") then {
  createDialog "titan_arsenal_pilot_gui";
} else {
  createDialog "titan_arsenal_gui";
};

//createDialog "titan_arsenal_gui";
call titan_fnc_buttonarsenal;
