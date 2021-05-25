
params ["_unit","_tarnmuster"];




[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MC","USP_SOFTSHELL_G3C_VQ_MC","USP_PCU_G3C_KP_MX3_MC","USP_G3C_RS2_KP_MX4_VQ_MC","USP_G3C_RS_KP_MX7_MC","USP_G3C_VQ_MC"];
        _unit forceAddUniform _uniformarray ;

        _mtp_ptl_helm = profileNamespace getVariable "titan_mtp_ptl_helm";
        if (isNil "_mtp_ptl_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_MG","USP_OPSCORE_FASTMTC_M","USP_OPSCORE_FASTMTC_C","USP_OPSCORE_FASTMT_CGTW","USP_OPSCORE_FASTMT_FCV_TW","USP_OPSCORE_FASTMTC_CMGTW"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_ptl_helm;

        };

        _mtp_ptl_brille = profileNamespace getVariable "titan_mtp_ptl_brille";
        if (isNil "_mtp_ptl_brille") then
        {

            _brillearray = selectRandom ["","USP_DETCORD_TAN3_SM2","USP_BALACLAVA_MC","USP_DETCORD_SMC5","USP_OAKLEY_SI2_MC_BLK","USP_DETCORD_MC2"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_ptl_brille;

        };

        _westarray = selectRandom ["USP_VEST_PLATEFRAME_LOAD2_MC","USP_VEST_STRANDHOGG2_MC","USP_EAGLE_MMAC_FAST_MC","USP_CRYE_JPC_ASLTB","USP_CRYE_CPC_MEDIC_BELT_MC","USP_CRYE_JPC_TLB","USP_CRYE_JPC_MG","USP_CRYE_JPC_DMB","USP_CRYE_JPC_TL","USP_CRYE_JPC_FS","USP_CRYE_JPC_GRB","USP_CRYE_JPC_ASLTB"];
        _unit addVest _westarray;

        _unit addBackpack "Titan_BAG_PTL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MX3_MCT","USP_G3C_RS_KP_MCT"];
        _unit forceAddUniform _uniformarray ;

        _jtp_ptl_helm = profileNamespace getVariable "titan_jtp_ptl_helm";
        if (isNil "_jtp_ptl_helm") then
        {

            _helmearray = selectRandom ["","USP_OAKLEY_SI2_BLK","USP_DETCORD_TAN_UP_SMC2","USP_BALACLAVA_RGR"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_ptl_helm;

        };

        _jtp_ptl_brille = profileNamespace getVariable "titan_jtp_ptl_brille";
        if (isNil "_jtp_ptl_brille") then
        {

            _brillearray = selectRandom ["milgp_f_face_shield_goggles_shemagh_RGR","milgp_f_face_shield_shemagh_RGR","Balaclava_jtp2","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_ptl_brille;

        };

        _westarray = selectRandom ["USP_CRYE_CPC_MEDIC_BELT_RGR","USP_VEST_STRANDHOGG2_MCT","USP_EAGLE_MBAV_LOAD_MCT","USP_CRYE_CPC_MEDIC_BELT_RGR"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_PTL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["USP_OVERWHITE_G3C_MX_VQ_MCA_MC","USP_SOFTSHELL_G3C_GRY_BLK"];
        _unit forceAddUniform _uniformarray ;

        _wtp_ptl_helm = profileNamespace getVariable "titan_wtp_ptl_helm";
        if (isNil" _wtp_ptl_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_KTYETI_SW","USP_OPSCORE_FASTMTC_MCA_GT"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_ptl_helm;

        };

        _wtp_ptl_brille = profileNamespace getVariable "titan_wtp_ptl_brille";
        if (isNil "_wtp_ptl_brille") then
        {

            _brillearray = selectRandom ["","USP_BALACLAVA_WHT","USP_ADVANCER_SF"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_ptl_brille;

        };

        _westarray = selectRandom ["USP_EAGLE_MBAV_LOAD_MCA","USP_VEST_STRANDHOGG2_MCA"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_PTL_WTP";

    };








// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "SMA_MK18afgTAN";
	  _unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_TAN";
	  _unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "SMA_MK18afgOD";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "SMA_MK18afgBLK";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_MK18TOP_BLK";
		_unit addPrimaryWeaponItem "SMA_BARSKA";
  };



//sec Weapon
  _unit addWeapon "hgun_P07_F";

//Launcher
  _unit addSecondaryWeaponItem "acc_pointer_IR";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";

  _unit addItem "SMA_ELCAN_SPECTER_TAN_ARDRDS";
  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_supp1tan_556";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_microDAGR";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_Vector";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";
  _unit addItem "ACE_HuntIR_monitor";
  _unit addItem "itc_land_tablet_rover";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_ptl_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "ptl"];
