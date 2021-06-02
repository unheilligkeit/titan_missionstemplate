






params ["_unit"];
_loadclass = missionNamespace getVariable "titan_loadout_class";


switch (_loadclass) do
{
    case ("start"): {
        hint "Die Jugend ist die Zeit, Weisheit zu lernen. Das Alter ist die Zeit, sie auszuüben."
    };

    case ("atmo"):
    {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_atmo_muni;
    };

    case ("cct"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_cct_muni;
    };

    case ("eng"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addengmedical;
        [_unit] call titan_fnc_eng_muni;
    };

    case ("fix"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addpilotmedical;
        [_unit] call titan_fnc_fix_muni;
    };

    case ("ftl"): {
      [_unit] call titan_fnc_removeitems;
      [_unit] call titan_fnc_addmedicalequipment;
      [_unit] call titan_fnc_ftl_muni;
    };

    case ("lrr"):
    {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_lrr_muni;
    };

    case ("lrs"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_lrs_muni;
    };

    case ("ptl"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_ptl_muni;
    };

    case ("rct"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_rct_muni;
    };

    case ("rifle"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_rifle_muni;
    };

    case ("rot"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addpilotmedical;
        [_unit] call titan_fnc_rot_muni;
    };

    case ("sql"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_sql_muni;
    };

    case ("sotac"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_sotac_muni;
    };

    case ("wpn"): {
        [_unit] call titan_fnc_removeitems;
        [_unit] call titan_fnc_addmedicalequipment;
        [_unit] call titan_fnc_wpn_muni;
    };

};

[_unit] call ACE_medical_treatment_fnc_fullHealLocal;

systemChat "Rearm Done";
