params ["_unit","_tarnmuster"];


[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_wpn_uniform = profileNamespace getVariable "titan_mtp_wpn_uniform";
        if (isNil "_mtp_wpn_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_wpn_helm = profileNamespace getVariable "titan_mtp_wpn_helm";
        if (isNil "_mtp_wpn_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_wpn_helm;

        };

        _mtp_wpn_brille = profileNamespace getVariable "titan_mtp_wpn_brille";
        if (isNil "_mtp_wpn_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_wpn_brille;

        };

        _mtp_wpn_west = profileNamespace getVariable "titan_mtp_wpn_west";
        if (isNil "_mtp_wpn_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_wpn_west;

        };

        _unit addBackpack "Titan_BAG_WPN_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_wpn_uniform = profileNamespace getVariable "titan_jtp_wpn_uniform";
        if (isNil "_jtp_wpn_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_wpn_helm = profileNamespace getVariable "titan_jtp_wpn_helm";
        if (isNil "_jtp_wpn_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_wpn_helm;

        };

        _jtp_wpn_brille = profileNamespace getVariable "titan_jtp_wpn_brille";
        if (isNil "_jtp_wpn_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_wpn_brille;

        };

        _jtp_wpn_west = profileNamespace getVariable "titan_jtp_wpn_west";
        if (isNil "_jtp_wpn_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_wpn_west;

        };
        _unit addBackpack "Titan_BAG_WPN_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_wpn_uniform = profileNamespace getVariable "titan_wtp_wpn_uniform";
        if (isNil "_wtp_wpn_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_wpn_helm = profileNamespace getVariable "titan_wtp_wpn_helm";
        if (isNil" _wtp_wpn_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_wpn_helm;

        };

        _wtp_wpn_brille = profileNamespace getVariable "titan_wtp_wpn_brille";
        if (isNil "_wtp_wpn_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_wpn_brille;

        };

        _wtp_wpn_west = profileNamespace getVariable "titan_wtp_wpn_west";
        if (isNil "_wtp_wpn_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_wpn_west;

        };
        _unit addBackpack "Titan_BAG_WPN_WTP";

    };










// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "sma_gemtech_one_blk";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_MapTools";


//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_wpn_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "wpn"];
