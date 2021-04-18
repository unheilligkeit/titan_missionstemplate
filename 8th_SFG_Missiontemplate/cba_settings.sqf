/*
 * Author: Fallingstorm
 *
 * Contains all cba-settings for this mission.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * force VARIABLE = override client settings.
 * force force = override mission and client settings (only for server).
 *
 * Public: Yes
 */

// A3TI
force force A3TI_ALLOW_TANK_DRIVER = true;
force force A3TI_ALLOW_VANILLA_TI = false;
force force A3TI_ENABLE_ZEUS = true;
force force A3TI_HD_VISION_FIGHTER = true;
force force A3TI_HD_VISION_LANDVEH = true;
force force A3TI_HD_VISION_SHIP = true;
force force A3TI_HD_VISION_UAV = true;
force force A3TI_REMOVE_FILMGRAIN_RHS = true;

// ACE Advanced Ballistics
force force ace_advanced_ballistics_ammoTemperatureEnabled = false;
force force ace_advanced_ballistics_barrelLengthInfluenceEnabled = false;
force force ace_advanced_ballistics_bulletTraceEnabled = true;
force force ace_advanced_ballistics_enabled = false;
force force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force force ace_advanced_ballistics_simulationInterval = 0.12741;

// ACE Advanced Throwing
force force ace_advanced_throwing_enabled = true;
force force ace_advanced_throwing_enablePickUp = true;
force force ace_advanced_throwing_enablePickUpAttached = true;
force force ace_advanced_throwing_showMouseControls = true;
force force ace_advanced_throwing_showThrowArc = true;

// ACE Arsenal
force force ace_arsenal_allowDefaultLoadouts = true;
force force ace_arsenal_allowSharedLoadouts = true;
force force ace_arsenal_camInverted = false;
force force ace_arsenal_enableIdentityTabs = true;
force force ace_arsenal_enableModIcons = true;
force force ace_arsenal_EnableRPTLog = false;
force force ace_arsenal_fontHeight = 4.5;

// ACE Artillery
force force ace_artillerytables_advancedCorrections = false;
force force ace_artillerytables_disableArtilleryComputer = false;
force force ace_mk6mortar_airResistanceEnabled = false;
force force ace_mk6mortar_allowCompass = true;
force force ace_mk6mortar_allowComputerRangefinder = true;
force force ace_mk6mortar_useAmmoHandling = false;

// ACE Captives
force force ace_captives_allowHandcuffOwnSide = false;
force force ace_captives_allowSurrender = true;
force force ace_captives_requireSurrender = 2;
force force ace_captives_requireSurrenderAi = false;

// ACE Common
force force ace_common_allowFadeMusic = true;
force force ace_common_checkPBOsAction = 0;
force force ace_common_checkPBOsCheckAll = false;
force force ace_common_checkPBOsWhitelist = "[]";
force force ace_common_displayTextColor = [0,0,0,0.1];
force force ace_common_displayTextFontColor = [1,1,1,1];
force force ace_common_settingFeedbackIcons = 1;
force force ace_common_settingProgressBarLocation = 0;
force force ace_noradio_enabled = true;
force force ace_parachute_hideAltimeter = false;

// ACE Cook off
force force ace_cookoff_ammoCookoffDuration = 1.47802;
force force ace_cookoff_enable = 2;
force force ace_cookoff_enableAmmobox = true;
force force ace_cookoff_enableAmmoCookoff = true;
force force ace_cookoff_probabilityCoef = 3.97441;

// ACE Crew Served Weapons
force force ace_csw_ammoHandling = 2;
force force ace_csw_defaultAssemblyMode = false;
force force ace_csw_dragAfterDeploy = true;
force force ace_csw_handleExtraMagazines = true;
force force ace_csw_progressBarTimeCoefficent = 1;

// ACE Explosives
force force ace_explosives_explodeOnDefuse = false;
force force ace_explosives_punishNonSpecialists = false;
force force ace_explosives_requireSpecialist = false;

// ACE Fragmentation Simulation
force force ace_frag_enabled = true;
force force ace_frag_maxTrack = 20;
force force ace_frag_maxTrackPerFrame = 20;
force force ace_frag_reflectionsEnabled = true;
force force ace_frag_spallEnabled = true;

// ACE Goggles
force force ace_goggles_effects = 3;
force force ace_goggles_showClearGlasses = true;
force force ace_goggles_showInThirdPerson = true;

// ACE Grenades
force force ace_grenades_convertExplosives = true;

// ACE Hearing
force force ace_hearing_autoAddEarplugsToUnits = true;
force force ace_hearing_disableEarRinging = true;
force force ace_hearing_earplugsVolume = 0.5;
force force ace_hearing_enableCombatDeafness = false;
force force ace_hearing_enabledForZeusUnits = false;
force force ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force force ace_interaction_disableNegativeRating = true;
force force ace_interaction_enableMagazinePassing = true;
force force ace_interaction_enableTeamManagement = true;

// ACE Interaction Menu
force force ace_gestures_showOnInteractionMenu = 2;
force force ace_interact_menu_actionOnKeyRelease = true;
force force ace_interact_menu_addBuildingActions = false;
force force ace_interact_menu_alwaysUseCursorInteraction = true;
force force ace_interact_menu_alwaysUseCursorSelfInteraction = true;
force force ace_interact_menu_colorShadowMax = [0,0,0,1];
force force ace_interact_menu_colorShadowMin = [0,0,0,0.25];
force force ace_interact_menu_colorTextMax = [1,1,1,1];
force force ace_interact_menu_colorTextMin = [1,1,1,0.25];
force force ace_interact_menu_cursorKeepCentered = false;
force force ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
force force ace_interact_menu_menuAnimationSpeed = 0;
force force ace_interact_menu_menuBackground = 1;
force force ace_interact_menu_menuBackgroundSelf = 1;
force force ace_interact_menu_selectorColor = [1,0,0];
force force ace_interact_menu_shadowSetting = 1;
force force ace_interact_menu_textSize = 2;
force force ace_interact_menu_useListMenu = true;
force force ace_interact_menu_useListMenuSelf = true;

// ACE Logistics
force force ace_cargo_enable = true;
force force ace_cargo_loadTimeCoefficient = 5;
force force ace_cargo_paradropTimeCoefficent = 2.5;
force force ace_rearm_distance = 20;
force force ace_rearm_level = 0;
force force ace_rearm_supply = 0;
force force ace_refuel_hoseLength = 20;
force force ace_refuel_rate = 2;
force force ace_repair_addSpareParts = true;
force force ace_repair_autoShutOffEngineWhenStartingRepair = true;
force force ace_repair_consumeItem_toolKit = 0;
force force ace_repair_displayTextOnRepair = true;
force force ace_repair_engineerSetting_fullRepair = 0;
force force ace_repair_engineerSetting_repair = 0;
force force ace_repair_engineerSetting_wheel = 0;
force force ace_repair_fullRepairLocation = 0;
force force ace_repair_fullRepairRequiredItems = [];
force force ace_repair_miscRepairRequiredItems = [];
force force ace_repair_repairDamageThreshold = 1;
force force ace_repair_repairDamageThreshold_engineer = 1;
force force ace_repair_wheelRepairRequiredItems = [];

// ACE Magazine Repack
force force ace_magazinerepack_timePerAmmo = 1;
force force ace_magazinerepack_timePerBeltLink = 6;
force force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force force ace_map_BFT_Enabled = true;
force force ace_map_BFT_HideAiGroups = false;
force force ace_map_BFT_Interval = 1.0;
force force ace_map_BFT_ShowPlayerNames = false;
force force ace_map_DefaultChannel = 0;
force force ace_map_mapGlow = false;
force force ace_map_mapIllumination = false;
force force ace_map_mapLimitZoom = false;
force force ace_map_mapShake = false;
force force ace_map_mapShowCursorCoordinates = true;
force force ace_markers_moveRestriction = 3;
force force ace_markers_timestampEnabled = true;
force force ace_markers_timestampFormat = "HH:MM";
force force ace_markers_timestampHourFormat = 24;

// ACE Map Gestures
force force ace_map_gestures_allowCurator = true;
force force ace_map_gestures_allowSpectator = true;
force force ace_map_gestures_briefingMode = 0;
force force ace_map_gestures_defaultColor = [0,0,1,1];
force force ace_map_gestures_defaultLeadColor = [1,0,0,1];
force force ace_map_gestures_enabled = true;
force force ace_map_gestures_interval = 0.00594153;
force force ace_map_gestures_maxRange = 20;
force force ace_map_gestures_maxRangeCamera = 14;
force force ace_map_gestures_nameTextColor = [0,1,0,1];
force force ace_map_gestures_onlyShowFriendlys = false;

// ACE Map Tools
force force ace_maptools_drawStraightLines = true;
force force ace_maptools_rotateModifierKey = 1;

// ACE Medical
force force ace_medical_level = 1;
force force ace_medical_medicSetting = 0;
force force ace_medical_increaseTrainingInLocations = true;
force force ace_medical_enableFor = 0;
force force ace_medical_enableOverdosing = false;
force force ace_medical_bleedingCoefficient = 0.01;
force force ace_medical_painCoefficient = 0.1;
force force ace_medical_enableAdvancedWounds = false;
force force ace_medical_enableVehicleCrashes = false;
force force ace_medical_enableScreams = true;
force force ace_medical_playerDamageThreshold = 2.14854;
force force ace_medical_AIDamageThreshold = 2;
force force ace_medical_enableUnconsciousnessAI = 1;
force force ace_medical_remoteControlledAI = true;
force force ace_medical_preventInstaDeath = true;
force force ace_medical_enableRevive = 1;
force force ace_medical_maxReviveTime = 1200;
force force ace_medical_amountOfReviveLives = -1;
force force ace_medical_allowDeadBodyMovement = true;
force force ace_medical_allowLitterCreation = true;
force force ace_medical_litterSimulationDetail = 2;
force force ace_medical_litterCleanUpDelay = 120;
force force ace_medical_medicSetting_basicEpi = 0;
force force ace_medical_medicSetting_PAK = 0;
force force ace_medical_medicSetting_SurgicalKit = 0;
force force ace_medical_consumeItem_PAK = 0;
force force ace_medical_consumeItem_SurgicalKit = 0;
force force ace_medical_useLocation_basicEpi = 0;
force force ace_medical_useLocation_PAK = 0;
force force ace_medical_useLocation_SurgicalKit = 0;
force force ace_medical_useCondition_PAK = 0;
force force ace_medical_useCondition_SurgicalKit = 0;
force force ace_medical_keepLocalSettingsSynced = true;
force force ace_medical_healHitPointAfterAdvBandage = true;
force force ace_medical_painIsOnlySuppressed = false;
force force ace_medical_painEffectType = 0;
force force ace_medical_allowUnconsciousAnimationOnTreatment = true;
force force ace_medical_moveUnitsFromGroupOnUnconscious = false;
force force ace_medical_menuTypeStyle = 0;
force force ace_medical_delayUnconCaptive = 6;
force force ace_medical_ai_enabledFor = 2;
force force ace_medical_menu_allow = 1;
force force ace_medical_menu_useMenu = 1;
force force ace_medical_menu_openAfterTreatment = true;
force force ace_medical_menu_maxRange = 3;

// ACE Name Tags
force force ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [1,0.67,0.67,1];
ace_nametags_nametagColorYellow = [1,1,0.67,1];
force force ace_nametags_playerNamesMaxAlpha = 0.7;
force force ace_nametags_playerNamesViewDistance = 5;
force force ace_nametags_showCursorTagForVehicles = false;
force force ace_nametags_showNamesForAI = false;
force force ace_nametags_showPlayerNames = 0;
force force ace_nametags_showPlayerRanks = false;
force force ace_nametags_showSoundWaves = 0;
force force ace_nametags_showVehicleCrewInfo = true;
force force ace_nametags_tagSize = 2;

// ACE Nightvision
force force ace_nightvision_aimDownSightsBlur = 0.1;
force force ace_nightvision_disableNVGsWithSights = false;
force force ace_nightvision_effectScaling = 0.1;
force force ace_nightvision_fogScaling = 0;
force force ace_nightvision_noiseScaling = 0.1;
force force ace_nightvision_shutterEffects = true;

// ACE Pointing
force force ace_finger_enabled = true;
force force ace_finger_indicatorColor = [0,1,0,1];
force force ace_finger_indicatorForSelf = true;
force force ace_finger_maxRange = 25;

// ACE Pylons
force force ace_pylons_enabledForZeus = true;
force force ace_pylons_enabledFromAmmoTrucks = true;
force force ace_pylons_rearmNewPylons = true;
force force ace_pylons_requireEngineer = false;
force force ace_pylons_requireToolkit = false;
force force ace_pylons_searchDistance = 20;
force force ace_pylons_timePerPylon = 1;

// ACE Quick Mount
force force ace_quickmount_distance = 6.00119;
force force ace_quickmount_enabled = true;
force force ace_quickmount_enableMenu = 3;
force force ace_quickmount_priority = 3;
force force ace_quickmount_speed = 18;

// ACE Respawn
force force ace_respawn_removeDeadBodiesDisconnected = true;
force force ace_respawn_savePreDeathGear = true;

// ACE Scopes
force force ace_scopes_correctZeroing = true;
force force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force force ace_scopes_defaultZeroRange = 100;
force force ace_scopes_enabled = true;
force force ace_scopes_forceUseOfAdjustmentTurrets = true;
force force ace_scopes_overwriteZeroRange = true;
force force ace_scopes_simplifiedZeroing = false;
force force ace_scopes_useLegacyUI = false;
force force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force force ace_scopes_zeroReferenceHumidity = 0;
force force ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
force force ace_spectator_enableAI = false;
force force ace_spectator_maxFollowDistance = 5;
force force ace_spectator_restrictModes = 0;
force force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force force ace_switchunits_enableSafeZone = true;
force force ace_switchunits_enableSwitchUnits = false;
force force ace_switchunits_safeZoneRadius = 100;
force force ace_switchunits_switchToCivilian = false;
force force ace_switchunits_switchToEast = false;
force force ace_switchunits_switchToIndependent = false;
force force ace_switchunits_switchToWest = false;

// ACE Trenches
force force ace_trenches_bigEnvelopeDigDuration = 323;
force force ace_trenches_bigEnvelopeRemoveDuration = 133;
force force ace_trenches_smallEnvelopeDigDuration = 139;
force force ace_trenches_smallEnvelopeRemoveDuration = 72;

// ACE Uncategorized
force force ace_fastroping_requireRopeItems = false;
force force ace_gunbag_swapGunbagEnabled = true;
force force ace_hitreactions_minDamageToTrigger = 0.1;
force force ace_inventory_inventoryDisplaySize = 0;
force force ace_laser_dispersionCount = 1;
force force ace_microdagr_mapDataAvailable = 2;
force force ace_microdagr_waypointPrecision = 3;
force force ace_optionsmenu_showNewsOnMainMenu = false;
force force ace_overpressure_distanceCoefficient = 1;
force force ace_tagging_quickTag = 2;

// ACE User Interface
force force ace_ui_allowSelectiveUI = true;
force force ace_ui_ammoCount = false;
force force ace_ui_ammoType = true;
force force ace_ui_commandMenu = true;
force force ace_ui_firingMode = true;
force force ace_ui_groupBar = false;
force force ace_ui_gunnerAmmoCount = true;
force force ace_ui_gunnerAmmoType = true;
force force ace_ui_gunnerFiringMode = true;
force force ace_ui_gunnerLaunchableCount = true;
force force ace_ui_gunnerLaunchableName = true;
force force ace_ui_gunnerMagCount = true;
force force ace_ui_gunnerWeaponLowerInfoBackground = true;
force force ace_ui_gunnerWeaponName = true;
force force ace_ui_gunnerWeaponNameBackground = true;
force force ace_ui_gunnerZeroing = true;
force force ace_ui_magCount = true;
force force ace_ui_soldierVehicleWeaponInfo = true;
force force ace_ui_staminaBar = true;
force force ace_ui_stance = true;
force force ace_ui_throwableCount = true;
force force ace_ui_throwableName = true;
force force ace_ui_vehicleAltitude = true;
force force ace_ui_vehicleCompass = true;
force force ace_ui_vehicleDamage = true;
force force ace_ui_vehicleFuelBar = true;
force force ace_ui_vehicleInfoBackground = true;
force force ace_ui_vehicleName = true;
force force ace_ui_vehicleNameBackground = true;
force force ace_ui_vehicleRadar = true;
force force ace_ui_vehicleSpeed = true;
force force ace_ui_weaponLowerInfoBackground = true;
force force ace_ui_weaponName = true;
force force ace_ui_weaponNameBackground = true;
force force ace_ui_zeroing = true;

// ACE Vehicle Lock
force force ace_vehiclelock_defaultLockpickStrength = 10;
force force ace_vehiclelock_lockVehicleInventory = false;
force force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicles
ace_vehicles_hideEjectAction = true;
force force ace_vehicles_keepEngineRunning = false;
ace_vehicles_speedLimiterStep = 5;

// ACE View Distance Limiter
ace_viewdistance_enabled = true;
ace_viewdistance_limitViewDistance = 12000;
ace_viewdistance_objectViewDistanceCoeff = 4;
ace_viewdistance_viewDistanceAirVehicle = 4;
ace_viewdistance_viewDistanceLandVehicle = 4;
ace_viewdistance_viewDistanceOnFoot = 4;

// ACE Weapons
force force ace_common_persistentLaserEnabled = false;
force force ace_laserpointer_enabled = true;
force force ace_reload_displayText = true;
force force ace_reload_showCheckAmmoSelf = false;
force force ace_weaponselect_displayText = true;

// ACE Weather
force force ace_weather_enabled = false;
force force ace_weather_showCheckAirTemperature = false;
force force ace_weather_updateInterval = 259.986;
force force ace_weather_windSimulation = false;

// ACE Wind Deflection
force force ace_winddeflection_enabled = true;
force force ace_winddeflection_simulationInterval = 0.05;
force force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force force ace_zeus_autoAddObjects = true;
force force ace_zeus_canCreateZeus = 0;
force force ace_zeus_radioOrdnance = false;
force force ace_zeus_remoteWind = false;
force force ace_zeus_revealMines = 0;
force force ace_zeus_zeusAscension = false;
force force ace_zeus_zeusBird = false;

// ACEX Field Rations
force force acex_field_rations_affectAdvancedFatigue = false;
force force acex_field_rations_enabled = false;
force force acex_field_rations_hudShowLevel = 0;
force force acex_field_rations_hudTransparency = -1;
force force acex_field_rations_hudType = 0;
force force acex_field_rations_hungerSatiated = 1;
force force acex_field_rations_terrainObjectActions = false;
force force acex_field_rations_thirstQuenched = 1;
force force acex_field_rations_timeWithoutFood = 2;
force force acex_field_rations_timeWithoutWater = 2;
force force acex_field_rations_waterSourceActions = 2;

// ACEX Fortify
force force acex_fortify_settingHint = 0;

// ACEX Headless
force force acex_headless_delay = 15;
force force acex_headless_enabled = false;
force force acex_headless_endMission = 0;
force force acex_headless_log = false;
force force acex_headless_transferLoadout = 0;

// ACEX Sitting
force force acex_sitting_enable = true;

// ACEX View Restriction
force force acex_viewrestriction_mode = 0;
force force acex_viewrestriction_modeSelectiveAir = 0;
force force acex_viewrestriction_modeSelectiveFoot = 0;
force force acex_viewrestriction_modeSelectiveLand = 0;
force force acex_viewrestriction_modeSelectiveSea = 0;
force force acex_viewrestriction_preserveView = false;

// ACEX Volume
force force acex_volume_enabled = true;
force force acex_volume_fadeDelay = 2;
force force acex_volume_lowerInVehicles = true;
force force acex_volume_reduction = 5;
force force acex_volume_remindIfLowered = true;
force force acex_volume_showNotification = true;

// Achilles - Available Factions
force force Achilles_var_BLU_CTRG_F = true;
force force Achilles_var_BLU_F = true;
force force Achilles_var_BLU_G_F = true;
force force Achilles_var_BLU_GEN_F = true;
force force Achilles_var_BLU_T_F = true;
force force Achilles_var_BLU_W_F = true;
force force Achilles_var_BRPMC = true;
force force Achilles_var_CIV_F = true;
force force Achilles_var_CIV_IDAP_F = true;
force force Achilles_var_FIR_AWS_ENEMY_F = true;
force force Achilles_var_FIR_AWS_FRND_F = true;
force force Achilles_var_fsog3_faction = true;
force force Achilles_var_IND_C_F = true;
force force Achilles_var_IND_E_F = true;
force force Achilles_var_IND_F = true;
force force Achilles_var_IND_G_F = true;
force force Achilles_var_IND_L_F = true;
force force Achilles_var_Interactive_F = true;
force force Achilles_var_OPF_F = true;
force force Achilles_var_OPF_G_F = true;
force force Achilles_var_OPF_GEN_F = true;
force force Achilles_var_OPF_R_F = true;
force force Achilles_var_OPF_T_F = true;
force force Achilles_var_OPF_V_F = true;
force force Achilles_var_RWG = true;
force force Achilles_var_TF160 = true;
force force Achilles_var_USA = true;
force force Achilles_var_USMC = true;
force force Achilles_var_USN = true;
force force Achilles_var_Virtual_F = true;

// Achilles - Available Modules
force force Achilles_var_Achilles_ACE_Heal_Module = true;
force force Achilles_var_Achilles_ACE_ImmersiveHeal_Module = true;
force force Achilles_var_Achilles_ACE_Injury_Module = true;
force force Achilles_var_Achilles_AddECM_Module = true;
force force Achilles_var_Achilles_Animation_Module = true;
force force Achilles_var_Achilles_Attach_To_Module = true;
force force Achilles_var_Achilles_Bind_Variable_Module = true;
force force Achilles_var_Achilles_Buildings_Destroy_Module = true;
force force Achilles_var_Achilles_Buildings_LockDoors_Module = true;
force force Achilles_var_Achilles_Buildings_ToggleLight_Module = true;
force force Achilles_var_Achilles_CAS_Module = true;
force force Achilles_var_Achilles_Change_Ability_Module = true;
force force Achilles_var_Achilles_Change_Altitude_Module = true;
force force Achilles_var_Achilles_Chatter_Module = true;
force force Achilles_var_Achilles_Create_Universal_Target_Module = true;
force force Achilles_var_Achilles_DevTools_FunctionViewer = true;
force force Achilles_var_Achilles_DevTools_ShowInAnimViewer = true;
force force Achilles_var_Achilles_DevTools_ShowInConfig = true;
force force Achilles_var_Achilles_Earthquake_Module = true;
force force Achilles_var_Achilles_Hide_Objects_Module = true;
force force Achilles_var_Achilles_IED_Module = true;
force force Achilles_var_Achilles_Make_Invincible_Module = true;
force force Achilles_var_Achilles_Module_Arsenal_AddFull = true;
force force Achilles_var_Achilles_Module_Arsenal_CopyToClipboard = true;
force force Achilles_var_Achilles_Module_Arsenal_CreateCustom = true;
force force Achilles_var_Achilles_Module_Arsenal_Paste = true;
force force Achilles_var_Achilles_Module_Arsenal_Remove = true;
force force Achilles_var_Achilles_Module_Change_Side_Relations = true;
force force Achilles_var_Achilles_Module_Equipment_Attach_Dettach_Effect = true;
force force Achilles_var_Achilles_Module_FireSupport_CASBomb = true;
force force Achilles_var_Achilles_Module_FireSupport_CASGun = true;
force force Achilles_var_Achilles_Module_FireSupport_CASGunMissile = true;
force force Achilles_var_Achilles_Module_FireSupport_CASMissile = true;
force force Achilles_var_Achilles_Module_Manage_Advanced_Compositions = true;
force force Achilles_var_Achilles_Module_Player_Set_Frequencies = true;
force force Achilles_var_Achilles_Module_Rotation = true;
force force Achilles_var_Achilles_Module_Spawn_Advanced_Composition = true;
force force Achilles_var_Achilles_Module_Spawn_Carrier = true;
force force Achilles_var_Achilles_Module_Spawn_Destroyer = true;
force force Achilles_var_Achilles_Module_Spawn_Effects = true;
force force Achilles_var_Achilles_Module_Spawn_Explosives = true;
force force Achilles_var_Achilles_Module_Spawn_Intel = true;
force force Achilles_var_Achilles_Module_Supply_Drop = true;
force force Achilles_var_Achilles_Module_Zeus_AssignZeus = true;
force force Achilles_var_Achilles_Module_Zeus_SwitchUnit = true;
force force Achilles_var_Achilles_Nuke_Module = true;
force force Achilles_var_Achilles_Patrol_Module = true;
force force Achilles_var_Achilles_Set_Date_Module = true;
force force Achilles_var_Achilles_Set_Height_Module = true;
force force Achilles_var_Achilles_Set_Weather_Module = true;
force force Achilles_var_Achilles_Sit_On_Chair_Module = true;
force force Achilles_var_Achilles_SuicideBomber_Module = true;
force force Achilles_var_Achilles_Suppressive_Fire_Module = true;
force force Achilles_var_Achilles_SurrenderUnit_Module = true;
force force Achilles_var_Achilles_Toggle_Simulation_Module = true;
force force Achilles_var_Achilles_Transfer_Ownership_Module = true;
force force Achilles_var_Ares_Artillery_Fire_Mission_Module = true;
force force Achilles_var_Ares_Module_Bahaviour_Garrison_Nearest = true;
force force Achilles_var_Ares_Module_Bahaviour_UnGarrison = true;
force force Achilles_var_Ares_Module_Behaviour_Search_Nearby_And_Garrison = true;
force force Achilles_var_Ares_Module_Behaviour_Search_Nearby_Building = true;
force force Achilles_var_Ares_Module_Dev_Tools_Create_Mission_SQF = true;
force force Achilles_var_Ares_Module_Dev_Tools_Execute_Code = true;
force force Achilles_var_Ares_Module_Equipment_Flashlight_IR_ON_OFF = true;
force force Achilles_var_Ares_Module_Equipment_NVD_TACLIGHT_IR = true;
force force Achilles_var_Ares_Module_Equipment_Turret_Optics = true;
force force Achilles_var_Ares_Module_Player_Change_Player_Side = true;
force force Achilles_var_Ares_Module_Player_Create_Teleporter = true;
force force Achilles_var_Ares_Module_Player_Teleport = true;
force force Achilles_var_Ares_Module_Reinforcements_Create_Lz = true;
force force Achilles_var_Ares_Module_Reinforcements_Create_Rp = true;
force force Achilles_var_Ares_Module_Reinforcements_Spawn_Units = true;
force force Achilles_var_Ares_Module_Spawn_Submarine = true;
force force Achilles_var_Ares_Module_Spawn_Trawler = true;
force force Achilles_var_Ares_Module_Zeus_Add_Remove_Editable_Objects = true;
force force Achilles_var_Ares_Module_Zeus_Hint = true;
force force Achilles_var_Ares_Module_Zeus_Switch_Side = true;
force force Achilles_var_Ares_Module_Zeus_Visibility = true;
force force Achilles_var_ModulePunishment_F = true;

// Achilles - Curator Vision Modes
force force achilles_curator_vision_blackhot = true;
force force achilles_curator_vision_blackhotgreencold = false;
force force achilles_curator_vision_blackhotredcold = false;
force force achilles_curator_vision_greenhotcold = false;
force force achilles_curator_vision_nvg = true;
force force achilles_curator_vision_redgreen = false;
force force achilles_curator_vision_redhot = false;
force force achilles_curator_vision_whitehot = true;
force force achilles_curator_vision_whitehotredcold = false;

// Achilles - Debug
Achilles_Debug_Output_Enabled = false;

// Achilles - Module Defaults
Achilles_var_setRadioFrequenciesLR_Default = "80.1";
Achilles_var_setRadioFrequenciesSR_Default = "80.2";

// Achilles - User Interface
force force Achilles_var_iconSelection = "Achilles_var_iconSelection_Ares";
force force Achilles_var_moduleTreeCollapse = true;
force force Achilles_var_moduleTreeDLC = true;
force force Achilles_var_moduleTreeHelmet = false;
Achilles_var_moduleTreeSearchPatch = false;

// Auto Weapon Lower
force force FARE_ANIM_LOWER = true;
force force FARE_ANIM_RAISE = true;
force force FARE_ANIM_SPEEDUP = 1.3;
force force FARE_CHECK_ADS = true;
force force FARE_CHECK_HANDGUN = true;
force force FARE_CHECK_LASER = true;
force force FARE_CHECK_LEAN = true;
force force FARE_CHECK_LIGHT = true;
force force FARE_CHECK_MOVE = true;
force force FARE_CHECK_NEAR = false;
force force FARE_CHECK_RELOAD = true;
force force FARE_CHECK_REST = true;
force force FARE_CHECK_SHOOT = true;
force force FARE_CHECK_TACTICAL = true;
force force FARE_CHECK_WALK = true;
force force FARE_DELAY_DAYTIME = 0.8;
force force FARE_DELAY_DEFAULT = 5.10258;
force force FARE_DELAY_NEAR = 0;
force force FARE_DELAY_SHOOT = 19.9623;
force force FARE_DISTANCE_FIRED = 10;
force force FARE_ENABLED = true;
force force FARE_STATE_ACE_MENU = true;
force force FARE_STATE_DAYTIME = true;
force force FARE_STATE_GEAR = true;
force force FARE_STATE_MEDICAL = true;

// CBA UI
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// CBA Weapons
force force cba_disposable_dropUsedLauncher = 2;
force force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
cba_optics_usePipOptics = true;

// DUI - Squad Radar - Indicators
force force diwako_dui_indicators_crew_range_enabled = true;
force force diwako_dui_indicators_fov_scale = true;
force force diwako_dui_indicators_icon_buddy = true;
force force diwako_dui_indicators_icon_leader = true;
force force diwako_dui_indicators_icon_medic = false;
force force diwako_dui_indicators_range = 100;
force force diwako_dui_indicators_range_crew = 300;
force force diwako_dui_indicators_range_scale = true;
force force diwako_dui_indicators_show = true;
force force diwako_dui_indicators_size = 0.5;
force force diwako_dui_indicators_style = "standard";
force force diwako_dui_indicators_useACENametagsRange = false;

// DUI - Squad Radar - Main
force force diwako_dui_ace_hide_interaction = false;
force force diwako_dui_colors = "wargame";
force force diwako_dui_font = "RobotoCondensed";
force force diwako_dui_icon_style = "standard";
force force diwako_dui_main_hide_ui_by_default = false;
force force diwako_dui_main_squadBlue = [0,0,1,1];
force force diwako_dui_main_squadGreen = [0,1,0,1];
force force diwako_dui_main_squadMain = [1,1,1,1];
force force diwako_dui_main_squadRed = [1,0,0,1];
force force diwako_dui_main_squadYellow = [1,1,0,1];

// DUI - Squad Radar - Radar
force force diwako_dui_compass_hide_alone_group = false;
force force diwako_dui_compass_hide_blip_alone_group = false;
force force diwako_dui_compass_icon_scale = 0.901;
force force diwako_dui_compass_opacity = 1;
force force diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\classic\limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\classic\full.paa"];
force force diwako_dui_compassRange = 40.2641;
force force diwako_dui_compassRefreshrate = 0;
force force diwako_dui_dir_showMildot = false;
force force diwako_dui_dir_size = 0.9;
force force diwako_dui_distanceWarning = 0;
force force diwako_dui_enable_compass = true;
force force diwako_dui_enable_compass_dir = 1;
force force diwako_dui_enable_occlusion = false;
force force diwako_dui_enable_occlusion_cone = 360;
force force diwako_dui_hudScaling = 1.25;
force force diwako_dui_namelist = true;
force force diwako_dui_namelist_bg = 0;
force force diwako_dui_namelist_only_buddy_icon = false;
force force diwako_dui_namelist_size = 0.875;
force force diwako_dui_namelist_text_shadow = 2;
force force diwako_dui_namelist_width = 215;
force force diwako_dui_radar_ace_finger = true;
force force diwako_dui_radar_compassRangeCrew = 500;
force force diwako_dui_radar_group_by_vehicle = false;
force force diwako_dui_radar_icon_scale_crew = 6;
force force diwako_dui_radar_leadingZeroes = true;
force force diwako_dui_radar_namelist_hideWhenLeader = false;
force force diwako_dui_radar_namelist_vertical_spacing = 1;
force force diwako_dui_radar_occlusion_fade_time = 10;
force force diwako_dui_radar_pointer_color = [1,0.5,0,1];
force force diwako_dui_radar_pointer_style = "standard";
force force diwako_dui_radar_show_cardinal_points = true;
force force diwako_dui_radar_showSpeaking = false;
force force diwako_dui_radar_showSpeaking_radioOnly = false;
force force diwako_dui_radar_showSpeaking_replaceIcon = true;
force force diwako_dui_radar_sortType = "fireteam";
force force diwako_dui_radar_sqlFirst = true;
force force diwako_dui_radar_trackingColor = [0.93,0.26,0.93,1];
force force diwako_dui_radar_vehicleCompassEnabled = false;
force force diwako_dui_reset_ui_pos = false;
force force diwako_dui_use_layout_editor = false;

// F/A-18
js_jc_fa18_advancedStart = false;
js_jc_fa18_atflirRequire = false;
js_jc_fa18_canopyLoss = false;
js_jc_fa18_cursorSensitivity = 2.5;
js_jc_fa18_interactCursor = true;
js_jc_fa18_interactionRadiusMod = 1;
js_jc_fa18_mav_tdcDepressRequiredForMove = true;
js_jc_fa18_showLabels = true;

// IFF strobe
force force GDMN_setting_NVG = true;
force force GDMN_setting_thermal = true;

// ITC Air
itc_air_drop_force = false;
itc_air_fcs_overrideITGT = false;
itc_air_paveway_realism = false;

// LAMBS Danger
force force lambs_danger_combatShareRange = 200;
force force lambs_danger_CQB_formations_COLUMN = false;
force force lambs_danger_CQB_formations_DIAMOND = true;
force force lambs_danger_CQB_formations_ECH LEFT = false;
force force lambs_danger_CQB_formations_ECH RIGHT = false;
force force lambs_danger_CQB_formations_FILE = true;
force force lambs_danger_CQB_formations_LINE = false;
force force lambs_danger_CQB_formations_STAG COLUMN = false;
force force lambs_danger_CQB_formations_VEE = false;
force force lambs_danger_CQB_formations_WEDGE = false;
force force lambs_danger_CQB_range = 60;
force force lambs_danger_debug_Drawing = false;
force force lambs_danger_debug_FSM = false;
force force lambs_danger_debug_FSM_civ = false;
force force lambs_danger_debug_functions = false;
force force lambs_danger_disableAIAutonomousManoeuvres = false;
force force lambs_danger_disableAICallouts = false;
force force lambs_danger_disableAIDeployStaticWeapons = false;
force force lambs_danger_disableAIFindStaticWeapons = false;
force force lambs_danger_disableAIFleeing = false;
force force lambs_danger_disableAIGestures = false;
force force lambs_danger_disableAIHideFromTanksAndAircraft = false;
force force lambs_danger_disableAIImediateAction = false;
force force lambs_danger_disableAIPlayerGroup = false;
force force lambs_danger_disableAIPlayerGroupReaction = false;
force force lambs_danger_disableAIPlayerGroupSuppression = false;
force force lambs_danger_disableAutonomousFlares = false;
force force lambs_danger_disableAutonomousSmokeGrenades = false;
force force lambs_danger_maxRevealValue = 1;
force force lambs_danger_minFriendlySuppressionDistance = 5;
force force lambs_danger_minSuppression_range = 68.301;
force force lambs_danger_panic_chance = 5.05;
force force lambs_danger_radio_backpack = 2000;
force force lambs_danger_radio_disabled = false;
force force lambs_danger_radio_EAST = 500;
force force lambs_danger_radio_GUER = 500;
force force lambs_danger_radio_shout = 100;
force force lambs_danger_radio_WEST = 500;
force force lambs_danger_RenderExpectedDestination = false;

// LAMBS Danger Eventhandlers
force force lambs_eventhandlers_ExplosionEventHandlerEnabled = true;
force force lambs_eventhandlers_ExplosionReactionTime = 9;

// LAMBS Danger WP
force force lambs_wp_autoAddArtillery = false;

// Metis Marker
mts_markers_saveLastSelection = false;
mts_markers_showPresetsUI = false;

// MrSanchez' Headlamp
force force SAN_Headlamp_AI_UpdateRate = 30;
force force SAN_Headlamp_Arcade = true;
force force SAN_Headlamp_Multiplayer_UpdateRate = 30;
force force SAN_Headlamp_RenderDistance = 250;
force force SAN_Headlamp_SoundClickEnabled = true;

// STUI Settings
force force STGI_Settings_Enabled = false;
force force STGI_Settings_UnconsciousFadeEnabled = true;
force force STHud_Settings_ColourBlindMode = "Normal";
force force STHud_Settings_Font = "PuristaSemibold";
force force STHud_Settings_HUDMode = 0;
force force STHud_Settings_Occlusion = true;
force force STHud_Settings_RemoveDeadViaProximity = true;
force force STHud_Settings_SquadBar = true;
force force STHud_Settings_TextShadow = 0;
force force STHud_Settings_UnconsciousFadeEnabled = true;
force force STNT_Settings_Enabled = true;

// TFAR 1.x - Global settings
force TFAR_allowDebugging = true;
force force TFAR_AICanHearPlayer = false;
force force TFAR_AICanHearSpeaker = false;
force force TFAR_enableIntercom = true;
force force TFAR_defaultIntercomSlot = -1;
force force TFAR_fullDuplex = true;
force force TFAR_giveLongRangeRadioToGroupLeaders = false;
force force TFAR_giveMicroDagrToSoldier = false;
force force TFAR_givePersonalRadioToRegularSoldier = true;
force force TFAR_objectInterceptionEnabled = false;
force force TFAR_SameLRFrequenciesForSide = true;
force force TFAR_SameSRFrequenciesForSide = true;
force force TFAR_spectatorCanHearEnemyUnits = false;
force force TFAR_spectatorCanHearFriendlies = true;
force force TFAR_takingRadio = 1;
force TFAR_setting_defaultFrequencies_lr_east = "";
force TFAR_setting_defaultFrequencies_lr_independent = "";
force TFAR_setting_defaultFrequencies_lr_west = "";
force TFAR_setting_defaultFrequencies_sr_east = "";
force TFAR_setting_defaultFrequencies_sr_independent = "";
force TFAR_setting_defaultFrequencies_sr_west = "";
force TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
force TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
force TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
force TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
force TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
force TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
force TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
force TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc148jem";
force TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
force TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_pnr1000a";
force TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
force tfar_radiocode_east = "_opfor";
force tfar_radiocode_independent = "_independent";
force tfar_radiocode_west = "_bluefor";
force tfar_radioCodesDisabled = false;
force TFAR_Teamspeak_Channel_Name = "TaskForceRadio";
force TFAR_Teamspeak_Channel_Password = "123";
force force tfar_core_noTSNotConnectedHint = true;
force TFAR_disableAutoMute = false;
force force TFAR_experimentalVehicleIsolation = true;
force TFAR_instantiate_instantiateAtBriefing = false;
force force TFAR_objectInterceptionStrength = 400;
force force TFAR_globalRadioRangeCoef = 10;
force force tfar_terrain_interception_coefficient = 1;
force force TFAR_voiceCone = true;

// TFAR 1.x - Clientside settings
force force TFAR_curatorCamEars = true;
TFAR_default_radioVolume = 5;
TFAR_intercomDucking = 0.3;
TFAR_intercomVolume = 0.276113;
force force TFAR_moveWhileTabbedOut = true;
force force TFAR_noAutomoveSpectator = false;
force force TFAR_oldVolumeHint = false;
TFAR_pluginTimeout = 10.0493;
TFAR_PosUpdateMode = 0.1;
force force TFAR_showChannelChangedHint = true;
force force TFAR_ShowDiaryRecord = true;
force force TFAR_showTransmittingHint = true;
force force TFAR_ShowVolumeHUD = true;
TFAR_tangentReleaseDelay = 0;
TFAR_VolumeHudTransparency = 0.486398;
TFAR_volumeModifier_forceSpeech = true;

// Turret Enhanced
force force Fat_Lurch_Grid = true;
force force Fat_Lurch_GridNum = 10;
force force Fat_Lurch_MapSlew = true;
force force Fat_Lurch_Markers = true;
force force Fat_Lurch_Measure = true;
force force Fat_Lurch_ShowAz = true;
force force Fat_Lurch_ShowEl = true;
force force Fat_Lurch_ShowNorth = true;
force force Fat_Lurch_ShowTarget = true;

// UH-60M
vtx_uh60m_simpleCollective = false;
vtx_uh60m_trackIR_interaction_cursor = false;
vtx_uh60m_trackIR_interaction_cursorSensitivity = 2.5;

// VCOM AI East Skill
force force Vcm_AISkills_East_AimingAccuracy = 0.08;
force force Vcm_AISkills_East_aimingShake = 0.1;
force force Vcm_AISkills_East_aimingSpeed = 0.4;
force force Vcm_AISkills_East_commanding = 1;
force force Vcm_AISkills_East_courage = 0.7;
force force Vcm_AISkills_East_general = 0.701618;
force force Vcm_AISkills_East_reloadSpeed = 1;
force force Vcm_AISkills_East_spotDistance = 0.85;
force force Vcm_AISkills_East_spotTime = 0.75;

// VCOM AI General Skill
force force Vcm_AISkills_General_AimingAccuracy = 0.08;
force force Vcm_AISkills_General_aimingShake = 0.1;
force force Vcm_AISkills_General_aimingSpeed = 0.4;
force force Vcm_AISkills_General_commanding = 1;
force force Vcm_AISkills_General_courage = 0.8;
force force Vcm_AISkills_General_general = 0.809229;
force force Vcm_AISkills_General_reloadSpeed = 1;
force force Vcm_AISkills_General_spotDistance = 0.85;
force force Vcm_AISkills_General_spotTime = 0.75;

// VCOM AI Resistance Skill
force force Vcm_AISkills_Resistance_AimingAccuracy = 0.08;
force force Vcm_AISkills_Resistance_aimingShake = 0.1;
force force Vcm_AISkills_Resistance_aimingSpeed = 0.1;
force force Vcm_AISkills_Resistance_commanding = 0.85;
force force Vcm_AISkills_Resistance_courage = 0.708792;
force force Vcm_AISkills_Resistance_general = 0.694444;
force force Vcm_AISkills_Resistance_reloadSpeed = 1;
force force Vcm_AISkills_Resistance_spotDistance = 0.85;
force force Vcm_AISkills_Resistance_spotTime = 0.75;

// VCOM AI West Skill
force force Vcm_AISkills_West_AimingAccuracy = 0.15;
force force Vcm_AISkills_West_aimingShake = 0.15;
force force Vcm_AISkills_West_aimingSpeed = 0.15;
force force Vcm_AISkills_West_commanding = 1;
force force Vcm_AISkills_West_courage = 0.751836;
force force Vcm_AISkills_West_general = 0.751836;
force force Vcm_AISkills_West_reloadSpeed = 1;
force force Vcm_AISkills_West_spotDistance = 0.85;
force force Vcm_AISkills_West_spotTime = 0.85;

// VCOM SETTINGS
force force VCM_ActivateAI = true;
force force VCM_ADVANCEDMOVEMENT = true;
force force VCM_AIDISTANCEVEHPATH = 0;
force force VCM_AIMagLimit = 2.44766;
force force VCM_AISkills_General_EM = true;
force force VCM_AISkills_General_EM_CHN = 10;
force force VCM_AISkills_General_EM_CLDWN = 60;
force force Vcm_AISkills_SideSpecific = false;
force force VCM_AISNIPERS = true;
force force VCM_AISUPPRESS = true;
force force VCM_ARTYSIDES = [WEST]; 
force force VCM_ARTYDELAY = 279.786;
force force VCM_ARTYENABLE = false;
force force VCM_ARTYSIDES = [WEST];
force force VCM_CARGOCHNG = true;
force force VCM_ClassSteal = true;
force force VCM_Debug = false;
force force VCM_DISEMBARKRANGE = 307.619;
force force Vcm_DrivingActivated = true;
force force VCM_ForceSpeed = true;
force force VCM_FRMCHANGE = true;
force force Vcm_GrenadeChance = 5.59572;
force force VCM_HEARINGDISTANCE = 500;
force force VCM_MEDICALACTIVE = true;
force force VCM_MINECHANCE = 9.90013;
force force VCM_MINEENABLED = false;
force force Vcm_PlayerAISkills = true;
force force VCM_RAGDOLL = true;
force force VCM_RAGDOLLCHC = 80.2054;
force force VCM_SKILLCHANGE = true;
force force Vcm_SmokeGrenadeChance = 1.1;
force force VCM_STATICARMT = 300;
force force VCM_StealVeh = false;
force force VCM_SUPDIST = 10;
force force VCM_TURRETUNLOAD = true;
force force VCM_USECBASETTINGS = true;
force force VCM_WARNDELAY = 90;
force force VCM_WARNDIST = 500;

// VXF Interaction
force force vxf_interaction_updateEvery = 5;
force force vxf_uh60_interaction_pointing = true;
