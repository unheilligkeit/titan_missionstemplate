params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_rifle_uniform = profileNamespace getVariable "titan_mtp_rifle_uniform";
        if (isNil "_mtp_rifle_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_rifle_helm = profileNamespace getVariable "titan_mtp_rifle_helm";
        if (isNil "_mtp_rifle_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_rifle_helm;

        };

        _mtp_rifle_brille = profileNamespace getVariable "titan_mtp_rifle_brille";
        if (isNil "_mtp_rifle_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_rifle_brille;

        };

        _mtp_rifle_west = profileNamespace getVariable "titan_mtp_rifle_west";
        if (isNil "_mtp_rifle_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_rifle_west;

        };

        _unit addBackpack "USP_PACK_HYDRATION";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_rifle_uniform = profileNamespace getVariable "titan_jtp_rifle_uniform";
        if (isNil "_jtp_rifle_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_rifle_helm = profileNamespace getVariable "titan_jtp_rifle_helm";
        if (isNil "_jtp_rifle_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_rifle_helm;

        };

        _jtp_rifle_brille = profileNamespace getVariable "titan_jtp_rifle_brille";
        if (isNil "_jtp_rifle_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_rifle_brille;

        };

        _jtp_rifle_west = profileNamespace getVariable "titan_jtp_rifle_west";
        if (isNil "_jtp_rifle_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_rifle_west;

        };
        _unit addBackpack "USP_ZIPON_PANEL_RGR";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_rifle_uniform = profileNamespace getVariable "titan_wtp_rifle_uniform";
        if (isNil "_wtp_rifle_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_rifle_helm = profileNamespace getVariable "titan_wtp_rifle_helm";
        if (isNil" _wtp_rifle_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_rifle_helm;

        };

        _wtp_rifle_brille = profileNamespace getVariable "titan_wtp_rifle_brille";
        if (isNil "_wtp_rifle_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_rifle_brille;

        };

        _wtp_rifle_west = profileNamespace getVariable "titan_wtp_rifle_west";
        if (isNil "_wtp_rifle_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_rifle_west;

        };
        _unit addBackpack "USP_ZIPON_PANEL_MCA";

    };








// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_MK18_GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_MK18_GL";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_MK18_GL";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";

//Launcher
  _unit addSecondaryWeaponItem "acc_pointer_IR";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "SMA_BARSKA";
  _unit addItem "muzzle_snds_L";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_MapTools";


//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_rifle_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "rifle"];
