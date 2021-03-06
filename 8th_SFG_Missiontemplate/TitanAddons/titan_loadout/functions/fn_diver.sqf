params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 0, true];


// uniform laden

    _uniformarray = selectRandom ["U_B_Wetsuit"];
    _unit forceAddUniform _uniformarray ;

    _brillearray = selectRandom ["G_B_Diving"];
    _unit addGoggles _brillearray;

    _unit addVest "V_RebreatherB";
    _unit addBackpack "B_AssaultPack_blk";

// waffen und equip

    _unit addWeapon "SMA_M4afg_BLK1";
	  _unit addPrimaryWeaponItem "SMA_supp2smaB_556";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";


//sec Weapon
  _unit addWeapon "hgun_P07_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";
  _unit linkItem "ACE_NVG_Wide";

  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_Clacker";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_diver_muni ;

[_unit, 1, ["ACE_SelfActions"], diver_changeuniform] call ace_interact_menu_fnc_addActiontoObject;

_unit action ["SwitchWeapon", _unit, _unit, 100];

missionNamespace setVariable ["titan_special_loadout", "diver"];
