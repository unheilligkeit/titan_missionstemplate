
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 2, true];
_player setVariable ["ACE_IsEngineer",1,true];
_player setVariable ["ACE_isEOD",1,true];

// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["MTP_V1_Full","MTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _mtp_eng_helm = profileNamespace getVariable "titan_mtp_eng_helm";
        if (isNil "_mtp_eng_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_khk_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_eng_helm;

        };

        _mtp_eng_brille = profileNamespace getVariable "titan_mtp_eng_brille";
        if (isNil "_mtp_eng_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_tactical_shemagh_RGR","milgp_f_face_shield_tactical_MC","milgp_f_face_shield_goggles_shemagh_MC","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_eng_brille;

        };

        _mtp_eng_weste = profileNamespace getVariable "titan_mtp_eng_weste";
        if (isNil "_mtp_eng_brille") then
        {

            _westearray = selectRandom ["milgp_v_marciras_grenadier_belt_rgr","milgp_v_mmac_medic_belt_rgr","",""];
            _unit addVest _westearray;

        } else {

            _unit addVest _mtp_eng_weste;

        };

        _unit addBackpack "SOG_ENG_MTP_1";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["JTP_V1_Sleeved","JTP_V1_Full","JTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _jtp_eng_helm = profileNamespace getVariable "titan_jtp_eng_helm";
        if (isNil "_jtp_eng_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_RGR_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","HALO_MOWHAK_2","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_eng_helm;

        };

        _jtp_eng_brille = profileNamespace getVariable "titan_jtp_eng_brille";
        if (isNil "_jtp_eng_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_goggles_shemagh_RGR","milgp_f_face_shield_shemagh_RGR","Balaclava_jtp2","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_eng_brille;

        };

        _jtp_eng_weste = profileNamespace getVariable "titan_mtp_eng_weste";
        if (isNil "_mtp_eng_brille") then
        {

            _westearray = selectRandom ["milgp_v_marciras_grenadier_belt_rgr","milgp_v_mmac_medic_belt_rgr","",""];
            _unit addVest _westearray;

        } else {

            _unit addVest _jtp_eng_weste;

        };

        _unit addBackpack "8th_Kitbag_JTP_ENG";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["WTP_V1_Full","wtp_V1_Neck"];
        _unit forceAddUniform _uniformarray ;

        _wtp_eng_helm = profileNamespace getVariable "titan_wtp_eng_helm";
        if (isNil" _wtp_eng_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_mca","HALO_MOWHAK","milgp_h_airframe_06_mca","milgp_h_airframe_01_mca","milgp_h_airframe_02_mca"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_eng_helm;

        };

        _wtp_eng_brille = profileNamespace getVariable "titan_wtp_eng_brille";
        if (isNil "_wtp_eng_brille") then
        {

            _brillearray = selectRandom ["Balaclava_wtp3","Balaclava_wtp2","Balaclava_wtp1","milgp_f_face_shield_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_eng_brille;

        };

        _wtp_eng_weste = profileNamespace getVariable "titan_mtp_eng_weste";
        if (isNil "_mtp_eng_brille") then
        {

            _westearray = selectRandom ["milgp_v_marciras_grenadier_belt_rgr","milgp_v_mmac_medic_belt_rgr","",""];
            _unit addVest _westearray;

        } else {

            _unit addVest _wtp_eng_weste;

        };

        _unit addBackpack "SOG_ENG_WTP_1";

    };

[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;



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
  _unit addItem "Patrol_Cap";
  _unit addItem "ACE_wirecutter";
  _unit addItem "ACE_M26_Clacker";
  _unit addItem "ACE_DefusalKit";

[_unit] call titan_fnc_addengmedical;

[_unit] call titan_fnc_eng_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "eng"];
