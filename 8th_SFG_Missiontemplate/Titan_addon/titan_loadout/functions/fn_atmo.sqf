
params ["_unit"];
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

switch (_tarnmuster) do
{

    // BDU
    case ("0"): {

        _unit forceAddUniform "U_B_CombatUniform_mcam";

        _bdu_helm = profileNamespace getVariable "titan_bdu_helm";
        if (isNil _bdu_helm) then {

            _helmearray = selectRandom ["TITAN_Beret_Enlisted"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _bdu_helm;

        };

        _unit addVest "V_Rangemaster_belt";


    };

    // MTP
    case ("1"): {

        _uniformarray = selectRandom ["MTP_V1_Full","MTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _mtp_atmo_helm = profileNamespace getVariable "titan_mtp_atmo_helm";
        if (isNil _mtp_atmo_helm) then {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_khk_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_atmo_helm;

        };

        _mtp_atmo_brille = profileNamespace getVariable "titan_mtp_atmo_brille";
        if (isNil _mtp_atmo_brille) then {

            _brillearray = selectRandom ["mFrame_Oakley_Embr","Oakley_RGR_Clear","Oakley_MTP_Dark","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_atmo_brille;

        };

        _unit addVest "milgp_v_marciras_grenadier_belt_rgr";
        _unit addBackpack "SOG_ATMO_MTP";


    };


    // JTP
    case ("2"): {

        _uniformarray = selectRandom ["JTP_V1_Sleeved","JTP_V1_Full","JTP_V2_Full","MTP_V3_Full","MTP_V4_Full"];
        _unit forceAddUniform _uniformarray ;

        _jtp_atmo_helm = profileNamespace getVariable "titan_jtp_atmo_helm";
        if (isNil _jtp_atmo_helm) then {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_RGR_hexagon","HALO_MOWHAK","milgp_h_airframe_06_RGR_hexagon","HALO_MOWHAK_2","milgp_h_airframe_02_RGR_hexagon"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_atmo_helm;

        };

        _jtp_atmo_brille = profileNamespace getVariable "titan_jtp_atmo_brille";
        if (isNil _jtp_atmo_brille) then {

            _brillearray = selectRandom ["mFrame_Oakley_Embr","Oakley_RGR_Clear","Oakley_MTP_Dark","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_atmo_brille;

        };

        _unit addVest "milgp_v_marciras_grenadier_belt_rgr";
        _unit addBackpack "8th_Kitbag_JTP_atmo";

    };

    //WTP
    case ("3"): {

        _uniformarray = selectRandom ["WTP_V1_Full","wtp_V1_Neck"];
        _unit forceAddUniform _uniformarray ;

        _wtp_atmo_helm = profileNamespace getVariable "titan_wtp_atmo_helm";
        if (isNil _wtp_atmo_helm) then {

            _helmearray = selectRandom ["milgp_h_airframe_04_goggles_mca","HALO_MOWHAK","milgp_h_airframe_06_mca","milgp_h_airframe_01_mca","milgp_h_airframe_02_mca"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_atmo_helm;

        };

        _wtp_atmo_brille = profileNamespace getVariable "titan_wtp_atmo_brille";
        if (isNil _wtp_atmo_brille) then {

            _brillearray = selectRandom ["mFrame_Oakley_Embr","Oakley_RGR_Clear","Oakley_MTP_Dark","milgp_f_face_shield_tactical_shemagh_CB"];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_atmo_brille;

        };

        _unit addVest "milgp_v_marciras_grenadier_belt_rgr";
        _unit addBackpack "SOG_ATMO_WTP";

    };

};

[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;






// waffen und equip

switch (_tarnmuster) do
{

    // mtp waffen
    case ("1"): {
        _unit addWeapon "SMA_HK416GLCQB";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_TAN";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_TAN_RDS";
    };

    // jtp waffen
    case ("2"): {
        _unit addWeapon "SMA_HK416GLCQB_ODP";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_GREEN_RDS";
    };

    // wtp waffen
    case ("3"): {
        _unit addWeapon "SMA_HK416GLCQB_B";
		_unit addPrimaryWeaponItem "SMA_SFPEQ_HKTOP_BLK";
		_unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_RDS";
    };
};

if (_tarnmuster == 0) then {

    _unit addWeapon "hgun_Pistol_heavy_01_F";

} else {

    //sec Weapon
		_unit addWeapon "hgun_Pistol_heavy_01_F";

		//Launcher
		_unit addWeapon "launch_MRAWS_green_F";
		_unit addSecondaryWeaponItem "acc_pointer_IR";
		_unit addWeapon "Rangefinder";
		_unit addPrimaryWeaponItem "dcd_suck_M203";

		//Items
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemGPS";

        _unit addItem "acc_pointer_IR";
		_unit addItem "muzzle_snds_acp";
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_microDAGR";
		_unit addItem "SMA_CMORE";
        _unit addItem "SMA_BARSKA";
        _unit addItem "SMA_supp1tan_556";

		//Backpack
		_unit addItem "ACE_NVG_Wide";
		_unit addItem "Patrol_Cap";


        [_unit] call titan_fnc_addmedicalequipment ;


        [_unit] call titan_fnc_atmo_muni ;

};

        _unit action ["SwitchWeapon", _unit, _unit, 100];
        missionNamespace setVariable ["titan_loadout_class", atmo];
