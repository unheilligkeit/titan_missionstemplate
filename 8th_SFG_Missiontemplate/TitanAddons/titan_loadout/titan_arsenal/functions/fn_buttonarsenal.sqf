params ["_button"];


switch (_button) do {
  case "mtp_ptl":{[player,0] call titan_fnc_ptl; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_sql":{[player,0] call titan_fnc_sql; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_ftl":{[player,0] call titan_fnc_ftl; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_cct":{[player,0] call titan_fnc_cct; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_sotac":{[player,0] call titan_fnc_sotac; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_eng":{[player,0] call titan_fnc_eng; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_wpn":{[player,0] call titan_fnc_wpn; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_atmo":{[player,0] call titan_fnc_atmo; [box_mtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_mtpcontrolls;};
  case "mtp_save":{[player] call titan_fnc_extraitems_mtp;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_arsenalcontrolls;};

  case "jtp_ptl":{[player,1] call titan_fnc_ptl; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_sql":{[player,1] call titan_fnc_sql; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_ftl":{[player,1] call titan_fnc_ftl; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_cct":{[player,1] call titan_fnc_cct; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_sotac":{[player,1] call titan_fnc_sotac; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_eng":{[player,1] call titan_fnc_eng; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_wpn":{[player,1] call titan_fnc_wpn; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_atmo":{[player,1] call titan_fnc_atmo; [box_jtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_jtpcontrolls;};
  case "jtp_save":{[player] call titan_fnc_extraitems_jtp;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_arsenalcontrolls;};

  case "wtp_ptl":{[player,2] call titan_fnc_ptl; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_sql":{[player,2] call titan_fnc_sql; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_ftl":{[player,2] call titan_fnc_ftl; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_cct":{[player,2] call titan_fnc_cct; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_sotac":{[player,2] call titan_fnc_sotac; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_eng":{[player,2] call titan_fnc_eng; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_wpn":{[player,2] call titan_fnc_wpn; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_atmo":{[player,2] call titan_fnc_atmo; [box_wtp, player] call ace_arsenal_fnc_openBox ; call titan_fnc_wtpcontrolls;};
  case "wtp_save":{[player] call titan_fnc_extraitems_wtp;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_arsenalcontrolls;};

  case "bdu": {[player] call titan_fnc_startloadout; [box_bdu, player] call ace_arsenal_fnc_openBox ; call titan_fnc_bducontrolls;};
  case "bdu_save":{[player] call titan_fnc_extraitems_bdu;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_arsenalcontrolls;};

  case "fix": {[player,0] call titan_fnc_fix; [box_fix, player] call ace_arsenal_fnc_openBox; call titan_fnc_fixcontrolls;};
  case "fix_save": {[player] call titan_fnc_extraitems_pilot;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_pilotcontrolls;};

  case "rot": {[player,0] call titan_fnc_rot; [box_rot, player] call ace_arsenal_fnc_openBox; call titan_fnc_rotcontrolls; };
  case "rot_save": {[player] call titan_fnc_extraitems_pilot;(findDisplay 1127001 ) closeDisplay 1; call titan_fnc_pilotcontrolls;};
};
