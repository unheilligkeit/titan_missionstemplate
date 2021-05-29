
params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_sql_uniform = profileNamespace getVariable "titan_mtp_sql_uniform";
        if (isNil "_mtp_sql_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_sql_helm = profileNamespace getVariable "titan_mtp_sql_helm";
        if (isNil "_mtp_sql_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_sql_helm;

        };

        _mtp_sql_brille = profileNamespace getVariable "titan_mtp_sql_brille";
        if (isNil "_mtp_sql_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_sql_brille;

        };

        _mtp_sql_west = profileNamespace getVariable "titan_mtp_sql_west";
        if (isNil "_mtp_sql_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_sql_west;

        };

        _unit addBackpack "Titan_BAG_SQL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_sql_uniform = profileNamespace getVariable "titan_jtp_sql_uniform";
        if (isNil "_jtp_sql_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_sql_helm = profileNamespace getVariable "titan_jtp_sql_helm";
        if (isNil "_jtp_sql_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_sql_helm;

        };

        _jtp_sql_brille = profileNamespace getVariable "titan_jtp_sql_brille";
        if (isNil "_jtp_sql_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_sql_brille;

        };

        _jtp_sql_west = profileNamespace getVariable "titan_jtp_sql_west";
        if (isNil "_jtp_sql_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_sql_west;

        };
        _unit addBackpack "Titan_BAG_SQL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_sql_uniform = profileNamespace getVariable "titan_wtp_sql_uniform";
        if (isNil "_wtp_sql_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_sql_helm = profileNamespace getVariable "titan_wtp_sql_helm";
        if (isNil" _wtp_sql_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_sql_helm;

        };

        _wtp_sql_brille = profileNamespace getVariable "titan_wtp_sql_brille";
        if (isNil "_wtp_sql_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_sql_brille;

        };

        _wtp_sql_west = profileNamespace getVariable "titan_wtp_sql_west";
        if (isNil "_wtp_sql_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_sql_west;

        };
        _unit addBackpack "Titan_BAG_SQL_WTP";

    };








// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_MK18_GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";
    _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_ARDRDS"
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_MK18afgOD";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
    _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_GREEN_ARDRDS"
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_MK18afgBLK";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
    _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_ARDRDS"
  };



//sec Weapon
  _unit addWeapon "hgun_P07_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_supp1tan_556";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_MapTools";


//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";

[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_sql_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "sql"];
