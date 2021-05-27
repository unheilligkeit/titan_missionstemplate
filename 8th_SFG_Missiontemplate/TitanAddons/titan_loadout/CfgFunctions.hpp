class titan
{
    tag = "titan";

    class titan_loadout
    {
        file = "TitanAddons\titan_loadout\functions";
        class loadoutremove {};
        class addmedicalequipment {};
        class addpilotmedical {};
        class addengmedical {};
        class atmo {};
        class atmo_muni {};
        class mff {};
        class mff_muni {};
        class mff_chemlight {};
        class mff_changeuniform {};
        class diver {};
        class diver_muni {};
        class diver_changeuniform {};
        class eng {};
        class eng_muni {};
        class fix {};
        class fix_muni {};
        class ftl {};
        class ftl_muni {};
        class lrr {};
        class lrr_muni {};
        class lrs {};
        class lrs_muni {};
        class rct {};
        class rct_muni {};
        class cct {};
        class cct_muni {};
        class ptl {};
        class ptl_muni {};
        class rifle {};
        class rifle_muni {};
        class sql {};
        class sql_muni {};
        class sotac {};
        class sotac_muni {};
        class wpn {};
        class wpn_muni {};
        class rot {};
        class rot_muni {};
        class removeitems {};
        class loadout_rearm {};
        class startloadout {};
        class lr_radiosettings {};
        class sw_radiosettings {};
        class tfar_settings {};
        class open_rearm {};
    };



    class titan_dialog_function
    {
        file = "TitanAddons\titan_loadout\loadout_gui\functions";
        class buttoncontroll {};
        class loadoutgui {};
    };

    class titan_arsenal
    {
        file = "TitanAddons\titan_loadout\titan_arsenal\functions";
        class buttonarsenal {};
        class arsenalgui {};
        class extraitems_bdu {};
        class extraitems_mtp {};
        class extraitems_jtp {};
        class extraitems_wtp {};
        class extraitems_pilot {};
        class limitarsenal_bdu {postInit = 1;};
        class limitarsenal_mtp {postInit = 1;};
        class limitarsenal_jtp {postInit = 1;};
        class limitarsenal_wtp {postInit = 1;};
        class limitarsenal_rot {postInit = 1;};
        class limitarsenal_fix {postInit = 1;};
        class arsenalcontrolls {};
        class mtpcontrolls {};
        class jtpcontrolls {};
        class wtpcontrolls {};
        class bducontrolls {};
        class fixcontrolls {};
        class rotcontrolls {};
        class pilotcontrolls {};
    };
};
