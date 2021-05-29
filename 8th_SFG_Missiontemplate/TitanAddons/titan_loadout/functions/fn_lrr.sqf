params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_lrr_uniform = profileNamespace getVariable "titan_mtp_lrr_uniform";
        if (isNil "_mtp_lrr_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_lrr_helm = profileNamespace getVariable "titan_mtp_lrr_helm";
        if (isNil "_mtp_lrr_helm") then
        {

            _helmearray = selectRandom ["USP_BOONIE_HAT_MC"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_lrr_helm;

        };

        _mtp_lrr_brille = profileNamespace getVariable "titan_mtp_lrr_brille";
        if (isNil "_mtp_lrr_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_lrr_brille;

        };

        _mtp_lrr_west = profileNamespace getVariable "titan_mtp_lrr_west";
        if (isNil "_mtp_lrr_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_lrr_west;

        };
        _unit addBackpack "USP_PACK_HYDRATION";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_lrr_uniform = profileNamespace getVariable "titan_jtp_lrr_uniform";
        if (isNil "_jtp_lrr_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_lrr_helm = profileNamespace getVariable "titan_jtp_lrr_helm";
        if (isNil "_jtp_lrr_helm") then
        {

            _helmearray = selectRandom ["H_Booniehat_tna_F"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_lrr_helm;

        };

        _jtp_lrr_brille = profileNamespace getVariable "titan_jtp_lrr_brille";
        if (isNil "_jtp_lrr_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_lrr_brille;

        };

        _jtp_lrr_west = profileNamespace getVariable "titan_jtp_lrr_west";
        if (isNil "_jtp_lrr_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_lrr_west;

        };
        _unit addBackpack "USP_ZIPON_PANEL_RGR";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_lrr_uniform = profileNamespace getVariable "titan_wtp_lrr_uniform";
        if (isNil "_wtp_lrr_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_lrr_helm = profileNamespace getVariable "titan_wtp_lrr_helm";
        if (isNil" _wtp_lrr_helm") then
        {

            _helmearray = selectRandom ["USP_THM_BEANIE"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_lrr_helm;

        };

        _wtp_lrr_brille = profileNamespace getVariable "titan_wtp_lrr_brille";
        if (isNil "_wtp_lrr_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_lrr_brille;

        };

        _wtp_lrr_west = profileNamespace getVariable "titan_wtp_lrr_west";
        if (isNil "_wtp_lrr_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_lrr_west;

        };
        _unit addBackpack "USP_ZIPON_PANEL_MCA";

    };










// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
      _unit addWeapon "arifle_SPAR_03_snd_F";
  	  _unit addPrimaryWeaponItem "bipod_01_F_snd";
  	  _unit addPrimaryWeaponItem "SMA_ANPEQ15_TAN";
      _unit addPrimaryWeaponItem "optic_DMS";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
      _unit addWeapon "arifle_SPAR_03_snd_F";
  	  _unit addPrimaryWeaponItem "bipod_01_F_snd";
  	  _unit addPrimaryWeaponItem "SMA_ANPEQ15_TAN";
      _unit addPrimaryWeaponItem "optic_DMS";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
      _unit addWeapon "arifle_SPAR_03_snd_F";
  	  _unit addPrimaryWeaponItem "bipod_01_F_snd";
  	  _unit addPrimaryWeaponItem "SMA_ANPEQ15_TAN";
      _unit addPrimaryWeaponItem "optic_DMS";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";

//sec Weapon Items
  _unit addHandgunItem  "optic_MRD";
  _unit addHandgunItem  "acc_flashlight_pistol";
  _unit addHandgunItem  "muzzle_snds_acp";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "B_UavTerminal";

  _unit addItem "acc_pointer_IR";
  _unit addItem "muzzle_snds_B_arid_F";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "acc_pointer_IR";
  _unit addItem "ACE_Vector";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "ACE_wirecutter";
  _unit addItem "itc_land_tablet_rover";
  _unit addItem "ACE_Clacker";
  _unit addItem "ACE_M26_Clacker";
  _unit addItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_lrr_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "lrr"];
