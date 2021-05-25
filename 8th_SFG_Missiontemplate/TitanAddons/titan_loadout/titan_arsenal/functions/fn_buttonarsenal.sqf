params ["_button"];


switch (_button) do {
  case "mtp_ptl":{[player,0] call titan_fnc_ptl; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_sql":{[player,0] call titan_fnc_sql; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_ftl":{[player,0] call titan_fnc_ftl; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_cct":{[player,0] call titan_fnc_cct; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_sotac":{[player,0] call titan_fnc_sotac; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_eng":{[player,0] call titan_fnc_eng; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_wpn":{[player,0] call titan_fnc_wpn; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_atmo":{[player,0] call titan_fnc_atmo; [box_mtp, player] call ace_arsenal_fnc_openBox ;};
  case "mtp_save":{hint "Speichern von MTP";};

  case "jtp_ptl":{[player,1] call titan_fnc_ptl; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_sql":{[player,1] call titan_fnc_sql; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_ftl":{[player,1] call titan_fnc_ftl; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_cct":{[player,1] call titan_fnc_cct; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_sotac":{[player,1] call titan_fnc_sotac; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_eng":{[player,1] call titan_fnc_eng; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_wpn":{[player,1] call titan_fnc_wpn; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_atmo":{[player,1] call titan_fnc_atmo; [box_jtp, player] call ace_arsenal_fnc_openBox ;};
  case "jtp_save":{hint "Speichern von JTP";};

  case "wtp_ptl":{[player,2] call titan_fnc_ptl; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_sql":{[player,2] call titan_fnc_sql; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_ftl":{[player,2] call titan_fnc_ftl; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_cct":{[player,2] call titan_fnc_cct; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_sotac":{[player,2] call titan_fnc_sotac; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_eng":{[player,2] call titan_fnc_eng; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_wpn":{[player,2] call titan_fnc_wpn; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_atmo":{[player,2] call titan_fnc_atmo; [box_wtp, player] call ace_arsenal_fnc_openBox ;};
  case "wtp_save":{hint "Speichern von WTP";};

  case "bdu": {[player] call titan_fnc_startloadout; [box_bdu, player] call ace_arsenal_fnc_openBox ;};
  case "bdu_save":{hint "Speichern von Start Loadout";};

  case "fix": {hint "Auswahl Fixwing"};
  case "fix_save": {hint "Auswahl Fixwing Save"};

  case "rot": {hint "Auswahl Rotarywing"};
  case "rot_save": {hint "Auswahl Rotarywing Save"};
};
