params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden


        _uniformarray = selectRandom ["U_B_HeliPilotCoveralls"];
        _unit forceAddUniform _uniformarray ;

        _mtp_rot_helm = profileNamespace getVariable "titan_rot_helm";
        if (isNil "_mtp_rot_helm") then
        {

            _helmearray = selectRandom ["H_PilotHelmetHeli_B"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_rot_helm;

        };

        _mtp_rot_brille = profileNamespace getVariable "titan_rot_brille";
        if (isNil "_mtp_rot_brille") then
        {

            _brillearray = selectRandom [""];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_rot_brille;

        };

        _unit addVest "V_PlateCarrier1_rgr_noflag_F";
        //_unit addBackpack "SOG_rot_MTP_1";



// waffen und equip


/*
// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "sma_minimi_mk3_762tlb_des";
	  _unit addPrimaryWeaponItem "ACE_acc_pointer_green";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "sma_minimi_mk3_762tlb_wdl";
		_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "sma_minimi_mk3_762tsb";
		_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };
*/


//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "B_UavTerminal";

  _unit addItem "TITAN_Beret_Enlisted";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_EarPlugs";
  _unit addItem "ACE_IR_Strobe_Item";
  _unit addItem "ACE_NVG_Wide";


//Backpack



[_unit] call titan_fnc_addpilotmedical;

[_unit] call titan_fnc_rot_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "rot"];
missionNamespace setVariable ["titan_special_loadout", "none"];
