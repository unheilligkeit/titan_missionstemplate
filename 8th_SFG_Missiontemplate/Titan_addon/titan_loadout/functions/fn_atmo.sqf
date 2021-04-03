
_tarnmuster = "param_tarnmuster" call BIS_fnc_getParamValue;



[_unit] call titan_fnc_loadoutremove;

// Ace medic deklaration
_unit setVariable ["ace_medical_medicClass", 1, true];


// uniform laden

switch (_tarnmuster) do
{

    // BDU
    case (0): {

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
    case (1): {

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

            _unit addGoggles _mtp_atmo_helm;

        };

        _unit addVest "milgp_v_marciras_grenadier_belt_rgr";
        _unit addBackpack "SOG_ATMO_MTP";


    };


    // JTP
    case (2): {

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

            _unit addGoggles _jtp_atmo_helm;

        };

        _unit addVest "milgp_v_marciras_grenadier_belt_rgr";
        _unit addBackpack "8th_Kitbag_JTP_atmo";

    };

    case (3): {
        //code
    };
};

[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;






// waffen laden









//munition und gegenstände
