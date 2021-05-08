
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MC","USP_SOFTSHELL_G3C_VQ_MC","USP_PCU_G3C_KP_MX3_MC","USP_G3C_RS2_KP_MX4_VQ_MC","USP_G3C_RS_KP_MX7_MC","USP_G3C_VQ_MC"];
        _unit forceAddUniform _uniformarray ;

        _mtp_wpn_helm = profileNamespace getVariable "titan_mtp_wpn_helm";
        if (isNil "_mtp_wpn_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_MG","USP_OPSCORE_FASTMTC_M","USP_OPSCORE_FASTMTC_C","USP_OPSCORE_FASTMT_CGTW","USP_OPSCORE_FASTMT_FCV_TW","USP_OPSCORE_FASTMTC_CMGTW"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_wpn_helm;

        };

        _mtp_wpn_brille = profileNamespace getVariable "titan_mtp_wpn_brille";
        if (isNil "_mtp_wpn_brille") then
        {

            _brillearray = selectRandom ["","USP_DETCORD_TAN3_SM2","USP_BALACLAVA_MC","USP_DETCORD_SMC5","USP_OAKLEY_SI2_MC_BLK","USP_DETCORD_MC2"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_wpn_brille;

        };

        _westarray = selectRandom ["USP_VEST_PLATEFRAME_LOAD2_MC","USP_VEST_STRANDHOGG2_MC","USP_EAGLE_MMAC_FAST_MC","USP_CRYE_JPC_ASLTB","USP_CRYE_CPC_MEDIC_BELT_MC","USP_CRYE_JPC_TLB","USP_CRYE_JPC_MG","USP_CRYE_JPC_DMB","USP_CRYE_JPC_TL","USP_CRYE_JPC_FS","USP_CRYE_JPC_GRB","USP_CRYE_JPC_ASLTB"];
        _unit addVest _westarray;

        _unit addBackpack "Titan_BAG_WPN_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MX3_MCT","USP_G3C_RS_KP_MCT"];
        _unit forceAddUniform _uniformarray ;

        _jtp_wpn_helm = profileNamespace getVariable "titan_jtp_wpn_helm";
        if (isNil "_jtp_wpn_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMT_OD_CMGTW","USP_OPSCORE_FASTMTC_TGS_SW"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_wpn_helm;

        };

        _jtp_wpn_brille = profileNamespace getVariable "titan_jtp_wpn_brille";
        if (isNil "_jtp_wpn_brille") then
        {

            _brillearray = selectRandom ["","USP_OAKLEY_SI2_BLK","USP_DETCORD_TAN_UP_SMC2","USP_BALACLAVA_RGR"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_wpn_brille;

        };

        _westarray = selectRandom ["USP_CRYE_CPC_MEDIC_BELT_RGR","USP_VEST_STRANDHOGG2_MCT","USP_EAGLE_MBAV_LOAD_MCT","USP_CRYE_CPC_MEDIC_BELT_RGR"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_WPN_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["USP_OVERWHITE_G3C_MX_VQ_MCA_MC","USP_SOFTSHELL_G3C_GRY_BLK"];
        _unit forceAddUniform _uniformarray ;

        _wtp_wpn_helm = profileNamespace getVariable "titan_wtp_wpn_helm";
        if (isNil" _wtp_wpn_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_KTYETI_SW","USP_OPSCORE_FASTMTC_MCA_GT"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_wpn_helm;

        };

        _wtp_wpn_brille = profileNamespace getVariable "titan_wtp_wpn_brille";
        if (isNil "_wtp_wpn_brille") then
        {

            _brillearray = selectRandom ["","USP_BALACLAVA_WHT","USP_ADVANCER_SF"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_wpn_brille;

        };

        _westarray = selectRandom ["USP_EAGLE_MBAV_LOAD_MCA","USP_VEST_STRANDHOGG2_MCA"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_WPN_WTP";

    };



[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;






// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
    _unit addWeapon "hlc_m249_pip3";
	_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";
  _unit addWeapon "Rangefinder";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

  _unit addItem "acc_pointer_IR";
  _unit addItem "sma_gemtech_one_blk";
  _unit addItem "muzzle_snds_acp";
  _unit addItem "ACE_MapTools";


//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "USP_A2_PATROL_CAP_MC";


[_unit] call titan_fnc_addmedicalequipment ;

[_unit] call titan_fnc_wpn_muni ;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "wpn"];
