
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;


[_unit] call titan_fnc_loadoutremove;

//Backpack to chest
[_unit,"drybag_blk"] call zade_boc_fnc_addChestpack;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MC","USP_SOFTSHELL_G3C_VQ_MC","USP_PCU_G3C_KP_MX3_MC","USP_G3C_RS2_KP_MX4_VQ_MC","USP_G3C_RS_KP_MX7_MC","USP_G3C_VQ_MC"];
        _unit forceAddUniform _uniformarray ;

        _mtp_mff_helm = profileNamespace getVariable "titan_mtp_mff_helm";
        if (isNil "_mtp_mff_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_MG","USP_OPSCORE_FASTMTC_M","USP_OPSCORE_FASTMTC_C","USP_OPSCORE_FASTMT_CGTW","USP_OPSCORE_FASTMT_FCV_TW","USP_OPSCORE_FASTMTC_CMGTW"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_mff_helm;

        };


        _brillearray = selectRandom ["USP_SOLR_AF", "USP_SOLR_AF_OAK", "USP_SOLR2_NT", "USP_SOLR_TW_MC_OAK", "USP_SOLR_XP2_NP", "USP_SOLR_XP_OAK"];
        _unit addGoggles _brillearray;


        _mtp_mff_waffen = profileNamespace getVariable "titan_mtp_mff_waffen";
        if (isNil "_mtp_mff_waffen") then
        {

            _waffenarray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _mtp_mff_waffen;

        };

        _westarray = selectRandom ["USP_VEST_PLATEFRAME_LOAD2_MC","USP_VEST_STRANDHOGG2_MC","USP_EAGLE_MMAC_FAST_MC","USP_CRYE_JPC_ASLTB","USP_CRYE_CPC_MEDIC_BELT_MC","USP_CRYE_JPC_TLB","USP_CRYE_JPC_MG","USP_CRYE_JPC_DMB","USP_CRYE_JPC_TL","USP_CRYE_JPC_FS","USP_CRYE_JPC_GRB","USP_CRYE_JPC_ASLTB"];
        _unit addVest _westarray;

        _unit addBackpack "COS_PARACHUTE";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MX3_MCT","USP_G3C_RS_KP_MCT"];
        _unit forceAddUniform _uniformarray ;

        _jtp_mff_helm = profileNamespace getVariable "titan_jtp_mff_helm";
        if (isNil "_jtp_mff_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMT_OD_CMGTW","USP_OPSCORE_FASTMTC_TGS_SW"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_mff_helm;

        };

        _brillearray = selectRandom ["USP_SOLR_AF", "USP_SOLR_AF_OAK", "USP_SOLR2_NT", "USP_SOLR_TW_MC_OAK", "USP_SOLR_XP2_NP", "USP_SOLR_XP_OAK"];
        _unit addGoggles _brillearray;

        _jtp_mff_waffen = profileNamespace getVariable "titan_jtp_mff_waffen";
        if (isNil "_jtp_mff_waffen") then
        {

            _waffenarray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _jtp_mff_waffen;

        };

        _westarray = selectRandom ["USP_CRYE_CPC_MEDIC_BELT_RGR","USP_VEST_STRANDHOGG2_MCT","USP_EAGLE_MBAV_LOAD_MCT","USP_CRYE_CPC_MEDIC_BELT_RGR"];
        _unit addVest _westarray;
        _unit addBackpack "COS_PARACHUTE";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["USP_OVERWHITE_G3C_MX_VQ_MCA_MC","USP_SOFTSHELL_G3C_GRY_BLK"];
        _unit forceAddUniform _uniformarray ;

        _wtp_mff_helm = profileNamespace getVariable "titan_wtp_mff_helm";
        if (isNil" _wtp_mff_helm") then
        {

            _helmearray = selectRandom ["USP_OPSCORE_FASTMTC_KTYETI_SW","USP_OPSCORE_FASTMTC_MCA_GT"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_mff_helm;

        };

        _brillearray = selectRandom ["USP_SOLR_AF", "USP_SOLR_AF_OAK", "USP_SOLR2_NT", "USP_SOLR_TW_MC_OAK", "USP_SOLR_XP2_NP", "USP_SOLR_XP_OAK"];
        _unit addGoggles _brillearray;

        _wtp_mff_waffen = profileNamespace getVariable "titan_wtp_mff_waffen";
        if (isNil "_wtp_mff_waffen") then
        {

            _waffenarray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _wtp_mff_waffen;

        };

        _westarray = selectRandom ["USP_EAGLE_MBAV_LOAD_MCA","USP_VEST_STRANDHOGG2_MCA"];
        _unit addVest _westarray;
        _unit addBackpack "COS_PARACHUTE";

    };

// waffen und equip



//sec Weapon
  _unit addWeapon "hgun_ACPC2_F";
  _unit addHandgunItem "acc_flashlight_pistol";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ACE_Altimeter";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_mff_muni;

[_unit] call titan_fnc_mff_chemlight;

[_unit, 1, ["ACE_SelfActions"], mff_changeuniform] call ace_interact_menu_fnc_addActiontoObject;

_unit action ["SwitchWeapon", _unit, _unit, 100];
