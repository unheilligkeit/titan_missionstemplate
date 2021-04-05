
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

        _mtp_cct_helm = profileNamespace getVariable "titan_mtp_cct_helm";
        if (isNil "_mtp_cct_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_khk_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_cct_helm;

        };

        _mtp_cct_brille = profileNamespace getVariable "titan_mtp_cct_brille";
        if (isNil "_mtp_cct_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_tactical_shemagh_RGR","milgp_f_face_shield_tactical_MC","milgp_f_face_shield_goggles_shemagh_MC","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_cct_brille;

        };

        _unit addVest "milgp_v_mmac_teamleader_belt_rgr";
        _unit addBackpack "SOG_CCT_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["JTP_V1_Sleeved","JTP_V1_Full","JTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _jtp_cct_helm = profileNamespace getVariable "titan_jtp_cct_helm";
        if (isNil "_jtp_cct_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_RGR_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","HALO_MOWHAK_2","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_cct_helm;

        };

        _jtp_cct_brille = profileNamespace getVariable "titan_jtp_cct_brille";
        if (isNil "_jtp_cct_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_goggles_shemagh_RGR","milgp_f_face_shield_shemagh_RGR","Balaclava_jtp2","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_cct_brille;

        };

        _unit addVest "milgp_v_mmac_teamleader_belt_rgr";
        _unit addBackpack "8th_ilbe_TAC_jtp";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["WTP_V1_Full","wtp_V1_Neck"];
        _unit forceAddUniform _uniformarray ;

        _wtp_cct_helm = profileNamespace getVariable "titan_wtp_cct_helm";
        if (isNil" _wtp_cct_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_mca","HALO_MOWHAK","milgp_h_airframe_06_mca","milgp_h_airframe_01_mca","milgp_h_airframe_02_mca"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_cct_helm;

        };

        _wtp_cct_brille = profileNamespace getVariable "titan_wtp_cct_brille";
        if (isNil "_wtp_cct_brille") then
        {

            _brillearray = selectRandom ["Balaclava_wtp3","Balaclava_wtp2","Balaclava_wtp1","milgp_f_face_shield_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_cct_brille;

        };

        _unit addVest "milgp_v_mmac_teamleader_belt_rgr";
        _unit addBackpack "SOG_CCT_MTP";

    };



[_unit,"TITAN_Patch_SOTAC"] call bis_fnc_setUnitInsignia;






// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_HK416GLCQB";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_TAN";
	  _unit addPrimaryWeaponItem "SMA_eotech552_3XDOWN_des";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_HK416GLCQB_ODP";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_eotech552_3XUP_wdl";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_HK416GLCQB_B";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_eotech552_3XUP_wdlSMA_eotech552_3XUP_wdl";
  };



//sec Weapon
  _unit addWeapon "hgun_ACPC2_F";
  _unit addHandgunItem "acc_flashlight_pistol";
  _unit addWeapon "Laserdesignator";


//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_supp1tan_556";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_Kestrel4500";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_Vector";
  _unit addItem "ACE_MX2A";
  _unit addItem "SMA_ELCAN_SPECTER_TAN_RDS";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "milgp_h_cap_03_RGR";
  _unit addItem "itc_land_tablet_rover";


[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_cct_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "cct"];
