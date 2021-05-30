params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_cct_uniform = profileNamespace getVariable "titan_mtp_cct_uniform";
        if (isNil "_mtp_cct_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_cct_helm = profileNamespace getVariable "titan_mtp_cct_helm";
        if (isNil "_mtp_cct_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_cct_helm;

        };

        _mtp_cct_brille = profileNamespace getVariable "titan_mtp_cct_brille";
        if (isNil "_mtp_cct_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_cct_brille;

        };

        _mtp_cct_west = profileNamespace getVariable "titan_mtp_cct_west";
        if (isNil "_mtp_cct_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_cct_west;

        };


        _unit addBackpack "8th_ilbe_CCT_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_cct_uniform = profileNamespace getVariable "titan_jtp_cct_uniform";
        if (isNil "_jtp_cct_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_cct_helm = profileNamespace getVariable "titan_jtp_cct_helm";
        if (isNil "_jtp_cct_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_cct_helm;

        };

        _jtp_cct_brille = profileNamespace getVariable "titan_jtp_cct_brille";
        if (isNil "_jtp_cct_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_cct_brille;

        };

        _jtp_cct_west = profileNamespace getVariable "titan_jtp_cct_west";
        if (isNil "_jtp_cct_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_cct_west;

        };
        _unit addBackpack "8th_ilbe_CCT_JTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_cct_uniform = profileNamespace getVariable "titan_wtp_cct_uniform";
        if (isNil "_wtp_cct_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_cct_helm = profileNamespace getVariable "titan_wtp_cct_helm";
        if (isNil" _wtp_cct_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_cct_helm;

        };

        _wtp_cct_brille = profileNamespace getVariable "titan_wtp_cct_brille";
        if (isNil "_wtp_cct_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_cct_brille;

        };

        _wtp_cct_west = profileNamespace getVariable "titan_wtp_cct_west";
        if (isNil "_wtp_cct_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_cct_west;

        };
        _unit addBackpack "8th_ilbe_CCT_WTP_v2";

    };










// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_HK416GL";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_HK416GL";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_HK416GL";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER";
  };



//sec Weapon
  _unit addWeapon "hgun_P07_F";
  _unit addWeapon "Laserdesignator";


//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "B_UavTerminal";

  _unit addItem "SMA_supp2smaB_556";
  _unit addItem "optic_Holosight_blk_F";
  _unit addItem "ACE_Kestrel4500";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_Vector";
  _unit addItem "ACE_MX2A";
  _unit addItem "ACE_SpraypaintRed";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";
  _unit addItem "USP_A2_PATROL_CAP_MC";


[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_cct_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "cct"];
