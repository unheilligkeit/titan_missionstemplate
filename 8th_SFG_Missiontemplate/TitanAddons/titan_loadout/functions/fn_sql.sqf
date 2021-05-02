
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["MTP_V1_Full","MTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _mtp_sql_helm = profileNamespace getVariable "titan_mtp_sql_helm";
        if (isNil "_mtp_sql_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_khk_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_sql_helm;

        };

        _mtp_sql_brille = profileNamespace getVariable "titan_mtp_sql_brille";
        if (isNil "_mtp_sql_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_tactical_shemagh_RGR","milgp_f_face_shield_tactical_MC","milgp_f_face_shield_goggles_shemagh_MC","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_sql_brille;

        };

        _unit addVest "milgp_v_mmac_assaulter_belt_rgr";
        _unit addBackpack "SOG_SQL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["JTP_V1_Sleeved","JTP_V1_Full","JTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _jtp_sql_helm = profileNamespace getVariable "titan_jtp_sql_helm";
        if (isNil "_jtp_sql_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_RGR_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","HALO_MOWHAK_2","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_sql_helm;

        };

        _jtp_sql_brille = profileNamespace getVariable "titan_jtp_sql_brille";
        if (isNil "_jtp_sql_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_goggles_shemagh_RGR","milgp_f_face_shield_shemagh_RGR","Balaclava_jtp2","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_sql_brille;

        };

        _unit addVest "milgp_v_mmac_assaulter_belt_rgr";
        _unit addBackpack "SOG_SQL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["WTP_V1_Full","wtp_V1_Neck"];
        _unit forceAddUniform _uniformarray ;

        _wtp_sql_helm = profileNamespace getVariable "titan_wtp_sql_helm";
        if (isNil" _wtp_sql_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_mca","HALO_MOWHAK","milgp_h_airframe_06_mca","milgp_h_airframe_01_mca","milgp_h_airframe_02_mca"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_sql_helm;

        };

        _wtp_sql_brille = profileNamespace getVariable "titan_wtp_sql_brille";
        if (isNil "_wtp_sql_brille") then
        {

            _brillearray = selectRandom ["Balaclava_wtp3","Balaclava_wtp2","Balaclava_wtp1","milgp_f_face_shield_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_sql_brille;

        };

        _unit addVest "milgp_v_mmac_assaulter_belt_rgr";
        _unit addBackpack "SOG_SQL_WTP";

    };



[_unit,"TITAN_Patch_C"] call bis_fnc_setUnitInsignia;




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
  _unit addItem "Patrol_Cap";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";

[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_sql_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "sql"];
