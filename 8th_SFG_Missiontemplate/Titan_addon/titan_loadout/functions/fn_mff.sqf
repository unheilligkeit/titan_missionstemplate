
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

        _uniformarray = selectRandom ["MTP_V1_Full","MTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _mtp_mff_helm = profileNamespace getVariable "titan_mtp_mff_helm";
        if (isNil "_mtp_mff_helm") then
        {

            _helmearray = selectRandom ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_mff_helm;

        };

        _mtp_mff_brille = profileNamespace getVariable "titan_mtp_mff_brille";
        if (isNil "_mtp_mff_brille") then
        {

            _brillearray = selectRandom ["G_Balaclava_lowprofile", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_G_tna_F", "BALA_SWAT_ESS_TAN", "BALA_SWAT_ESS_od", "BALA_SWAT_ESS_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_mff_brille;

        };

        _mtp_mff_waffen = profileNamespace getVariable "titan_mtp_mff_waffen";
        if (isNil "_mtp_mff_waffen") then
        {

            _brillearray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _mtp_mff_waffen;

        };
        _unit addVest "halo_vest_L";
        _unit addBackpack "COS_PARACHUTE";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["JTP_V1_Sleeved","JTP_V1_Full","JTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _jtp_mff_helm = profileNamespace getVariable "titan_jtp_mff_helm";
        if (isNil "_jtp_mff_helm") then
        {

            _helmearray = selectRandom ["HALO_MARITIME_GREY", "HALO_MOWHAK", "HALO_MOWHAK_2", "HALO_MARITIME_tan"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_mff_helm;

        };

        _jtp_mff_brille = profileNamespace getVariable "titan_jtp_mff_brille";
        if (isNil "_jtp_mff_brille") then
        {

            _brillearray = selectRandom ["G_Balaclava_lowprofile", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_G_tna_F", "BALA_SWAT_ESS_TAN", "BALA_SWAT_ESS_od", "BALA_SWAT_ESS_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_mff_brille;

        };

        _jtp_mff_waffen = profileNamespace getVariable "titan_jtp_mff_waffen";
        if (isNil "_jtp_mff_waffen") then
        {

            _brillearray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _jtp_mff_waffen;

        };

        _unit addVest "halo_vest_L";
        _unit addBackpack "COS_PARACHUTE";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["WTP_V1_Full","wtp_V1_Neck"];
        _unit forceAddUniform _uniformarray ;

        _wtp_mff_helm = profileNamespace getVariable "titan_wtp_mff_helm";
        if (isNil" _wtp_mff_helm") then
        {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_mca","HALO_MOWHAK","milgp_h_airframe_06_mca","milgp_h_airframe_01_mca","milgp_h_airframe_02_mca"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_mff_helm;

        };

        _wtp_mff_brille = profileNamespace getVariable "titan_wtp_mff_brille";
        if (isNil "_wtp_mff_brille") then
        {

            _brillearray = selectRandom ["Balaclava_wtp3","Balaclava_wtp2","Balaclava_wtp1","milgp_f_face_shield_BLK"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_mff_brille;

        };

        _wtp_mff_waffen = profileNamespace getVariable "titan_wtp_mff_waffen";
        if (isNil "_wtp_mff_waffen") then
        {

            _waffenarray = selectRandom ["SMA_MK18afgTAN", "SMA_MK18MOETAN","SMA_MK18MOEOD"];
            _unit addWeapon _waffenarray;

        } else {

            _unit addWeapon _wtp_mff_waffen;

        };

        _unit addVest "halo_vest_L";
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

_unit action ["SwitchWeapon", _unit, _unit, 100];

missionNamespace setVariable ["titan_loadout_class", "mff"];

[_unit] call titan_fnc_mff_changeuniform;
