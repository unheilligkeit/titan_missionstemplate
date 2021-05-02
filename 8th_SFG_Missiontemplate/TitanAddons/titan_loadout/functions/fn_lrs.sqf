
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _mtp_lrr_helm = profileNamespace getVariable "titan_mtp_lrr_helm";
        if (isNil "_mtp_lrr_helm") then
        {

            _helmearray = selectRandom ["cap_tac_tan"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_lrs_helm;

        };

        _mtp_lrr_brille = profileNamespace getVariable "titan_mtp_lrr_brille";
        if (isNil "_mtp_lrr_brille") then
        {

            _brillearray = selectRandom ["shesh_neck_tan"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_lrr_brille;

        };

        _unit addVest "JPC_4_OD";
        _unit addBackpack "SOG_spotter";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["JTP_V1_Sleeved"];
        _unit forceAddUniform _uniformarray ;

        _jtp_lrr_helm = profileNamespace getVariable "titan_jtp_lrr_helm";
        if (isNil "_jtp_lrr_helm") then
        {

            _helmearray = selectRandom [];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_lrr_helm;

        };

        _jtp_lrr_brille = profileNamespace getVariable "titan_jtp_lrr_brille";
        if (isNil "_jtp_lrr_brille") then
        {

            _brillearray = selectRandom [];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_lrr_brille;

        };

        _unit addVest "";
        _unit addBackpack "";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["WTP_V1_Full"];
        _unit forceAddUniform _uniformarray ;

        _wtp_lrr_helm = profileNamespace getVariable "titan_wtp_lrr_helm";
        if (isNil" _wtp_lrr_helm") then
        {

            _helmearray = selectRandom [];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_lrr_helm;

        };

        _wtp_lrr_brille = profileNamespace getVariable "titan_wtp_lrr_brille";
        if (isNil "_wtp_lrr_brille") then
        {

            _brillearray = selectRandom [];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_lrr_brille;

        };

        _unit addVest "";
        _unit addBackpack "";

    };



[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;






// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_Mk17_EGLM";
	  _unit addPrimaryWeaponItem "SMA_ANPEQ15_BLK";
	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
    _unit addWeapon "Laserdesignator";
    _unit addMagazine "Laserbatteries";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "";
		_unit addPrimaryWeaponItem "";
		_unit addPrimaryWeaponItem "";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "";
		_unit addPrimaryWeaponItem "";
		_unit addPrimaryWeaponItem "";
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
  _unit linkItem "milgp_f_tactical_khk";

  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "SMA_eotech552";
  _unit addItem "ACE_Kestrel4500";
  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_supptan_762";
  _unit addItem "ACE_MX2A";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "Ops_core_strap_f";
  _unit addItem "ACE_SpraypaintRed";
  _unit addItem "ABS_Base_Jump_peltor_grey";
  _unit addItem "ACE_SpottingScope";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";
  _unit addItem "ITC_ROVER_SIR";
  _unit addItem "ACE_RangeCard";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_lrs_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "lrs"];
