
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["U_B_HeliPilotCoveralls"];
        _unit forceAddUniform _uniformarray ;

        _mtp_rot_helm = profileNamespace getVariable "titan_mtp_rot_helm";
        if (isNil "_mtp_rot_helm") then
        {

            _helmearray = selectRandom ["Heli_Helmet_Base"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_rot_helm;

        };

        _mtp_rot_brille = profileNamespace getVariable "titan_mtp_rot_brille";
        if (isNil "_mtp_rot_brille") then
        {

            _brillearray = selectRandom [];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_rot_brille;

        };

        _unit addVest "V_PlateCarrier1_rgr_noflag_F";
        //_unit addBackpack "SOG_rot_MTP_1";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["U_B_HeliPilotCoveralls"];
        _unit forceAddUniform _uniformarray ;

        _jtp_rot_helm = profileNamespace getVariable "titan_jtp_rot_helm";
        if (isNil "_jtp_rot_helm") then
        {

            _helmearray = selectRandom ["Heli_Helmet_Base"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_rot_helm;

        };

        _jtp_rot_brille = profileNamespace getVariable "titan_jtp_rot_brille";
        if (isNil "_jtp_rot_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_goggles_shemagh_RGR","milgp_f_face_shield_shemagh_RGR","Balaclava_jtp2","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_rot_brille;

        };

        _unit addVest "V_PlateCarrier1_rgr_noflag_F";
        //_unit addBackpack "8th_Kitbag_JTP_rot";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["U_B_HeliPilotCoveralls"];
        _unit forceAddUniform _uniformarray ;

        _wtp_rot_helm = profileNamespace getVariable "titan_wtp_rot_helm";
        if (isNil" _wtp_rot_helm") then
        {

            _helmearray = selectRandom ["Heli_Helmet_Base"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_rot_helm;

        };

        _wtp_rot_brille = profileNamespace getVariable "titan_wtp_rot_brille";
        if (isNil "_wtp_rot_brille") then
        {

            _brillearray = selectRandom [];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_rot_brille;

        };

        _unit addVest "V_PlateCarrier1_rgr_noflag_F";
        //_unit addBackpack "SOG_rot_WTP_1";

    };



[_unit,"TITAN_Patch_SQ"] call bis_fnc_setUnitInsignia;






// waffen und equip


/*
// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "sma_minimi_mk3_762tlb_des";
	  _unit addPrimaryWeaponItem "ACE_acc_pointer_green";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "sma_minimi_mk3_762tlb_wdl";
		_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "sma_minimi_mk3_762tsb";
		_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };
*/


//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "B_UavTerminal";

  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_EarPlugs";
  _unit addItem "ACE_IR_Strobe_Item";
  _unit addItem "ACE_NVG_Wide";


//Backpack



[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_rot_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "rot"];
