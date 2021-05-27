params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 2, true];
_unit setVariable ["ACE_IsEngineer",1,true];
_unit setVariable ["ACE_isEOD",1,true];

// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom titan_mtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _mtp_eng_helm = profileNamespace getVariable "titan_mtp_eng_helm";
        if (isNil "_mtp_eng_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_eng_helm;

        };

        _mtp_eng_brille = profileNamespace getVariable "titan_mtp_eng_brille";
        if (isNil "_mtp_eng_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_eng_brille;

        };


        _westarray = selectRandom titan_mtp_westen;
        _unit addVest _westarray;

        _unit addBackpack "Titan_BAG_ENG_MTP_2";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom titan_jtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _jtp_eng_helm = profileNamespace getVariable "titan_jtp_eng_helm";
        if (isNil "_jtp_eng_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_eng_helm;

        };

        _jtp_eng_brille = profileNamespace getVariable "titan_jtp_eng_brille";
        if (isNil "_jtp_eng_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_eng_brille;

        };

        _westarray = selectRandom titan_jtp_westen;
        _unit addVest _westarray;

        _unit addBackpack "Titan_BAG_ENG_MTP_2";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom titan_wtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _wtp_eng_helm = profileNamespace getVariable "titan_wtp_eng_helm";
        if (isNil" _wtp_eng_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_eng_helm;

        };

        _wtp_eng_brille = profileNamespace getVariable "titan_wtp_eng_brille";
        if (isNil "_wtp_eng_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_eng_brille;

        };



        _westarray = selectRandom titan_wtp_westen;
        _unit addVest _westarray;


        _unit addBackpack "Titan_BAG_ENG_WTP_2";

    };




// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_M4_GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
    _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_M4_GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
    _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_M4_GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
    _unit addPrimaryWeaponItem "SMA_BARSKA";
  };



//sec Weapon
  _unit addWeapon "hgun_P07_F";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_Silencer_556";
  _unit addItem "muzzle_snds_L";
  _unit addItem "ACE_MapTools";
  _unit addItem "SMA_CMORE";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";
  _unit addItem "ACE_wirecutter";
  _unit addItem "ACE_M26_Clacker";
  _unit addItem "ACE_DefusalKit";

[_unit] call titan_fnc_addengmedical;

[_unit] call titan_fnc_eng_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "eng"];
