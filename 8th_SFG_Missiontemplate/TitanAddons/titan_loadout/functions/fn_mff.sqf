params ["_unit","_tarnmuster"];


[_unit] call titan_fnc_loadoutremove;

//Backpack to chest
[_unit,"drybag_blk"] call zade_boc_fnc_addChestpack;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

    // MTP
    if (_tarnmuster == 0) then
    {

        _uniformarray = selectRandom titan_mtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _mtp_mff_helm = profileNamespace getVariable "titan_mtp_mff_helm";
        if (isNil "_mtp_mff_helm") then
        {

            _helmearray = selectRandom titan_mtp_helm;
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

        _westarray = selectRandom titan_mtp_westen;
        _unit addVest _westarray;

        _unit addBackpack "COS_PARACHUTE";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom titan_jtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _jtp_mff_helm = profileNamespace getVariable "titan_jtp_mff_helm";
        if (isNil "_jtp_mff_helm") then
        {

            _helmearray = selectRandom titan_jtp_helm;
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

        _westarray = selectRandom titan_jtp_westen;
        _unit addVest _westarray;
        _unit addBackpack "COS_PARACHUTE";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom titan_wtp_uniform;
        _unit forceAddUniform _uniformarray ;

        _wtp_mff_helm = profileNamespace getVariable "titan_wtp_mff_helm";
        if (isNil" _wtp_mff_helm") then
        {

            _helmearray = selectRandom titan_wtp_helm;
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

        _westarray = selectRandom titan_wtp_westen;
        _unit addVest _westarray;
        _unit addBackpack "COS_PARACHUTE";

    };

// waffen und equip



//sec Weapon
  _unit addWeapon "hgun_P07_F";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ACE_Altimeter";
  _unit linkItem "tf_anprc152";
  _unit linkItem "ItemGPS";
  _unit linkItem "ACE_NVG_Wide";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_mff_muni;

[_unit] call titan_fnc_mff_chemlight;

[_unit, 1, ["ACE_SelfActions"], mff_changeuniform] call ace_interact_menu_fnc_addActiontoObject;

_unit action ["SwitchWeapon", _unit, _unit, 100];

missionNamespace setVariable ["titan_special_loadout", "mff"];
