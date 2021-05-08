
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

        _mtp_rct_helm = profileNamespace getVariable "titan_mtp_rct_helm";
        if (isNil "_mtp_rct_helm") then
        {

            _helmearray = selectRandom ["USP_BOONIE_HAT_MC"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _mtp_rct_helm;

        };

        _mtp_rct_brille = profileNamespace getVariable "titan_mtp_rct_brille";
        if (isNil "_mtp_rct_brille") then
        {

            _brillearray = selectRandom [""];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _mtp_rct_brille;

        };

        _westarray = selectRandom ["USP_VEST_PLATEFRAME_LOAD2_MC","USP_VEST_STRANDHOGG2_MC","USP_EAGLE_MMAC_FAST_MC","USP_CRYE_JPC_ASLTB","USP_CRYE_CPC_MEDIC_BELT_MC","USP_CRYE_JPC_TLB","USP_CRYE_JPC_MG","USP_CRYE_JPC_DMB","USP_CRYE_JPC_TL","USP_CRYE_JPC_FS","USP_CRYE_JPC_GRB","USP_CRYE_JPC_ASLTB"];
        _unit addVest _westarray;

        _unit addBackpack "Titan_BAG_FTL_MTP";


    };


    // JTP
    if (_tarnmuster == 1) then
    {

        _uniformarray = selectRandom ["USP_G3C_KP_MX3_MCT","USP_G3C_RS_KP_MCT"];
        _unit forceAddUniform _uniformarray ;

        _jtp_rct_helm = profileNamespace getVariable "titan_jtp_rct_helm";
        if (isNil "_jtp_rct_helm") then
        {

            _helmearray = selectRandom ["H_Booniehat_tna_F"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _jtp_rct_helm;

        };

        _jtp_rct_brille = profileNamespace getVariable "titan_jtp_rct_brille";
        if (isNil "_jtp_rct_brille") then
        {

            _brillearray = selectRandom [""];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _jtp_rct_brille;

        };

        _westarray = selectRandom ["USP_CRYE_CPC_MEDIC_BELT_RGR","USP_VEST_STRANDHOGG2_MCT","USP_EAGLE_MBAV_LOAD_MCT","USP_CRYE_CPC_MEDIC_BELT_RGR"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_FTL_MTP";

    };

    //WTP
    if (_tarnmuster == 2) then
    {

        _uniformarray = selectRandom ["USP_OVERWHITE_G3C_MX_VQ_MCA_MC","USP_SOFTSHELL_G3C_GRY_BLK"];
        _unit forceAddUniform _uniformarray ;

        _wtp_rct_helm = profileNamespace getVariable "titan_wtp_rct_helm";
        if (isNil" _wtp_rct_helm") then
        {

            _helmearray = selectRandom ["USP_THM_BEANIE"];
            _unit addHeadgear _helmearray;

        } else {

            _unit addHeadgear _wtp_rct_helm;

        };

        _wtp_rct_brille = profileNamespace getVariable "titan_wtp_rct_brille";
        if (isNil "_wtp_rct_brille") then
        {

            _brillearray = selectRandom [""];
            _unit addGoggles _brillearray;

        } else {

            _unit addGoggles _wtp_rct_brille;

        };

        _westarray = selectRandom ["USP_EAGLE_MBAV_LOAD_MCA","USP_VEST_STRANDHOGG2_MCA"];
        _unit addVest _westarray;
        _unit addBackpack "Titan_BAG_FTL_WTP";

    };



[_unit,"TITAN_Patch_OP"] call bis_fnc_setUnitInsignia;






// waffen und equip



// mtp waffen
  if (_tarnmuster == 0) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
  };

// jtp waffen
  if (_tarnmuster == 1) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
  };

// wtp waffen
  if (_tarnmuster == 2) then
  {
      _unit addWeapon "SMA_MK17_green";
  	  _unit addPrimaryWeaponItem "SMA_SFPEQ_SCARTOP_BLK";
  	  _unit addPrimaryWeaponItem "SMA_ELCAN_SPECTER_Green_ARDRDS";
  };



//sec Weapon
  _unit addWeapon "hgun_Pistol_heavy_01_F";

//sec Weapon Items
  _unit addHandgunItem  "optic_MRD";
  _unit addHandgunItem  "acc_flashlight_pistol";
  _unit addHandgunItem  "muzzle_snds_acp";

//Items
  _unit linkItem "ItemMap";
  _unit linkItem "ItemCompass";
  _unit linkItem "ItemWatch";
  _unit linkItem "tf_anprc152";
  _unit linkItem "B_UavTerminal";

  _unit addItem "SMA_supp_762";
  _unit addItem "ACE_MapTools";
  _unit addItem "ACE_microDAGR";
  _unit addItem "acc_pointer_IR";
  _unit addItem "SMA_eotech552";
  _unit addItem "ACE_Vector";

//Backpack
  _unit addItem "ACE_NVG_Wide";
  _unit addItem "itc_land_tablet_rover";
  _unit addItem "ACE_Clacker";

[_unit] call titan_fnc_addmedicalequipment;

[_unit] call titan_fnc_rct_muni;

_unit action ["SwitchWeapon", _unit, _unit, 100];
missionNamespace setVariable ["titan_loadout_class", "rct"];
