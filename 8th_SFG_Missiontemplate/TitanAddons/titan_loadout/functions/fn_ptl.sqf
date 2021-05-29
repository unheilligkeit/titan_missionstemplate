
params ["_unit","_tarnmuster"];




[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_ptl_uniform = profileNamespace getVariable "titan_mtp_ptl_uniform";
        if (isNil "_mtp_ptl_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_ptl_helm = profileNamespace getVariable "titan_mtp_ptl_helm";
        if (isNil "_mtp_ptl_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_ptl_helm;

        };

        _mtp_ptl_brille = profileNamespace getVariable "titan_mtp_ptl_brille";
        if (isNil "_mtp_ptl_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_ptl_brille;

        };

        _mtp_ptl_west = profileNamespace getVariable "titan_mtp_ptl_west";
        if (isNil "_mtp_ptl_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_ptl_west;

        };

        _unit addBackpack "Titan_BAG_PTL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_ptl_uniform = profileNamespace getVariable "titan_jtp_ptl_uniform";
        if (isNil "_jtp_ptl_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_ptl_helm = profileNamespace getVariable "titan_jtp_ptl_helm";
        if (isNil "_jtp_ptl_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_ptl_helm;

        };

        _jtp_ptl_brille = profileNamespace getVariable "titan_jtp_ptl_brille";
        if (isNil "_jtp_ptl_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_ptl_brille;

        };

        _jtp_ptl_west = profileNamespace getVariable "titan_jtp_ptl_west";
        if (isNil "_jtp_ptl_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_ptl_west;

        };
        _unit addBackpack "Titan_BAG_PTL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_ptl_uniform = profileNamespace getVariable "titan_wtp_ptl_uniform";
        if (isNil "_wtp_ptl_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_ptl_helm = profileNamespace getVariable "titan_wtp_ptl_helm";
        if (isNil" _wtp_ptl_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_ptl_helm;

        };

        _wtp_ptl_brille = profileNamespace getVariable "titan_wtp_ptl_brille";
        if (isNil "_wtp_ptl_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_ptl_brille;

        };

        _wtp_ptl_west = profileNamespace getVariable "titan_wtp_ptl_west";
        if (isNil "_wtp_ptl_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_ptl_west;

        };
        _unit addBackpack "Titan_BAG_PTL_WTP";

    };








// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_MK18afgTAN";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_MK18afgOD";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_MK18afgBLK";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };



//sec Weapon
  _unit addWeapon "hgun_P07_F";

//Launcher
  _unit addSecondaryWeaponItem "acc_pointer_IR";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";

  _unit addItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_supp1tan_556";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_Vector";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_ptl_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "ptl"];
