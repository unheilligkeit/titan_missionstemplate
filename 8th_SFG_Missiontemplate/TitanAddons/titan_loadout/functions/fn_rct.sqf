params ["_unit","_tarnmuster"];



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _mtp_rct_uniform = profileNamespace getVariable "titan_mtp_rct_uniform";
        if (isNil "_mtp_rct_uniform") then
        {

            _uniformarray = selectRandom titan_mtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _mtp_rct_helm = profileNamespace getVariable "titan_mtp_rct_helm";
        if (isNil "_mtp_rct_helm") then
        {

            _helmearray = selectRandom ["USP_BOONIE_HAT_MC"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_rct_helm;

        };

        _mtp_rct_brille = profileNamespace getVariable "titan_mtp_rct_brille";
        if (isNil "_mtp_rct_brille") then
        {

            _brillearray = selectRandom titan_mtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_rct_brille;

        };

        _mtp_rct_west = profileNamespace getVariable "titan_mtp_rct_west";
        if (isNil "_mtp_rct_west") then
        {

            _westarray = selectRandom titan_mtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _mtp_rct_west;

        };

        _unit addBackpack "Titan_BAG_FTL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _jtp_rct_uniform = profileNamespace getVariable "titan_jtp_rct_uniform";
        if (isNil "_jtp_rct_uniform") then
        {

            _uniformarray = selectRandom titan_jtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _jtp_rct_helm = profileNamespace getVariable "titan_jtp_rct_helm";
        if (isNil "_jtp_rct_helm") then
        {

            _helmearray = selectRandom ["H_Booniehat_tna_F"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_rct_helm;

        };

        _jtp_rct_brille = profileNamespace getVariable "titan_jtp_rct_brille";
        if (isNil "_jtp_rct_brille") then
        {

            _brillearray = selectRandom titan_jtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_rct_brille;

        };

        _jtp_rct_west = profileNamespace getVariable "titan_jtp_rct_west";
        if (isNil "_jtp_rct_west") then
        {

            _westarray = selectRandom titan_jtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addVest _jtp_rct_west;

        };
        _unit addBackpack "Titan_BAG_FTL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _wtp_rct_uniform = profileNamespace getVariable "titan_wtp_rct_uniform";
        if (isNil "_wtp_rct_uniform") then
        {

            _uniformarray = selectRandom titan_wtp_uniform;
            _unit forceAddUniform _uniformarray ;

        } else {

            _unit forceAddUniform _uniformarray ;

        };

        _wtp_rct_helm = profileNamespace getVariable "titan_wtp_rct_helm";
        if (isNil" _wtp_rct_helm") then
        {

            _helmearray = selectRandom ["USP_THM_BEANIE"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_rct_helm;

        };

        _wtp_rct_brille = profileNamespace getVariable "titan_wtp_rct_brille";
        if (isNil "_wtp_rct_brille") then
        {

            _brillearray = selectRandom titan_wtp_brille;
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_rct_brille;

        };

        _wtp_rct_west = profileNamespace getVariable "titan_wtp_rct_west";
        if (isNil "_wtp_rct_west") then
        {

            _westarray = selectRandom titan_wtp_westen;
            _unit addVest _westarray;

        } else {

            _unit addGoggles _wtp_rct_west;

        };
        _unit addBackpack "Titan_BAG_FTL_WTP";

    };










// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
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

  _unit addItem "SMA_supp_762";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_eotech552";
  _unit addItem "ACE_Vector";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "itc_land_tablet_rover";
  _unit addItem "ACE_Clacker";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_rct_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "rct"];
