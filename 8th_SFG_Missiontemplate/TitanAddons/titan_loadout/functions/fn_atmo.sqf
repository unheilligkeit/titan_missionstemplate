
params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom titan_mtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _mtp_atmo_helm = profileNamespace getVariable "titan_mtp_atmo_helm";
        if (isNil "_mtp_atmo_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_atmo_helm;

        };

        _mtp_atmo_brille = profileNamespace getVariable "titan_mtp_atmo_brille";
        if (isNil "_mtp_atmo_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_atmo_brille;

        };

        _mtp_atmo_west = profileNamespace getVariable "titan_mtp_atmo_west";
        if (isNil "_mtp_atmo_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_atmo_west;

        };


        _unit addBackpack "Titan_BAG_ATMO_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom titan_jtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _jtp_atmo_helm = profileNamespace getVariable "titan_jtp_atmo_helm";
        if (isNil "_jtp_atmo_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_atmo_helm;

        };

        _jtp_atmo_brille = profileNamespace getVariable "titan_jtp_atmo_brille";
        if (isNil "_jtp_atmo_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_atmo_brille;

        };

        _jtp_atmo_west = profileNamespace getVariable "titan_jtp_atmo_west";
        if (isNil "_jtp_atmo_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_atmo_west;

        };

        _unit addBackpack "Titan_BAG_ATMO_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom titan_wtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _wtp_atmo_helm = profileNamespace getVariable "titan_wtp_atmo_helm";
        if (isNil" _wtp_atmo_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_atmo_helm;

        };

        _wtp_atmo_brille = profileNamespace getVariable "titan_wtp_atmo_brille";
        if (isNil "_wtp_atmo_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_atmo_brille;

        };

        _wtp_atmo_west = profileNamespace getVariable "titan_wtp_atmo_west";
        if (isNil "_wtp_atmo_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_atmo_west;

        };

        _unit addBackpack "Titan_BAG_ATMO_WTP";

    };








// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_HK416GLCQB";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_TAN";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_RDS";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_HK416GLCQB_ODP";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_GREEN_RDS";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_HK416GLCQB_B";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";

//Launcher
  _unit addWeapon "launch_MRAWS_green_F";
  _unit addSecondaryWeaponItem "acc_pointer_IR";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "SMA_CMORE";
  _unit addItem "SMA_BARSKA";
  _unit addItem "SMA_supp1tan_556";

//Backpack
  _unit addItem "USP_GPNVG18_TAN";
  _unit addItem "USP_A2_PATROL_CAP_MC";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_atmo_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "atmo"];
