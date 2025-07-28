-- SPDX-License-Identifier: GPL-3.0-only
-- This file is used to document the Lua plugins engine API. It should not be included.

---@meta _
---@diagnostic disable: missing-return 
---@diagnostic disable: unused-local 

---@class ScenarioStructureBSPBreakableSurface
---@field centroid VectorXYZ
---@field radius number
---@field collisionSurfaceIndex integer

---@class EffectFlags
---@field disabledInAnniversaryByBloodSetting boolean
---@field mustBeDeterministicPc boolean
---@field mustBeDeterministicXbox boolean
---@field deletedWhenAttachmentDeactivates boolean

---@class ShaderTransparentWaterProperties
---@field waterFlags ShaderTransparentWaterFlags
---@field baseMap TagReference
---@field reflectionMapProperties ShaderSpecularProperties
---@field reflectionMap TagReference

---@class PredictedResource
---@field type PredictedResourceType
---@field resourceIndex integer
---@field tag TagHandle

---@alias GlowBoundaryEffect
---| "wrap"
---| "bounce"

---@class UnitHUDInterfaceAuxiliaryOverlay
---@field properties HUDInterfaceStaticElement
---@field type UnitHUDInterfacePanelType
---@field flags UnitHUDInterfaceAuxiliaryOverlayFlags

---@class ActorDefensive
---@field hideBehindCoverTime number[2]
---@field hideTargetNotVisibleTime number
---@field hideShieldFraction number
---@field attackShieldFraction number
---@field pursueShieldFraction number
---@field defensiveCrouchType ActorDefensiveCrouchType
---@field attackingCrouchThreshold number
---@field defendingCrouchThreshold number
---@field minStandTime number
---@field minCrouchTime number
---@field defendingHideTimeModifier number
---@field attackingEvasionThreshold number
---@field defendingEvasionThreshold number
---@field evasionSeekCoverChance number
---@field evasionDelayTime number
---@field maxSeekCoverDistance number
---@field coverDamageThreshold number
---@field stalkingDiscoveryTime number
---@field stalkingMaxDistance number
---@field stationaryFacingAngle number
---@field changeFacingStandTime number

---@class PlayerControlGlobals
---@field actionTestFlags integer
---@field testingForActionFlags integer
---@field disabledButtonFlags integer
---@field controlFlags integer
---@field localPlayers PlayerControl[1]

---@class SkyLightFlags
---@field affectsInteriors boolean
---@field affectsExteriors boolean

---@class DeviceMachine: Device
---@field type MachineType
---@field flags MachineFlags
---@field doorOpenTime number
---@field collisionResponse MachineCollisionResponse
---@field elevatorNode integer
---@field doorOpenTimeTicks integer

---@class ScenarioStructureBSPGlobalZrEferenceVector
---@field zReferenceI number
---@field zReferenceJ number
---@field zReferenceK number
---@field zReferenceL number

---@class ScenarioTextFlags
---@field bottomJustify boolean
---@field centerVertically boolean
---@field wrapVertically boolean
---@field wrapHorizontally boolean

---@alias ScenarioAtomType
---| "teleport"
---| "set_radius"
---| "look_object"
---| "look_player"
---| "look_random"
---| "move_immediate"
---| "die"
---| "loop"
---| "wait"
---| "initiative"
---| "targeting"
---| "vocalize"
---| "action"
---| "recording"
---| "animate"
---| "script"
---| "targeted_jump"
---| "running_jump"
---| "vehicle"
---| "grenade"
---| "shoot"
---| "crouch"
---| "animation_mode"
---| "look"
---| "move_in_direction"
---| "go_to_and_face"
---| "go_to"
---| "pause"

---@class DamageEffectMaterialModifier
---@field dirt number
---@field sand number
---@field stone number
---@field snow number
---@field wood number
---@field metalHollow number
---@field metalThin number
---@field metalThick number
---@field rubber number
---@field glass number
---@field forceField number
---@field grunt number
---@field hunterArmor number
---@field hunterSkin number
---@field elite number
---@field jackal number
---@field jackalEnergyShield number
---@field engineerSkin number
---@field engineerForceField number
---@field floodCombatForm number
---@field floodCarrierForm number
---@field cyborgArmor number
---@field cyborgEnergyShield number
---@field humanArmor number
---@field humanSkin number
---@field sentinel number
---@field monitor number
---@field plastic number
---@field water number
---@field leaves number
---@field eliteEnergyShield number
---@field ice number
---@field hunterShield number

---@class GlobalsPlayerControl
---@field magnetismFriction number
---@field magnetismAdhesion number
---@field inconsequentialTargetScale number
---@field lookAccelerationTime number
---@field lookAccelerationScale number
---@field lookPegThreshold number
---@field lookDefaultPitchRate number
---@field lookDefaultYawRate number
---@field lookAutolevellingScale number
---@field minimumWeaponSwapTicks integer
---@field minimumAutolevellingTicks integer
---@field minimumAngleForVehicleFlipping number
---@field lookFunction GlobalsLookFunction[]

---@class ProjectileNetworkData
---@field position VectorXYZ
---@field transitionalVelocity VectorXYZ

---@class ScenarioBiped
---@field type integer
---@field name integer
---@field properties ScenarioUnitProperties

---@class ScenarioStartingEquipmentFlags
---@field type3GrenadesOnly boolean
---@field type2GrenadesOnly boolean
---@field plasmaGrenadesOnly boolean
---@field noGrenades boolean

---@class ScenarioStructureBSPMaterialUncompressedRenderedVertex
---@field position VectorXYZ
---@field normal VectorXYZ
---@field binormal VectorXYZ
---@field tangent VectorXYZ
---@field textureCoords VectorXY

---@class DeviceMachineObject: DeviceObject
---@field deviceFlags DeviceMachineObjectFlags
---@field ticksSinceStartedOpening integer
---@field elevatorPosition VectorXYZ

---@class ModelDetailCutoff
---@field superHigh number
---@field high number
---@field medium number
---@field low number
---@field superLow number

---@class TagEntry
---@field primaryGroup TagGroup
---@field secondaryGroup TagGroup
---@field tertiaryGroup TagGroup
---@field handle TagHandle
---@field path string

---@class TagCollection
---@field tags TagCollectionTag[]

---@alias UIEventHandlerReferenceFunction
---| "load_game_menu_delete_finish"
---| "load_game_menu_delete_request"
---| "network_settings_defaults"
---| "network_settings_edit_a_port"
---| "direct_ip_edit_field"
---| "direct_ip_connect_go"
---| "direct_ip_connect_init"
---| "checking_for_updates_dismiss"
---| "checking_for_updates_ok"
---| "mp_type_set_mode"
---| "solo_menu_save_checkpoint"
---| "load_game_menu_activated"
---| "load_game_menu_dispose"
---| "load_game_menu_init"
---| "campaign_menu_continue"
---| "campaign_menu_init"
---| "video_screen_dispose"
---| "gamespy_get_patch"
---| "credits_dispose"
---| "credits_initialize"
---| "difficulty_item_select"
---| "credits_post_render"
---| "plr_prof_save_network_options"
---| "plr_prof_init_network_options"
---| "plr_prof_cancel_audio_set"
---| "emit_custom_activation_event"
---| "mp_game_options_choose"
---| "mp_prof_save_teamplay_options"
---| "mp_prof_init_teamplay_options"
---| "single_prev_cl_item_activated"
---| "mp_prof_save_vehicle_options"
---| "mp_prof_init_vehicle_options"
---| "mp_choose_team"
---| "mp_game_options_open"
---| "mp_pause_menu_open"
---| "controls_advanced_ok"
---| "controls_advanced_launch"
---| "controls_back_handler"
---| "mouse_spinner_1wide_click"
---| "gamespy_back_handler"
---| "gamespy_update_filter_settings"
---| "gamespy_dismiss_filters"
---| "video_test_dialog_accept"
---| "video_test_dialog_dispose"
---| "video_test_dialog_init"
---| "ss_start_game"
---| "ss_edit_server_password"
---| "ss_edit_server_name"
---| "server_settings_init"
---| "gamespy_dismiss_error"
---| "profile_manager_select"
---| "profile_manager_delete"
---| "profile_set_edit_begin"
---| "controls_screen_defaults"
---| "video_screen_defaults"
---| "audio_screen_defaults"
---| "mouse_screen_defaults"
---| "gamepad_screen_select_item"
---| "gamepad_screen_change_gamepads"
---| "gamepad_screen_dispose"
---| "gamepad_screen_init"
---| "mouse_emit_x_event"
---| "controls_screen_change_set"
---| "controls_screen_dispose"
---| "plr_prof_change_video_set"
---| "plr_prof_change_audio_set"
---| "plr_prof_init_audio_set"
---| "plr_prof_change_mouse_set"
---| "plr_prof_init_mouse_set"
---| "gamespy_select_button"
---| "gamespy_select_item"
---| "gamespy_select_header"
---| "gamespy_screen_dispose"
---| "gamespy_screen_init"
---| "controls_begin_binding"
---| "video_screen_init"
---| "controls_screen_init"
---| "mouse_spinner_3wide_click"
---| "mouse_emit_dpad_right_event"
---| "mouse_emit_dpad_left_event"
---| "mouse_emit_back_event"
---| "mouse_emit_accept_event"
---| "main_menu_quit_game"
---| "pause_game_invert_spinner_set"
---| "pause_game_invert_spinner_get"
---| "start_new_coop_game"
---| "pause_game_invert_pitch"
---| "exit_gracefully_to_xbox_dashboard"
---| "new_game_if_no_plyr_profiles"
---| "begin_music_fade_out"
---| "difficulty_menu_init"
---| "pop_history_stack_once"
---| "new_campaign_decision"
---| "new_campaign_chosen"
---| "exit_to_xbox_dashboard"
---| "close_if_not_editing_profile"
---| "net_game_unjoin_player"
---| "start_server_if_none_advertised"
---| "error_if_no_network_connection"
---| "sp_set_p2_controller_choice"
---| "sp_set_p1_controller_choice"
---| "sp_reset_controller_choices"
---| "run_xdemos"
---| "disable_if_no_xdemos"
---| "net_server_allow_start"
---| "net_server_defer_start"
---| "net_server_accept_conx"
---| "net_game_delay_start"
---| "net_game_speed_start"
---| "create_edit_player_profile"
---| "create_edit_playlist_profile"
---| "cancel_profile_delete"
---| "final_del_playlist_profile"
---| "final_del_player_profile"
---| "request_del_playlist_profile"
---| "request_del_player_profile"
---| "main_menu_switch_to_solo_game"
---| "mp_game_player_quit"
---| "plyr_prf_save_adv_cntl_set"
---| "plyr_prf_save_cntl_settings"
---| "plyr_prf_init_adv_cntl_set"
---| "plyr_prf_init_cntl_settings"
---| "player_profile_save_changes"
---| "player_profile_change_name"
---| "player_profile_end_editing"
---| "player_profile_begin_editing"
---| "color_picker_select_color"
---| "color_picker_menu_dispose"
---| "color_picker_menu_initialize"
---| "mp_profile_save_changes"
---| "mp_profile_init_indicator_opts"
---| "mp_profile_init_item_options"
---| "mp_profile_init_player_opts"
---| "mp_profile_init_racing_rules"
---| "mp_profile_init_oddball_rules"
---| "mp_profile_init_slayer_rules"
---| "mp_profile_init_koth_rules"
---| "mp_profile_init_ctf_rules"
---| "mp_profile_init_name"
---| "mp_profile_init_game_engine"
---| "mp_profile_set_indicator_opts"
---| "mp_profile_set_item_options"
---| "mp_profile_set_player_options"
---| "mp_profile_set_racing_rules"
---| "mp_profile_set_oddball_rules"
---| "mp_profile_set_slayer_rules"
---| "mp_profile_set_koth_rules"
---| "mp_profile_set_ctf_rules"
---| "mp_profile_change_name"
---| "mp_profile_set_game_engine"
---| "mp_profile_end_editing"
---| "mp_profile_begin_editing"
---| "_1wide_plyr_prof_set_for_game"
---| "_3wide_plyr_prof_set_for_game"
---| "player_profile_list_dispose"
---| "player_profile_list_initialize"
---| "net_game_join_player"
---| "swap_player_team"
---| "mp_profile_set_for_game"
---| "mp_profiles_list_dispose"
---| "mp_profiles_list_initialize"
---| "mp_level_select"
---| "mp_level_list_dispose"
---| "mp_level_list_initialize"
---| "pick_play_stage_for_quick_start"
---| "mp_type_menu_initialize"
---| "main_menu_intialize"
---| "coop_game_initialize"
---| "split_screen_game_initialize"
---| "net_game_join_from_server_list"
---| "shutdown_network_game"
---| "dispose_net_game_server_list"
---| "start_network_game_server"
---| "initialize_net_game_server_list"
---| "join_controller_to_mp_game"
---| "clear_multiplayer_player_joins"
---| "pause_game_return_to_main_menu"
---| "pause_game_restart_level"
---| "pause_game_restart_at_checkpoint"
---| "start_new_game"
---| "set_difficulty"
---| "solo_level_set_map"
---| "dispose_sp_level_list"
---| "initialize_sp_level_list_coop"
---| "initialize_sp_level_list_solo"
---| "unused_1"
---| "unused"
---| "list_goto_previous_item"
---| "list_goto_next_item"
---| "null"

---@class ShaderTransparentGlassSpecular
---@field specularMapScale number
---@field specularMap TagReference
---@field specularDetailMapScale number
---@field specularDetailMap TagReference

---@class ShaderEnvironmentBump
---@field bumpMapScale number
---@field bumpMap TagReference
---@field bumpMapScaleXy VectorXY

---@class LightShape
---@field radius number
---@field radiusModifer number[2]
---@field falloffAngle number
---@field cutoffAngle number
---@field lensFlareOnlyRadius number
---@field cosFalloffAngle number
---@field cosCutoffAngle number
---@field specularRadiusMultiplier number
---@field sinCutoffAngle number

---@class ScenarioAIConversationLine
---@field flags ScenarioAIConversationLineFlags
---@field participant integer
---@field addressee ScenarioAddressee
---@field addresseeParticipant integer
---@field lineDelayTime number
---@field variant1 TagReference
---@field variant2 TagReference
---@field variant3 TagReference
---@field variant4 TagReference
---@field variant5 TagReference
---@field variant6 TagReference

---@class ScenarioEncounter
---@field name string
---@field flags ScenarioEncounterFlags
---@field teamIndex ScenarioTeamIndex
---@field one integer
---@field searchBehavior ScenarioSearchBehavior
---@field manualBspIndex integer
---@field respawnDelay number[2]
---@field precomputedBspIndex integer
---@field squads ScenarioSquad[]
---@field platoons ScenarioPlatoon[]
---@field firingPositions ScenarioFiringPosition[]
---@field playerStartingLocations ScenarioPlayerStartingLocation[]

---@class ScenarioFiringPosition
---@field position VectorXYZ
---@field groupIndex ScenarioGroupIndex
---@field clusterIndex integer
---@field surfaceIndex integer

---@class ModelAnimationsTransform
---@field transform VectorXYZ

---@alias FlagTrailingEdgeShape
---| "trapezoid_short_bottom"
---| "trapezoid_short_top"
---| "convex_triangular"
---| "concave_triangular"
---| "flat"

---@class ScenarioNetgameEquipment
---@field flags ScenarioNetgameEquipmentFlags
---@field type0 ScenarioSpawnType
---@field type1 ScenarioSpawnType
---@field type2 ScenarioSpawnType
---@field type3 ScenarioSpawnType
---@field teamIndex integer
---@field spawnTime integer
---@field unknownFfffffff integer
---@field position VectorXYZ
---@field facing number
---@field itemCollection TagReference

---@class ScenarioEquipmentPalette
---@field name TagReference

---@class ModelAnimationsUnitDamageAnimations
---@field animation integer

---@class ScenarioStructureBSPGlobalDetailObjectCount
---@field count integer

---@class ShaderFlags
---@field transparentLit boolean
---@field ignoreNormals boolean
---@field simpleParameterization boolean

---@alias PhysicsFrictionType
---| "up"
---| "left"
---| "forward"
---| "point"

---@class ParticleSystemTypeStates
---@field name string
---@field durationBounds number[2]
---@field transitionTimeBounds number[2]
---@field scaleMultiplier number
---@field animationRateMultiplier number
---@field rotationRateMultiplier number
---@field colorMultiplier ColorARGB
---@field radiusMultiplier number
---@field minimumParticleCount number
---@field particleCreationRate number
---@field particleCreationPhysics ParticleSystemParticleCreationPhysics
---@field particleUpdatePhysics ParticleSystemParticleUpdatePhysics
---@field physicsConstants ParticleSystemPhysicsConstant[]

---@class VehicleFlags
---@field autoaimWhenTeamless boolean
---@field canTriggerAutomaticOpeningDoors boolean
---@field noFrictionWithDriver boolean
---@field noncombatVehicle boolean
---@field hasEbrake boolean
---@field unused boolean
---@field vehicleSteersDirectly boolean
---@field aiDriverHovering boolean
---@field aiDriverCanSidestep boolean
---@field aiDriverFlying boolean
---@field aiDriverEnable boolean
---@field aiUnused boolean
---@field aiDoesNotRequireDriver boolean
---@field aiWeaponCannotRotate boolean
---@field causesCollisionDamage boolean
---@field killsRidersAtTerminalVelocity boolean
---@field slideWakesPhysics boolean
---@field controlOppositeSpeedSetsBrake boolean
---@field gunnerPowerWakesPhysics boolean
---@field driverPowerWakesPhysics boolean
---@field turnWakesPhysics boolean
---@field speedWakesPhysics boolean

---@class HUDGlobalsButtonIcon
---@field sequenceIndex integer
---@field widthOffset integer
---@field offsetFromReferenceCorner VectorXYInt
---@field overrideIconColor integer
---@field frameRate integer
---@field flags HUDInterfaceMessagingFlags
---@field textIndex integer

---@class WeaponHUDInterface
---@field childHud TagReference
---@field flags WeaponHUDInterfaceFlags
---@field totalAmmoCutoff integer
---@field loadedAmmoCutoff integer
---@field heatCutoff integer
---@field ageCutoff integer
---@field anchor HUDInterfaceAnchor
---@field canvasSize HUDInterfaceCanvasSize
---@field staticElements WeaponHUDInterfaceStaticElement[]
---@field meterElements WeaponHUDInterfaceMeter[]
---@field numberElements WeaponHUDInterfaceNumber[]
---@field crosshairs WeaponHUDInterfaceCrosshair[]
---@field overlayElements WeaponHUDInterfaceOverlayElement[]
---@field crosshairTypes WeaponHUDInterfaceCrosshairTypeFlags
---@field screenEffect WeaponHUDInterfaceScreenEffect[]
---@field messagingInformation HUDInterfaceMessagingInformation

---@alias ActorType
---| "mounted_weapon"
---| "none"
---| "sentinel"
---| "monitor"
---| "carrier_form"
---| "infection_form"
---| "combat_form"
---| "crew"
---| "marine"
---| "player"
---| "assassin"
---| "engineer"
---| "hunter"
---| "grunt"
---| "jackal"
---| "elite"

---@class ModelCollisionGeometryBSP2DReference
---@field plane integer
---@field bsp2dNode integer

---@class ScenarioDecal
---@field decalType integer
---@field yaw integer
---@field pitch integer
---@field position VectorXYZ

---@class ScenarioStructureBSPSoundEnvironmentPalette
---@field name string
---@field soundEnvironment TagReference

---@class UnitWeapon
---@field weapon TagReference

---@class ShaderTransparentMapParameters
---@field mapUScale number
---@field mapVScale number
---@field mapUOffset number
---@field mapVOffset number
---@field mapRotation number
---@field mipmapBias number
---@field map TagReference

---@class ShaderTransparentWaterRipple
---@field contributionFactor number
---@field animationAngle number
---@field animationVelocity number
---@field mapOffset VectorXY
---@field mapRepeats integer
---@field mapIndex integer

---@class Unit: Object
---@field flags UnitFlags
---@field defaultTeam UnitDefaultTeam
---@field constantSoundVolume ObjectNoise
---@field riderDamageFraction number
---@field integratedLightToggle TagReference
---@field aIn UnitFunctionIn
---@field bIn UnitFunctionIn
---@field cIn UnitFunctionIn
---@field dIn UnitFunctionIn
---@field cameraFieldOfView number
---@field cameraStiffness number
---@field cameraMarkerName string
---@field cameraSubmergedMarkerName string
---@field pitchAutoLevel number
---@field pitchRange number[2]
---@field cameraTracks UnitCameraTrack[]
---@field seatAccelerationScale VectorXYZ
---@field softPingThreshold number
---@field softPingInterruptTime number
---@field hardPingThreshold number
---@field hardPingInterruptTime number
---@field hardDeathThreshold number
---@field feignDeathThreshold number
---@field feignDeathTime number
---@field distanceOfEvadeAnim number
---@field distanceOfDiveAnim number
---@field stunnedMovementThreshold number
---@field feignDeathChance number
---@field feignRepeatChance number
---@field spawnedActor TagReference
---@field spawnedActorCount integer[2]
---@field spawnedVelocity number
---@field aimingVelocityMaximum number
---@field aimingAccelerationMaximum number
---@field casualAimingModifier number
---@field lookingVelocityMaximum number
---@field lookingAccelerationMaximum number
---@field aiVehicleRadius number
---@field aiDangerRadius number
---@field meleeDamage TagReference
---@field motionSensorBlipSize UnitMotionSensorBlipSize
---@field metagameProperties MetagameProperties
---@field newHudInterfaces UnitUnitHUDInterface[]
---@field dialogueVariants UnitDialogueVariant[]
---@field grenadeVelocity number
---@field grenadeType GrenadeType
---@field grenadeCount integer
---@field softPingInterruptTicks integer
---@field hardPingInterruptTicks integer
---@field poweredSeats UnitPoweredSeat[]
---@field weapons UnitWeapon[]
---@field seats UnitSeat[]

---@alias ShaderDetailFunction
---| "double_biased_add"
---| "multiply"
---| "double_biased_multiply"

---@class HUDInterfaceScalingFlags
---@field useHighResScale boolean
---@field dontScaleSize boolean
---@field dontScaleOffset boolean

---@class Rectangle2D
---@field top integer
---@field left integer
---@field bottom integer
---@field right integer

---@class ShaderLensFlares
---@field lensFlareSpacing number
---@field lensFlare TagReference

---@class SkyLightRadiosity
---@field flags SkyLightFlags
---@field color ColorRGB
---@field power number
---@field testDistance number
---@field direction VectorPY
---@field diameter number

---@alias DeviceType
---| "call_button"
---| "off_button"
---| "on_button"
---| "toggle_switch"

---@class DecalFlags
---@field disabledByBloodSetting boolean
---@field preserveAspect boolean
---@field animationLoop boolean
---@field editorIncrementalCounter boolean
---@field editorSnapToAxis boolean
---@field waterEffect boolean
---@field noRandomRotation boolean
---@field moreColors boolean
---@field interpolateColorInHsv boolean
---@field geometryInheritedByNextDecalInChain boolean

---@class GlowParticleSize
---@field attachment FunctionOut
---@field bounds number[2]
---@field multiplier number[2]

---@alias ProjectileResponse
---| "attach"
---| "overpenetrate"
---| "reflect"
---| "detonate"
---| "disappear"

---@alias TriangleBufferType
---| "triangle_strip"
---| "triangle_list"

---@class ModelAnimationsAnimationGraphFirstPersonWeaponAnimations
---@field animations ModelAnimationsFirstPersonWeapon[]

---@class WeaponTriggerFiringEffect
---@field shotCount integer[2]
---@field firingEffect TagReference
---@field misfireEffect TagReference
---@field emptyEffect TagReference
---@field firingDamage TagReference
---@field misfireDamage TagReference
---@field emptyDamage TagReference

---@class ModelGeometry
---@field flags IsUnusedFlag
---@field parts ModelGeometryPart[]

---@alias ScenarioNetgameFlagType
---| "hill_flag"
---| "teleport_to"
---| "teleport_from"
---| "vegas_bank"
---| "race_vehicle"
---| "race_track"
---| "oddball_ball_spawn"
---| "ctf_vehicle"
---| "ctf_flag"

---@class Contrail
---@field flags ContrailFlags
---@field scaleFlags ContrailScaleFlags
---@field pointGenerationRate number
---@field pointVelocity number[2]
---@field pointVelocityConeAngle number
---@field inheritedVelocityFraction number
---@field renderType ContrailRenderType
---@field textureRepeatsU number
---@field textureRepeatsV number
---@field textureAnimationU number
---@field textureAnimationV number
---@field animationRate number
---@field bitmap TagReference
---@field firstSequenceIndex integer
---@field sequenceCount integer
---@field shader ShaderEffect
---@field pointStates ContrailPointState[]

---@class ShaderEffect
---@field shaderProperties ShaderEffectProperties
---@field secondaryMap ShaderEffectSecondaryMap

---@class ObjectFunction
---@field flags ObjectFunctionFlags
---@field period number
---@field scalePeriodBy FunctionScaleBy
---@field function WaveFunction
---@field scaleFunctionBy FunctionScaleBy
---@field wobbleFunction WaveFunction
---@field wobblePeriod number
---@field wobbleMagnitude number
---@field squareWaveThreshold number
---@field stepCount integer
---@field mapTo FunctionType
---@field sawtoothCount integer
---@field add FunctionScaleBy
---@field scaleResultBy FunctionScaleBy
---@field boundsMode FunctionBoundsMode
---@field bounds number[2]
---@field turnOffWith integer
---@field scaleBy number
---@field inverseBounds number
---@field inverseSawtooth number
---@field inverseStep number
---@field inversePeriod number
---@field usage string

---@alias BitmapDataFormat
---| "bc_7"
---| "p8"
---| "dxt5"
---| "dxt3"
---| "dxt1"
---| "unused_5"
---| "unused_4"
---| "a8r8g8b8"
---| "x8r8g8b8"
---| "a4r4g4b4"
---| "a1r5g5b5"
---| "unused_3"
---| "r5g6b5"
---| "unused_2"
---| "unused_1"
---| "a8y8"
---| "ay_8"
---| "y8"
---| "a8"

---@class ScenarioSoundSceneryPalette
---@field name TagReference

---@class ModelDetailNodeCount
---@field superLow integer
---@field low integer
---@field medium integer
---@field high integer
---@field superHigh integer

---@class ScenarioItemFlags
---@field doesAccelerate boolean
---@field obsolete boolean
---@field initiallyAtRest boolean

---@class ShaderTransparentGenericMap
---@field flags ShaderTransparentGenericMapFlag
---@field parameters ShaderTransparentMapParameters
---@field animation ShaderTransparentMapAnimation

---@class BaseObjectVitals
---@field baseHealth number
---@field baseShield number
---@field health number
---@field shield number
---@field currentShieldDamage number
---@field currentHealthDamage number
---@field entangledObjectHandle ObjectHandle
---@field recentShieldDamage number
---@field recentHealthDamage number
---@field recentShieldDamageTime integer
---@field recentHealthDamageTime integer
---@field shieldStunTime integer
---@field flags BaseObjectVitalsFlags

---@alias FunctionScaleBy
---| "d_out"
---| "c_out"
---| "b_out"
---| "a_out"
---| "d_in"
---| "c_in"
---| "b_in"
---| "a_in"
---| "none"

---@class UnitPoweredSeat
---@field driverPowerupTime number
---@field driverPowerdownTime number

---@alias ScenarioTriggerVolumeType
---| "rotational"
---| "fixed"

---@class ScenarioMachinePalette
---@field name TagReference

---@alias ShaderTransparentGenericStageOutputFunction
---| "dot_product"
---| "multiply"

---@class ModelVertexUncompressed
---@field position VectorXYZ
---@field normal VectorXYZ
---@field binormal VectorXYZ
---@field tangent VectorXYZ
---@field textureCoords VectorXY
---@field node0Index integer
---@field node1Index integer
---@field node0Weight number
---@field node1Weight number

---@alias ParticleAnchor
---| "zsprite"
---| "with_screen_space"
---| "with_primary"

---@class ModelAnimationsFrameInfoDxDyDyaw
---@field dx number
---@field dy number
---@field dyaw number

---@class ModelShaderReference
---@field shader TagReference
---@field permutation integer

---@alias BitmapSpriteBudgetSize
---| "_1024_x1024"
---| "_512_x512"
---| "_256_x256"
---| "_128_x128"
---| "_64_x64"
---| "_32_x32"

---@class UnitAnimationFlags
---@field animationBit3Unknown boolean
---@field animationBit2Unknown boolean
---@field animationBit1Unknown boolean
---@field animationBit0Unknown boolean

---@class MaterialEffectsMaterialEffectMaterial
---@field effect TagReference
---@field sound TagReference

---@class ShaderEnvironmentReflection
---@field flags ShaderEnvironmentReflectionFlags
---@field type ShaderEnvironmentReflectionType
---@field lightmapBrightnessScale number
---@field perpendicularBrightness number
---@field parallelBrightness number
---@field reflectionCubeMap TagReference

---@class ParticleFlags
---@field randomVerticalMirroring boolean
---@field randomHorizontalMirroring boolean
---@field selfIlluminated boolean
---@field diesOnContactWithAir boolean
---@field diesOnContactWithWater boolean
---@field tintFromDiffuseTexture boolean
---@field diesOnContactWithStructure boolean
---@field diesAtRest boolean
---@field animateOncePerFrame boolean
---@field animationStartsOnRandomFrame boolean
---@field animationStopsAtRest boolean
---@field canAnimateBackwards boolean

---@class ScenarioSquadFlags
---@field automaticMigration boolean
---@field magicSightAfterTimer boolean
---@field noTimerDelayForever boolean
---@field startTimerImmediately boolean
---@field neverSearch boolean
---@field unused boolean

---@class ShaderTransparentGlassFlags
---@field bumpMapIsSpecularMask boolean
---@field twoSided boolean
---@field decal boolean
---@field alphaTested boolean

---@class ProjectileObject: ItemObject
---@field projectileFlags ProjectileObjectFlags
---@field actionEnum integer
---@field materialId integer
---@field sourceUnit ObjectHandle
---@field targetObject ObjectHandle
---@field contrailAttachmentBlockId integer
---@field timeRemaining number
---@field armingRate number
---@field unknownProjFloat1 number
---@field unknownProjFloat2 number
---@field distanceTravelled number
---@field transitionalVelocity VectorXYZ
---@field waterDamageUpperBound number
---@field angularVelocity VectorXYZ
---@field unknownEuler VectorPY
---@field network ProjectileNetwork

---@class SoundPitchRange
---@field name string
---@field naturalPitch number
---@field bendBounds number[2]
---@field actualPermutationCount integer
---@field playbackRate number
---@field usedPermutations integer
---@field lastPermutationIndex integer
---@field nextPermutationIndex integer
---@field permutations SoundPermutation[]

---@class ColorTableColor
---@field name string
---@field color ColorARGB

---@class ScenarioRecordedAnimation
---@field name string
---@field version integer
---@field rawAnimationData integer
---@field unitControlDataVersion integer
---@field lengthOfAnimation integer
---@field recordedAnimationEventStream TagRawData

---@alias TagGroup
---| "weapon_hud_interface"
---| "wind"
---| "weapon"
---| "vehicle"
---| "virtual_keyboard"
---| "unicode_string_list"
---| "unit"
---| "unit_hud_interface"
---| "dialogue"
---| "camera_track"
---| "tag_collection"
---| "shader_transparent_water"
---| "string_list"
---| "sound_scenery"
---| "shader_transparent_plasma"
---| "ui_widget_collection"
---| "shader_transparent_generic"
---| "shader_model"
---| "sound_environment"
---| "sound"
---| "shader_transparent_meter"
---| "sky"
---| "shader"
---| "shader_transparent_glass"
---| "shader_environment"
---| "scenario"
---| "shader_transparent_chicago"
---| "shader_transparent_chicago_extended"
---| "scenery"
---| "scenario_structure_bsp"
---| "weather_particle_system"
---| "projectile"
---| "point_physics"
---| "placeholder"
---| "physics"
---| "particle_system"
---| "particle"
---| "object"
---| "preferences_network_game"
---| "null"
---| "multiplayer_scenario_description"
---| "model"
---| "gbxmodel"
---| "light_volume"
---| "meter"
---| "globals"
---| "device_machine"
---| "sound_looping"
---| "light"
---| "device_light_fixture"
---| "lightning"
---| "lens_flare"
---| "damage_effect"
---| "item_collection"
---| "item"
---| "hud_globals"
---| "hud_number"
---| "hud_message_text"
---| "grenade_hud_interface"
---| "glow"
---| "garbage"
---| "material_effects"
---| "font"
---| "fog"
---| "flag"
---| "equipment"
---| "effect"
---| "detail_object_collection"
---| "device"
---| "input_device_defaults"
---| "ui_widget_definition"
---| "decal"
---| "device_control"
---| "contrail"
---| "color_table"
---| "model_collision_geometry"
---| "continuous_damage_effect"
---| "spheroid"
---| "bitmap"
---| "biped"
---| "model_animations"
---| "antenna"
---| "actor_variant"
---| "actor"

---@class ObjectAnimationState
---@field index integer
---@field frame integer

---@class PointPhysicsFlags
---@field noGravity boolean
---@field usesDampedWind boolean
---@field usesSimpleWind boolean
---@field collidesWithWaterSurface boolean
---@field collidesWithStructures boolean
---@field flamethrowerParticleCollision boolean

---@class ScenarioScenery
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field bspIndices integer
---@field appearancePlayerIndex integer

---@class ScenarioStructureBSPClusterSurfaceIndex
---@field index integer

---@alias ActorVariantSpecialFireSituation
---| "strafing"
---| "enemy_out_of_sight"
---| "enemy_visible"
---| "never"

---@class LensFlareFlags
---@field scaleByMarker boolean
---@field fadeOutMoreQuickly boolean
---@field fadeInMoreQuickly boolean
---@field onlyRenderInThirdPerson boolean
---@field onlyRenderInFirstPerson boolean
---@field noOcclusionTest boolean
---@field sun boolean

---@class BitmapGroupSprite
---@field bitmapIndex integer
---@field left number
---@field right number
---@field top number
---@field bottom number
---@field registrationPoint VectorXY

---@class ModelAnimationsFrameInfoDxDyDzDyaw
---@field dx number
---@field dy number
---@field dz number
---@field dyaw number

---@class ShaderModelBullshit
---@field bullshit number

---@alias SoundClass
---| "game_event"
---| "unused_19"
---| "unused_18"
---| "scripted_dialog_force_unspatialized"
---| "scripted_dialog_other"
---| "scripted_effect"
---| "scripted_dialog_player"
---| "unused_17"
---| "unused_16"
---| "unused_15"
---| "unused_14"
---| "first_person_damage"
---| "unused_13"
---| "unused_12"
---| "unused_11"
---| "ambient_computers"
---| "ambient_machinery"
---| "ambient_nature"
---| "music"
---| "unused_10"
---| "device_computers"
---| "device_nature"
---| "device_machinery"
---| "device_force_field"
---| "device_door"
---| "unused_9"
---| "unused_8"
---| "vehicle_engine"
---| "vehicle_collision"
---| "unused_7"
---| "unused_6"
---| "unit_dialog"
---| "unit_footsteps"
---| "unused_5"
---| "unused_4"
---| "slow_particle_impacts"
---| "particle_impacts"
---| "object_impacts"
---| "unused_3"
---| "unused_2"
---| "weapon_idle"
---| "weapon_overheat"
---| "weapon_charge"
---| "weapon_empty"
---| "weapon_reload"
---| "weapon_ready"
---| "weapon_fire"
---| "unused_1"
---| "unused"
---| "projectile_detonation"
---| "projectile_impact"

---@class ScenarioStructureBSPMarker
---@field name string
---@field rotation Quaternion
---@field position VectorXYZ

---@class UnitHUDInterfaceShieldMeter: HUDInterfaceMeterElement
---@field overchargeMinimumColor integer
---@field overchargeMaximumColor integer
---@field overchargeFlashColor integer
---@field overchargeEmptyColor integer

---@class ScenarioStructureBSPMaterialFlags
---@field fogPlane boolean
---@field coplanar boolean

---@class Item: Object
---@field flags ItemFlags
---@field pickupTextIndex integer
---@field sortOrder integer
---@field scale number
---@field hudMessageValueScale integer
---@field aIn ItemFunctionIn
---@field bIn ItemFunctionIn
---@field cIn ItemFunctionIn
---@field dIn ItemFunctionIn
---@field materialEffects TagReference
---@field collisionSound TagReference
---@field detonationDelay number[2]
---@field detonatingEffect TagReference
---@field detonationEffect TagReference

---@class ShaderTransparentGeneric: Shader
---@field properties ShaderTransparentProperties
---@field maps ShaderTransparentGenericMap[]
---@field stages ShaderTransparentGenericStage[]

---@class EffectParticleScalesValues
---@field tint boolean
---@field particleRadiusDelta boolean
---@field particleRadius boolean
---@field distributionRadiusDelta boolean
---@field distributionRadius boolean
---@field countDelta boolean
---@field count boolean
---@field angularVelocityDelta boolean
---@field angularVelocity boolean
---@field velocityConeAngle boolean
---@field velocityDelta boolean
---@field velocity boolean

---@class ScenarioStructureBSPGlobalMapLeaf
---@field faces ScenarioStructureBSPMapLeafFace[]
---@field portalIndices ScenarioStructureBSPMapLeafPortalIndex[]

---@class ModelCollisionGeometryBSPLeaf
---@field flags ModelCollisionGeometryBSPLeafFlags
---@field bsp2dReferenceCount integer
---@field firstBsp2dReference integer

---@class ScenarioVehiclePalette
---@field name TagReference

---@class ShaderEnvironment: Shader
---@field properties ShaderEnvironmentProperties
---@field lensFlares ShaderLensFlares
---@field diffuse ShaderEnvironmentDiffuse
---@field bump ShaderEnvironmentBump
---@field textureScrollingAnimation ShaderEnvironmentTextureScrollingAnimation
---@field selfIllumination ShaderEnvironmentSelfIllumination
---@field specular ShaderEnvironmentSpecular
---@field reflection ShaderEnvironmentReflection

---@class ModelCollisionGeometryBSP3DNode
---@field plane integer
---@field backChild integer
---@field frontChild integer

---@class FontCharacter
---@field character integer
---@field characterWidth integer
---@field bitmapWidth integer
---@field bitmapHeight integer
---@field bitmapOriginX integer
---@field bitmapOriginY integer
---@field hardwareCharacterIndex integer
---@field drawGeneration integer
---@field pixelsOffset integer

---@class SkyFunction
---@field functionName string

---@class Effect
---@field flags EffectFlags
---@field loopStartEvent integer
---@field loopStopEvent integer
---@field maximumDamageRadius number
---@field locations EffectLocation[]
---@field events EffectEvent[]

---@class ScenarioAIConversation
---@field name string
---@field flags ScenarioAIConversationFlags
---@field triggerDistance number
---@field runToPlayerDist number
---@field participants ScenarioAIConversationParticipant[]
---@field lines ScenarioAIConversationLine[]

---@class ScenarioStructureBSPMapLeafFace
---@field nodeIndex integer
---@field vertices ScenarioStructureBSPMapLeafFaceVertex[]

---@class ScenarioFlags
---@field doNotApplyBungieCampaignTagPatches boolean
---@field enableColorCorrection boolean
---@field useDemoUi boolean
---@field cortanaHack boolean

---@class ModelAnimationsVehicleAnimation
---@field animation integer

---@class ActorFlags
---@field avoidFriendsLineOfFire boolean
---@field crouchWhenInLineOfFire boolean
---@field fixedCrouchFacing boolean
---@field cannotMoveWhileCrouching boolean
---@field suicidalMeleeAttack boolean
---@field swarm boolean
---@field diveOffLedges boolean
---@field alwaysChargeInAttackingMode boolean
---@field crouchWhenHidingFromUnopposable boolean
---@field panickedByUnopposableEnemy boolean
---@field flying boolean
---@field berserkingUsesPanickedMovement boolean
---@field alwaysBerserkInAttackingMode boolean
---@field stalkingFreezeIfExposed boolean
---@field useStalkingBehavior boolean
---@field defensiveCrouchWhileCharging boolean
---@field crouchingMustMoveForward boolean
---@field standingMustMoveForward boolean
---@field startFiringBeforeAligned boolean
---@field getsInVehiclesWithPlayer boolean
---@field alwaysChargeAtEnemies boolean
---@field panicWhenSurprised boolean
---@field mustCrouchToShoot boolean
---@field unused1 boolean
---@field crouchWhenGuarding boolean
---@field crouchWhenNotInCombat boolean
---@field tryToStayStillWhenCrouched boolean
---@field shootAtTargetsLastLocation boolean
---@field unused boolean
---@field sneakUncoveringPursuitPosition boolean
---@field sneakUncoveringTarget boolean
---@field canSeeInDarkness boolean

---@class WeaponHUDInterfaceScreenEffectDefinitionDesaturationFlags
---@field masked boolean
---@field additive boolean
---@field connectToFlashlight boolean
---@field onlyWhenZoomed boolean

---@alias DamageEffectScreenFlashPriority
---| "high"
---| "medium"
---| "low"

---@class ActorVariantFlags
---@field preferPassengerSeat boolean
---@field cannotUseRangedWeapons boolean
---@field superActiveCamouflage boolean
---@field activeCamouflage boolean
---@field movementSwitchingTryToStayWithFriends boolean
---@field hasUnlimitedGrenades boolean
---@field interpolateColorInHsv boolean
---@field canShootWhileFlying boolean

---@class Quaternion
---@field i number
---@field j number
---@field k number
---@field l number

---@class ActorMoreFlags
---@field noCorpseShooting boolean
---@field panicInGroups boolean
---@field pathfindingIgnoresDanger boolean
---@field disallowVehicleCombat boolean
---@field mustStopToFire boolean
---@field mustStandToFire boolean
---@field avoidAllEnemyAttackVectors boolean

---@class ModelCollisionGeometryRegion
---@field name string
---@field flags ModelCollisionGeometryRegionFlags
---@field damageThreshold number
---@field destroyedEffect TagReference
---@field permutations ModelCollisionGeometryPermutation[]

---@alias ProjectileFunctionIn
---| "tracer"
---| "time_remaining"
---| "range_remaining"
---| "none"

---@class ObjectHandle
---@field index integer
---@field value integer
---@field id integer

---@class Sky
---@field model TagReference
---@field animationGraph TagReference
---@field indoorAmbientRadiosity SkyAmbientRadiosity
---@field outdoorAmbientRadiosity SkyAmbientRadiosity
---@field outdoorFog SkyFog
---@field indoorFog SkyFog
---@field indoorFogScreen TagReference
---@field shaderFunctions SkyFunction[]
---@field animations SkyAnimation[]
---@field lights SkyLight[]

---@class AntennaVertex
---@field springStrengthCoefficient number
---@field angles VectorPY
---@field length number
---@field sequenceIndex integer
---@field color ColorARGB
---@field lodColor ColorARGB
---@field offset VectorXYZ

---@class SoundLoopingFlags
---@field siegeOfMadrigal boolean
---@field stopsMusic boolean
---@field notALoop boolean
---@field deafeningToAis boolean

---@class GlowTranslationalVelocity
---@field attachment FunctionOut
---@field velocity number
---@field multiplier number[2]

---@class ShaderTransparentMeterColors
---@field gradientMinColor ColorRGB
---@field gradientMaxColor ColorRGB
---@field backgroundColor ColorRGB
---@field flashColor ColorRGB
---@field meterTintColor ColorRGB
---@field meterTransparency number
---@field backgroundTransparency number

---@alias MachineCollisionResponse
---| "reverse_directions"
---| "pause_until_crushed"

---@alias WeaponOverchargedAction
---| "discharge"
---| "explode"
---| "none"

---@class ScenarioAIConversationParticipantFlags
---@field isAlternate boolean
---@field hasAlternate boolean
---@field optional boolean

---@class Scenery: BasicObject

---@class ActorPursuit
---@field uncoverDelayTime number[2]
---@field targetSearchTime number[2]
---@field pursuitPositionTime number[2]
---@field numPositionsCoord integer
---@field numPositionsNormal integer

---@alias VectorFontDataFormat
---| "opentype"
---| "truetype"

---@class ModelAnimationsFlags
---@field forceIdleCompression boolean
---@field compressAllAnimations boolean

---@class ScenarioStructureBSPFogPlane
---@field frontRegion integer
---@field materialType MaterialType
---@field plane Plane3D
---@field vertices ScenarioStructureBSPFogPlaneVertex[]

---@class DeviceLightFixture: Device

---@class DecalShader
---@field framebufferBlendFunction FramebufferBlendFunction
---@field map TagReference

---@class ContinuousDamageEffect
---@field radius number[2]
---@field cutoffScale number
---@field vibrateParameters ContinuousDamageVibrateParameters
---@field cameraShaking ContinuousDamageCameraShaking
---@field damage DamageEffectDamage

---@class UnitHUDInterfaceAuxiliaryPanelMeterMoreFlags
---@field flashOnceIfActivatedWhileDisabled boolean
---@field showOnlyWhenActive boolean

---@class ModelAnimationsAnimationGraphUnitSeat
---@field label string
---@field rightYawPerFrame number
---@field leftYawPerFrame number
---@field rightFrameCount integer
---@field leftFrameCount integer
---@field downPitchPerFrame number
---@field upPitchPerFrame number
---@field downPitchFrameCount integer
---@field upPitchFrameCount integer
---@field animations ModelAnimationsAnimationWeaponClassAnimation[]
---@field ikPoints ModelAnimationsAnimationGraphUnitSeatikPoint[]
---@field weapons ModelAnimationsAnimationGraphWeapon[]

---@alias EffectDistributionFunction
---| "buildup_and_falloff"
---| "falloff"
---| "buildup"
---| "constant"
---| "end"
---| "start"

---@class ScenarioCommand
---@field atomType ScenarioAtomType
---@field atomModifier integer
---@field parameter1 number
---@field parameter2 number
---@field point1 integer
---@field point2 integer
---@field animation integer
---@field script integer
---@field recording integer
---@field command integer
---@field objectName integer

---@class AnimationStateInterpolation
---@field state ObjectAnimationState
---@field frameIndex number

---@class StringList
---@field strings StringListString[]

---@class ScenarioSoundScenery
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field appearancePlayerIndex integer

---@alias SoundSampleRate
---| "_44100_hz"
---| "_22050_hz"

---@class WeaponHUDInterfaceNumberWeaponSpecificFlags
---@field divideNumberByClipSize boolean

---@class ShaderEnvironmentDiffuse
---@field flags ShaderEnvironmentDiffuseFlags
---@field baseMap TagReference
---@field detailMapFunction ShaderDetailFunction
---@field primaryDetailMapScale number
---@field primaryDetailMap TagReference
---@field secondaryDetailMapScale number
---@field secondaryDetailMap TagReference
---@field microDetailMapFunction ShaderDetailFunction
---@field microDetailMapScale number
---@field microDetailMap TagReference
---@field materialColor ColorRGB

---@class ActorVariantChangeColors
---@field color ColorRGB

---@class GlobalsBreakableSurfaceParticleEffectFlags
---@field moreColors boolean
---@field interpolateColorInHsv boolean

---@class DeviceObjectState
---@field deviceGroupId integer
---@field value number
---@field change number

---@class HUDInterfaceMeterElement
---@field position HUDInterfaceElementPosition
---@field meterBitmap TagReference
---@field colorAtMeterMinimum integer
---@field colorAtMeterMaximum integer
---@field flashColor integer
---@field emptyColor integer
---@field flags HUDInterfaceMeterFlags
---@field minimumMeterValue integer
---@field sequenceIndex integer
---@field alphaMultiplier integer
---@field alphaBias integer
---@field valueScale integer
---@field opacity number
---@field translucency number
---@field disabledColor integer
---@field minAlpha number

---@class GlobalsFallingDamage
---@field harmfulFallingDistance number[2]
---@field fallingDamage TagReference
---@field maximumFallingDistance number
---@field distanceDamage TagReference
---@field vehicleEnvironmentCollisionDamage TagReference
---@field vehicleKilledUnitDamage TagReference
---@field vehicleCollisionDamage TagReference
---@field flamingDeathDamage TagReference
---@field maximumFallingVelocity number
---@field harmfulFallingVelocity number[2]

---@class ScenarioTriggerVolume
---@field type ScenarioTriggerVolumeType
---@field name string
---@field parameters number[3]
---@field rotationVectorForward VectorXYZ
---@field rotationVectorUp VectorXYZ
---@field startingCorner VectorXYZ
---@field endingCornerOffset VectorXYZ

---@class LightColor
---@field interpolationFlags ColorInterpolationFlags
---@field color ColorARGB

---@alias AnimationFrameInfoType
---| "dx_dy_dz_dyaw"
---| "dx_dy_dyaw"
---| "dx_dy"
---| "none"

---@class ModelAnimationsAnimationWeaponTypeAnimation
---@field animation integer

---@class ActorFiringPositions
---@field guardPositionTime number[2]
---@field combatPositionTime number[2]
---@field oldPositionAvoidDist number
---@field friendAvoidDist number

---@class GlowDistanceToObject
---@field attachment FunctionOut
---@field distance number[2]
---@field multiplier number[2]

---@alias VehicleFunctionIn
---| "wingtip_contrail_new"
---| "engine_hack"
---| "thrust"
---| "hover"
---| "wingtip_contrail"
---| "back_right_tire_velocity"
---| "back_left_tire_velocity"
---| "front_right_tire_velocity"
---| "front_left_tire_velocity"
---| "back_right_tire_position"
---| "back_left_tire_position"
---| "front_right_tire_position"
---| "front_left_tire_position"
---| "right_tread_velocity"
---| "left_tread_velocity"
---| "right_tread_position"
---| "left_tread_position"
---| "velocity_up"
---| "velocity_left"
---| "velocity_forward"
---| "velocity_ground"
---| "velocity_water"
---| "velocity_air"
---| "walk"
---| "jump"
---| "crouch"
---| "turn_right"
---| "turn_left"
---| "turn_absolute"
---| "speed_slide_maximum"
---| "slide_right"
---| "slide_left"
---| "slide_absolute"
---| "speed_backward"
---| "speed_forward"
---| "speed_absolute"
---| "none"

---@class VectorXYInt
---@field x integer
---@field y integer

---@alias ParticleSystemComplexSpriteRenderMode
---| "rotational"
---| "simple"

---@class ScenarioStructureBSPMaterialUncompressedLightmapVertex
---@field normal VectorXYZ
---@field textureCoords VectorXY

---@class ScenarioSquad
---@field name string
---@field actorType integer
---@field platoon integer
---@field initialState ScenarioReturnState
---@field returnState ScenarioReturnState
---@field flags ScenarioSquadFlags
---@field uniqueLeaderType ScenarioUniqueLeaderType
---@field maneuverToSquad integer
---@field squadDelayTime number
---@field attacking ScenarioSquadAttacking
---@field attackingSearch ScenarioSquadAttacking
---@field attackingGuard ScenarioSquadAttacking
---@field defending ScenarioSquadAttacking
---@field defendingSearch ScenarioSquadAttacking
---@field defendingGuard ScenarioSquadAttacking
---@field pursuing ScenarioSquadAttacking
---@field normalDiffCount integer
---@field insaneDiffCount integer
---@field majorUpgrade ScenarioMajorUpgrade
---@field respawnMinActors integer
---@field respawnMaxActors integer
---@field respawnTotal integer
---@field respawnDelay number[2]
---@field movePositions ScenarioMovePosition[]
---@field startingLocations ScenarioActorStartingLocation[]

---@alias ShaderTypePc
---| "transparent_plasma"
---| "transparent_meter"
---| "transparent_glass"
---| "transparent_water"
---| "transparent_chicago_extended"
---| "transparent_chicago"
---| "transparent_generic"
---| "model"
---| "environment"
---| "decal"
---| "effect"
---| "screen"

---@class ScenarioEncounterFlags
---@field manualBspIndexSpecified boolean
---@field _3dFiringPositions boolean
---@field initiallyBraindead boolean
---@field initiallyDeaf boolean
---@field initiallyBlind boolean
---@field respawnEnabled boolean
---@field notInitiallyCreated boolean

---@class Matrix
---@field m VectorXYZ[3]

---@alias HUDInterfaceSource
---| "weapon_zoom_level"
---| "explicit_uses_low_bound"
---| "weapon_heat"
---| "weapon_ammo_loaded"
---| "weapon_ammo_total"
---| "player_yaw"
---| "player_pitch_tangent"
---| "player_pitch"

---@class ScenarioCommandPoint
---@field position VectorXYZ
---@field surfaceIndex integer

---@class ScenarioFunctionFlags
---@field alwaysActive boolean
---@field additive boolean
---@field invert boolean
---@field scripted boolean

---@class ModelCollisionGeometryBSPLeafFlags
---@field containsDoubleSidedSurfaces boolean

---@class GarbageObject: ItemObject
---@field ticksUntilGarbageCollection integer

---@alias ScenarioTextStyle
---| "underline"
---| "condense"
---| "italic"
---| "bold"
---| "plain"

---@alias BitmapUsage
---| "vector_map"
---| "light_map"
---| "detail_map"
---| "height_map"
---| "default"
---| "alpha_blend"

---@class ModelNode
---@field name string
---@field nextSiblingNodeIndex integer
---@field firstChildNodeIndex integer
---@field parentNodeIndex integer
---@field defaultTranslation VectorXYZ
---@field defaultRotation Quaternion
---@field nodeDistanceFromParent number
---@field scale number
---@field rotation Matrix
---@field translation VectorXYZ

---@alias ContrailRenderType
---| "double_marker_linked"
---| "viewer_facing"
---| "ground_mapped"
---| "media_mapped"
---| "horizontal_orientation"
---| "vertical_orientation"

---@class SkyAmbientRadiosity
---@field color ColorRGB
---@field power number

---@class WeaponFlags
---@field uses3rdPersonCamera boolean
---@field preventsCrouching boolean
---@field aisUseWeaponMeleeDamage boolean
---@field enablesIntegratedNightVision boolean
---@field doesNotDepowerActiveCamoInMultiplayer boolean
---@field secondaryTriggerOverridesGrenades boolean
---@field cannotFireAtMaximumAge boolean
---@field detonatesWhenDropped boolean
---@field preventsMeleeAttack boolean
---@field holdsTriggersWhenDropped boolean
---@field mustBePickedUp boolean
---@field preventsGrenadeThrowing boolean
---@field aimAssistsOnlyWhenZoomed boolean
---@field doesntCountTowardMaximum boolean
---@field mustBeReadied boolean
---@field attacksAutomaticallyOnBump boolean
---@field mutuallyExclusiveTriggers boolean
---@field verticalHeatDisplay boolean

---@class GlobalsPlaylistMember
---@field mapName string
---@field gameVariant string
---@field minimumExperience integer
---@field maximumExperience integer
---@field minimumPlayerCount integer
---@field maximumPlayerCount integer
---@field rating integer

---@class ShaderModelSelfIlluminationFlags
---@field noRandomPhase boolean

---@class EquipmentNetworkData
---@field position VectorXYZ
---@field transitionalVelocity VectorXYZ
---@field angularVelocity VectorXYZ

---@class ScenarioCommandList
---@field name string
---@field flags ScenarioCommandListFlags
---@field manualBspIndex integer
---@field precomputedBspIndex integer
---@field commands ScenarioCommand[]
---@field points ScenarioCommandPoint[]

---@class ActorUnopposable
---@field unreachableDangerTrigger ActorUnreachableDangerTrigger
---@field vehicleDangerTrigger ActorUnreachableDangerTrigger
---@field playerDangerTrigger ActorUnreachableDangerTrigger
---@field dangerTriggerTime number[2]
---@field friendsKilledTrigger integer
---@field friendsRetreatingTrigger integer
---@field retreatTime number[2]

---@class ShaderRadiosityProperties
---@field flags ShaderFlags
---@field detailLevel ShaderDetailLevel
---@field power number
---@field colorOfEmittedLight ColorRGB
---@field tintColor ColorRGB

---@class SoundLoopingTrack
---@field flags SoundLoopingTrackFlags
---@field gain number
---@field fadeInDuration number
---@field fadeOutDuration number
---@field start TagReference
---@field loop TagReference
---@field end TagReference
---@field alternateLoop TagReference
---@field alternateEnd TagReference

---@class ScenarioCutsceneTitle
---@field unknown integer
---@field name string
---@field textBounds Rectangle2D
---@field stringIndex integer
---@field textStyle ScenarioTextStyle
---@field justification ScenarioJustification
---@field textFlags ScenarioTextFlags
---@field textColor integer
---@field shadowColor integer
---@field fadeInTime number
---@field upTime number
---@field fadeOutTime number

---@class GlobalsRasterizerDataFlags
---@field tintEdgeDensity boolean

---@alias ObjectFunctionIn
---| "compass"
---| "alive"
---| "region_7"
---| "region_6"
---| "region_5"
---| "region_4"
---| "region_3"
---| "region_2"
---| "region_1"
---| "region"
---| "umbrella_shield_stun"
---| "recent_umbrella_shield_vitality"
---| "shield_stun"
---| "umbrella_shield_vitality"
---| "random_constant"
---| "recent_shield_damage"
---| "recent_body_damage"
---| "shield_vitality"
---| "body_vitality"
---| "none"

---@class ScenarioCutsceneFlag
---@field unknown integer
---@field name string
---@field position VectorXYZ
---@field facing VectorPY

---@class ScenarioStructureBSPWeatherPolyhedronPlane
---@field plane Plane3D

---@class ActorVariantUnitProperties
---@field bodyVitality number
---@field shieldVitality number
---@field shieldSappingRadius number
---@field forcedShaderPermutation integer
---@field changeColors ActorVariantChangeColors[]

---@class ModelCollisionGeometryBSPSurface
---@field plane integer
---@field firstEdge integer
---@field flags ModelCollisionGeometryBSPSurfaceFlags
---@field breakableSurface integer
---@field material integer

---@alias DamageEffectCategory
---| "shotgun"
---| "needle"
---| "plasma"
---| "vehicle"
---| "mounted_weapon"
---| "flame"
---| "melee"
---| "sniper"
---| "high_explosive"
---| "grenade"
---| "bullet"
---| "falling"
---| "none"

---@class DecalAnimation
---@field animationLoopFrame integer
---@field animationSpeed integer
---@field lifetime number[2]
---@field decayTime number[2]

---@class ModelTriangleStripData
---@field indices integer[3]

---@class ModelRegionPermutationFlags
---@field cannotBeChosenRandomly boolean

---@class ScenarioObjectPlacement
---@field notPlaced ScenarioSpawnNotPlaced
---@field desiredPermutation integer
---@field position VectorXYZ
---@field rotation VectorPYR

---@class FogScreenFlags
---@field noTextureBasedFalloff boolean
---@field noModelMultipass boolean
---@field noEnvironmentMultipass boolean

---@alias EquipmentPowerupType
---| "grenade"
---| "health"
---| "full_spectrum_vision"
---| "active_camouflage"
---| "over_shield"
---| "double_speed"
---| "none"

---@class Vehicle: Unit
---@field flags VehicleFlags
---@field type VehicleType
---@field maximumForwardSpeed number
---@field maximumReverseSpeed number
---@field speedAcceleration number
---@field speedDeceleration number
---@field maximumLeftTurn number
---@field maximumRightTurn number
---@field wheelCircumference number
---@field turnRate number
---@field blurSpeed number
---@field aIn VehicleFunctionIn
---@field bIn VehicleFunctionIn
---@field cIn VehicleFunctionIn
---@field dIn VehicleFunctionIn
---@field maximumLeftSlide number
---@field maximumRightSlide number
---@field slideAcceleration number
---@field slideDeceleration number
---@field minimumFlippingAngularVelocity number
---@field maximumFlippingAngularVelocity number
---@field fixedGunYaw number
---@field fixedGunPitch number
---@field aiSideslipDistance number
---@field aiDestinationRadius number
---@field aiAvoidanceDistance number
---@field aiPathfindingRadius number
---@field aiChargeRepeatTimeout number
---@field aiStrafingAbortRange number
---@field aiOversteeringBounds number[2]
---@field aiSteeringMaximum number
---@field aiThrottleMaximum number
---@field aiMovePositionTime number
---@field suspensionSound TagReference
---@field crashSound TagReference
---@field materialEffects TagReference
---@field effect TagReference

---@class ModelRegion
---@field name string
---@field permutations ModelRegionPermutation[]

---@class ScenarioObjectName
---@field name string
---@field objectType ObjectType
---@field objectIndex integer

---@alias WeaponMovementPenalized
---| "when_zoomed_or_reloading"
---| "when_zoomed"
---| "always"

---@class ShaderEnvironmentSpecularFlags
---@field lightmapIsSpecular boolean
---@field extraShiny boolean
---@field overbright boolean

---@class BipedFlags
---@field unitUsesOldNtscPlayerPhysics boolean
---@field randomSpeedIncrease boolean
---@field hasNoDyingAirborne boolean
---@field usesLimpBodyPhysics boolean
---@field rotateWhileAirborne boolean
---@field immuneToFallingDamage boolean
---@field canClimbAnySurface boolean
---@field passesThroughOtherBipeds boolean
---@field spherical boolean
---@field physicsPillCenteredAtOrigin boolean
---@field flying boolean
---@field usesPlayerPhysics boolean
---@field turnsWithoutAnimating boolean

---@class WeaponMagazineObject
---@field rounds integer
---@field equipment TagReference

---@class DeviceControlObjectFlags
---@field usableFromBothSides boolean

---@alias CacheFileType
---| "userInterface"
---| "multiplayer"
---| "singlePlayer"

---@class DeviceLightFixtureObject: DeviceObject
---@field lightColor ColorRGB
---@field lightIntensity number
---@field lightFalloffAngle number
---@field lightCutoffAngle number

---@class UnitHUDInterfaceHUDSoundLatchedTo
---@field healthMajorDamage boolean
---@field healthMinorDamage boolean
---@field healthEmpty boolean
---@field healthLow boolean
---@field shieldEmpty boolean
---@field shieldLow boolean
---@field shieldDamaged boolean
---@field shieldRecharging boolean

---@class WeaponTriggerFlags
---@field useOriginalUnitAdjustProjectileRay boolean
---@field projectileIsClientSideOnly boolean
---@field projectilesHaveIdenticalError boolean
---@field projectileVectorCannotBeAdjusted boolean
---@field useErrorWhenUnzoomed boolean
---@field analogRateOfFire boolean
---@field dischargingSpews boolean
---@field ejectsDuringChamber boolean
---@field sticksWhenDropped boolean
---@field projectilesUseWeaponOrigin boolean
---@field locksInOnOffState boolean
---@field doesNotRepeatAutomatically boolean
---@field canFireWithPartialAmmo boolean
---@field randomFiringEffects boolean
---@field tracksFiredProjectile boolean

---@class UnitHUDInterfaceAuxiliaryPanel
---@field type UnitHUDInterfacePanelType
---@field background HUDInterfaceStaticElement
---@field meter HUDInterfaceMeterElement
---@field minimumFractionCutoff number
---@field moreFlags UnitHUDInterfaceAuxiliaryPanelMeterMoreFlags

---@class DeviceControlObject: DeviceObject
---@field deviceControlFlags DeviceControlObjectFlags

---@class DeviceMachineObjectFlags
---@field openedByMeleeAttack boolean
---@field neverAppearsLocked boolean
---@field machineOneSided boolean
---@field doesNotOperateAutomatically boolean

---@class DeviceObject: DynamicObjectBase
---@field flags1 DeviceObjectFlags1
---@field power DeviceObjectState
---@field position DeviceObjectState
---@field flags2 DeviceObjectFlags2

---@class InputDeviceDefaults
---@field deviceType InputDeviceDefaultsDeviceType
---@field flags InputDeviceDefaultsFlags
---@field deviceId TagRawData
---@field profile TagRawData

---@class ChildWidgetReferenceFlags
---@field useCustomControllerIndex boolean

---@class DeviceObjectFlags2
---@field operatesAutomatically boolean
---@field oneSided boolean

---@class DeviceObjectFlags1
---@field notUsableFromAnySide boolean
---@field positionReversed boolean

---@class WeaponObject: ItemObject
---@field flags integer
---@field ownerUnitFlags integer
---@field primaryTrigger number
---@field weaponState integer
---@field readyTicks integer
---@field heat number
---@field age number
---@field illuminationFraction number
---@field integratedLightPower number
---@field trackedObject ObjectHandle
---@field altShotsLoaded integer
---@field triggers WeaponObjectTrigger[2]
---@field magazines WeaponObjectMagazine[2]
---@field lastTriggerFireTick integer
---@field reloadStartingPoint WeaponReloadStartData
---@field network WeaponNetwork

---@class EffectPartScalesValues
---@field typeSpecificScale boolean
---@field angularVelocityDelta boolean
---@field angularVelocity boolean
---@field velocityConeAngle boolean
---@field velocityDelta boolean
---@field velocity boolean

---@class ScenarioStructureBSPGlobalDetailObjectCell
---@field cellX integer
---@field cellY integer
---@field cellZ integer
---@field offsetZ integer
---@field validLayersFlags integer
---@field startIndex integer
---@field countIndex integer

---@alias ParticleSystemParticleCreationPhysics
---| "jet"
---| "explosion"
---| "default"

---@class VehicleObjectFlags
---@field jumping boolean
---@field crouched boolean
---@field hovering boolean

---@class ScenarioStructureBSPNode
---@field nodeStuff integer[3]

---@class WeaponNetworkData
---@field position VectorXYZ
---@field transitionalVelocity VectorXYZ
---@field angularVelocity VectorXYZ
---@field magazineRoundsTotal integer[2]
---@field age number

---@class WeaponReloadStartData
---@field totalRounds integer[2]
---@field loadedRounds integer[2]

---@class FontCharacterIndex
---@field characterIndex integer

---@class WeaponObjectMagazine
---@field state integer
---@field reloadTicksRemaining integer
---@field reloadTicks integer
---@field roundsUnloaded integer
---@field roundsLoaded integer
---@field roundsLeftToRecharge integer
---@field unk1 integer
---@field unk2 integer

---@alias ScenarioGroupIndex
---| "z"
---| "y"
---| "x"
---| "w"
---| "v"
---| "u"
---| "t"
---| "s"
---| "r"
---| "q"
---| "p"
---| "o"
---| "n"
---| "m"
---| "l"
---| "k"
---| "j"
---| "i"
---| "h"
---| "g"
---| "f"
---| "e"
---| "d"
---| "c"
---| "b"
---| "a"

---@class AiCommunicationPacket
---@field type integer
---@field broken boolean

---@class WeaponObjectTrigger
---@field idleTime integer
---@field state integer
---@field triggerTime integer
---@field notFiring integer
---@field autoReload integer
---@field roundsSinceLastTracer integer
---@field rateOfFire number
---@field ejectionPortRecoveryTime number
---@field illuminationRecoveryTime number
---@field projectileErrorRelated number
---@field charingEffect TableResourceHandle
---@field networkDelayTicks integer

---@class ShaderTransparentWaterFlags
---@field drawBeforeFog boolean
---@field atmosphericFog boolean
---@field baseMapColorModulatesBackground boolean
---@field baseMapAlphaModulatesReflection boolean

---@class ProjectileNetwork
---@field unknown boolean
---@field baselineValid boolean
---@field baselineIndex integer
---@field messageIndex integer
---@field updateBaseline ProjectileNetworkData
---@field deltaValid boolean
---@field updateDelta ProjectileNetworkData

---@alias UnitMotionSensorBlipSize
---| "large"
---| "small"
---| "medium"

---@class ShaderTransparentWater: Shader
---@field properties ShaderTransparentWaterProperties
---@field ripples ShaderTransparentWaterRipples

---@class ProjectileObjectFlags
---@field attached boolean
---@field projectileUnknownFlag boolean
---@field tracer boolean

---@class ScenarioNetgameFlags
---@field position VectorXYZ
---@field facing number
---@field type ScenarioNetgameFlagType
---@field usageId integer
---@field weaponGroup TagReference

---@class ActorVariantSpecialCaseFiringProperties
---@field superBallisticRange number
---@field bombardmentRange number
---@field modifiedVisionRange number
---@field specialFireMode ActorVariantSpecialFireMode
---@field specialFireSituation ActorVariantSpecialFireSituation
---@field specialFireChance number
---@field specialFireDelay number

---@class ShaderEnvironmentProperties
---@field flags ShaderEnvironmentFlags
---@field shaderEnvironmentType ShaderEnvironmentType

---@alias ShaderDetailLevel
---| "turd"
---| "low"
---| "medium"
---| "high"

---@alias MetagameClass
---| "standard_vehicle"
---| "giant_vehicle"
---| "heavy_vehicle"
---| "light_vehicle"
---| "specialist"
---| "hero"
---| "leader"
---| "infantry"

---@class WeaponHUDInterfaceCrosshairOverlayFlags
---@field dontShowWhenZoomed boolean
---@field oneZoomLevel boolean
---@field hideAreaOutsideReticle boolean
---@field showSniperData boolean
---@field showOnlyWhenZoomed boolean
---@field notASprite boolean
---@field flashesWhenActive boolean

---@class EquipmentNetwork
---@field baselineValid boolean
---@field baselineIndex integer
---@field messageIndex integer
---@field updateBaseline EquipmentNetworkData
---@field deltaValid boolean
---@field updateDelta EquipmentNetworkData

---@class ModelGeometryPartFlags
---@field zoner boolean
---@field strippedInternal boolean

---@class BaseObjectRegionDestroyeds
---@field region7 boolean
---@field region6 boolean
---@field region5 boolean
---@field region4 boolean
---@field region3 boolean
---@field region2 boolean
---@field region1 boolean
---@field region0 boolean

---@class GrenadeHUDInterfaceOverlayType
---@field showAlways boolean
---@field showOnDefault boolean
---@field showOnEmpty boolean
---@field showOnFlashing boolean

---@class ModelAnimationsRotation
---@field x integer
---@field y integer
---@field z integer
---@field w integer

---@class ScenarioStructureBSPWeatherPalette
---@field name string
---@field particleSystem TagReference
---@field particleSystemScaleFunction string
---@field wind TagReference
---@field windDirection VectorXYZ
---@field windMagnitude number
---@field windScaleFunction string

---@class VehicleObject: UnitObject
---@field vehicleFlags VehicleObjectFlags
---@field speed number
---@field slide number
---@field turn number
---@field tirePosition number
---@field threadPositionLeft number
---@field threadPositionRight number
---@field hover number
---@field thrust number
---@field suspensionStates integer[8]
---@field hoverPosition VectorXYZ
---@field unk5 VectorXYZ
---@field unk6 VectorXYZ
---@field unk7 integer
---@field network VehicleNetwork

---@class ShaderModelFlags
---@field useXboxMultipurposeChannelOrder boolean
---@field disableTwoSidedCulling boolean
---@field trueAtmosphericFog boolean
---@field alphaBlendedDecal boolean
---@field notAlphaTested boolean
---@field twoSided boolean
---@field detailAfterReflection boolean

---@class VehicleNetwork
---@field timeValid boolean
---@field baselineValid boolean
---@field baselineId integer
---@field messageId integer
---@field updateBaseline VehicleNetworkData
---@field deltaValid boolean
---@field updateDelta VehicleNetworkData
---@field lastMovedAtTick integer
---@field scenarioRespawnId integer
---@field respawnPosition VectorXYZ

---@class ContrailPointStateScaleFlags
---@field color boolean
---@field width boolean
---@field transitionDurationDelta boolean
---@field transitionDuration boolean
---@field durationDelta boolean
---@field duration boolean

---@class VehicleNetworkData
---@field atRest boolean
---@field position VectorXYZ
---@field transitionalVelocity VectorXYZ
---@field angularVelocity VectorXYZ
---@field forward VectorXYZ
---@field up VectorXYZ

---@class VirtualKeyboard
---@field displayFont TagReference
---@field backgroundBitmap TagReference
---@field specialKeyLabelsStringList TagReference
---@field virtualKeys VirtualKeyboardVirtualKey[]

---@class WeaponNetwork
---@field baselineValid boolean
---@field baselineIndex integer
---@field messageIndex integer
---@field updateBaseline WeaponNetworkData
---@field deltaValid boolean
---@field updateDelta WeaponNetworkData

---@class ScenarioScriptNodeValue

---@alias WeaponDistributionFunction
---| "horizontal_fan"
---| "point"

---@class ShaderTransparentGlassDiffuse
---@field diffuseMapScale number
---@field diffuseMap TagReference
---@field diffuseDetailMapScale number
---@field diffuseDetailMap TagReference

---@alias MetagameType
---| "pawn"
---| "knight"
---| "bishop"
---| "phaeton"
---| "wasp"
---| "mantis"
---| "lich"
---| "mammoth"
---| "broadsword"
---| "tuning_fork"
---| "guntower"
---| "scarab"
---| "phantom"
---| "banshee"
---| "wraith"
---| "mauler"
---| "chopper"
---| "ghost"
---| "watchtower"
---| "shade"
---| "seraph"
---| "revenant"
---| "pelican"
---| "hornet"
---| "scorpion"
---| "warthog"
---| "mongoose"
---| "turret"
---| "mule"
---| "engineer"
---| "elite"
---| "sentinel"
---| "flood_pure"
---| "flood_combat"
---| "flood_carrier"
---| "flood_infection"
---| "hunter"
---| "bugger"
---| "spartan"
---| "marine"
---| "skirmisher"
---| "jackal"
---| "grunt"
---| "brute"

---@class BipedObject: UnitObject
---@field bipedFlags BipedObjectFlags
---@field landingTimer integer
---@field landingForce integer
---@field movementState integer
---@field unk5 integer
---@field actionFlags integer
---@field unk6 integer
---@field bipedPosition VectorXYZ
---@field walkingCounter integer
---@field bumpObject ObjectHandle
---@field ticksSinceLastBump integer
---@field airborneTicks integer
---@field slippingTicks integer
---@field digitalThrottle integer
---@field jumpTicks integer
---@field meleeTicks integer
---@field meleeInflictTicks integer
---@field unk7 integer
---@field crouchScale number
---@field unk8 number
---@field unknownBipedPhysicsRelated Plane3D
---@field network BipedNetwork

---@class BipedNetwork
---@field baselineValid boolean
---@field baselineId integer
---@field messageId integer
---@field updateBaseline BipedNetworkDelta
---@field deltaValid boolean
---@field updateDelta BipedNetworkDelta

---@class ScenarioReference
---@field reference TagReference

---@alias HUDInterfaceDestination
---| "tertiary_map"
---| "secondary_map"
---| "primary_map"
---| "geometry_offset"

---@class BipedNetworkDelta
---@field grenadeCounts integer[2]
---@field bodyVitality number
---@field shieldVitality number
---@field shieldStunTicksGreaterThanZero boolean

---@class ShaderEnvironmentTextureScrollingAnimation
---@field uAnimationFunction WaveFunction
---@field uAnimationPeriod number
---@field uAnimationScale number
---@field vAnimationFunction WaveFunction
---@field vAnimationPeriod number
---@field vAnimationScale number

---@class FontFlags
---@field disableMccFontOverride boolean

---@class BipedObjectFlags
---@field limping2 boolean
---@field passes_through_other_bipeds boolean
---@field no_collision boolean
---@field absolute_movement boolean
---@field slipping boolean
---@field airborne boolean

---@alias ActorUnreachableDangerTrigger
---| "unused_4"
---| "unused_3"
---| "unused_2"
---| "unused_1"
---| "unused"
---| "damaging_us"
---| "shooting_near_us"
---| "shooting"
---| "visible"
---| "never"

---@class UnitPersistentControl
---@field ticksRemaining integer
---@field controlFlags UnitControlFlags

---@class ScenarioUnitFlags
---@field dead boolean

---@class ModelAnimationsAnimationGraphVehicleAnimations
---@field rightYawPerFrame number
---@field leftYawPerFrame number
---@field rightFrameCount integer
---@field leftFrameCount integer
---@field downPitchPerFrame number
---@field upPitchPerFrame number
---@field downPitchFrameCount integer
---@field upPitchFrameCount integer
---@field animations ModelAnimationsVehicleAnimation[]
---@field suspensionAnimations ModelAnimationSuspensionAnimation[]

---@alias SoundChannelCount
---| "stereo"
---| "mono"

---@class UIWidgetDefinitionFlags1
---@field dontDoThatWeirdFocusTest boolean
---@field flashing boolean
---@field password boolean
---@field editable boolean

---@class ModelAnimationsScale
---@field scale number

---@class DecalProperties
---@field flags DecalFlags
---@field type DecalType
---@field layer DecalLayer
---@field nextDecalInChain TagReference

---@class PlayersGlobals
---@field localPlayerNetworkId integer
---@field localPlayers PlayerHandle[1]
---@field localPlayerDeadUnits ObjectHandle[1]
---@field localPlayerCount integer
---@field doubleSpeedTicksRemaining integer
---@field areAllDead boolean
---@field inputDisabled boolean
---@field bspSwitchTriggerIndex integer
---@field respawnFailure integer
---@field wasTeleported boolean

---@class UnitControlData
---@field animationState integer
---@field aimingSpeed integer
---@field controlFlags UnitControlFlags
---@field weaponIndex integer
---@field grenadeIndex integer
---@field zoomIndex integer
---@field throttle VectorIJK
---@field primaryTrigger number
---@field facingVector VectorIJK
---@field aimingVector VectorIJK
---@field lookingVector VectorIJK

---@class ScenarioStructureBSPGlobalLeafPortal
---@field planeIndex integer
---@field backLeafIndex integer
---@field frontLeafIndex integer
---@field vertices ScenarioStructureBSPLeafPortalVertex[]

---@class UnitSpeechData
---@field current UnitSpeech
---@field next UnitSpeech
---@field unk0 integer
---@field unk1 integer
---@field unk2 integer
---@field unk3 integer
---@field unk4 integer
---@field unk6 boolean
---@field unk7 boolean
---@field unk8 boolean
---@field unk9 integer
---@field unk10 integer
---@field unk11 integer
---@field unk12 integer
---@field unk13 integer

---@class ScenarioSquadAttacking
---@field z boolean
---@field y boolean
---@field x boolean
---@field w boolean
---@field v boolean
---@field u boolean
---@field t boolean
---@field s boolean
---@field r boolean
---@field q boolean
---@field p boolean
---@field o boolean
---@field n boolean
---@field m boolean
---@field l boolean
---@field k boolean
---@field j boolean
---@field i boolean
---@field h boolean
---@field g boolean
---@field f boolean
---@field e boolean
---@field d boolean
---@field c boolean
---@field b boolean
---@field a boolean

---@class UnitSpeech
---@field priority integer
---@field screamType integer
---@field soundTag TagHandle
---@field ticks integer
---@field unk1 integer
---@field unk2 integer
---@field aiCommunicationInfo AiCommunicationPacket

---@class ScenarioMachineFlags
---@field openedByMeleeAttack boolean
---@field neverAppearsLocked boolean
---@field oneSided boolean
---@field doesNotOperateAutomatically boolean

---@class ScenarioStructureBSPCompiledHeader
---@field pointer integer
---@field lightmapMaterialCount integer
---@field renderedVertices integer
---@field lightmapMaterialCountAgain integer
---@field lightmapVertices integer
---@field signature TagGroup

---@class MultiplayerPlayerInfo
---@field speedMultiplier number
---@field teleporterIndex integer
---@field objectiveMode integer
---@field objectivePlayerHandle TableResourceHandle
---@field targetPlayer integer
---@field targetTime integer
---@field lastDeathTime integer
---@field slayerTarget integer
---@field oddManOut boolean

---@class ShaderTransparentFlags
---@field numeric boolean
---@field scaleFirstMapWithDistance boolean
---@field ignoreEffect boolean
---@field drawBeforeWater boolean
---@field firstMapIsInScreenspace boolean
---@field twoSided boolean
---@field decal boolean
---@field alphaTested boolean

---@class HUDInterfaceFlashFlags
---@field reverseDefaultFlashingColors boolean

---@class UnitControlFlags
---@field exchangeWeapon boolean
---@field grenade boolean
---@field secondaryTrigger boolean
---@field primaryTrigger boolean
---@field reload boolean
---@field forceAlert boolean
---@field lookDontTurn boolean
---@field melee boolean
---@field action boolean
---@field exactFacing boolean
---@field light boolean
---@field user2 boolean
---@field user1 boolean
---@field jump boolean
---@field crouch boolean

---@class GlowFlags
---@field trailingParticlesSlowOverTime boolean
---@field trailingParticlesShrinkOverTime boolean
---@field trailingParticlesFadeOverTime boolean
---@field particesMoveInBothDirections boolean
---@field particlesMoveBackwards boolean
---@field modifyParticleColorInRange boolean

---@class HUDInterfaceMultitextureOverlay
---@field type integer
---@field framebufferBlendFunction FramebufferBlendFunction
---@field primaryAnchor HUDInterfaceMultitextureOverlayAnchor
---@field secondaryAnchor HUDInterfaceMultitextureOverlayAnchor
---@field tertiaryAnchor HUDInterfaceMultitextureOverlayAnchor
---@field zeroToOneBlendFunction HUDInterfaceZeroToOneBlendFunction
---@field oneToTwoBlendFunction HUDInterfaceZeroToOneBlendFunction
---@field primaryScale VectorXY
---@field secondaryScale VectorXY
---@field tertiaryScale VectorXY
---@field primaryOffset VectorXY
---@field secondaryOffset VectorXY
---@field tertiaryOffset VectorXY
---@field primary TagReference
---@field secondary TagReference
---@field tertiary TagReference
---@field primaryWrapMode HUDInterfaceWrapMode
---@field secondaryWrapMode HUDInterfaceWrapMode
---@field tertiaryWrapMode HUDInterfaceWrapMode
---@field effectors HUDInterfaceMultitextureOverlayEffector[]

---@class ProjectileFlags
---@field minimumUnattachedDetonationTime boolean
---@field randomAttachedDetonationTime boolean
---@field combineInitialVelocityWithParentVelocity boolean
---@field hasSuperCombiningExplosion boolean
---@field detonationMaxTimeIfAttached boolean
---@field aiMustUseBallisticAiming boolean
---@field orientedAlongVelocity boolean

---@class ScenarioStructureBSPCollisionMaterial
---@field shader TagReference
---@field material MaterialType

---@class UnitObjectFlags
---@field desiresFlashlightOff boolean
---@field desiresFlashlightOn boolean
---@field possessed boolean
---@field unknownNVRelated boolean
---@field blind boolean
---@field suspended boolean
---@field impervious boolean
---@field canBlink boolean
---@field unknown boolean
---@field willNotDropItems boolean
---@field unknownIntegratedLightRelated boolean
---@field berserking boolean
---@field controllable boolean
---@field powerUpAddition boolean
---@field powerUp boolean
---@field unknownBipedSpeechRelated boolean

---@class UnitRecentDamager
---@field lastDamageTime integer
---@field totalDamage number
---@field object ObjectHandle
---@field player PlayerHandle

---@class Player
---@field playerId integer
---@field localPlayerIndex integer
---@field name string
---@field squadIndex integer
---@field teamIndex integer
---@field interactionObjectHandle TableResourceHandle
---@field interactionObjectType integer
---@field interactionObjectSeat integer
---@field respawnTime integer
---@field respawnTimePenalty integer
---@field unitHandle TableResourceHandle
---@field deadUnitHandle TableResourceHandle
---@field bspClusterIndex integer
---@field weaponSwapResult boolean
---@field autoAimTargetObject TableResourceHandle
---@field lastFireTime integer
---@field networkPlayerData NetworkPlayer
---@field powerUpDurations integer[2]
---@field multiplayerInfo MultiplayerPlayerInfo
---@field killStreak integer
---@field multikill integer
---@field lastKillTime integer
---@field kills integer[4]
---@field assists integer[4]
---@field betrays integer
---@field deaths integer
---@field suicides integer
---@field teamKills integer
---@field multiplayerStatistics PlayerMultiplayerStatistics
---@field telefragTimer integer
---@field quitTime integer
---@field telefragDanger boolean
---@field quit boolean
---@field ping integer
---@field teamKillCount integer
---@field teamKillTicksSinceLast integer
---@field position VectorXYZ
---@field actions PlayerActions
---@field baselineUpdateXyAim number
---@field baselineUpdateZAim number
---@field baselineUpdateForward number
---@field baselineUpdateLeft number
---@field baselineUpdateRateOfFire number
---@field baselineUpdateWeaponSlot integer
---@field baselineUpdateGrenadeSlot integer
---@field updateAiming VectorXYZ
---@field updatePosition VectorXYZ

---@class PlayerActions
---@field reload boolean
---@field flashlight boolean
---@field action boolean
---@field melee boolean

---@alias DetailObjectCollectionType
---| "viewer_facing"
---| "screen_facing"

---@class ScenarioDeviceFlags
---@field notUsableFromAnySide boolean
---@field positionReversed boolean
---@field canChangeOnlyOnce boolean
---@field initiallyOff boolean
---@field initiallyOpen boolean

---@class GameDataInputReference
---@field function UIGameDataInputReferenceFunction

---@class SkyLight
---@field lensFlare SkyLightLensFlare
---@field radiosity SkyLightRadiosity

---@alias SoundFormat
---| "ogg_vorbis"
---| "ima_adpcm"
---| "xbox_adpcm"
---| "pcm"

---@class GBXModel
---@field flags GBXModelFlags
---@field nodeListChecksum integer
---@field detailCutoff ModelDetailCutoff
---@field detailNodeCount ModelDetailNodeCount
---@field baseMapUScale number
---@field baseMapVScale number
---@field runtimeMarkers ModelMarker[]
---@field nodes ModelNode[]
---@field regions ModelRegion[]
---@field geometries GBXModelGeometry[]
---@field shaders ModelShaderReference[]

---@alias ShaderTransparentGenericStageInputMappingColor
---| "x_1"
---| "x"
---| "_1_2_clamp_x"
---| "clamp_x_1_2"
---| "_1_2"
---| "_2"
---| "_1_clamp_x"
---| "clamp_x"

---@class NetworkPlayer
---@field name string
---@field colorIndex integer
---@field iconIndex integer
---@field machineIndex integer
---@field controllerIndex integer
---@field teamIndex integer
---@field index integer

---@class GlobalsPlayerInformation
---@field unit TagReference
---@field walkingSpeed number
---@field doubleSpeedMultiplier number
---@field runForward number
---@field runBackward number
---@field runSideways number
---@field runAcceleration number
---@field sneakForward number
---@field sneakBackward number
---@field sneakSideways number
---@field sneakAcceleration number
---@field airborneAcceleration number
---@field speedMultiplier number
---@field grenadeOrigin VectorXYZ
---@field stunMovementPenalty number
---@field stunTurningPenalty number
---@field stunJumpingPenalty number
---@field minimumStunTime number
---@field maximumStunTime number
---@field firstPersonIdleTime number[2]
---@field firstPersonSkipFraction number
---@field coopRespawnEffect TagReference

---@class PlayerControl
---@field unitHandle ObjectHandle
---@field controlFlags integer
---@field desiredAngles VectorPY
---@field throttle VectorIJ
---@field primaryTrigger number
---@field weaponIndex integer
---@field grenadeIndex integer
---@field zoomLevel integer
---@field weaponSwapTicks integer
---@field targetObjectIndex ObjectHandle
---@field autoaimLevel number
---@field magnetismLevel number
---@field lookAccelerationTime number
---@field pitchMinimum number
---@field pitchMaximum number

---@class PlayerHandle
---@field index integer
---@field value integer
---@field id integer

---@class DynamicObjectBase
---@field tagHandle TagHandle
---@field networkRole integer
---@field flags0 integer
---@field existenceTime integer
---@field flags1 BaseDynamicObjectFlags
---@field objectMarkerId integer
---@field network BaseObjectNetwork
---@field position VectorXYZ
---@field velocity VectorXYZ
---@field rotation VectorIJK[2]
---@field rotationVelocity VectorPYR
---@field scenarioLocation ScenarioLocation
---@field center VectorXYZ
---@field boundingRadius number
---@field scale number
---@field objectType integer
---@field teamOwner integer
---@field nameListIndex integer
---@field movingTime integer
---@field variantIndex integer
---@field player TableResourceHandle
---@field ownerObject ObjectHandle
---@field animationData ObjectAnimationData
---@field vitals BaseObjectVitals
---@field clusterPartition TableResourceHandle
---@field unknownObject ObjectHandle
---@field nextObject ObjectHandle
---@field firstObject ObjectHandle
---@field parentObject ObjectHandle
---@field parentAttachmentNode integer
---@field forceShieldUpdate boolean
---@field validOutgoingFunctions ObjectValidOutGoingFunctions
---@field incomingFunctionValues number[4]
---@field outgoingFunctionValues number[4]
---@field attachmentData BaseObjectAttachmentsData
---@field cachedRenderState TableResourceHandle
---@field regionDestroyeds BaseObjectRegionDestroyeds
---@field shaderPermutation integer
---@field regionHealths integer[8]
---@field regionPermutationIds integer[8]
---@field colorChange ColorRGB[4]
---@field colorChange2 ColorRGB[4]
---@field nodeOrientations BaseObjectBlockReference[2]
---@field nodeMatricesBlock BaseObjectBlockReference

---@class ObjectAnimationData
---@field animationTagHandle TagHandle
---@field animationState ObjectAnimationState
---@field animationInterpolationFrame integer
---@field animationInterpolationFrameCount integer

---@class ObjectValidOutGoingFunctions
---@field d boolean
---@field c boolean
---@field b boolean
---@field a boolean

---@class BaseObjectBlockReference
---@field size integer
---@field offset integer

---@class ActorMovement
---@field diveIntoCoverChance number
---@field emergeFromCoverChance number
---@field diveFromGrenadeChance number
---@field pathfindingRadius number
---@field glassIgnoranceChance number
---@field stationaryMovementDist number
---@field freeFlyingSidestep number
---@field beginMovingAngle number
---@field cosineBeginMovingAngle number

---@class ScenarioBipedPalette
---@field name TagReference

---@class UnitHUDInterfaceHealthMeter: HUDInterfaceMeterElement
---@field mediumHealthLeftColor integer
---@field maxColorHealthFractionCutoff number
---@field minColorHealthFractionCutoff number

---@class BaseObjectVitalsFlags
---@field killedNoStats boolean
---@field shieldRecharging boolean
---@field invulnerable boolean
---@field cannotMeleeAttack boolean
---@field killedSilent boolean
---@field killed boolean
---@field shieldDepleted boolean
---@field healthDepleted boolean
---@field shieldDamageEffectApplied boolean
---@field healthDamageEffectApplied boolean

---@class ModelCollisionGeometryModifier

---@class ScenarioDeviceGroupFlags
---@field canChangeOnlyOnce boolean

---@alias UIWidgetType
---| "custom_not_implemented"
---| "movie_not_implemented"
---| "game_model_not_implemented"
---| "column_list"
---| "spinner_list"
---| "text_box"
---| "container"

---@class InputDeviceDefaultsFlags
---@field unused boolean

---@class ShaderTransparentChicagoMap
---@field flags ShaderTransparentChicagoMapFlags
---@field colorFunction ShaderColorFunctionType
---@field alphaFunction ShaderColorFunctionType
---@field parameters ShaderTransparentMapParameters
---@field animation ShaderTransparentMapAnimation

---@alias FramebufferFadeMode
---| "fade_when_parallel"
---| "fade_when_perpendicular"
---| "none"

---@alias ActorVariantMovementType
---| "switch_types"
---| "always_crouch"
---| "always_run"

---@class BaseDynamicObjectFlags
---@field hasCollisionModel boolean
---@field collidable boolean
---@field outsideOfMap boolean
---@field doNotReactivate boolean
---@field deleteAtDeactivation boolean
---@field noShadow boolean
---@field isGarbage boolean
---@field isElevator2 boolean
---@field isElevator boolean
---@field isDeviceMachine boolean
---@field notPlacedAutomatically boolean
---@field connectedToMap boolean
---@field hasSoundLoopingAttachment boolean
---@field noCollision2 boolean
---@field stationary boolean
---@field inWater boolean
---@field ignoreGravity boolean
---@field onGround boolean
---@field noCollision boolean

---@class ModelVertexReference
---@field vertexType ModelVertexType
---@field vertexCount integer
---@field offset integer
---@field unknownPointer integer
---@field vertexPointer integer

---@class ScenarioNetgameEquipmentFlags
---@field levitate boolean

---@class ScenarioStructureBSPFogPalette
---@field name string
---@field fog TagReference
---@field fogScaleFunction string

---@class CacheFileHeader
---@field fileSize integer
---@field name string
---@field build string
---@field gameType CacheFileType
---@field crc32 integer

---@class Flag
---@field flags IsUnusedFlag
---@field trailingEdgeShape FlagTrailingEdgeShape
---@field trailingEdgeShapeOffset integer
---@field attachedEdgeShape FlagAttachedEdgeShape
---@field width integer
---@field height integer
---@field cellWidth number
---@field cellHeight number
---@field redFlagShader TagReference
---@field physics TagReference
---@field windNoise number
---@field blueFlagShader TagReference
---@field attachmentPoints FlagAttachmentPoint[]

---@alias ObjectNoise
---| "quiet"
---| "shout"
---| "loud"
---| "medium"
---| "silent"

---@class Meter
---@field flags IsUnusedFlag
---@field stencilBitmaps TagReference
---@field sourceBitmap TagReference
---@field stencilSequenceIndex integer
---@field sourceSequenceIndex integer
---@field interpolateColors MeterInterpolateColors
---@field anchorColors MeterAnchorColors
---@field emptyColor ColorARGB
---@field fullColor ColorARGB
---@field unmaskDistance number
---@field maskDistance number
---@field encodedStencil TagRawData

---@alias FlagAttachedEdgeShape
---| "concave_triangular"
---| "flat"

---@class ActorLooking
---@field maximumAimingDeviation VectorPY
---@field maximumLookingDeviation VectorPY
---@field noncombatLookDeltaL number
---@field noncombatLookDeltaR number
---@field combatLookDeltaL number
---@field combatLookDeltaR number
---@field idleAimingRange VectorPY
---@field idleLookingRange VectorPY
---@field eventLookTimeModifier number[2]
---@field noncombatIdleFacing number[2]
---@field noncombatIdleAiming number[2]
---@field noncombatIdleLooking number[2]
---@field guardIdleFacing number[2]
---@field guardIdleAiming number[2]
---@field guardIdleLooking number[2]
---@field combatIdleFacing number[2]
---@field combatIdleAiming number[2]
---@field combatIdleLooking number[2]
---@field cosineMaximumAimingDeviation VectorPY
---@field cosineMaximumLookingDeviation VectorPY
---@field dontUse TagReference
---@field cantUse TagReference

---@class ScenarioSceneryPalette
---@field name TagReference

---@class ModelCollisionGeometryBSPEdge
---@field startVertex integer
---@field endVertex integer
---@field forwardEdge integer
---@field reverseEdge integer
---@field leftSurface integer
---@field rightSurface integer

---@class Equipment: Item
---@field powerupType EquipmentPowerupType
---@field grenadeType GrenadeType
---@field powerupTime number
---@field pickupSound TagReference

---@class Biped: Unit
---@field movingTurningSpeed number
---@field flags BipedFlags
---@field stationaryTurningThreshold number
---@field aIn BipedFunctionIn
---@field bIn BipedFunctionIn
---@field cIn BipedFunctionIn
---@field dIn BipedFunctionIn
---@field dontUse TagReference
---@field bankAngle number
---@field bankApplyTime number
---@field bankDecayTime number
---@field pitchRatio number
---@field maxVelocity number
---@field maxSidestepVelocity number
---@field acceleration number
---@field deceleration number
---@field angularVelocityMaximum number
---@field angularAccelerationMaximum number
---@field crouchVelocityModifier number
---@field maximumSlopeAngle number
---@field downhillFalloffAngle number
---@field downhillCutoffAngle number
---@field downhillVelocityScale number
---@field uphillFalloffAngle number
---@field uphillCutoffAngle number
---@field uphillVelocityScale number
---@field footsteps TagReference
---@field jumpVelocity number
---@field maximumSoftLandingTime number
---@field maximumHardLandingTime number
---@field minimumSoftLandingVelocity number
---@field minimumHardLandingVelocity number
---@field maximumHardLandingVelocity number
---@field deathHardLandingVelocity number
---@field standingCameraHeight number
---@field crouchingCameraHeight number
---@field crouchTransitionTime number
---@field standingCollisionHeight number
---@field crouchingCollisionHeight number
---@field collisionRadius number
---@field autoaimWidth number
---@field cosineStationaryTurningThreshold number
---@field crouchCameraVelocity number
---@field cosineMaximumSlopeAngle number
---@field negativeSineDownhillFalloffAngle number
---@field negativeSineDownhillCutoffAngle number
---@field sineUphillFalloffAngle number
---@field sineUphillCutoffAngle number
---@field pelvisModelNodeIndex integer
---@field headModelNodeIndex integer
---@field contactPoint BipedContactPoint[]

---@class HUDGlobalsWaypointArrow
---@field name string
---@field color integer
---@field opacity number
---@field translucency number
---@field onScreenSequenceIndex integer
---@field offScreenSequenceIndex integer
---@field occludedSequenceIndex integer
---@field flags HUDGlobalsWaypointArrowFlags

---@class ShaderTransparentMeterFlags
---@field unfiltered boolean
---@field tintMode2 boolean
---@field flashColorIsNegative boolean
---@field twoSided boolean
---@field decal boolean

---@class ModelCollisionGeometry
---@field flags ModelCollisionGeometryFlags
---@field indirectDamageMaterial integer
---@field maximumBodyVitality number
---@field bodySystemShock number
---@field friendlyDamageResistance number
---@field localizedDamageEffect TagReference
---@field areaDamageEffectThreshold number
---@field areaDamageEffect TagReference
---@field bodyDamagedThreshold number
---@field bodyDamagedEffect TagReference
---@field bodyDepletedEffect TagReference
---@field bodyDestroyedThreshold number
---@field bodyDestroyedEffect TagReference
---@field maximumShieldVitality number
---@field shieldMaterialType MaterialType
---@field shieldFailureFunction FunctionType
---@field shieldFailureThreshold number
---@field failingShieldLeakFraction number
---@field minimumStunDamage number
---@field stunTime number
---@field rechargeTime number
---@field shieldDamagedThreshold number
---@field shieldDamagedEffect TagReference
---@field shieldDepletedEffect TagReference
---@field shieldRechargingEffect TagReference
---@field shieldRechargeRate number
---@field materials ModelCollisionGeometryMaterial[]
---@field regions ModelCollisionGeometryRegion[]
---@field modifiers ModelCollisionGeometryModifier[]
---@field x number[2]
---@field y number[2]
---@field z number[2]
---@field pathfindingSpheres ModelCollisionGeometrySphere[]
---@field nodes ModelCollisionGeometryNode[]

---@class ModelCollisionGeometryNode
---@field name string
---@field region integer
---@field parentNode integer
---@field nextSiblingNode integer
---@field firstChildNode integer
---@field nameThing integer
---@field bsps ModelCollisionGeometryBSP[]

---@class ActorVariantMovementSwitching
---@field movementType ActorVariantMovementType
---@field initialCrouchChance number
---@field crouchTime number[2]
---@field runTime number[2]

---@class Actor
---@field flags ActorFlags
---@field moreFlags ActorMoreFlags
---@field type ActorType
---@field perception ActorPerception
---@field movement ActorMovement
---@field looking ActorLooking
---@field unopposable ActorUnopposable
---@field panic ActorPanic
---@field defensive ActorDefensive
---@field pursuit ActorPursuit
---@field berserk ActorBerserk
---@field firingPositions ActorFiringPositions
---@field communication ActorCommunication

---@alias FramebufferBlendFunction
---| "alpha_multiply_add"
---| "component_max"
---| "component_min"
---| "subtract"
---| "add"
---| "double_multiply"
---| "multiply"
---| "alpha_blend"

---@class BitmapMoreProcessing
---@field blurFilterSize number
---@field alphaBias number
---@field mipmapCount integer

---@class PointPhysics
---@field flags PointPhysicsFlags
---@field massScale number
---@field waterGravityScale number
---@field airGravityScale number
---@field density number
---@field airFriction number
---@field waterFriction number
---@field surfaceFriction number
---@field elasticity number

---@class ScenarioStructureBSPMaterialCompressedLightmapVertex
---@field normal integer
---@field textureCoords integer

---@class CameraTrack
---@field flags IsUnusedFlag
---@field controlPoints CameraTrackControlPoint[]

---@class EventHandlerReferencesFlags
---@field tryToBranchOnFailure boolean
---@field runScenarioScript boolean
---@field goBackToPreviousWidget boolean
---@field replaceSelfWWidget boolean
---@field runFunction boolean
---@field giveFocusToWidget boolean
---@field reloadOtherWidget boolean
---@field reloadSelf boolean
---@field openWidget boolean
---@field closeAllWidgets boolean
---@field closeOtherWidget boolean
---@field closeCurrentWidget boolean

---@class ParticleShaderFlags
---@field dontOverdrawFpWeapon boolean
---@field nonlinearTint boolean
---@field sortBias boolean

---@class WeaponHUDInterfaceFlags
---@field useParentHudFlashingParameters boolean

---@class MachineFlags
---@field elevator boolean
---@field butNotWhenOpen boolean
---@field pathfindingObstacle boolean

---@class Antenna
---@field attachmentMarkerName string
---@field bitmaps TagReference
---@field physics TagReference
---@field springStrengthCoefficient number
---@field falloffPixels number
---@field cutoffPixels number
---@field length number
---@field vertices AntennaVertex[]

---@class DeviceControl: Device
---@field type DeviceType
---@field triggersWhen DeviceTriggersWhen
---@field callValue number
---@field on TagReference
---@field off TagReference
---@field deny TagReference

---@alias ScenarioSearchBehavior
---| "tenacious"
---| "never"
---| "normal"

---@alias FunctionType
---| "cosine"
---| "very_late"
---| "late"
---| "very_early"
---| "early"
---| "linear"

---@class HUDGlobalsAnniversaryRemapTarget
---@field targetBitmap TagReference
---@field language HUDGlobalsAnniversaryRemapTargetLanguage
---@field flags HUDGlobalsAnniversaryRemapTargetFlags

---@class Shader
---@field radiosity ShaderRadiosityProperties
---@field physics ShaderPhysicsProperties

---@class WeaponHUDInterfaceStaticElement
---@field stateAttachedTo WeaponHUDInterfaceStateAttachedTo
---@field allowedViewType WeaponHUDInterfaceViewType
---@field anchor HUDInterfaceChildAnchor
---@field properties HUDInterfaceStaticElement

---@class ModelAnimationsAnimationGraphWeaponType
---@field label string
---@field animations ModelAnimationsAnimationWeaponTypeAnimation[]

---@class ScenarioStructureBSPWeatherPolyhedron
---@field boundingSphereCenter VectorXYZ
---@field boundingSphereRadius number
---@field planes ScenarioStructureBSPWeatherPolyhedronPlane[]

---@class Particle
---@field flags ParticleFlags
---@field bitmap TagReference
---@field physics TagReference
---@field collisionMaterialEffects TagReference
---@field lifespan number[2]
---@field fadeInTime number
---@field fadeOutTime number
---@field collisionEffect TagReference
---@field deathEffect TagReference
---@field minimumSize number
---@field radiusAnimation number[2]
---@field animationRate number[2]
---@field contactDeterioration number
---@field fadeStartSize number
---@field fadeEndSize number
---@field firstSequenceIndex integer
---@field initialSequenceCount integer
---@field loopingSequenceCount integer
---@field finalSequenceCount integer
---@field spriteSize number
---@field orientation ParticleOrientation
---@field shader ShaderEffect

---@class LightRadiosity
---@field intensity number
---@field color ColorRGB

---@class ActorPanic
---@field coweringTime number[2]
---@field friendKilledPanicChance number
---@field leaderType ActorType
---@field leaderKilledPanicChance number
---@field panicDamageThreshold number
---@field surpriseDistance number

---@class DamageEffectFlags
---@field doNotScaleDamageByDistance boolean

---@alias BitmapFormat
---| "bc_7"
---| "monochrome"
---| "_32_bit"
---| "_16_bit"
---| "dxt5"
---| "dxt3"
---| "dxt1"

---@class BitmapSpriteBudget
---@field size BitmapSpriteBudgetSize
---@field count integer

---@class DamageEffect
---@field radius number[2]
---@field cutoffScale number
---@field flags DamageEffectFlags
---@field screenFlash DamageEffectScreenFlash
---@field lowFrequencyVibrate DamageEffectVibrate
---@field highFrequencyVibrate DamageEffectVibrate
---@field temporaryCameraImpulse DamageEffectTemporaryCameraImpulse
---@field permanentCameraImpulse DamageEffectPermanentCameraImpulse
---@field cameraShaking DamageEffectCameraShaking
---@field sound TagReference
---@field breakingEffect DamageEffectBreakingEffect
---@field damage DamageEffectDamage

---@class DamageEffectPermanentCameraImpulse
---@field angle number

---@class ObjectChangeColors
---@field darkenBy FunctionScaleBy
---@field scaleBy FunctionScaleBy
---@field flags ColorInterpolationFlags
---@field color ColorRGB
---@field permutations ObjectChangeColorsPermutation[]

---@class BitmapColorPlate
---@field width integer
---@field height integer
---@field compressedData TagRawData

---@class ShaderTransparentPlasma: Shader
---@field intensity ShaderTransparentPlasmaIntensity
---@field offset ShaderTransparentPlasmaOffset
---@field color ShaderTransparentPlasmaColor
---@field primaryNoiseMap ShaderTransparentPlasmaNoiseMap
---@field secondaryNoiseMap ShaderTransparentPlasmaNoiseMap

---@class ShaderTransparentPlasmaIntensity
---@field intensitySource FunctionOut
---@field intensityExponent number

---@class ShaderTransparentChicagoMapFlags
---@field vClamped boolean
---@field uClamped boolean
---@field alphaReplicate boolean
---@field unfiltered boolean

---@class HUDGlobals
---@field messagingParameters HUDGlobalsMessagingParameters
---@field helpTextColor HUDInterfaceElementColor
---@field hudMessages TagReference
---@field objectiveColors HUDGlobalsObjectiveColors
---@field waypointParameters HUDGlobalsWaypointParameters
---@field hudCrap HUDGlobalsCrap
---@field indicators HUDGlobalsDamageIndicators
---@field notMuchTimeLeftColor HUDInterfaceElementColor
---@field timeOutColor HUDInterfaceElementColor
---@field moreHudCrap HUDGlobalsExtraCrap
---@field anniversaryHudRemaps HUDGlobalsAnniversaryRemap[]

---@class ModelAnimationsAnimationGraphNodeFlags
---@field noMovement boolean
---@field hinge boolean
---@field ballSocket boolean

---@class ShaderEffectFlags
---@field dontOverdrawFpWeapon boolean
---@field nonlinearTint boolean
---@field sortBias boolean

---@class HUDGlobalsExtraCrap
---@field carnageReportBitmap TagReference
---@field loadingBeginText integer
---@field loadingEndText integer
---@field checkpointBeginText integer
---@field checkpointEndText integer
---@field checkpointSound TagReference

---@class HUDGlobalsDamageIndicators
---@field topOffset integer
---@field bottomOffset integer
---@field leftOffset integer
---@field rightOffset integer
---@field bitmap TagReference
---@field sequenceIndex integer
---@field multiplayerSequenceIndex integer
---@field color integer

---@class ScenarioStructureBSPPathfindingSurface
---@field data integer

---@class ScenarioCommandListFlags
---@field manualBspIndex boolean
---@field disableFallingDamage boolean
---@field disableCommunication boolean
---@field disableLooking boolean
---@field allowTargeting boolean
---@field allowInitiative boolean

---@class ScenarioScriptNodeTable
---@field name string
---@field maximumCount integer
---@field elementSize integer
---@field one integer
---@field data integer
---@field size integer
---@field count integer
---@field nextId integer
---@field firstElementPtr integer

---@class DetailObjectCollection
---@field collectionType DetailObjectCollectionType
---@field globalZOffset number
---@field spritePlate TagReference
---@field types DetailObjectCollectionObjectType[]

---@class HUDInterfaceElementPosition
---@field anchorOffset VectorXYInt
---@field widthScale number
---@field heightScale number
---@field scalingFlags HUDInterfaceScalingFlags

---@alias UIReplaceFunction
---| "pid"
---| "build_number"
---| "widget_s_controller"
---| "null"

---@class PreferencesNetworkGame
---@field name string
---@field primaryColor ColorRGB
---@field secondaryColor ColorRGB
---@field pattern TagReference
---@field patternBitmapIndex integer
---@field decal TagReference
---@field decalBitmapIndex integer

---@class VectorXY
---@field x number
---@field y number

---@class ModelAnimations
---@field objects ModelAnimationsAnimationGraphObjectOverlay[]
---@field units ModelAnimationsAnimationGraphUnitSeat[]
---@field weapons ModelAnimationsAnimationGraphWeaponAnimations[]
---@field vehicles ModelAnimationsAnimationGraphVehicleAnimations[]
---@field devices ModelAnimationsDeviceAnimations[]
---@field unitDamage ModelAnimationsUnitDamageAnimations[]
---@field firstPersonWeapons ModelAnimationsAnimationGraphFirstPersonWeaponAnimations[]
---@field soundReferences ModelAnimationsAnimationGraphSoundReference[]
---@field limpBodyNodeRadius number
---@field flags ModelAnimationsFlags
---@field nodes ModelAnimationsAnimationGraphNode[]
---@field animations ModelAnimationsAnimation[]

---@class ScenarioSourceFile
---@field name string
---@field source TagRawData

---@class ModelMarkerInstance
---@field regionIndex integer
---@field permutationIndex integer
---@field nodeIndex integer
---@field translation VectorXYZ
---@field rotation Quaternion

---@class ModelAnimationsAnimationGraphNode
---@field name string
---@field nextSiblingNodeIndex integer
---@field firstChildNodeIndex integer
---@field parentNodeIndex integer
---@field nodeJointFlags ModelAnimationsAnimationGraphNodeFlags
---@field baseVector VectorXYZ
---@field vectorRange number

---@alias VehicleType
---| "turret"
---| "alien_fighter"
---| "alien_scout"
---| "human_plane"
---| "human_boat"
---| "human_jeep"
---| "human_tank"

---@class MultiplayerScenarioDescriptionScenarioDescription
---@field descriptiveBitmap TagReference
---@field displayedMapName TagReference
---@field scenarioTagDirectoryPath string

---@class ModelAnimationsWeaponAnimation
---@field animation integer

---@class ScenarioStructureBSPBackgroundSoundPalette
---@field name string
---@field backgroundSound TagReference
---@field scaleFunction string

---@class ScenarioStructureBSPSurfaceReference
---@field surface integer
---@field node integer

---@class ScenarioWeaponPalette
---@field name TagReference

---@class MaterialEffectsMaterialEffect
---@field materials MaterialEffectsMaterialEffectMaterial[]

---@class DamageEffectBreakingEffect
---@field forwardVelocity number
---@field forwardRadius number
---@field forwardExponent number
---@field outwardVelocity number
---@field outwardRadius number
---@field outwardExponent number

---@class ScenarioStructureBSPPathfindingEdge
---@field midpoint integer

---@class ShaderTransparentPlasmaColor
---@field specularProperties ShaderSpecularProperties
---@field tintColorSource FunctionNameNullable

---@class ScenarioStructureBSPMaterialCompressedRenderedVertex
---@field position VectorXYZ
---@field normal integer
---@field binormal integer
---@field tangent integer
---@field textureCoords VectorXY

---@class Bitmap
---@field type BitmapType
---@field encodingFormat BitmapFormat
---@field usage BitmapUsage
---@field flags BitmapFlags
---@field processing BitmapProcessing
---@field spriteBudget BitmapSpriteBudget
---@field colorPlate BitmapColorPlate
---@field processedPixelData TagRawData
---@field moreProcessing BitmapMoreProcessing
---@field spriteProcessing BitmapSpriteProcessing
---@field bitmapGroupSequence BitmapGroupSequence[]
---@field bitmapData BitmapData[]

---@class ShaderTransparentChicagoExtraFlags
---@field customEditionBlending boolean
---@field numericCountdownTimer boolean
---@field dontFadeActiveCamouflage boolean

---@class ModelAnimationsUnitSeatAnimation
---@field animation integer

---@class VectorPYR
---@field pitch number
---@field yaw number
---@field rotation number

---@class HUDMessageText
---@field textData TagRawData
---@field messageElements HUDMessageTextElement[]
---@field messages HUDMessageTextMessage[]

---@class VectorFontData
---@field fontFamilyName string
---@field format VectorFontDataFormat
---@field fontData TagRawData
---@field resourceHandle integer
---@field fallbackFont TagReference

---@alias HUDGlobalsAnniversaryRemapTargetLanguage
---| "simplified_chinese"
---| "russian"
---| "polish"
---| "latam_spanish"
---| "portuguese"
---| "korean"
---| "japanese"
---| "traditional_chinese"
---| "german"
---| "italian"
---| "spanish"
---| "french"
---| "english"

---@class HUDMessageTextMessage
---@field name string
---@field startIndexIntoTextBlob integer
---@field startIndexOfMessageBlock integer
---@field panelCount integer

---@class ModelMarker
---@field name string
---@field magicIdentifier integer
---@field instances ModelMarkerInstance[]

---@class ScenarioStructureBSPMirror
---@field plane Plane3D
---@field shader TagReference
---@field vertices ScenarioStructureBSPMirrorVertex[]

---@class ScenarioMachine
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field appearancePlayerIndex integer
---@field powerGroup integer
---@field positionGroup integer
---@field deviceFlags ScenarioDeviceFlags
---@field machineFlags ScenarioMachineFlags

---@alias MultiplayerInformationSound
---| "ting"
---| "countdown_timer_end"
---| "hill_occupied"
---| "hill_controlled"
---| "hill_contested"
---| "red_team_ctf"
---| "blue_team_ctf"
---| "king_of_the_hill"
---| "team_slayer"
---| "team_race"
---| "team_oddball"
---| "team_king_of_the_hill"
---| "player_respawn"
---| "hill_move"
---| "countdown_for_respawn"
---| "flag_failure"
---| "teleporter_activate"
---| "countdown_timer"
---| "scorpion"
---| "ghost"
---| "warthog"
---| "capture_the_flag"
---| "slayer"
---| "race"
---| "oddball"
---| "killing_spree"
---| "running_riot"
---| "killtacular"
---| "triple_kill"
---| "double_kill"
---| "red_team_score"
---| "red_team_flag_returned"
---| "red_team_has_the_flag"
---| "blue_team_score"
---| "blue_team_flag_returned"
---| "blue_team_has_the_flag"
---| "blue_team_30_to_win"
---| "blue_team_minute_to_win"
---| "red_team_30_to_win"
---| "red_team_minute_to_win"
---| "_30_seconds_to_win"
---| "one_minute_to_win"
---| "game_over"
---| "play_ball"

---@class TagHandle
---@field index integer
---@field value integer
---@field id integer

---@class HUDInterfaceNumberElement
---@field position HUDInterfaceElementPosition
---@field color HUDInterfaceElementColor
---@field maximumNumberOfDigits integer
---@field flags HUDInterfaceNumberFlags
---@field numberOfFractionalDigits integer

---@class GlobalsBreakableSurfaceParticleEffect
---@field particleType TagReference
---@field flags GlobalsBreakableSurfaceParticleEffectFlags
---@field density number
---@field velocityScale number[2]
---@field angularVelocity number[2]
---@field radius number[2]
---@field tint ColorARGB

---@class WeatherParticleSystemParticleTypeFlags
---@field randomRotation boolean
---@field alongLongHuePath boolean
---@field interpolateColorsInHsv boolean

---@class ScenarioStructureBSPSubcluster
---@field worldBoundsX number[2]
---@field worldBoundsY number[2]
---@field worldBoundsZ number[2]
---@field surfaceIndices ScenarioStructureBSPSubclusterSurfaceIndex[]

---@class HUDMessageTextElement
---@field type integer
---@field data integer

---@class ShaderEffectSecondaryMap
---@field bitmap TagReference
---@field anchor ParticleAnchor
---@field flags IsUnfilteredFlag
---@field uAnimationSource FunctionOut
---@field uAnimationFunction WaveFunction
---@field uAnimationPeriod number
---@field uAnimationPhase number
---@field uAnimationScale number
---@field vAnimationSource FunctionOut
---@field vAnimationFunction WaveFunction
---@field vAnimationPeriod number
---@field vAnimationPhase number
---@field vAnimationScale number
---@field rotationAnimationSource FunctionOut
---@field rotationAnimationFunction WaveFunction
---@field rotationAnimationPeriod number
---@field rotationAnimationPhase number
---@field rotationAnimationScale number
---@field rotationAnimationCenter VectorXY
---@field zspriteRadiusScale number

---@class ActorPerception
---@field maxVisionDistance number
---@field centralVisionAngle number
---@field maxVisionAngle number
---@field peripheralVisionAngle number
---@field peripheralDistance number
---@field standingGunOffset VectorXYZ
---@field crouchingGunOffset VectorXYZ
---@field hearingDistance number
---@field noticeProjectileChance number
---@field noticeVehicleChance number
---@field combatPerceptionTime number
---@field guardPerceptionTime number
---@field nonCombatPerceptionTime number
---@field inverseCombatPerceptionTime number
---@field inverseGuardPerceptionTime number
---@field inverseNonCombatPerceptionTime number

---@class UnitObject: DynamicObjectBase
---@field actorTag TagHandle
---@field swarmActorTag TagHandle
---@field swarmNextUnit ObjectHandle
---@field swarmPreviousUnit ObjectHandle
---@field unitFlags UnitObjectFlags
---@field unitControlFlags UnitControlFlags
---@field shieldSnapping integer
---@field baseSeatIndex integer
---@field persistentControl UnitPersistentControl
---@field controllingPlayer PlayerHandle
---@field aiEffectType integer
---@field emotionAnimationIndex integer
---@field nextAiEffectTick integer
---@field desiredFacingVector VectorIJK
---@field desiredAimingVector VectorIJK
---@field aimingVector VectorIJK
---@field aimingVelocity VectorIJK
---@field lookingAngles VectorPYR
---@field lookingVector VectorIJK
---@field lookingVelocity VectorIJK
---@field throttle VectorIJK
---@field primaryTrigger number
---@field aimingSpeed integer
---@field meleeState integer
---@field meleeTimer integer
---@field ticksUntilFlameToDeath integer
---@field pingAnimationTicksLeft integer
---@field grenadeState integer
---@field unk1 integer
---@field unk2 integer
---@field grenadeProjectile TagHandle
---@field animation UnitAnimationData
---@field ambient number
---@field illumination number
---@field mouthFactor number
---@field vehicleSeatId integer
---@field currentWeaponId integer
---@field nextWeaponId integer
---@field weapons ObjectHandle[4]
---@field weaponReadyTicks integer[4]
---@field equipmentHandle ObjectHandle
---@field currentGrenadeIndex integer
---@field nextGrenadeIndex integer
---@field grenadeCounts integer[2]
---@field zoomLevel integer
---@field desiredZoomLevel integer
---@field ticksSinceLastVehicleSpeech integer
---@field aimingChange integer
---@field poweredSeatsRiders ObjectHandle[2]
---@field unk3 TableResourceHandle
---@field _someTickTime integer
---@field encounterId integer
---@field squadId integer
---@field poweredSeatsPower number[2]
---@field integratedLightPower number
---@field integratedLightTogglePower number
---@field integratedNightVisionTogglePower number
---@field seatRelated VectorXYZ[4]
---@field camoPower number
---@field fullSpectrumVisionPower number
---@field dialogueDefinition TagHandle
---@field speech UnitSpeechData
---@field damageResult UnitDamageResult
---@field objectFlameCauser ObjectHandle
---@field unk4 number
---@field diedAtTick integer
---@field feignDeathTimer integer
---@field camoRegrowth boolean
---@field stun number
---@field stunTicks integer
---@field spreeCount integer
---@field spreeStartingTime integer
---@field recentDamage UnitRecentDamager[4]
---@field controlData UnitControlData
---@field lastCompletedClientUpdateValid boolean
---@field lastCompletedClientUpdateId integer

---@class Glow
---@field attachmentMarker string
---@field numberOfParticles integer
---@field boundaryEffect GlowBoundaryEffect
---@field normalParticleDistribution GlowNormalParticleDistribution
---@field trailingParticleDistribution GlowTrailingParticleDistribution
---@field glowFlags GlowFlags
---@field particleRotationalVelocity GlowRotationalVelocity
---@field effectRotationalVelocity GlowRotationalVelocity
---@field effectTranslationalVelocity GlowTranslationalVelocity
---@field particleDistanceToObject GlowDistanceToObject
---@field particleSize GlowParticleSize
---@field color GlowColor
---@field fadingPercentageOfGlow number
---@field particleGenerationRate number
---@field lifetimeOfTrailingParticles number
---@field velocityOfTrailingParticles number
---@field trailingParticleT number[2]
---@field texture TagReference

---@alias BitmapType
---| "interface_bitmaps"
---| "sprites"
---| "cube_maps"
---| "_3d_textures"
---| "_2d_textures"

---@alias WeaponHUDInterfaceViewType
---| "splitscreen"
---| "fullscreen"
---| "any"

---@alias ObjectType
---| "sound_scenery"
---| "placeholder"
---| "device_light_fixture"
---| "device_control"
---| "device_machine"
---| "scenery"
---| "projectile"
---| "garbage"
---| "equipment"
---| "weapon"
---| "vehicle"
---| "biped"

---@class ModelAnimationSuspensionAnimation
---@field massPointIndex integer
---@field animation integer
---@field fullExtensionGroundDepth number
---@field fullCompressionGroundDepth number

---@class ModelCollisionGeometryBSPSurfaceFlags
---@field breakable boolean
---@field climbable boolean
---@field invisible boolean
---@field twoSided boolean

---@alias EffectCreate
---| "in_first_person_if_possible"
---| "only_in_third_person"
---| "only_in_first_person"
---| "independent_of_camera_mode"

---@alias UIJustification
---| "center_justify"
---| "right_justify"
---| "left_justify"

---@class GlobalsMultiplayerInformation
---@field flag TagReference
---@field unit TagReference
---@field vehicles GlobalsVehicle[]
---@field hillShader TagReference
---@field flagShader TagReference
---@field ball TagReference
---@field sounds GlobalsSound[]

---@class ModelCollisionGeometrySphere
---@field node integer
---@field center VectorXYZ
---@field radius number

---@class ActorVariantGrenades
---@field grenadeType GrenadeType
---@field trajectoryType ActorVariantTrajectoryType
---@field grenadeStimulus ActorVariantGrenadeStimulus
---@field minimumEnemyCount integer
---@field enemyRadius number
---@field grenadeVelocity number
---@field grenadeRanges number[2]
---@field collateralDamageRadius number
---@field grenadeChance number
---@field grenadeCheckTime number
---@field encounterGrenadeTimeout number

---@class WeaponHUDInterfaceScreenEffectDefinitionNightVisionFlags
---@field masked boolean
---@field connectToFlashlight boolean
---@field onlyWhenZoomed boolean

---@class ActorVariantFiringPatterns
---@field newTargetBurstDuration number
---@field newTargetBurstSeparation number
---@field newTargetRateOfFire number
---@field newTargetProjectileError number
---@field movingBurstDuration number
---@field movingBurstSeparation number
---@field movingRateOfFire number
---@field movingProjectileError number
---@field berserkBurstDuration number
---@field berserkBurstSeparation number
---@field berserkRateOfFire number
---@field berserkProjectileError number

---@class GrenadeHUDInterfaceSoundLatchedTo
---@field throwOnNoGrenades boolean
---@field noGrenadesLeft boolean
---@field lowGrenadeCount boolean

---@class ModelRegionPermutation
---@field name string
---@field flags ModelRegionPermutationFlags
---@field permutationNumber integer
---@field superLow integer
---@field low integer
---@field medium integer
---@field high integer
---@field superHigh integer
---@field markers ModelRegionPermutationMarker[]

---@class WeaponHUDInterfaceNumber
---@field stateAttachedTo WeaponHUDInterfaceStateAttachedTo
---@field allowedViewType WeaponHUDInterfaceViewType
---@field anchor HUDInterfaceChildAnchor
---@field properties HUDInterfaceNumberElement
---@field weaponSpecificFlags WeaponHUDInterfaceNumberWeaponSpecificFlags

---@alias ShaderTypeXbox
---| "transparent_plasma"
---| "transparent_meter"
---| "transparent_glass"
---| "transparent_water"
---| "transparent_chicago"
---| "transparent_generic"
---| "model"
---| "environment"
---| "decal"
---| "effect"
---| "screen"

---@class ScenarioStructureBSPSubclusterSurfaceIndex
---@field index integer

---@class SoundLooping
---@field flags SoundLoopingFlags
---@field zeroDetailSoundPeriod number
---@field zeroDetailUnknownFloats number[2]
---@field oneDetailSoundPeriod number
---@field oneDetailUnknownFloats number[2]
---@field runtimeScriptingSound TagHandle
---@field maximumDistance number
---@field continuousDamageEffect TagReference
---@field tracks SoundLoopingTrack[]
---@field detailSounds SoundLoopingDetail[]

---@class HUDGlobalsWaypointArrowFlags
---@field dontRotateWhenPointingOffscreen boolean

---@class Sound
---@field flags SoundFlags
---@field soundClass SoundClass
---@field sampleRate SoundSampleRate
---@field distanceBounds number[2]
---@field skipFraction number
---@field randomPitchBounds number[2]
---@field innerConeAngle number
---@field outerConeAngle number
---@field outerConeGain number
---@field randomGainModifier number
---@field maximumBendRate number
---@field zeroSkipFractionModifier number
---@field zeroGainModifier number
---@field zeroPitchModifier number
---@field oneSkipFractionModifier number
---@field oneGainModifier number
---@field onePitchModifier number
---@field channelCount SoundChannelCount
---@field format SoundFormat
---@field promotionSound TagReference
---@field promotionCount integer
---@field longestPermutationLength integer
---@field cumulativePromotionLength integer
---@field lastPromotionTime integer
---@field scriptedSoundRemainingTime integer
---@field scriptedSoundIndex integer
---@field pitchRanges SoundPitchRange[]

---@class WeaponHUDInterfaceScreenEffect
---@field maskFlags WeaponHUDInterfaceScreenEffectDefinitionMaskFlags
---@field maskFullscreen TagReference
---@field maskSplitscreen TagReference
---@field convolutionFlags WeaponHUDInterfaceScreenEffectDefinitionMaskFlags
---@field convolutionFovInBounds number[2]
---@field convolutionRadiusOutBounds number[2]
---@field evenMoreFlags WeaponHUDInterfaceScreenEffectDefinitionNightVisionFlags
---@field nightVisionScriptSource integer
---@field nightVisionIntensity number
---@field desaturationFlags WeaponHUDInterfaceScreenEffectDefinitionDesaturationFlags
---@field desaturationScriptSource integer
---@field desaturationIntensity number
---@field effectTint ColorRGB

---@class ScenarioDetailObjectCollectionPalette
---@field reference TagReference

---@class ScenarioVehicle
---@field type integer
---@field name integer
---@field properties ScenarioUnitProperties
---@field multiplayerTeamIndex integer
---@field multiplayerSpawnFlags ScenarioVehicleMultiplayerSpawnFlags

---@class DamageEffectVibrate
---@field frequency number
---@field duration number
---@field fadeFunction FunctionType

---@class UIWidgetCollection
---@field tags TagCollectionTag[]

---@class ProjectileMaterialResponseFlags
---@field cannotBeOverpenetrated boolean

---@class PhysicsInertialMatrix
---@field matrix Matrix

---@class ScenarioStructureBSP
---@field lightmapsBitmap TagReference
---@field vehicleFloor number
---@field vehicleCeiling number
---@field defaultAmbientColor ColorRGB
---@field defaultDistantLight0Color ColorRGB
---@field defaultDistantLight0Direction VectorXYZ
---@field defaultDistantLight1Color ColorRGB
---@field defaultDistantLight1Direction VectorXYZ
---@field defaultReflectionTint ColorARGB
---@field defaultShadowVector VectorXYZ
---@field defaultShadowColor ColorRGB
---@field collisionMaterials ScenarioStructureBSPCollisionMaterial[]
---@field collisionBsp ModelCollisionGeometryBSP[]
---@field nodes ScenarioStructureBSPNode[]
---@field worldBoundsX number[2]
---@field worldBoundsY number[2]
---@field worldBoundsZ number[2]
---@field leaves ScenarioStructureBSPLeaf[]
---@field leafSurfaces ScenarioStructureBSPSurfaceReference[]
---@field surfaces ScenarioStructureBSPSurface[]
---@field lightmaps ScenarioStructureBSPLightmap[]
---@field lensFlares ScenarioStructureBSPLensFlare[]
---@field lensFlareMarkers ScenarioStructureBSPLensFlareMarker[]
---@field clusters ScenarioStructureBSPCluster[]
---@field clusterData TagRawData
---@field clusterPortals ScenarioStructureBSPClusterPortal[]
---@field breakableSurfaces ScenarioStructureBSPBreakableSurface[]
---@field fogPlanes ScenarioStructureBSPFogPlane[]
---@field fogRegions ScenarioStructureBSPFogRegion[]
---@field fogPalette ScenarioStructureBSPFogPalette[]
---@field weatherPalette ScenarioStructureBSPWeatherPalette[]
---@field weatherPolyhedra ScenarioStructureBSPWeatherPolyhedron[]
---@field pathfindingSurfaces ScenarioStructureBSPPathfindingSurface[]
---@field pathfindingEdges ScenarioStructureBSPPathfindingEdge[]
---@field backgroundSoundPalette ScenarioStructureBSPBackgroundSoundPalette[]
---@field soundEnvironmentPalette ScenarioStructureBSPSoundEnvironmentPalette[]
---@field soundPasData TagRawData
---@field markers ScenarioStructureBSPMarker[]
---@field detailObjects ScenarioStructureBSPDetailObjectData[]
---@field runtimeDecals ScenarioStructureBSPRuntimeDecal[]
---@field leafMapLeaves ScenarioStructureBSPGlobalMapLeaf[]
---@field leafMapPortals ScenarioStructureBSPGlobalLeafPortal[]

---@class ScenarioStructureBSPRuntimeDecal
---@field position VectorXYZ
---@field decalType integer
---@field yaw integer
---@field pitch integer

---@alias ParticleSystemParticleUpdatePhysics
---| "default"

---@class WeatherParticleSystemParticleType
---@field name string
---@field flags WeatherParticleSystemParticleTypeFlags
---@field fadeInStartDistance number
---@field fadeInEndDistance number
---@field fadeOutStartDistance number
---@field fadeOutEndDistance number
---@field fadeInStartHeight number
---@field fadeInEndHeight number
---@field fadeOutStartHeight number
---@field fadeOutEndHeight number
---@field particleCount number[2]
---@field physics TagReference
---@field accelerationMagnitude number[2]
---@field accelerationTurningRate number
---@field accelerationChangeRate number
---@field particleRadius number[2]
---@field animationRate number[2]
---@field rotationRate number[2]
---@field color ColorARGB
---@field spriteSize number
---@field spriteBitmap TagReference
---@field renderMode ParticleOrientation
---@field renderDirectionSource WeatherParticleSystemRenderDirectionSource
---@field shader ShaderEffect

---@class Model
---@field flags ModelFlags
---@field nodeListChecksum integer
---@field detailCutoff ModelDetailCutoff
---@field detailNodeCount ModelDetailNodeCount
---@field baseMapUScale number
---@field baseMapVScale number
---@field runtimeMarkers ModelMarker[]
---@field nodes ModelNode[]
---@field regions ModelRegion[]
---@field geometries ModelGeometry[]
---@field shaders ModelShaderReference[]

---@class ContinuousDamageCameraShaking
---@field randomTranslation number
---@field randomRotation number
---@field wobbleFunction WaveFunction
---@field wobblePeriod number
---@field wobbleWeight number

---@class ScenarioStructureBSPLeaf
---@field vertices integer[3]
---@field cluster integer
---@field surfaceReferenceCount integer
---@field surfaceReferences integer

---@class HUDGlobalsCrap
---@field defaultWeaponHud TagReference
---@field motionSensorRange number
---@field motionSensorVelocitySensitivity number
---@field motionSensorScale number
---@field defaultChapterTitleBounds Rectangle2D

---@class ParticleSystemTypeParticleState
---@field name string
---@field durationBounds number[2]
---@field transitionTimeBounds number[2]
---@field bitmaps TagReference
---@field sequenceIndex integer
---@field scale number[2]
---@field animationRate number[2]
---@field rotationRate number[2]
---@field color1 ColorARGB
---@field color2 ColorARGB
---@field radiusMultiplier number
---@field pointPhysics TagReference
---@field shader ShaderEffect
---@field physicsConstants ParticleSystemPhysicsConstant[]

---@class ScenarioDecalPalette
---@field reference TagReference

---@class ScenarioFunction
---@field flags ScenarioFunctionFlags
---@field name string
---@field period number
---@field scalePeriodBy integer
---@field function WaveFunction
---@field scaleFunctionBy integer
---@field wobbleFunction WaveFunction
---@field wobblePeriod number
---@field wobbleMagnitude number
---@field squareWaveThreshold number
---@field stepCount integer
---@field mapTo FunctionType
---@field sawtoothCount integer
---@field scaleResultBy integer
---@field boundsMode FunctionBoundsMode
---@field bounds number[2]
---@field turnOffWith integer

---@class UIWidgetDefinition
---@field widgetType UIWidgetType
---@field controllerIndex UIControllerIndex
---@field name string
---@field bounds Rectangle2D
---@field flags UIWidgetDefinitionFlags
---@field millisecondsToAutoClose integer
---@field millisecondsAutoCloseFadeTime integer
---@field backgroundBitmap TagReference
---@field gameDataInputs GameDataInputReference[]
---@field eventHandlers EventHandlerReference[]
---@field searchAndReplaceFunctions SearchAndReplaceReference[]
---@field textLabelUnicodeStringsList TagReference
---@field textFont TagReference
---@field textColor ColorARGB
---@field justification UIJustification
---@field flags1 UIWidgetDefinitionFlags1
---@field stringListIndex integer
---@field horizOffset integer
---@field vertOffset integer
---@field flags2 UIWidgetDefinitionFlags2
---@field listHeaderBitmap TagReference
---@field listFooterBitmap TagReference
---@field headerBounds Rectangle2D
---@field footerBounds Rectangle2D
---@field extendedDescriptionWidget TagReference
---@field conditionalWidgets ConditionalWidgetReference[]
---@field childWidgets ChildWidgetReference[]

---@class ItemObject: DynamicObjectBase
---@field flags integer
---@field ticksUntilDetonation integer
---@field bspCollisionSurfaceId integer
---@field bspCollisionReferenceId integer
---@field droppedByUnit ObjectHandle
---@field lastUpdateTick integer
---@field collisionObject ObjectHandle
---@field collisionObjectPosition VectorXYZ
---@field unknownCollisionPosition VectorXYZ
---@field unknownCollisionAngle VectorPY

---@class ModelFlags
---@field blendSharedNormals boolean

---@class LightFlags
---@field dontFadeActiveCamouflage boolean
---@field firstPersonFlashlight boolean
---@field supersizeInFirstPerson boolean
---@field dontLightOwnObject boolean
---@field noSpecular boolean
---@field dynamic boolean

---@class ScenarioStructureBSPFogRegion
---@field fog integer
---@field weatherPalette integer

---@alias GlowNormalParticleDistribution
---| "distributed_uniformly"
---| "distributed_randomly"

---@class ScenarioStructureBSPClusterPortal
---@field frontCluster integer
---@field backCluster integer
---@field planeIndex integer
---@field centroid VectorXYZ
---@field boundingRadius number
---@field flags ScenarioStructureBSPClusterPortalFlags
---@field vertices ScenarioStructureBSPClusterPortalVertex[]

---@class ScenarioVehicleMultiplayerSpawnFlags
---@field unused7 boolean
---@field unused6 boolean
---@field unused5 boolean
---@field unused4 boolean
---@field oddballAllowed boolean
---@field kingAllowed boolean
---@field ctfAllowed boolean
---@field slayerAllowed boolean
---@field unused3 boolean
---@field unused2 boolean
---@field unused1 boolean
---@field unused boolean
---@field oddballDefault boolean
---@field kingDefault boolean
---@field ctfDefault boolean
---@field slayerDefault boolean

---@class ScenarioStructureBSPCluster
---@field sky integer
---@field fog integer
---@field backgroundSound integer
---@field soundEnvironment integer
---@field weather integer
---@field transitionStructureBsp integer
---@field firstDecalIndex integer
---@field decalCount integer
---@field predictedResources PredictedResource[]
---@field subclusters ScenarioStructureBSPSubcluster[]
---@field firstLensFlareMarkerIndex integer
---@field lensFlareMarkerCount integer
---@field surfaceIndices ScenarioStructureBSPClusterSurfaceIndex[]
---@field mirrors ScenarioStructureBSPMirror[]
---@field portals ScenarioStructureBSPClusterPortalIndex[]

---@class IsUnusedFlag
---@field unused boolean

---@class ActorCommunication
---@field noncombatIdleSpeechTime number[2]
---@field combatIdleSpeechTime number[2]
---@field neverUse TagReference

---@class LensFlareReflectionMoreFlags
---@field moreColors boolean
---@field interpolateColorsInHsv boolean

---@class GlobalsSound
---@field sound TagReference

---@class ScenarioStructureBSPMaterial
---@field shader TagReference
---@field shaderPermutation integer
---@field flags ScenarioStructureBSPMaterialFlags
---@field surfaces integer
---@field surfaceCount integer
---@field centroid VectorXYZ
---@field ambientColor ColorRGB
---@field distantLightCount integer
---@field distantLight0Color ColorRGB
---@field distantLight0Direction VectorXYZ
---@field distantLight1Color ColorRGB
---@field distantLight1Direction VectorXYZ
---@field reflectionTint ColorARGB
---@field shadowVector VectorXYZ
---@field shadowColor ColorRGB
---@field plane Plane3D
---@field breakableSurface integer
---@field renderedVertices ModelVertexReference
---@field lightmapVertices ModelVertexReference
---@field uncompressedVertices TagRawData
---@field compressedVertices TagRawData

---@class ModelCollisionGeometryBSP
---@field bsp3dNodes ModelCollisionGeometryBSP3DNode[]
---@field planes ModelCollisionGeometryBSPPlane[]
---@field leaves ModelCollisionGeometryBSPLeaf[]
---@field bsp2dReferences ModelCollisionGeometryBSP2DReference[]
---@field bsp2dNodes ModelCollisionGeometryBSP2DNode[]
---@field surfaces ModelCollisionGeometryBSPSurface[]
---@field edges ModelCollisionGeometryBSPEdge[]
---@field vertices ModelCollisionGeometryBSPVertex[]

---@class ModelCollisionGeometryBSPVertex
---@field point VectorXYZ
---@field firstEdge integer

---@class BitmapGroupSequence
---@field name string
---@field firstBitmapIndex integer
---@field bitmapCount integer
---@field sprites BitmapGroupSprite[]

---@class UnitAnimationData
---@field flags UnitAnimationFlags
---@field unknownSomeAnimationIndexMaybe integer
---@field unknownSomeAnimationIndex integer
---@field seatIndex integer
---@field seatWeaponIndex integer
---@field weaponTypeIndex integer
---@field state integer
---@field replacementState integer
---@field overlayState integer
---@field desiredState integer
---@field baseSeat integer
---@field emotion integer
---@field replacementAnimation ObjectAnimationState
---@field overlayStateAnimation ObjectAnimationState
---@field weaponIk ObjectAnimationState
---@field updateLook boolean
---@field updateAim boolean
---@field lookingBounds Bounds2D
---@field aimingBounds Bounds2D
---@field externalAnimationGraph integer
---@field externalAnimation ObjectAnimationState

---@alias UIGameDataInputReferenceFunction
---| "network_settings_update"
---| "direct_ip_connect_update"
---| "checking_for_updates"
---| "load_game_list_update"
---| "gt_edit_list_update"
---| "gt_select_list_update"
---| "mp_map_list_update"
---| "solo_map_list_update"
---| "mp_prof_vehicles_update"
---| "audio_menu_update"
---| "server_settings_update"
---| "gamepad_update_menu"
---| "common_button_bar_update"
---| "gamespy_screen_update"
---| "video_menu_update"
---| "controls_update_menu"
---| "dim_unless_two_controllers"
---| "pause_game_set_textbox_inverted"
---| "dim_if_no_net_cable"
---| "warn_if_diff_will_nuke_saved_game"
---| "teams_no_teams_bitmap_update"
---| "mp_game_directions"
---| "system_link_status_check"
---| "mp_edit_profile_set_rule_text"
---| "mp_set_textbox"
---| "mp_set_bitmap_for_ruleset"
---| "mp_set_bitmap_for_map"
---| "mp_set_textbox_score_limit_type"
---| "mp_set_textbox_score_limit"
---| "mp_set_textbox_teams_noteams"
---| "mp_set_textbox_game_ruleset"
---| "mp_set_textbox_map_name"
---| "get_active_plyr_profile_color"
---| "get_edit_game_settings_name"
---| "get_edit_plyr_profile_name"
---| "get_active_plyr_profile_name"
---| "mp_level_select_update"
---| "main_menu_fake_animate"
---| "game_settings_lists_pic_update"
---| "color_picker_update"
---| "solo_game_objective_text"
---| "game_settings_lists_text_update"
---| "player_profile_small_menu_update"
---| "plyr_prof_edit_select_menu_upd_8"
---| "_3wide_player_profile_list_update"
---| "mp_profile_list_update"
---| "net_splitscreen_prejoin_players"
---| "splitscreen_pregame_status_update"
---| "network_pregame_status_update"
---| "server_list_update"
---| "build_number_textbox_only"
---| "difficulty_menu_update_desc"
---| "solo_level_select_update"
---| "multiplayer_type_menu_update_desc"
---| "gametype_select_menu_update_desc"
---| "playlist_settings_menu_update_desc"
---| "unused"
---| "player_settings_menu_update_desc"
---| "null"

---@class Projectile: Object
---@field flags ProjectileFlags
---@field detonationTimerStarts ProjectileDetonationTimerStarts
---@field impactNoise ObjectNoise
---@field aIn ProjectileFunctionIn
---@field bIn ProjectileFunctionIn
---@field cIn ProjectileFunctionIn
---@field dIn ProjectileFunctionIn
---@field superDetonation TagReference
---@field aiPerceptionRadius number
---@field collisionRadius number
---@field armingTime number
---@field dangerRadius number
---@field effect TagReference
---@field timer number[2]
---@field minimumVelocity number
---@field maximumRange number
---@field airGravityScale number
---@field airDamageRange number[2]
---@field waterGravityScale number
---@field waterDamageRange number[2]
---@field initialVelocity number
---@field finalVelocity number
---@field guidedAngularVelocity number
---@field detonationNoise ObjectNoise
---@field detonationStarted TagReference
---@field flybySound TagReference
---@field attachedDetonationDamage TagReference
---@field impactDamage TagReference
---@field materialResponse ProjectileMaterialResponse[]

---@class GlobalsMaterial
---@field groundFrictionScale number
---@field groundFrictionNormalK1Scale number
---@field groundFrictionNormalK0Scale number
---@field groundDepthScale number
---@field groundDampFractionScale number
---@field maximumVitality number
---@field effect TagReference
---@field sound TagReference
---@field particleEffects GlobalsBreakableSurfaceParticleEffect[]
---@field meleeHitSound TagReference

---@class GlobalsCheatPowerup
---@field powerup TagReference

---@class ShaderEnvironmentSpecular
---@field flags ShaderEnvironmentSpecularFlags
---@field brightness number
---@field perpendicularColor ColorRGB
---@field parallelColor ColorRGB

---@class ModelGeometryPart
---@field flags ModelGeometryPartFlags
---@field shaderIndex integer
---@field prevFilthyPartIndex integer
---@field nextFilthyPartIndex integer
---@field centroidPrimaryNode integer
---@field centroidSecondaryNode integer
---@field centroidPrimaryWeight number
---@field centroidSecondaryWeight number
---@field centroid VectorXYZ
---@field uncompressedVertices ModelVertexUncompressed[]
---@field compressedVertices ModelVertexCompressed[]
---@field triangleData ModelTriangleStripData[]
---@field triangleBufferType TriangleBufferType
---@field triangleCount integer
---@field trianglePointer integer
---@field trianglePointer2 integer
---@field vertices ModelVertexReference

---@class GlobalsDifficulty
---@field easyEnemyDamage number
---@field normalEnemyDamage number
---@field hardEnemyDamage number
---@field impossEnemyDamage number
---@field easyEnemyVitality number
---@field normalEnemyVitality number
---@field hardEnemyVitality number
---@field impossEnemyVitality number
---@field easyEnemyShield number
---@field normalEnemyShield number
---@field hardEnemyShield number
---@field impossEnemyShield number
---@field easyEnemyRecharge number
---@field normalEnemyRecharge number
---@field hardEnemyRecharge number
---@field impossEnemyRecharge number
---@field easyFriendDamage number
---@field normalFriendDamage number
---@field hardFriendDamage number
---@field impossFriendDamage number
---@field easyFriendVitality number
---@field normalFriendVitality number
---@field hardFriendVitality number
---@field impossFriendVitality number
---@field easyFriendShield number
---@field normalFriendShield number
---@field hardFriendShield number
---@field impossFriendShield number
---@field easyFriendRecharge number
---@field normalFriendRecharge number
---@field hardFriendRecharge number
---@field impossFriendRecharge number
---@field easyInfectionForms number
---@field normalInfectionForms number
---@field hardInfectionForms number
---@field impossInfectionForms number
---@field easyRateOfFire number
---@field normalRateOfFire number
---@field hardRateOfFire number
---@field impossRateOfFire number
---@field easyProjectileError number
---@field normalProjectileError number
---@field hardProjectileError number
---@field impossProjectileError number
---@field easyBurstError number
---@field normalBurstError number
---@field hardBurstError number
---@field impossBurstError number
---@field easyNewTargetDelay number
---@field normalNewTargetDelay number
---@field hardNewTargetDelay number
---@field impossNewTargetDelay number
---@field easyBurstSeparation number
---@field normalBurstSeparation number
---@field hardBurstSeparation number
---@field impossBurstSeparation number
---@field easyTargetTracking number
---@field normalTargetTracking number
---@field hardTargetTracking number
---@field impossTargetTracking number
---@field easyTargetLeading number
---@field normalTargetLeading number
---@field hardTargetLeading number
---@field impossTargetLeading number
---@field easyOverchargeChance number
---@field normalOverchargeChance number
---@field hardOverchargeChance number
---@field impossOverchargeChance number
---@field easySpecialFireDelay number
---@field normalSpecialFireDelay number
---@field hardSpecialFireDelay number
---@field impossSpecialFireDelay number
---@field easyGuidanceVsPlayer number
---@field normalGuidanceVsPlayer number
---@field hardGuidanceVsPlayer number
---@field impossGuidanceVsPlayer number
---@field easyMeleeDelayBase number
---@field normalMeleeDelayBase number
---@field hardMeleeDelayBase number
---@field impossMeleeDelayBase number
---@field easyMeleeDelayScale number
---@field normalMeleeDelayScale number
---@field hardMeleeDelayScale number
---@field impossMeleeDelayScale number
---@field easyGrenadeChanceScale number
---@field normalGrenadeChanceScale number
---@field hardGrenadeChanceScale number
---@field impossGrenadeChanceScale number
---@field easyGrenadeTimerScale number
---@field normalGrenadeTimerScale number
---@field hardGrenadeTimerScale number
---@field impossGrenadeTimerScale number
---@field easyMajorUpgrade number
---@field normalMajorUpgrade number
---@field hardMajorUpgrade number
---@field impossMajorUpgrade number
---@field easyMajorUpgrade1 number
---@field normalMajorUpgrade1 number
---@field hardMajorUpgrade1 number
---@field impossMajorUpgrade1 number
---@field easyMajorUpgrade2 number
---@field normalMajorUpgrade2 number
---@field hardMajorUpgrade2 number
---@field impossMajorUpgrade2 number

---@class PlayerMultiplayerStatistics
---@field raceTime integer
---@field kingHillScore integer
---@field oddballTime integer
---@field ctfFlagGrabs integer
---@field raceLaps integer
---@field oddballCarrierKills integer
---@field ctfFlagReturns integer
---@field raceBestTime integer
---@field oddballKills integer
---@field ctfFlagScores integer

---@class ModelAnimationsFirstPersonWeapon
---@field animation integer

---@class ScenarioPlatoonFlags
---@field startInDefendingState boolean
---@field sayAdvancingWhenManeuver boolean
---@field fleeWhenManeuvering boolean

---@class ScenarioLightFixture
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field bspIndices integer
---@field appearancePlayerIndex integer
---@field powerGroup integer
---@field positionGroup integer
---@field deviceFlags ScenarioDeviceFlags
---@field color ColorRGB
---@field intensity number
---@field falloffAngle number
---@field cutoffAngle number

---@class Globals
---@field sounds GlobalsSound[]
---@field camera GlobalsCamera[]
---@field playerControl GlobalsPlayerControl[]
---@field difficulty GlobalsDifficulty[]
---@field grenades GlobalsGrenade[]
---@field rasterizerData GlobalsRasterizerData[]
---@field interfaceBitmaps GlobalsInterfaceBitmaps[]
---@field weaponList GlobalsWeapon[]
---@field cheatPowerups GlobalsCheatPowerup[]
---@field multiplayerInformation GlobalsMultiplayerInformation[]
---@field playerInformation GlobalsPlayerInformation[]
---@field firstPersonInterface GlobalsFirstPersonInterface[]
---@field fallingDamage GlobalsFallingDamage[]
---@field materials GlobalsMaterial[]
---@field playlistMembers GlobalsPlaylistMember[]

---@alias MeterAnchorColors
---| "at_full"
---| "at_empty"
---| "at_both_ends"

---@class ShaderTransparentPlasmaOffset
---@field offsetSource FunctionOut
---@field offsetAmount number
---@field offsetExponent number

---@class Bounds2D
---@field left number
---@field right number
---@field top number
---@field bottom number

---@class ModelAnimationsAnimationGraphUnitSeatikPoint
---@field marker string
---@field attachToMarker string

---@class ScenarioActorPalette
---@field reference TagReference

---@class GBXModelGeometryPart: ModelGeometryPart
---@field localNodeCount integer
---@field localNodeIndices integer[22]

---@class Physics
---@field radius number
---@field momentScale number
---@field mass number
---@field centerOfMass VectorXYZ
---@field density number
---@field gravityScale number
---@field groundFriction number
---@field groundDepth number
---@field groundDampFraction number
---@field groundNormalK1 number
---@field groundNormalK0 number
---@field waterFriction number
---@field waterDepth number
---@field waterDensity number
---@field airFriction number
---@field xxMoment number
---@field yyMoment number
---@field zzMoment number
---@field inertialMatrixAndInverse PhysicsInertialMatrix[]
---@field poweredMassPoints PhysicsPoweredMassPoint[]
---@field massPoints PhysicsMassPoint[]

---@class GrenadeHUDInterfaceTotalGrenadesOverlays
---@field bitmap TagReference
---@field overlays GrenadeHUDInterfaceOverlay[]
---@field warningSounds GrenadeHUDInterfaceSound[]

---@class PhysicsPoweredMassPoint
---@field name string
---@field flags PhysicsPoweredMassPointFlags
---@field antigravStrength number
---@field antigravOffset number
---@field antigravHeight number
---@field antigravDampFraction number
---@field antigravNormalK1 number
---@field antigravNormalK0 number

---@class ActorVariant
---@field flags ActorVariantFlags
---@field actorDefinition TagReference
---@field unit TagReference
---@field majorVariant TagReference
---@field metagameProperties MetagameProperties
---@field movementSwitching ActorVariantMovementSwitching
---@field rangedCombat ActorVariantRangedCombat
---@field burstGeometry ActorVariantBurstGeometry
---@field firingPatterns ActorVariantFiringPatterns
---@field specialCaseFiringProperties ActorVariantSpecialCaseFiringProperties
---@field berserkingAndMelee ActorVariantBerserkingAndMelee
---@field grenades ActorVariantGrenades
---@field items ActorVariantItems
---@field unitProperties ActorVariantUnitProperties

---@class ScenarioPlayerStartingProfile
---@field name string
---@field startingHealthModifier number
---@field startingShieldModifier number
---@field primaryWeapon TagReference
---@field primaryRoundsLoaded integer
---@field primaryRoundsReserved integer
---@field secondaryWeapon TagReference
---@field secondaryRoundsLoaded integer
---@field secondaryRoundsReserved integer
---@field startingFragmentationGrenadeCount integer
---@field startingPlasmaGrenadeCount integer
---@field startingGrenadeType2Count integer
---@field startingGrenadeType3Count integer

---@class HUDNumber
---@field digitsBitmap TagReference
---@field bitmapDigitWidth integer
---@field screenDigitWidth integer
---@field xOffset integer
---@field yOffset integer
---@field decimalPointWidth integer
---@field colonWidth integer

---@class ScenarioDeviceGroup
---@field name string
---@field initialValue number
---@field flags ScenarioDeviceGroupFlags

---@class ModelAnimationsAnimationFlags
---@field _25HzPal boolean
---@field worldRelative boolean
---@field compressedData boolean

---@class ScenarioAIConversationLineFlags
---@field waitUntilEveryoneNearby boolean
---@field waitUntilSpeakerNearby boolean
---@field waitAfterUntilToldToAdvance boolean
---@field everyoneLookAtAddressee boolean
---@field everyoneLookAtSpeaker boolean
---@field addresseeLookAtSpeaker boolean

---@class HUDGlobalsWaypointParameters
---@field topOffset number
---@field bottomOffset number
---@field leftOffset number
---@field rightOffset number
---@field arrowBitmap TagReference
---@field waypointArrows HUDGlobalsWaypointArrow[]
---@field hudScaleInMultiplayer number

---@class HUDInterfaceMessagingFlags
---@field widthOffsetIsAbsoluteIconWidth boolean
---@field overrideDefaultColor boolean
---@field useTextFromStringListInstead boolean

---@alias HUDInterfaceChildAnchor
---| "right_center"
---| "left_center"
---| "bottom_center"
---| "top_center"
---| "center"
---| "bottom_right"
---| "bottom_left"
---| "top_right"
---| "top_left"
---| "from_parent"

---@class ShaderModelTextureScrollingAnimation
---@field uAnimationSource FunctionOut
---@field uAnimationFunction WaveFunction
---@field uAnimationPeriod number
---@field uAnimationPhase number
---@field uAnimationScale number
---@field vAnimationSource FunctionOut
---@field vAnimationFunction WaveFunction
---@field vAnimationPeriod number
---@field vAnimationPhase number
---@field vAnimationScale number
---@field rotationAnimationSource FunctionOut
---@field rotationAnimationFunction WaveFunction
---@field rotationAnimationPeriod number
---@field rotationAnimationPhase number
---@field rotationAnimationScale number
---@field rotationAnimationCenter VectorXY

---@class ShaderEnvironmentReflectionFlags
---@field dynamicMirror boolean

---@class ShaderModelMaps
---@field mapUScale number
---@field mapVScale number
---@field baseMap TagReference
---@field multipurposeMap TagReference
---@field detailFunction ShaderDetailFunction
---@field detailMask ShaderModelDetailMask
---@field detailMapScale number
---@field detailMap TagReference
---@field detailMapVScale number

---@class BaseObjectFlags
---@field offInPegasus boolean

---@alias ItemFunctionIn
---| "none"

---@alias ScenarioAddressee
---| "participant"
---| "player"
---| "none"

---@alias UIEventType
---| "post_render"
---| "custom_activation"
---| "double_click"
---| "right_mouse"
---| "middle_mouse"
---| "left_mouse"
---| "lose_focus"
---| "get_focus"
---| "deleted"
---| "created"
---| "right_analog_stick_right"
---| "right_analog_stick_left"
---| "right_analog_stick_down"
---| "left_analog_stick_up_1"
---| "left_analog_stick_right"
---| "left_analog_stick_left"
---| "left_analog_stick_down"
---| "left_analog_stick_up"
---| "right_thumb"
---| "left_thumb"
---| "back_button"
---| "start_button"
---| "dpad_right"
---| "dpad_left"
---| "dpad_down"
---| "dpad_up"
---| "right_trigger"
---| "left_trigger"
---| "white_button"
---| "black_button"
---| "y_button"
---| "x_button"
---| "b_button"
---| "a_button"

---@alias GrenadeType
---| "grenade_type_3"
---| "grenade_type_2"
---| "covenant_plasma"
---| "human_fragmentation"

---@class ShaderModelChangeColor
---@field changeColorSource FunctionNameNullable

---@class ShaderModelProperties
---@field flags ShaderModelFlags
---@field translucency number

---@class ParticleSystemPhysicsConstant
---@field k number

---@class DetailObjectCollectionObjectType
---@field name string
---@field sequenceIndex integer
---@field flags DetailObjectCollectionTypeFlags
---@field firstSpriteIndex integer
---@field spriteCount integer
---@field colorOverrideFactor number
---@field nearFadeDistance number
---@field farFadeDistance number
---@field size number
---@field minimumColor ColorRGB
---@field maximumColor ColorRGB
---@field ambientColor integer

---@class ObjectFunctionFlags
---@field alwaysActive boolean
---@field additive boolean
---@field invert boolean

---@class EffectPart
---@field createIn EffectCreateIn
---@field violenceMode EffectViolenceMode
---@field location integer
---@field flags EffectPartFlags
---@field typeIdentifier TagGroup
---@field type TagReference
---@field velocityBounds number[2]
---@field velocityConeAngle number
---@field angularVelocityBounds number[2]
---@field radiusModifierBounds number[2]
---@field aScalesValues EffectPartScalesValues
---@field bScalesValues EffectPartScalesValues

---@class ScenarioEditorComment
---@field position VectorXYZ
---@field comment TagRawData

---@class ScenarioStructureBSPMirrorVertex
---@field point VectorXYZ

---@class Plane2D
---@field i number
---@field j number
---@field w number

---@class ShaderModelSelfIllumination
---@field flags ShaderModelSelfIlluminationFlags
---@field colorSource FunctionNameNullable
---@field animationFunction WaveFunction
---@field animationPeriod number
---@field animationColor ColorRGB

---@class CameraTrackControlPoint
---@field position VectorXYZ
---@field orientation Quaternion

---@class DamageEffectTemporaryCameraImpulse
---@field duration number
---@field fadeFunction FunctionType
---@field rotation number
---@field pushback number
---@field jitter number[2]

---@class SoundLoopingTrackFlags
---@field fadeInAlternate boolean
---@field fadeOutAtStop boolean
---@field fadeInAtStart boolean

---@class EquipmentObject: ItemObject
---@field network EquipmentNetwork

---@class Device: Object
---@field flags DeviceFlags
---@field powerTransitionTime number
---@field powerAccelerationTime number
---@field positionTransitionTime number
---@field positionAccelerationTime number
---@field depoweredPositionTransitionTime number
---@field depoweredPositionAccelerationTime number
---@field aIn DeviceIn
---@field bIn DeviceIn
---@field cIn DeviceIn
---@field dIn DeviceIn
---@field open TagReference
---@field close TagReference
---@field opened TagReference
---@field closed TagReference
---@field depowered TagReference
---@field repowered TagReference
---@field delayTime number
---@field delayEffect TagReference
---@field automaticActivationRadius number
---@field inversePowerAccelerationTime number
---@field inversePowerTransitionTime number
---@field inverseDepoweredPositionAccelerationTime number
---@field inverseDepoweredPositionTransitionTime number
---@field inversePositionAccelerationTime number
---@field inversePositionTransitionTime number
---@field delayTimeTicks number

---@alias ShaderTransparentGenericStageInputColor
---| "constant_alpha_1"
---| "constant_alpha_0"
---| "scratch_alpha_1"
---| "scratch_alpha_0"
---| "vertex_alpha_1_fade_perpendicular"
---| "vertex_alpha_0_fade_none"
---| "map_alpha_3"
---| "map_alpha_2"
---| "map_alpha_1"
---| "map_alpha_0"
---| "constant_color_1"
---| "constant_color_0"
---| "scratch_color_1"
---| "scratch_color_0"
---| "vertex_color_1_fade_perpendicular"
---| "vertex_color_0_diffuse_light"
---| "map_color_3"
---| "map_color_2"
---| "map_color_1"
---| "map_color_0"
---| "negative_one_half"
---| "negative_one"
---| "one_half"
---| "one"
---| "zero"

---@class WeaponHUDInterfaceScreenEffectDefinitionMaskFlags
---@field onlyWhenZoomed boolean

---@class ModelCollisionGeometryBSPPlane
---@field plane Plane3D

---@class FlagAttachmentPoint
---@field heightToNextAttachment integer
---@field markerName string

---@class ScenarioEquipment
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field miscFlags ScenarioItemFlags
---@field appearancePlayerIndex integer

---@alias ScenarioReturnState
---| "fleeing"
---| "searching"
---| "guarding_at_guard_position"
---| "guarding"
---| "moving_randomly"
---| "moving_loop_randomly"
---| "moving_loop_back_and_forth"
---| "moving_loop"
---| "moving_repeat_same_position"
---| "alert"
---| "sleeping"
---| "none"

---@class ShaderTransparentMeterExternalFunctionSources
---@field meterBrightnessSource FunctionOut
---@field flashBrightnessSource FunctionOut
---@field valueSource FunctionOut
---@field gradientSource FunctionOut
---@field flashExtensionSource FunctionOut

---@class ShaderTransparentMeterProperties
---@field flags ShaderTransparentMeterFlags
---@field map TagReference

---@alias InputDeviceDefaultsDeviceType
---| "full_profile_definition"
---| "joysticks_gamepads_etc"
---| "mouse_and_keyboard"

---@class VectorIJ
---@field i integer
---@field j integer

---@class BitmapFlags
---@field useAverageColorForDetailFade boolean
---@field invertDetailFade boolean
---@field halfHudScale boolean
---@field filthySpriteBugFix boolean
---@field uniformSpriteSequences boolean
---@field disableHeightMapCompression boolean
---@field enableDiffusionDithering boolean

---@class ParticleSystem
---@field pointPhysics TagReference
---@field systemUpdatePhysics ParticleSystemSystemUpdatePhysics
---@field physicsFlags IsUnusedFlag
---@field physicsConstants ParticleSystemPhysicsConstant[]
---@field particleTypes ParticleSystemType[]

---@class DecalAppearance
---@field radius number[2]
---@field intensity number[2]
---@field color ColorRGB

---@class GlobalsCamera
---@field defaultUnitCameraTrack TagReference

---@class ShaderTransparentPlasmaNoiseMap
---@field animationPeriod number
---@field animationDirection VectorXYZ
---@field noiseMapScale number
---@field noiseMap TagReference

---@class ModelCollisionGeometryMaterial
---@field name string
---@field flags ModelCollisionGeometryMaterialFlags
---@field materialType MaterialType
---@field shieldLeakPercentage number
---@field shieldDamageMultiplier number
---@field bodyDamageMultiplier number

---@class Decal
---@field properties DecalProperties
---@field appearance DecalAppearance
---@field animation DecalAnimation
---@field shader DecalShader
---@field maximumSpriteExtent number

---@class HUDInterfaceNumberFlags
---@field drawATrailingM boolean
---@field onlyShowWhenZoomed boolean
---@field showLeadingZeros boolean

---@class GlobalsRasterizerData
---@field distanceAttenuation TagReference
---@field vectorNormalization TagReference
---@field atmosphericFogDensity TagReference
---@field planarFogDensity TagReference
---@field linearCornerFade TagReference
---@field activeCamouflageDistortion TagReference
---@field glow TagReference
---@field default2d TagReference
---@field default3d TagReference
---@field defaultCubeMap TagReference
---@field test0 TagReference
---@field test1 TagReference
---@field test2 TagReference
---@field test3 TagReference
---@field videoScanlineMap TagReference
---@field videoNoiseMap TagReference
---@field flags GlobalsRasterizerDataFlags
---@field refractionAmount number
---@field distanceFalloff number
---@field tintColor ColorRGB
---@field hyperStealthRefraction number
---@field hyperStealthDistanceFalloff number
---@field hyperStealthTintColor ColorRGB
---@field distanceAttenuation2d TagReference

---@class Placeholder: BasicObject

---@class UIWidgetDefinitionFlags2
---@field listSinglePreviewNoScroll boolean
---@field listItemsOnlyOneTooltip boolean
---@field listItemsFromStringListTag boolean
---@field listItemsGeneratedInCode boolean

---@alias ShaderTransparentGenericStageOutputMapping
---| "color_expand_normal"
---| "color_bias_by_1_2"
---| "color_scale_by_4"
---| "color_scale_by_2"
---| "color_scale_by_1_2"
---| "color_identity"

---@class ShaderTransparentWaterRipples
---@field animationAngle number
---@field animationVelocity number
---@field scale number
---@field maps TagReference
---@field mipmapLevels integer
---@field mipmapFadeFactor number
---@field mipmapDetailBias number
---@field ripples ShaderTransparentWaterRipple[]

---@class ScenarioLocation
---@field leafId integer
---@field clusterId integer

---@class ScenarioStructureBSPClusterPortalVertex
---@field point VectorXYZ

---@class ShaderTransparentGlass: Shader
---@field properties ShaderTransparentGlassBase
---@field backgroundTint ShaderTransparentGlassBackgroundTint
---@field reflection ShaderTransparentGlassReflection
---@field diffuse ShaderTransparentGlassDiffuse
---@field specular ShaderTransparentGlassSpecular

---@class EffectPartFlags
---@field makeEffectWork boolean
---@field unused boolean
---@field faceDownRegardlessOfLocationDecals boolean

---@class ShaderTransparentGlassReflection
---@field reflectionType ShaderTransparentGlassReflectionType
---@field reflectionMapProperties ShaderSpecularProperties
---@field reflectionMap TagReference
---@field bumpMapScale number
---@field bumpMap TagReference

---@class ScenarioChildScenario
---@field childScenario TagReference

---@class ShaderTransparentGlassBackgroundTint
---@field backgroundTintColor ColorRGB
---@field backgroundTintMapScale number
---@field backgroundTintMap TagReference

---@class ShaderTransparentGlassBase
---@field shaderTransparentGlassFlags ShaderTransparentGlassFlags

---@class SkyFog
---@field color ColorRGB
---@field maximumDensity number
---@field startDistance number
---@field opaqueDistance number

---@class ScenarioStructureBSPMapLeafPortalIndex
---@field portalIndex integer

---@class GrenadeHUDInterfaceTotalGrenadesNumberElement
---@field properties HUDInterfaceNumberElement
---@field flashCutoff integer

---@class SoundEnvironment
---@field unknown integer
---@field priority integer
---@field roomIntensity number
---@field roomIntensityHf number
---@field roomRolloff number
---@field decayTime number
---@field decayHfRatio number
---@field reflectionsIntensity number
---@field reflectionsDelay number
---@field reverbIntensity number
---@field reverbDelay number
---@field diffusion number
---@field density number
---@field hfReference number

---@class ObjectRuntimeFlags
---@field functionsControlColorScale boolean

---@alias FunctionOut
---| "d_out"
---| "c_out"
---| "b_out"
---| "a_out"
---| "none"

---@class ColorRGB
---@field r integer
---@field g integer
---@field b integer

---@class GlobalsGrenade
---@field maximumCount integer
---@field mpSpawnDefault integer
---@field throwingEffect TagReference
---@field hudInterface TagReference
---@field equipment TagReference
---@field projectile TagReference

---@alias ActorVariantGrenadeStimulus
---| "seek_cover"
---| "visible_target"
---| "never"

---@alias WeaponType
---| "rocket_launcher"
---| "plasma_rifle"
---| "plasma_pistol"
---| "needler"
---| "shotgun"
---| "undefined"

---@class UnitHUDInterface
---@field anchor HUDInterfaceAnchor
---@field canvasSize HUDInterfaceCanvasSize
---@field hudBackground HUDInterfaceStaticElement
---@field shieldPanelBackground HUDInterfaceStaticElement
---@field shieldPanelMeter UnitHUDInterfaceShieldMeter
---@field healthPanelBackground HUDInterfaceStaticElement
---@field healthPanelMeter UnitHUDInterfaceHealthMeter
---@field motionSensorBackground HUDInterfaceStaticElement
---@field motionSensorForeground HUDInterfaceStaticElement
---@field motionSensorCenter UnitHUDInterfaceMotionSensorCenter
---@field auxiliaryElements UnitHUDInterfaceAuxiliaryElements

---@class ItemFlags
---@field unaffectedByGravity boolean
---@field destroyedByExplosions boolean
---@field alwaysMaintainsZUp boolean

---@class BitmapProcessing
---@field detailFadeFactor number
---@field sharpenAmount number
---@field bumpHeight number

---@class BitmapSpriteProcessing
---@field usage BitmapSpriteUsage
---@field spacing integer

---@class ModelAnimationsAnimation
---@field name string
---@field type AnimationType
---@field frameCount integer
---@field frameSize integer
---@field frameInfoType AnimationFrameInfoType
---@field nodeListChecksum integer
---@field nodeCount integer
---@field loopFrameIndex integer
---@field weight number
---@field keyFrameIndex integer
---@field secondKeyFrameIndex integer
---@field nextAnimation integer
---@field flags ModelAnimationsAnimationFlags
---@field sound integer
---@field soundFrameIndex integer
---@field leftFootFrameIndex integer
---@field rightFootFrameIndex integer
---@field mainAnimationIndex integer
---@field relativeWeight number
---@field frameInfo TagRawData
---@field nodeTransformFlagData integer[2]
---@field nodeRotationFlagData integer[2]
---@field nodeScaleFlagData integer[2]
---@field offsetToCompressedData integer
---@field defaultData TagRawData
---@field frameData TagRawData

---@class ScenarioControl
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field appearancePlayerIndex integer
---@field powerGroup integer
---@field positionGroup integer
---@field deviceFlags ScenarioDeviceFlags
---@field controlFlags ScenarioControlFlags
---@field noName integer

---@class GrenadeHUDInterface
---@field anchor HUDInterfaceAnchor
---@field canvasSize HUDInterfaceCanvasSize
---@field background HUDInterfaceStaticElement
---@field totalGrenadesBackground HUDInterfaceStaticElement
---@field totalGrenadesNumbers GrenadeHUDInterfaceTotalGrenadesNumberElement
---@field totalGrenadesOverlays GrenadeHUDInterfaceTotalGrenadesOverlays
---@field messagingInformation HUDInterfaceMessagingInformation

---@alias UnitFunctionIn
---| "shield_sapping"
---| "can_blink"
---| "integrated_light_power"
---| "mouth_aperture"
---| "aiming_change"
---| "gunner_seat_power"
---| "driver_seat_power"
---| "none"

---@class ScenarioStructureBSPMapLeafFaceVertex
---@field vertex VectorXY

---@class DamageEffectDamageFlags
---@field allowAnyNonZeroAccelerationValue boolean
---@field use3dInstantaneousAcceleration boolean
---@field doesNotHurtPlayers boolean
---@field forcesHardPing boolean
---@field ignoreSeatScaleForDirDmg boolean
---@field infectionFormPop boolean
---@field canCauseMultiplayerHeadshots boolean
---@field onlyHurtsOneInfectionForm boolean
---@field skipsShields boolean
---@field damageIndicatorsAlwaysPointDown boolean
---@field causesFlamingDeath boolean
---@field onlyHurtsShields boolean
---@field detonatesExplosives boolean
---@field doesNotPingUnits boolean
---@field doesNotHurtFriends boolean
---@field pingsResistantUnits boolean
---@field canCauseHeadshots boolean
---@field doesNotHurtOwner boolean

---@alias HUDInterfaceWrapMode
---| "wrap"
---| "clamp"

---@alias ShaderFirstMapType
---| "first_map_is_viewer_centered_cube_map"
---| "first_map_is_object_centered_cube_map"
---| "first_map_is_reflection_cube_map"
---| "_2d_map"

---@alias UnitHUDInterfacePanelType
---| "integrated_light"

---@class ScenarioControlFlags
---@field usableFromBothSides boolean

---@class BitmapData
---@field signature TagGroup
---@field width integer
---@field height integer
---@field depth integer
---@field type BitmapDataType
---@field format BitmapDataFormat
---@field flags BitmapDataFlags
---@field registrationPoint VectorXYInt
---@field mipmapCount integer
---@field pixelDataOffset integer
---@field pixelDataSize integer
---@field bitmapTagId TagHandle
---@field pointer integer
---@field hardwareFormat integer
---@field baseAddress integer

---@class Garbage: Item

---@class SkyAnimation
---@field animationIndex integer
---@field period number

---@class GlobalsWeapon
---@field weapon TagReference

---@class LensFlare
---@field falloffAngle number
---@field cutoffAngle number
---@field cosFalloffAngle number
---@field cosCutoffAngle number
---@field occlusionRadius number
---@field occlusionOffsetDirection LensFlareOcclusionOffsetDirection
---@field nearFadeDistance number
---@field farFadeDistance number
---@field bitmap TagReference
---@field flags LensFlareFlags
---@field rotationFunction LensFlareRotationFunction
---@field rotationFunctionScale number
---@field horizontalScale number
---@field verticalScale number
---@field reflections LensFlareReflection[]

---@class GBXModelFlags
---@field ignoreSkinning boolean
---@field partsHaveLocalNodes boolean
---@field blendSharedNormals boolean

---@class ScenarioStartingEquipment
---@field flags ScenarioStartingEquipmentFlags
---@field type0 ScenarioSpawnType
---@field type1 ScenarioSpawnType
---@field type2 ScenarioSpawnType
---@field type3 ScenarioSpawnType
---@field itemCollection1 TagReference
---@field itemCollection2 TagReference
---@field itemCollection3 TagReference
---@field itemCollection4 TagReference
---@field itemCollection5 TagReference
---@field itemCollection6 TagReference

---@class HUDGlobalsAnniversaryRemapTargetFlags
---@field legacyMode boolean

---@class Scenario
---@field dontUse TagReference
---@field wontUse TagReference
---@field cantUse TagReference
---@field skies ScenarioSky[]
---@field type ScenarioType
---@field flags ScenarioFlags
---@field childScenarios ScenarioChildScenario[]
---@field localNorth number
---@field predictedResources PredictedResource[]
---@field functions ScenarioFunction[]
---@field editorScenarioData TagRawData
---@field comments ScenarioEditorComment[]
---@field scavengerHuntObjects ScenarioScavengerHuntObjects[]
---@field objectNames ScenarioObjectName[]
---@field scenery ScenarioScenery[]
---@field sceneryPalette ScenarioSceneryPalette[]
---@field bipeds ScenarioBiped[]
---@field bipedPalette ScenarioBipedPalette[]
---@field vehicles ScenarioVehicle[]
---@field vehiclePalette ScenarioVehiclePalette[]
---@field equipment ScenarioEquipment[]
---@field equipmentPalette ScenarioEquipmentPalette[]
---@field weapons ScenarioWeapon[]
---@field weaponPalette ScenarioWeaponPalette[]
---@field deviceGroups ScenarioDeviceGroup[]
---@field machines ScenarioMachine[]
---@field machinePalette ScenarioMachinePalette[]
---@field controls ScenarioControl[]
---@field controlPalette ScenarioControlPalette[]
---@field lightFixtures ScenarioLightFixture[]
---@field lightFixturePalette ScenarioLightFixturePalette[]
---@field soundScenery ScenarioSoundScenery[]
---@field soundSceneryPalette ScenarioSoundSceneryPalette[]
---@field playerStartingProfile ScenarioPlayerStartingProfile[]
---@field playerStartingLocations ScenarioPlayerStartingLocation[]
---@field triggerVolumes ScenarioTriggerVolume[]
---@field recordedAnimations ScenarioRecordedAnimation[]
---@field netgameFlags ScenarioNetgameFlags[]
---@field netgameEquipment ScenarioNetgameEquipment[]
---@field startingEquipment ScenarioStartingEquipment[]
---@field bspSwitchTriggerVolumes ScenarioBSPSwitchTriggerVolume[]
---@field decals ScenarioDecal[]
---@field decalPalette ScenarioDecalPalette[]
---@field detailObjectCollectionPalette ScenarioDetailObjectCollectionPalette[]
---@field actorPalette ScenarioActorPalette[]
---@field encounters ScenarioEncounter[]
---@field commandLists ScenarioCommandList[]
---@field aiAnimationReferences ScenarioAIAnimationReference[]
---@field aiScriptReferences ScenarioAIScriptReference[]
---@field aiRecordingReferences ScenarioAIRecordingReference[]
---@field aiConversations ScenarioAIConversation[]
---@field scriptSyntaxData TagRawData
---@field scriptStringData TagRawData
---@field scripts ScenarioScript[]
---@field globals ScenarioGlobal[]
---@field references ScenarioReference[]
---@field sourceFiles ScenarioSourceFile[]
---@field cutsceneFlags ScenarioCutsceneFlag[]
---@field cutsceneCameraPoints ScenarioCutsceneCameraPoint[]
---@field cutsceneTitles ScenarioCutsceneTitle[]
---@field customObjectNames TagReference
---@field ingameHelpText TagReference
---@field hudMessages TagReference
---@field structureBsps ScenarioBSP[]

---@class TagCollectionTag
---@field reference TagReference

---@class Light
---@field flags LightFlags
---@field shape LightShape
---@field color LightColor
---@field gel LightGel
---@field lensFlare LightLensFlare
---@field radiosity LightRadiosity
---@field effectParameters LightEffectParameters

---@class SearchAndReplaceReference
---@field searchString string
---@field replaceFunction UIReplaceFunction

---@alias PredictedResourceType
---| "sound"
---| "bitmap"

---@class LensFlareReflection
---@field flags LensFlareReflectionFlags
---@field bitmapIndex integer
---@field position number
---@field rotationOffset number
---@field radius number[2]
---@field radiusScaledBy LensFlareRadiusScaledBy
---@field brightness number[2]
---@field brightnessScaledBy LensFlareRadiusScaledBy
---@field tintColor ColorARGB
---@field color ColorARGB
---@field moreFlags LensFlareReflectionMoreFlags
---@field animationFunction WaveFunction
---@field animationPeriod number
---@field animationPhase number

---@class ChildWidgetReference
---@field widgetTag TagReference
---@field name string
---@field flags ChildWidgetReferenceFlags
---@field customControllerIndex integer
---@field verticalOffset integer
---@field horizontalOffset integer

---@class ConditionalWidgetReference
---@field widgetTag TagReference
---@field name string
---@field flags ConditionalWidgetReferenceFlags
---@field customControllerIndex integer

---@class EventHandlerReference
---@field flags EventHandlerReferencesFlags
---@field eventType UIEventType
---@field function UIEventHandlerReferenceFunction
---@field widgetTag TagReference
---@field soundEffect TagReference
---@field script string

---@class ShaderEnvironmentFlags
---@field useAlternateBumpAttenuation boolean
---@field trueAtmosphericFog boolean
---@field bumpMapIsSpecularMask boolean
---@field alphaTested boolean

---@class ShaderTransparentGenericMapFlag
---@field vClamped boolean
---@field uClamped boolean
---@field unfiltered boolean

---@class UnitHUDInterfaceAuxiliaryOverlayFlags
---@field useTeamColor boolean

---@class SoundLoopingDetail
---@field sound TagReference
---@field randomPeriodBounds number[2]
---@field gain number
---@field flags SoundLoopingDetailFlags
---@field yawBounds number[2]
---@field pitchBounds number[2]
---@field distanceBounds number[2]

---@class DamageEffectCameraShaking
---@field duration number
---@field falloffFunction FunctionType
---@field randomTranslation number
---@field randomRotation number
---@field wobbleFunction WaveFunction
---@field wobblePeriod number
---@field wobbleWeight number

---@class Lightning
---@field count integer
---@field nearFadeDistance number
---@field farFadeDistance number
---@field jitterScaleSource FunctionOut
---@field thicknessScaleSource FunctionOut
---@field tintModulationSource FunctionNameNullable
---@field brightnessScaleSource FunctionOut
---@field bitmap TagReference
---@field markers LightningMarker[]
---@field shader ShaderEffect[]

---@alias MaterialType
---| "hunter_shield"
---| "ice"
---| "elite_energy_shield"
---| "leaves"
---| "water"
---| "plastic"
---| "monitor"
---| "sentinel"
---| "human_skin"
---| "human_armor"
---| "cyborg_energy_shield"
---| "cyborg_armor"
---| "flood_carrier_form"
---| "flood_combat_form"
---| "engineer_force_field"
---| "engineer_skin"
---| "jackal_energy_shield"
---| "jackal"
---| "elite"
---| "hunter_skin"
---| "hunter_armor"
---| "grunt"
---| "force_field"
---| "glass"
---| "rubber"
---| "metal_thick"
---| "metal_thin"
---| "metal_hollow"
---| "wood"
---| "snow"
---| "stone"
---| "sand"
---| "dirt"

---@class LightningMarker
---@field attachmentMarker string
---@field flags LightningMarkerFlag
---@field octavesToNextMarker integer
---@field randomPositionBounds VectorXYZ
---@field randomJitter number
---@field thickness number
---@field tint ColorARGB

---@class ParticleSystemType
---@field name string
---@field flags ParticleSystemTypeFlags
---@field initialParticleCount integer
---@field complexSpriteRenderModes ParticleSystemComplexSpriteRenderMode
---@field radius number
---@field particleCreationPhysics ParticleSystemParticleCreationPhysics
---@field physicsFlags IsUnusedFlag
---@field physicsConstants ParticleSystemPhysicsConstant[]
---@field states ParticleSystemTypeStates[]
---@field particleStates ParticleSystemTypeParticleState[]

---@class HUDGlobalsMessagingParameters
---@field anchor HUDInterfaceAnchor
---@field canvasSize HUDInterfaceCanvasSize
---@field position HUDInterfaceElementPosition
---@field fullscreenFont TagReference
---@field splitscreenFont TagReference
---@field upTime number
---@field fadeTime number
---@field iconColor ColorARGB
---@field textColor ColorARGB
---@field textSpacing number
---@field itemMessageText TagReference
---@field iconBitmap TagReference
---@field alternateIconText TagReference
---@field buttonIcons HUDGlobalsButtonIcon[]

---@class LightVolume
---@field attachmentMarker string
---@field flags LightVolumeFlags
---@field nearFadeDistance number
---@field farFadeDistance number
---@field perpendicularBrightnessScale number
---@field parallelBrightnessScale number
---@field brightnessScaleSource FunctionOut
---@field map TagReference
---@field sequenceIndex integer
---@field count integer
---@field frameAnimationSource FunctionOut
---@field frames LightVolumeFrame[]

---@class LightVolumeFrame
---@field offsetFromMarker number
---@field offsetExponent number
---@field length number
---@field radiusHither number
---@field radiusYon number
---@field radiusExponent number
---@field tintColorHither ColorARGB
---@field tintColorYon ColorARGB
---@field tintColorExponent number
---@field brightnessExponent number

---@class UnitFlags
---@field integratedLightLastsForever boolean
---@field integratedLightControlsWeapon boolean
---@field shieldsFryInfectionForms boolean
---@field ignoredByAutoaiming boolean
---@field specialCinematicUnit boolean
---@field inconsequential boolean
---@field runsAroundFlaming boolean
---@field shieldSapping boolean
---@field notInstantlyKilledByMelee boolean
---@field meleeAttackersCannotAttach boolean
---@field cannotOpenDoorsAutomatically boolean
---@field impactMeleeDiesOnShields boolean
---@field impactMeleeAttachesToUnit boolean
---@field simpleCreature boolean
---@field hasNoAiming boolean
---@field dontRefaceDuringPings boolean
---@field meleeAttackIsFatal boolean
---@field resistsPings boolean
---@field causesPassengerDialogue boolean
---@field unused boolean
---@field entranceInsideBoundingSphere boolean
---@field firesFromCamera boolean
---@field halfSpeedInterpolation boolean
---@field destroyedAfterDying boolean
---@field circularAiming boolean

---@class ProjectileMaterialResponse
---@field flags ProjectileMaterialResponseFlags
---@field defaultResponse ProjectileResponse
---@field defaultEffect TagReference
---@field potentialResponse ProjectileResponse
---@field potentialFlags ProjectileMaterialResponsePotentialFlags
---@field potentialSkipFraction number
---@field potentialBetween number[2]
---@field potentialAnd number[2]
---@field potentialEffect TagReference
---@field scaleEffectsBy ProjectileScaleEffectsBy
---@field angularNoise number
---@field velocityNoise number
---@field detonationEffect TagReference
---@field initialFriction number
---@field maximumDistance number
---@field parallelFriction number
---@field perpendicularFriction number

---@class ModelCollisionGeometryRegionFlags
---@field causesHeadMaimedScream boolean
---@field forcesDropWeapon boolean
---@field inhibitsWalking boolean
---@field inhibitsWeaponAttack boolean
---@field inhibitsMeleeAttack boolean
---@field disappearsWhenShieldIsOff boolean
---@field diesWhenObjectIsDamaged boolean
---@field diesWhenObjectDies boolean
---@field forcesObjectToDie boolean
---@field livesUntilObjectDies boolean

---@class VectorIJK
---@field i integer
---@field j integer
---@field k integer

---@class UnitSeatFlags
---@field allowAiNoncombatants boolean
---@field notValidWithoutDriver boolean
---@field allowVehicleCommunicationAnimations boolean
---@field firstPersonCameraSlavedToGun boolean
---@field thirdPersonOnEnter boolean
---@field allowsWeapons boolean
---@field thirdPersonCamera boolean
---@field gunner boolean
---@field driver boolean
---@field locked boolean
---@field invisible boolean

---@class UnicodeStringListString
---@field string TagRawData

---@alias BipedFunctionIn
---| "flying_velocity"
---| "none"

---@alias ActorVariantSpecialFireMode
---| "secondary_trigger"
---| "overcharge"
---| "none"

---@class ActorVariantBerserkingAndMelee
---@field meleeRange number
---@field meleeAbortRange number
---@field berserkFiringRanges number[2]
---@field berserkMeleeRange number
---@field berserkMeleeAbortRange number

---@class UnicodeStringList
---@field strings UnicodeStringListString[]

---@alias DamageEffectSideEffect
---| "emp"
---| "lethal_to_the_unsuspecting"
---| "harmless"
---| "none"

---@class ProjectileMaterialResponsePotentialFlags
---@field neverAgainstUnits boolean
---@field onlyAgainstUnits boolean

---@class ScenarioScriptNode
---@field salt integer
---@field indexUnion integer
---@field type ScenarioScriptValueType
---@field flags ScenarioScriptNodeFlags
---@field nextNode integer
---@field stringOffset integer
---@field data ScenarioScriptNodeValue

---@class PhysicsMassPoint
---@field name string
---@field poweredMassPoint integer
---@field modelNode integer
---@field flags PhysicsMassPointFlags
---@field relativeMass number
---@field mass number
---@field relativeDensity number
---@field density number
---@field position VectorXYZ
---@field forward VectorXYZ
---@field up VectorXYZ
---@field frictionType PhysicsFrictionType
---@field frictionParallelScale number
---@field frictionPerpendicularScale number
---@field radius number

---@class MultiplayerScenarioDescription
---@field multiplayerScenarios MultiplayerScenarioDescriptionScenarioDescription[]

---@class WeaponMagazineFlags
---@field everyRoundMustBeChambered boolean
---@field wastesRoundsWhenReloaded boolean

---@alias GlowTrailingParticleDistribution
---| "emit_randomly"
---| "emit_normal_up"
---| "emit_vertically"

---@class UnitDialogueVariant
---@field variantNumber integer
---@field dialogue TagReference

---@class ColorTable
---@field colors ColorTableColor[]

---@alias HUDInterfaceZeroToOneBlendFunction
---| "dot"
---| "multiply_2x"
---| "multiply"
---| "subtract"
---| "add"

---@class MetagameProperties
---@field metagameType MetagameType
---@field metagameClass MetagameClass

---@class UnitDamageResult
---@field category integer
---@field aiTicksUntilHandle integer
---@field amount number
---@field responsibleUnit TagHandle

---@class HUDInterfaceMessagingInformation
---@field sequenceIndex integer
---@field widthOffset integer
---@field offsetFromReferenceCorner VectorXYInt
---@field overrideIconColor integer
---@field frameRate integer
---@field moreFlags HUDInterfaceMessagingFlags
---@field textIndex integer

---@class SoundScenery: BasicObject

---@alias ActorDefensiveCrouchType
---| "flood_shamble"
---| "any_target"
---| "hide_behind_shield"
---| "low_shields"
---| "danger"
---| "never"

---@class ShaderTransparentGenericStage
---@field flags ShaderTransparentGenericStageFlags
---@field color0Source FunctionNameNullable
---@field color0AnimationFunction WaveFunction
---@field color0AnimationPeriod number
---@field color0Animation ColorARGB
---@field color1 ColorARGB
---@field inputA ShaderTransparentGenericStageInputColor
---@field inputAMapping ShaderTransparentGenericStageInputMappingColor
---@field inputB ShaderTransparentGenericStageInputColor
---@field inputBMapping ShaderTransparentGenericStageInputMappingColor
---@field inputC ShaderTransparentGenericStageInputColor
---@field inputCMapping ShaderTransparentGenericStageInputMappingColor
---@field inputD ShaderTransparentGenericStageInputColor
---@field inputDMapping ShaderTransparentGenericStageInputMappingColor
---@field outputAb ShaderTransparentGenericStageOutput
---@field outputAbFunction ShaderTransparentGenericStageOutputFunction
---@field outputBc ShaderTransparentGenericStageOutput
---@field outputCdFunction ShaderTransparentGenericStageOutputFunction
---@field outputAbCdMuxSum ShaderTransparentGenericStageOutput
---@field outputMappingColor ShaderTransparentGenericStageOutputMapping
---@field inputAAlpha ShaderTransparentGenericStageInputAlpha
---@field inputAMappingAlpha ShaderTransparentGenericStageInputMappingColor
---@field inputBAlpha ShaderTransparentGenericStageInputAlpha
---@field inputBMappingAlpha ShaderTransparentGenericStageInputMappingColor
---@field inputCAlpha ShaderTransparentGenericStageInputAlpha
---@field inputCMappingAlpha ShaderTransparentGenericStageInputMappingColor
---@field inputDAlpha ShaderTransparentGenericStageInputAlpha
---@field inputDMappingAlpha ShaderTransparentGenericStageInputMappingColor
---@field outputAbAlpha ShaderTransparentGenericStageOutput
---@field outputCdAlpha ShaderTransparentGenericStageOutput
---@field outputAbCdMuxSumAlpha ShaderTransparentGenericStageOutput
---@field outputMappingAlpha ShaderTransparentGenericStageOutputMapping

---@class UnitHUDInterfaceAuxiliaryElements
---@field anchor HUDInterfaceAnchor
---@field overlays UnitHUDInterfaceAuxiliaryOverlay[]
---@field warningSounds UnitHUDInterfaceHUDSound[]
---@field meters UnitHUDInterfaceAuxiliaryPanel[]

---@class UnitHUDInterfaceHUDSound
---@field sound TagReference
---@field latchedTo UnitHUDInterfaceHUDSoundLatchedTo
---@field scale number

---@class ModelAnimationsDeviceAnimations
---@field animations ModelAnimationsDeviceAnimation[]

---@class ScenarioStructureBSPGlobalDetailObject
---@field positionX integer
---@field positionY integer
---@field positionZ integer
---@field data integer
---@field color integer

---@class VectorFont
---@field fontSize number
---@field offsetX number
---@field offsetY number
---@field plain VectorFontStyle
---@field bold VectorFontStyle
---@field italic VectorFontStyle
---@field condense VectorFontStyle
---@field underline VectorFontStyle

---@class VectorFontStyle
---@field data TagReference
---@field hardwareFormat integer
---@field spaceWidth integer

---@class ActorVariantRangedCombat
---@field weapon TagReference
---@field maximumFiringDistance number
---@field rateOfFire number
---@field projectileError number
---@field firstBurstDelayTime number[2]
---@field newTargetFiringPatternTime number
---@field surpriseDelayTime number
---@field surpriseFireWildlyTime number
---@field deathFireWildlyChance number
---@field deathFireWildlyTime number
---@field desiredCombatRange number[2]
---@field customStandGunOffset VectorXYZ
---@field customCrouchGunOffset VectorXYZ
---@field targetTracking number
---@field targetLeading number
---@field weaponDamageModifier number
---@field damagePerSecond number

---@class ModelAnimationsAnimationWeaponClassAnimation
---@field animation integer

---@class ScenarioStructureBSPLensFlare
---@field lens TagReference

---@class ContrailFlags
---@field edgeEffectFadesSlowly boolean
---@field pointsAlwaysPinnedToGround boolean
---@field pointsAlwaysPinnedToMedia boolean
---@field pointsStartPinnedToGround boolean
---@field pointsStartPinnedToMedia boolean
---@field lastPointUnfaded boolean
---@field firstPointUnfaded boolean

---@class ScenarioScriptParameter
---@field name string
---@field returnType ScenarioScriptValueType

---@class ScenarioPlayerStartingLocation
---@field position VectorXYZ
---@field facing number
---@field teamIndex integer
---@field bspIndex integer
---@field type0 ScenarioSpawnType
---@field type1 ScenarioSpawnType
---@field type2 ScenarioSpawnType
---@field type3 ScenarioSpawnType

---@class VirtualKeyboardVirtualKey
---@field keyboardKey VirtualKeyboardKeyboardKey
---@field lowercaseCharacter integer
---@field shiftCharacter integer
---@field capsCharacter integer
---@field symbolsCharacter integer
---@field shiftCapsCharacter integer
---@field shiftSymbolsCharacter integer
---@field capsSymbolsCharacter integer
---@field unselectedBackgroundBitmap TagReference
---@field selectedBackgroundBitmap TagReference
---@field activeBackgroundBitmap TagReference
---@field stickyBackgroundBitmap TagReference

---@class ShaderTransparentChicago: Shader
---@field properties ShaderTransparentProperties
---@field maps ShaderTransparentChicagoMap[]
---@field extraFlags ShaderTransparentChicagoExtraFlags

---@alias UnitDefaultTeam
---| "unused_9"
---| "unused_8"
---| "unused_7"
---| "unused_6"
---| "sentinel"
---| "flood"
---| "covenant"
---| "human"
---| "player"
---| "none"

---@class ModelAnimationsDeviceAnimation
---@field animation integer

---@class ModelAnimationsAnimationGraphWeaponAnimations
---@field animations ModelAnimationsWeaponAnimation[]

---@class DetailObjectCollectionTypeFlags
---@field moreColors boolean
---@field interpolateColorInHsv boolean
---@field unused1 boolean
---@field unused boolean

---@class LightEffectParameters
---@field duration number
---@field falloffFunction FunctionType

---@class LightLensFlare
---@field lensFlare TagReference

---@class LightGel
---@field primaryCubeMap TagReference
---@field textureAnimationFunction WaveFunction
---@field textureAnimationPeriod number
---@field secondaryCubeMap TagReference
---@field yawFunction WaveFunction
---@field yawPeriod number
---@field rollFunction WaveFunction
---@field rollPeriod number
---@field pitchFunction WaveFunction
---@field pitchPeriod number

---@class ScenarioScript
---@field name string
---@field scriptType ScenarioScriptType
---@field returnType ScenarioScriptValueType
---@field rootExpressionIndex integer
---@field parameters ScenarioScriptParameter[]

---@alias ProjectileScaleEffectsBy
---| "angle"
---| "damage"

---@class ScenarioStructureBSPFogPlaneVertex
---@field point VectorXYZ

---@class GrenadeHUDInterfaceOverlay
---@field position HUDInterfaceElementPosition
---@field color HUDInterfaceElementColor
---@field frameRate number
---@field sequenceIndex integer
---@field type GrenadeHUDInterfaceOverlayType
---@field flags HUDInterfaceOverlayFlashFlags

---@class Weapon: Item
---@field weaponFlags WeaponFlags
---@field label string
---@field secondaryTriggerMode WeaponSecondaryTriggerMode
---@field maximumAlternateShotsLoaded integer
---@field weaponAIn WeaponFunctionIn
---@field weaponBIn WeaponFunctionIn
---@field weaponCIn WeaponFunctionIn
---@field weaponDIn WeaponFunctionIn
---@field readyTime number
---@field readyEffect TagReference
---@field heatRecoveryThreshold number
---@field overheatedThreshold number
---@field heatDetonationThreshold number
---@field heatDetonationFraction number
---@field heatLossRate number
---@field heatIllumination number
---@field overheated TagReference
---@field overheatDetonation TagReference
---@field playerMeleeDamage TagReference
---@field playerMeleeResponse TagReference
---@field actorFiringParameters TagReference
---@field nearReticleRange number
---@field farReticleRange number
---@field intersectionReticleRange number
---@field zoomLevels integer
---@field zoomMagnificationRange number[2]
---@field autoaimAngle number
---@field autoaimRange number
---@field magnetismAngle number
---@field magnetismRange number
---@field deviationAngle number
---@field movementPenalized WeaponMovementPenalized
---@field forwardMovementPenalty number
---@field sidewaysMovementPenalty number
---@field minimumTargetRange number
---@field lookingTimeModifier number
---@field lightPowerOnTime number
---@field lightPowerOffTime number
---@field lightPowerOnEffect TagReference
---@field lightPowerOffEffect TagReference
---@field ageHeatRecoveryPenalty number
---@field ageRateOfFirePenalty number
---@field ageMisfireStart number
---@field ageMisfireChance number
---@field firstPersonModel TagReference
---@field firstPersonAnimations TagReference
---@field hudInterface TagReference
---@field pickupSound TagReference
---@field zoomInSound TagReference
---@field zoomOutSound TagReference
---@field activeCamoDing number
---@field activeCamoRegrowthRate number
---@field weaponType WeaponType
---@field morePredictedResources PredictedResource[]
---@field magazines WeaponMagazine[]
---@field triggers WeaponTrigger[]

---@alias ShaderColorFunctionType
---| "blend_next_map_alpha_inverse"
---| "blend_next_map_alpha"
---| "blend_current_alpha_inverse"
---| "blend_current_alpha"
---| "subtract_next_map"
---| "subtract_current"
---| "add_signed_next_map"
---| "add_signed_current"
---| "add"
---| "double_multiply"
---| "multiply"
---| "next_map"
---| "current"

---@class GlobalsVehicle
---@field vehicle TagReference

---@class SoundPermutation
---@field name string
---@field skipFraction number
---@field gain number
---@field format SoundFormat
---@field nextPermutationIndex integer
---@field samplesPointer integer
---@field tagId0 TagHandle
---@field bufferSize integer
---@field tagId1 TagHandle
---@field samples TagRawData
---@field mouthData TagRawData
---@field subtitleData TagRawData

---@class GrenadeHUDInterfaceSound
---@field sound TagReference
---@field latchedTo GrenadeHUDInterfaceSoundLatchedTo
---@field scale number

---@class SkyLightLensFlare
---@field lensFlare TagReference
---@field lensFlareMarkerName string

---@class DeviceFlags
---@field positionNotInterpolated boolean
---@field positionLoops boolean

---@class WeatherParticleSystem
---@field flags IsUnusedFlag
---@field particleTypes WeatherParticleSystemParticleType[]

---@class Font
---@field flags FontFlags
---@field ascendingHeight integer
---@field descendingHeight integer
---@field leadingHeight integer
---@field leadingWidth integer
---@field encodingType FontEncodingType
---@field characterOffset integer
---@field characterTables FontCharacterTables[]
---@field bold TagReference
---@field italic TagReference
---@field condense TagReference
---@field underline TagReference
---@field characters FontCharacter[]
---@field pixels TagRawData

---@class FontCharacterTables
---@field characterTable FontCharacterIndex[]

---@alias ShaderTransparentGenericStageOutput
---| "alpha_map_alpha_3"
---| "alpha_map_alpha_2"
---| "alpha_map_alpha_1"
---| "alpha_map_alpha_0"
---| "alpha_vertex_alpha_1"
---| "alpha_vertex_alpha_0_fog"
---| "alpha_scratch_alpha_1"
---| "alpha_scratch_alpha_0_final_alpha"
---| "alpha_discard"

---@class ModelAnimationsAnimationGraphSoundReference
---@field sound TagReference

---@class ShaderModel: Shader
---@field properties ShaderModelProperties
---@field changeColor ShaderModelChangeColor
---@field selfIllumination ShaderModelSelfIllumination
---@field maps ShaderModelMaps
---@field textureScrollingAnimation ShaderModelTextureScrollingAnimation
---@field reflection ShaderModelReflection
---@field bullshit ShaderModelBullshit

---@alias GameEngineType
---| "race"
---| "king"
---| "oddball"
---| "slayer"
---| "ctf"
---| "none"

---@class Wind
---@field velocity number[2]
---@field variationArea VectorPY
---@field localVariationWeight number
---@field localVariationRate number
---@field damping number

---@class BipedContactPoint
---@field markerName string

---@class ModelCollisionGeometryMaterialFlags
---@field head boolean

---@alias EffectCreateIn
---| "space_only"
---| "water_only"
---| "air_only"
---| "any_environment"

---@alias ParticleOrientation
---| "perpendicular_to_direction"
---| "parallel_to_direction"
---| "screen_facing"

---@class GlowRotationalVelocity
---@field attachment FunctionOut
---@field velocity number
---@field multiplier number[2]

---@class ItemCollection
---@field permutations ItemCollectionPermutation[]
---@field defaultSpawnTime integer

---@alias ScenarioSelectionType
---| "radio_sergeant"
---| "radio_unit"
---| "any_actor"
---| "prefer_sergeant"
---| "not_in_a_vehicle"
---| "in_player_s_vehicle"
---| "disembodied"
---| "friendly_actor"

---@class ShaderEnvironmentSelfIllumination
---@field flags IsUnfilteredFlag
---@field primaryOnColor ColorRGB
---@field primaryOffColor ColorRGB
---@field primaryAnimationFunction WaveFunction
---@field primaryAnimationPeriod number
---@field primaryAnimationPhase number
---@field secondaryOnColor ColorRGB
---@field secondaryOffColor ColorRGB
---@field secondaryAnimationFunction WaveFunction
---@field secondaryAnimationPeriod number
---@field secondaryAnimationPhase number
---@field plasmaOnColor ColorRGB
---@field plasmaOffColor ColorRGB
---@field plasmaAnimationFunction WaveFunction
---@field plasmaAnimationPeriod number
---@field plasmaAnimationPhase number
---@field mapScale number
---@field map TagReference

---@class ActorVariantItems
---@field equipment TagReference
---@field grenadeCount integer[2]
---@field dontDropGrenadesChance number
---@field dropWeaponLoaded number[2]
---@field dropWeaponAmmo integer[2]

---@class HUDGlobalsAnniversaryRemap
---@field sourceBitmap TagReference
---@field targets HUDGlobalsAnniversaryRemapTarget[]

---@class BasicObject: Object
---@field moreFlags BaseObjectFlags

---@class TableResourceHandle
---@field index integer
---@field value integer
---@field id integer

---@class EffectEvent
---@field skipFraction number
---@field delayBounds number[2]
---@field durationBounds number[2]
---@field parts EffectPart[]
---@field particles EffectParticle[]

---@class PhysicsPoweredMassPointFlags
---@field antigrav boolean
---@field thrust boolean
---@field airLift boolean
---@field waterLift boolean
---@field airFriction boolean
---@field waterFriction boolean
---@field groundFriction boolean

---@class ShaderTransparentGenericStageFlags
---@field aOutControlsColor0Animation boolean
---@field alphaMux boolean
---@field colorMux boolean

---@alias WeaponHUDInterfaceStateAttachedTo
---| "elevation_to_target"
---| "distance_to_target"
---| "secondary_weapon_loaded_ammo"
---| "secondary_weapon_total_ammo"
---| "age"
---| "heat"
---| "loaded_ammo"
---| "total_ammo"

---@class ObjectChangeColorsPermutation
---@field weight number
---@field color ColorRGB

---@class ColorInterpolationFlags
---@field moreColors boolean
---@field blendInHsv boolean

---@class WeaponHUDInterfaceOverlayType
---@field showAlways boolean
---@field showOnDefault boolean
---@field showOnReloadOverheating boolean
---@field showOnEmpty boolean
---@field showOnFlashing boolean

---@alias HUDInterfaceMultitextureOverlayAnchor
---| "screen"
---| "texture"

---@alias ShaderModelDetailMask
---| "auxiliary_mask"
---| "auxiliary_mask_inverse"
---| "change_color_mask"
---| "change_color_mask_inverse"
---| "self_illumination_mask"
---| "self_illumination_mask_inverse"
---| "reflection_mask"
---| "reflection_mask_inverse"
---| "none"

---@class ConditionalWidgetReferenceFlags
---@field loadIfEventHandlerFunctionFails boolean

---@alias DecalType
---| "painted_sign"
---| "burn"
---| "splatter"
---| "scratch"

---@class ScenarioStructureBSPClusterPortalFlags
---@field aiCantHearThroughThisShit boolean

---@class ModelCollisionGeometryBSP2DNode
---@field plane Plane2D
---@field leftChild integer
---@field rightChild integer

---@class Object
---@field type ObjectType
---@field flags ObjectFlags
---@field boundingRadius number
---@field boundingOffset VectorXYZ
---@field originOffset VectorXYZ
---@field accelerationScale number
---@field runtimeFlags ObjectRuntimeFlags
---@field model TagReference
---@field animationGraph TagReference
---@field collisionModel TagReference
---@field physics TagReference
---@field modifierShader TagReference
---@field creationEffect TagReference
---@field renderBoundingRadius number
---@field aIn ObjectFunctionIn
---@field bIn ObjectFunctionIn
---@field cIn ObjectFunctionIn
---@field dIn ObjectFunctionIn
---@field hudTextMessageIndex integer
---@field forcedShaderPermutationIndex integer
---@field attachments ObjectAttachment[]
---@field widgets ObjectWidget[]
---@field functions ObjectFunction[]
---@field changeColors ObjectChangeColors[]
---@field predictedResources PredictedResource[]

---@class ModelAnimationsFrameInfoDxDy
---@field dx number
---@field dy number

---@class ScenarioScavengerHuntObjects
---@field name string
---@field objectNameIndex integer

---@class ContrailScaleFlags
---@field textureAnimationV boolean
---@field textureAnimationU boolean
---@field textureScaleV boolean
---@field textureScaleU boolean
---@field sequenceAnimationRate boolean
---@field inheritedVelocityFraction boolean
---@field pointVelocityConeAngle boolean
---@field pointVelocityDelta boolean
---@field pointVelocity boolean
---@field pointGenerationRate boolean

---@alias ScenarioType
---| "user_interface"
---| "multiplayer"
---| "singleplayer"

---@alias BitmapSpriteUsage
---| "double_multiply"
---| "multiply_min"
---| "blend_add_subtract_max"

---@class Plane3D
---@field i number
---@field j number
---@field k number
---@field w number

---@class ShaderEnvironmentDiffuseFlags
---@field rescaleBumpMap boolean
---@field rescaleDetailMaps boolean

---@class DamageEffectScreenFlash
---@field type DamageEffectScreenFlashType
---@field priority DamageEffectScreenFlashPriority
---@field duration number
---@field fadeFunction FunctionType
---@field maximumIntensity number
---@field color ColorARGB

---@class IsUnfilteredFlag
---@field unfiltered boolean

---@class ScenarioActorStartingLocationFlags
---@field required boolean

---@class ContinuousDamageVibrateParameters
---@field lowFrequency number
---@field highFrequency number

---@class HUDInterfaceOverlayFlashFlags
---@field flashesWhenActive boolean

---@class ModelCollisionGeometryPermutation
---@field name string

---@class ObjectWidget
---@field reference TagReference

---@class ScenarioSpawnNotPlaced
---@field usePlayerAppearance boolean
---@field onHard boolean
---@field onNormal boolean
---@field onEasy boolean
---@field automatically boolean

---@class ScenarioLightFixturePalette
---@field name TagReference

---@class HUDInterfaceMultitextureOverlayEffector
---@field destinationType HUDInterfaceDestinationType
---@field destination HUDInterfaceDestination
---@field source HUDInterfaceSource
---@field inBounds number[2]
---@field outBounds number[2]
---@field tint ColorRGB
---@field periodicFunction WaveFunction
---@field functionPeriod number
---@field functionPhase number

---@class ShaderTransparentMeter: Shader
---@field properties ShaderTransparentMeterProperties
---@field colors ShaderTransparentMeterColors
---@field externalFunctionSources ShaderTransparentMeterExternalFunctionSources

---@class UIWidgetDefinitionFlags
---@field forceHandleMouse boolean
---@field dontPushHistory boolean
---@field alwaysUseNiftyRenderFx boolean
---@field alwaysUseTagControllerIndex boolean
---@field returnToMainMenuIfNoHistory boolean
---@field passHandledEventsToAllChildren boolean
---@field renderRegardlessOfControllerIndex boolean
---@field passUnhandledEventsToAllChildren boolean
---@field dontFocusASpecificChildWidget boolean
---@field dpadLeftRightTabsThruListItems boolean
---@field dpadUpDownTabsThruListItems boolean
---@field dpadLeftRightTabsThruChildren boolean
---@field dpadUpDownTabsThruChildren boolean
---@field flashBackgroundBitmap boolean
---@field pauseGameTime boolean
---@field passUnhandledEventsToFocusedChild boolean

---@alias ShaderEnvironmentReflectionType
---| "bumped_radiosity"
---| "flat_cube_map"
---| "bumped_cube_map"

---@class EffectLocation
---@field markerName string

---@class WeaponHUDInterfaceOverlayElement
---@field stateAttachedTo WeaponHUDInterfaceStateAttachedTo
---@field allowedViewType WeaponHUDInterfaceViewType
---@field anchor HUDInterfaceChildAnchor
---@field overlayBitmap TagReference
---@field overlays WeaponHUDInterfaceOverlay[]

---@class ActorVariantBurstGeometry
---@field burstOriginRadius number
---@field burstOriginAngle number
---@field burstReturnLength number[2]
---@field burstReturnAngle number
---@field burstDuration number[2]
---@field burstSeparation number[2]
---@field burstAngularVelocity number
---@field specialDamageModifier number
---@field specialProjectileError number

---@class WeaponHUDInterfaceMeter
---@field stateAttachedTo WeaponHUDInterfaceStateAttachedTo
---@field allowedViewType WeaponHUDInterfaceViewType
---@field anchor HUDInterfaceChildAnchor
---@field properties HUDInterfaceMeterElement

---@class TagRawData
---@field size integer
---@field pointer integer

---@class WeaponHUDInterfaceCrosshair
---@field crosshairType WeaponHUDInterfaceCrosshairType
---@field allowedViewType WeaponHUDInterfaceViewType
---@field crosshairBitmap TagReference
---@field crosshairOverlays WeaponHUDInterfaceCrosshairOverlay[]

---@class WeaponHUDInterfaceCrosshairOverlay
---@field position HUDInterfaceElementPosition
---@field color HUDInterfaceElementColor
---@field frameRate integer
---@field sequenceIndex integer
---@field flags WeaponHUDInterfaceCrosshairOverlayFlags

---@class ShaderModelReflection
---@field falloffDistance number
---@field cutoffDistance number
---@field cubeMapProperties ShaderSpecularProperties
---@field cubeMap TagReference

---@alias VirtualKeyboardKeyboardKey
---| "space"
---| "right"
---| "left"
---| "backspace"
---| "symbols"
---| "caps_lock"
---| "shift"
---| "done"
---| "z"
---| "y"
---| "x"
---| "w"
---| "v"
---| "u"
---| "t"
---| "s"
---| "r"
---| "q"
---| "p"
---| "o"
---| "n"
---| "m"
---| "l"
---| "k"
---| "j"
---| "i"
---| "h"
---| "g"
---| "f"
---| "e"
---| "d"
---| "c"
---| "b"
---| "a"
---| "_0"
---| "_9"
---| "_8"
---| "_7"
---| "_6"
---| "_5"
---| "_4"
---| "_3"
---| "_2"
---| "_1"

---@class ShaderTransparentChicagoExtended: Shader
---@field properties ShaderTransparentProperties
---@field _4StageMaps ShaderTransparentChicagoMap[]
---@field _2StageMaps ShaderTransparentChicagoMap[]
---@field extraFlags ShaderTransparentChicagoExtraFlags

---@class ScenarioScriptNodeFlags
---@field isLocalVariable boolean
---@field isGarbageCollectable boolean
---@field isGlobal boolean
---@field isScriptCall boolean
---@field isPrimitive boolean

---@class ShaderEffectProperties
---@field shader Shader
---@field shaderFlags ShaderEffectFlags
---@field framebufferBlendFunction FramebufferBlendFunction
---@field framebufferFadeMode FramebufferFadeMode
---@field mapFlags IsUnfilteredFlag

---@class ObjectAttachment
---@field type TagReference
---@field marker string
---@field primaryScale FunctionOut
---@field secondaryScale FunctionOut
---@field changeColor FunctionNameNullable

---@class StringListString
---@field string TagRawData

---@alias WaveFunction
---| "spark"
---| "wander"
---| "jitter"
---| "noise"
---| "slide_variable_period"
---| "slide"
---| "diagonal_wave_variable_period"
---| "diagonal_wave"
---| "cosine_variable_period"
---| "cosine"
---| "zero"
---| "one"

---@alias LensFlareRadiusScaledBy
---| "distance_from_center"
---| "rotation_and_strafing"
---| "rotation"
---| "none"

---@alias WeaponFunctionIn
---| "secondary_firing_on"
---| "primary_firing_on"
---| "secondary_firing"
---| "primary_firing"
---| "integrated_light"
---| "age"
---| "illumination"
---| "secondary_charged"
---| "primary_charged"
---| "overheated"
---| "secondary_ejection_port"
---| "primary_ejection_port"
---| "ready"
---| "secondary_rate_of_fire"
---| "primary_rate_of_fire"
---| "secondary_ammunition"
---| "primary_ammunition"
---| "heat"
---| "none"

---@class ScenarioStructureBSPLightmap
---@field bitmap integer
---@field materials ScenarioStructureBSPMaterial[]

---@alias ScenarioMajorUpgrade
---| "all"
---| "none"
---| "many"
---| "few"
---| "normal"

---@alias WeatherParticleSystemRenderDirectionSource
---| "from_acceleration"
---| "from_velocity"

---@alias WeaponHUDInterfaceCrosshairType
---| "flash_when_firing_with_depleted_battery"
---| "secondary_trigger_ready"
---| "primary_trigger_ready"
---| "low_secondary_ammo_and_none_left_to_reload"
---| "flash_when_firing_secondary_trigger_with_no_ammo"
---| "flash_secondary_reload"
---| "flash_secondary_total_ammo"
---| "should_reload_secondary_trigger"
---| "low_ammo_and_none_left_to_reload"
---| "flash_when_throwing_and_no_grenade"
---| "flash_when_firing_and_no_ammo"
---| "reload_overheat"
---| "flash_battery"
---| "flash_total_ammo"
---| "flash_heat"
---| "should_reload"
---| "charge"
---| "zoom_overlay"
---| "aim"

---@alias DamageEffectScreenFlashType
---| "tint"
---| "invert"
---| "min"
---| "max"
---| "darken"
---| "lighten"
---| "none"

---@class ShaderSpecularProperties
---@field perpendicularBrightness number
---@field perpendicularTintColor ColorRGB
---@field parallelBrightness number
---@field parallelTintColor ColorRGB

---@class ItemCollectionPermutation
---@field weight number
---@field item TagReference

---@class LensFlareReflectionFlags
---@field occludedBySolidObjects boolean
---@field radiusScaledByOcclusionFactor boolean
---@field radiusNotScaledByDistance boolean
---@field alignRotationWithScreenCenter boolean

---@class ScenarioBSP
---@field bspStart integer
---@field bspSize integer
---@field bspAddress integer
---@field structureBsp TagReference

---@alias ScenarioTeamIndex
---| "unused_9"
---| "unused_8"
---| "unused_7"
---| "unused_6"
---| "sentinel"
---| "flood"
---| "covenant"
---| "human"
---| "player"
---| "default_by_unit"

---@class DamageEffectDamage
---@field sideEffect DamageEffectSideEffect
---@field category DamageEffectCategory
---@field flags DamageEffectDamageFlags
---@field aoeCoreRadius number
---@field lowerBound number
---@field upperBound number[2]
---@field vehiclePassthroughPenalty number
---@field activeCamouflageDamage number
---@field stun number
---@field maximumStun number
---@field stunTime number
---@field instantaneousAcceleration VectorXYZ
---@field modifiers DamageEffectMaterialModifier

---@class ModelVertexCompressed
---@field position VectorXYZ
---@field normal integer
---@field binormal integer
---@field tangent integer
---@field textureCoordinateU integer
---@field textureCoordinateV integer
---@field node0Index integer
---@field node1Index integer
---@field node0Weight integer

---@class ModelRegionPermutationMarker
---@field name string
---@field nodeIndex integer
---@field rotation Quaternion
---@field translation VectorXYZ

---@class ScenarioCutsceneCameraPoint
---@field unknown integer
---@field name string
---@field position VectorXYZ
---@field orientation VectorPYR
---@field fieldOfView number

---@class EffectParticleFlags
---@field acrossTheLongHuePath boolean
---@field interpolateTintAsHsv boolean
---@field tintFromObjectColor boolean
---@field randomInitialAngle boolean
---@field stayAttachedToMarker boolean

---@alias EffectViolenceMode
---| "nonviolent_mode_only"
---| "violent_mode_only"
---| "either_mode"

---@alias ModelVertexType
---| "widget"
---| "unlit_zsprite"
---| "model_processed"
---| "model_uncompressed_ff"
---| "environment_lightmap_uncompressed_ff"
---| "environment_uncompressed_ff"
---| "detail_object"
---| "decal"
---| "debug"
---| "dynamic_screen"
---| "dynamic_lit"
---| "dynamic_unlit"
---| "model_compressed"
---| "model_uncompressed"
---| "environment_lightmap_compressed"
---| "environment_lightmap_uncompressed"
---| "environment_compressed"
---| "environment_uncompressed"

---@class ScenarioStructureBSPCompiledHeaderCea
---@field pointer integer
---@field lightmapVertexSize integer
---@field lightmapVertices integer
---@field signature TagGroup

---@alias MachineType
---| "gear"
---| "platform"
---| "door"

---@class ScenarioGlobal
---@field name string
---@field type ScenarioScriptValueType
---@field initializationExpressionIndex integer

---@class ModelAnimationsAnimationGraphWeapon
---@field name string
---@field gripMarker string
---@field handMarker string
---@field rightYawPerFrame number
---@field leftYawPerFrame number
---@field rightFrameCount integer
---@field leftFrameCount integer
---@field downPitchPerFrame number
---@field upPitchPerFrame number
---@field downPitchFrameCount integer
---@field upPitchFrameCount integer
---@field animations ModelAnimationsAnimationWeaponClassAnimation[]
---@field ikPoint ModelAnimationsAnimationGraphUnitSeatikPoint[]
---@field weaponTypes ModelAnimationsAnimationGraphWeaponType[]

---@alias BitmapDataType
---| "white"
---| "cube_map"
---| "_3d_texture"
---| "_2d_texture"

---@class ScenarioAIConversationParticipant
---@field flags ScenarioAIConversationParticipantFlags
---@field selectionType ScenarioSelectionType
---@field actorType ActorType
---@field useThisObject integer
---@field setNewName integer
---@field variantNumbers integer[6]
---@field encounterName string
---@field encounterIndex integer

---@alias UIControllerIndex
---| "any_player"
---| "player_4"
---| "player_3"
---| "player_2"
---| "player_1"

---@class ScenarioAIScriptReference
---@field scriptName string

---@class ShaderPhysicsProperties
---@field materialType MaterialType
---@field type integer

---@alias ParticleSystemSystemUpdatePhysics
---| "explosion"
---| "default"

---@alias ScenarioUniqueLeaderType
---| "sgt_lehto"
---| "sgt_johnson"
---| "random"
---| "none"
---| "normal"

---@class GlobalsInterfaceBitmaps
---@field fontSystem TagReference
---@field fontTerminal TagReference
---@field screenColorTable TagReference
---@field hudColorTable TagReference
---@field editorColorTable TagReference
---@field dialogColorTable TagReference
---@field hudGlobals TagReference
---@field motionSensorSweepBitmap TagReference
---@field motionSensorSweepBitmapMask TagReference
---@field multiplayerHudBitmap TagReference
---@field localization TagReference
---@field hudDigitsDefinition TagReference
---@field motionSensorBlipBitmap TagReference
---@field interfaceGooMap1 TagReference
---@field interfaceGooMap2 TagReference
---@field interfaceGooMap3 TagReference

---@class BitmapDataFlags
---@field environment boolean
---@field external boolean
---@field makeItActuallyWork boolean
---@field runtimeCreated boolean
---@field v16U16 boolean
---@field linear boolean
---@field swizzled boolean
---@field palettized boolean
---@field compressed boolean
---@field powerOfTwoDimensions boolean

---@class ScenarioPlatoon
---@field name string
---@field flags ScenarioPlatoonFlags
---@field changeAttackingDefendingStateWhen ScenarioChangeAttackingDefendingStateWhen
---@field happensTo integer
---@field maneuverWhen ScenarioChangeAttackingDefendingStateWhen
---@field happensTo1 integer

---@alias ActorVariantTrajectoryType
---| "bounce"
---| "lob"
---| "toss"

---@class HUDInterfaceElementColor
---@field defaultColor integer
---@field flashingColor integer
---@field flashPeriod number
---@field flashDelay number
---@field numberOfFlashes integer
---@field flashFlags HUDInterfaceFlashFlags
---@field flashLength number
---@field disabledColor integer

---@class ScenarioMovePosition
---@field position VectorXYZ
---@field facing number
---@field weight number
---@field time number[2]
---@field animation integer
---@field sequenceId integer
---@field clusterIndex integer
---@field surfaceIndex integer

---@class GBXModelGeometry
---@field flags IsUnusedFlag
---@field parts GBXModelGeometryPart[]

---@class ScenarioBSPSwitchTriggerVolume
---@field triggerVolume integer
---@field source integer
---@field destination integer
---@field unknown integer

---@class GlowColor
---@field attachment FunctionOut
---@field colorBound ColorARGB
---@field scaleColor ColorARGB
---@field colorRateOfChange number

---@alias LensFlareOcclusionOffsetDirection
---| "none"
---| "marker_forward"
---| "toward_viewer"

---@class WeaponMagazine
---@field flags WeaponMagazineFlags
---@field roundsRecharged integer
---@field roundsTotalInitial integer
---@field roundsReservedMaximum integer
---@field roundsLoadedMaximum integer
---@field reloadTime number
---@field roundsReloaded integer
---@field chamberTime number
---@field reloadingEffect TagReference
---@field chamberingEffect TagReference
---@field magazineObjects WeaponMagazineObject[]

---@class ModelAnimationsAnimationGraphObjectOverlay
---@field animation integer
---@field function AnimationFunction
---@field functionControls AnimationFunctionControls

---@class ScenarioControlPalette
---@field name TagReference

---@class ScenarioStructureBSPLeafPortalVertex
---@field point VectorXYZ

---@class GlobalsFirstPersonInterface
---@field firstPersonHands TagReference
---@field baseBitmap TagReference
---@field shieldMeter TagReference
---@field shieldMeterOrigin VectorXYInt
---@field bodyMeter TagReference
---@field bodyMeterOrigin VectorXYInt
---@field nightVisionOnEffect TagReference
---@field nightVisionOffEffect TagReference

---@class BaseObjectAttachmentsData
---@field types integer[8]
---@field attachments integer[8]
---@field firstWidget integer

---@class SoundFlags
---@field thirstyGrunt boolean
---@field splitLongSoundIntoPermutations boolean
---@field fitToAdpcmBlocksize boolean

---@class ScenarioWeapon
---@field type integer
---@field name integer
---@field placement ScenarioObjectPlacement
---@field appearancePlayerIndex integer
---@field roundsReserved integer
---@field roundsLoaded integer
---@field flags ScenarioItemFlags

---@class ScenarioUnitProperties
---@field placement ScenarioObjectPlacement
---@field appearancePlayerIndex integer
---@field bodyVitality number
---@field flags ScenarioUnitFlags

---@class HUDInterfaceMeterFlags
---@field useXboxShading boolean
---@field invertInterpolation boolean
---@field moreColorsForHsvInterpolation boolean
---@field interpolateColorAlongHsvSpace boolean
---@field interpolateBetweenMinMaxFlashColorsAsStateChanges boolean
---@field useMinMaxForStateChanges boolean

---@class PhysicsMassPointFlags
---@field metallic boolean

---@class ColorARGB
---@field a integer
---@field r integer
---@field g integer
---@field b integer

---@class ScenarioStructureBSPSurface
---@field vertex0Index integer
---@field vertex1Index integer
---@field vertex2Index integer

---@alias ScenarioSpawnType
---| "all_except_race_and_ctf"
---| "all_except_ctf"
---| "all_games"
---| "ignored_4"
---| "ignored_3"
---| "ignored_2"
---| "ignored_1"
---| "stub"
---| "terminator"
---| "race"
---| "king_of_the_hill"
---| "oddball"
---| "slayer"
---| "ctf"
---| "none"

---@class UnitUnitHUDInterface
---@field hud TagReference

---@alias DeviceIn
---| "delay"
---| "locked"
---| "change_in_position"
---| "position"
---| "change_in_power"
---| "power"
---| "none"

---@class ActorBerserk
---@field meleeAttackDelay number
---@field meleeFudgeFactor number
---@field meleeChargeTime number
---@field meleeLeapRange number[2]
---@field meleeLeapVelocity number
---@field meleeLeapChance number
---@field meleeLeapBallistic number
---@field berserkDamageAmount number
---@field berserkDamageThreshold number
---@field berserkProximity number
---@field suicideSensingDist number
---@field berserkGrenadeChance number

---@class ScenarioSky
---@field sky TagReference

---@class ContrailPointState
---@field duration number[2]
---@field transitionDuration number[2]
---@field physics TagReference
---@field width number
---@field color ColorARGB
---@field scaleFlags ContrailPointStateScaleFlags

---@class HUDGlobalsObjectiveColors
---@field properties HUDInterfaceElementColor
---@field uptimeTicks integer
---@field fadeTicks integer

---@alias AnimationType
---| "replacement"
---| "overlay"
---| "base"

---@class TagReference
---@field tagGroup TagGroup
---@field tagHandle TagHandle

---@alias ShaderEnvironmentType
---| "blended_base_specular"
---| "blended"
---| "normal"

---@class BaseObjectNetwork
---@field validPosition boolean
---@field position VectorXYZ
---@field validForwardAndUp boolean
---@field orientation VectorXYZ[2]
---@field validTransitionalVelocity boolean
---@field transitionalVelocity VectorXYZ
---@field validTimestamp boolean
---@field timestamp integer

---@class WeaponTrigger
---@field flags WeaponTriggerFlags
---@field maximumRateOfFire number[2]
---@field accelerationTime number
---@field decelerationTime number
---@field blurredRateOfFire number
---@field magazine integer
---@field roundsPerShot integer
---@field minimumRoundsLoaded integer
---@field projectilesBetweenContrails integer
---@field predictionType WeaponPredictionType
---@field firingNoise ObjectNoise
---@field error number[2]
---@field errorAccelerationTime number
---@field errorDecelerationTime number
---@field chargingTime number
---@field chargedTime number
---@field overchargedAction WeaponOverchargedAction
---@field chargedIllumination number
---@field spewTime number
---@field chargingEffect TagReference
---@field distributionFunction WeaponDistributionFunction
---@field projectilesPerShot integer
---@field distributionAngle number
---@field minimumError number
---@field errorAngle number[2]
---@field firstPersonOffset VectorXYZ
---@field projectile TagReference
---@field ejectionPortRecoveryTime number
---@field illuminationRecoveryTime number
---@field heatGeneratedPerRound number
---@field ageGeneratedPerRound number
---@field overloadTime number
---@field illuminationRecoveryRate number
---@field ejectionPortRecoveryRate number
---@field firingAccelerationRate number
---@field firingDecelerationRate number
---@field errorAccelerationRate number
---@field errorDecelerationRate number
---@field firingEffects WeaponTriggerFiringEffect[]

---@class Fog
---@field flags FogFlags
---@field maximumDensity number
---@field opaqueDistance number
---@field opaqueDepth number
---@field distanceToWaterPlane number
---@field color ColorRGB
---@field flags1 FogScreenFlags
---@field layerCount integer
---@field distanceGradient number[2]
---@field densityGradient number[2]
---@field startDistanceFromFogPlane number
---@field screenLayersColor integer
---@field rotationMultiplier number
---@field strafingMultiplier number
---@field zoomMultiplier number
---@field mapScale number
---@field map TagReference
---@field animationPeriod number
---@field windVelocity number[2]
---@field windPeriod number[2]
---@field windAccelerationWeight number
---@field windPerpendicularWeight number
---@field backgroundSound TagReference
---@field soundEnvironment TagReference

---@class ObjectFlags
---@field doesNotHaveAnniversaryGeometry boolean
---@field castShadowByDefault boolean
---@field extensionOfParent boolean
---@field notAPathfindingObstacle boolean
---@field brighterThanItShouldBe boolean
---@field transparentSelfOcclusion boolean
---@field doesNotCastShadow boolean

---@class ScenarioAIAnimationReference
---@field animationName string
---@field animationGraph TagReference

---@class ShaderTransparentExtraLayer
---@field shader TagReference

---@class ShaderTransparentMapAnimation
---@field uAnimationSource FunctionOut
---@field uAnimationFunction WaveFunction
---@field uAnimationPeriod number
---@field uAnimationPhase number
---@field uAnimationScale number
---@field vAnimationSource FunctionOut
---@field vAnimationFunction WaveFunction
---@field vAnimationPeriod number
---@field vAnimationPhase number
---@field vAnimationScale number
---@field rotationAnimationSource FunctionOut
---@field rotationAnimationFunction WaveFunction
---@field rotationAnimationPeriod number
---@field rotationAnimationPhase number
---@field rotationAnimationScale number
---@field rotationAnimationCenter VectorXY

---@class EffectParticle
---@field createIn EffectCreateIn
---@field violenceMode EffectViolenceMode
---@field create EffectCreate
---@field location integer
---@field relativeDirection VectorPY
---@field relativeOffset VectorXYZ
---@field relativeDirectionVector VectorXYZ
---@field particleType TagReference
---@field flags EffectParticleFlags
---@field distributionFunction EffectDistributionFunction
---@field count integer[2]
---@field distributionRadius number[2]
---@field velocity number[2]
---@field velocityConeAngle number
---@field angularVelocity number[2]
---@field radius number[2]
---@field tint ColorARGB
---@field aScalesValues EffectParticleScalesValues
---@field bScalesValues EffectParticleScalesValues

---@class UnitHUDInterfaceMotionSensorCenter
---@field anchorOffset VectorXYInt
---@field widthScale number
---@field heightScale number
---@field scalingFlags HUDInterfaceScalingFlags

---@class ShaderTransparentProperties
---@field numericCounterLimit integer
---@field flags ShaderTransparentFlags
---@field firstMapType ShaderFirstMapType
---@field framebufferBlendFunction FramebufferBlendFunction
---@field framebufferFadeMode FramebufferFadeMode
---@field framebufferFadeSource FunctionOut
---@field lensFlares ShaderLensFlares
---@field extraLayers ShaderTransparentExtraLayer[]

---@class UnitCameraTrack
---@field track TagReference

---@class ScenarioStructureBSPDetailObjectData
---@field cells ScenarioStructureBSPGlobalDetailObjectCell[]
---@field instances ScenarioStructureBSPGlobalDetailObject[]
---@field counts ScenarioStructureBSPGlobalDetailObjectCount[]
---@field zReferenceVectors ScenarioStructureBSPGlobalZrEferenceVector[]
---@field bullshit integer

---@class HUDInterfaceStaticElement
---@field position HUDInterfaceElementPosition
---@field interfaceBitmap TagReference
---@field color HUDInterfaceElementColor
---@field sequenceIndex integer
---@field multitextureOverlays HUDInterfaceMultitextureOverlay[]

---@class ScenarioStructureBSPLensFlareMarker
---@field position VectorXYZ
---@field directionIComponent integer
---@field directionJComponent integer
---@field directionKComponent integer
---@field lensFlareIndex integer

---@alias ShaderTransparentGenericStageInputAlpha
---| "constant_blue_1"
---| "constant_blue_0"
---| "scratch_blue_1"
---| "scratch_blue_0"
---| "vertex_blue_1_fade_parallel"
---| "vertex_blue_0_blue_light"
---| "map_blue_3"
---| "map_blue_2"
---| "map_blue_1"
---| "map_blue_0"
---| "constant_alpha_1"
---| "constant_alpha_0"
---| "scratch_alpha_1"
---| "scratch_alpha_0"
---| "vertex_alpha_1_fade_perpendicular"
---| "vertex_alpha_0_fade_none"
---| "map_alpha_3"
---| "map_alpha_2"
---| "map_alpha_1"
---| "map_alpha_0"
---| "negative_one_half"
---| "negative_one"
---| "one_half"
---| "one"
---| "zero"

---@class FogFlags
---@field fogScreenOnly boolean
---@field atmosphereDominant boolean
---@field isWater boolean

---@class ModelCollisionGeometryFlags
---@field onlyDamagedWhileOccupied boolean
---@field onlyDamagedByExplosives boolean
---@field parentNeverTakesBodyDamageForUs boolean
---@field passesAreaDamageToChildren boolean
---@field alwaysShieldsFriendlyDamage boolean
---@field takesBodyDamageForChildren boolean
---@field takesShieldDamageForChildren boolean

---@class ScenarioAIRecordingReference
---@field recordingName string

---@alias DeviceTriggersWhen
---| "destroyed"
---| "touched_by_player"

---@alias ScenarioScriptType
---| "stub"
---| "static"
---| "continuous"
---| "dormant"
---| "startup"

---@class WeaponHUDInterfaceOverlay
---@field position HUDInterfaceElementPosition
---@field color HUDInterfaceElementColor
---@field frameRate integer
---@field sequenceIndex integer
---@field type WeaponHUDInterfaceOverlayType
---@field flags HUDInterfaceOverlayFlashFlags

---@class VectorPY
---@field pitch number
---@field yaw number

---@alias FunctionNameNullable
---| "d"
---| "c"
---| "b"
---| "a"
---| "none"

---@class LightVolumeFlags
---@field moreColors boolean
---@field interpolateColorInHsv boolean

---@alias ScenarioJustification
---| "center"
---| "right"
---| "left"

---@alias FunctionBoundsMode
---| "scale_to_fit"
---| "clip_and_normalize"
---| "clip"

---@class MaterialEffects
---@field effects MaterialEffectsMaterialEffect[]

---@class ParticleSystemTypeFlags
---@field doNotDrawInThirdPerson boolean
---@field doNotDrawInFirstPerson boolean
---@field rotationRateScalesWithEffect boolean
---@field animationRateScalesWithEffect boolean
---@field scaleScalesWithEffect boolean
---@field creationRateScalesWithEffect boolean
---@field minimumCountScalesWithEffect boolean
---@field initialCountScalesWithEffect boolean
---@field tintByEffectColor boolean
---@field disabled boolean
---@field rotationalSpritesAnimateSideways boolean
---@field particlesDieOnGround boolean
---@field particlesDieInAir boolean
---@field particlesDieInWater boolean
---@field forwardBackward1 boolean
---@field particleStatesLoop boolean
---@field forwardBackward boolean
---@field typeStatesLoop boolean

---@alias LensFlareRotationFunction
---| "translation"
---| "rotation_translation"
---| "rotation_b"
---| "rotation_a"
---| "none"

---@class WeaponHUDInterfaceCrosshairTypeFlags
---@field flashWhenFiringWithDepletedBattery boolean
---@field secondaryTriggerReady boolean
---@field primaryTriggerReady boolean
---@field lowSecondaryAmmoAndNoneLeftToReload boolean
---@field flashWhenFiringSecondaryTriggerWithNoAmmo boolean
---@field flashSecondaryReload boolean
---@field flashSecondaryTotalAmmo boolean
---@field shouldReloadSecondaryTrigger boolean
---@field lowAmmoAndNoneLeftToReload boolean
---@field flashWhenThrowingAndNoGrenade boolean
---@field flashWhenFiringAndNoAmmo boolean
---@field reloadOverheat boolean
---@field flashBattery boolean
---@field flashTotalAmmo boolean
---@field flashHeat boolean
---@field shouldReload boolean
---@field charge boolean
---@field zoomOverlay boolean
---@field aim boolean

---@alias ProjectileDetonationTimerStarts
---| "when_at_rest"
---| "after_first_bounce"
---| "immediately"

---@class ScenarioActorStartingLocation
---@field position VectorXYZ
---@field facing number
---@field clusterIndex integer
---@field sequenceId integer
---@field flags ScenarioActorStartingLocationFlags
---@field returnState ScenarioReturnState
---@field initialState ScenarioReturnState
---@field actorType integer
---@field commandList integer

---@alias AnimationFunction
---| "d_out"
---| "c_out"
---| "b_out"
---| "a_out"

---@alias FontEncodingType
---| "extended"
---| "ucs_2"

---@alias AnimationFunctionControls
---| "scale"
---| "frame"

---@alias UICanvas
---| "_1708_x960"
---| "_1280_x960"
---| "_854_x480"
---| "_640_x480"

---@class VectorXYZ
---@field x number
---@field y number
---@field z number

---@class Dialogue
---@field idleNoncombat TagReference
---@field idleCombat TagReference
---@field idleFlee TagReference
---@field painBodyMinor TagReference
---@field painBodyMajor TagReference
---@field painShield TagReference
---@field painFalling TagReference
---@field screamFear TagReference
---@field screamPain TagReference
---@field maimedLimb TagReference
---@field maimedHead TagReference
---@field deathQuiet TagReference
---@field deathViolent TagReference
---@field deathFalling TagReference
---@field deathAgonizing TagReference
---@field deathInstant TagReference
---@field deathFlying TagReference
---@field damagedFriend TagReference
---@field damagedFriendPlayer TagReference
---@field damagedEnemy TagReference
---@field damagedEnemyCm TagReference
---@field hurtFriend TagReference
---@field hurtFriendRe TagReference
---@field hurtFriendPlayer TagReference
---@field hurtEnemy TagReference
---@field hurtEnemyRe TagReference
---@field hurtEnemyCm TagReference
---@field hurtEnemyBullet TagReference
---@field hurtEnemyNeedler TagReference
---@field hurtEnemyPlasma TagReference
---@field hurtEnemySniper TagReference
---@field hurtEnemyGrenade TagReference
---@field hurtEnemyExplosion TagReference
---@field hurtEnemyMelee TagReference
---@field hurtEnemyFlame TagReference
---@field hurtEnemyShotgun TagReference
---@field hurtEnemyVehicle TagReference
---@field hurtEnemyMountedweapon TagReference
---@field killedFriend TagReference
---@field killedFriendCm TagReference
---@field killedFriendPlayer TagReference
---@field killedFriendPlayerCm TagReference
---@field killedEnemy TagReference
---@field killedEnemyCm TagReference
---@field killedEnemyPlayer TagReference
---@field killedEnemyPlayerCm TagReference
---@field killedEnemyCovenant TagReference
---@field killedEnemyCovenantCm TagReference
---@field killedEnemyFloodcombat TagReference
---@field killedEnemyFloodcombatCm TagReference
---@field killedEnemyFloodcarrier TagReference
---@field killedEnemyFloodcarrierCm TagReference
---@field killedEnemySentinel TagReference
---@field killedEnemySentinelCm TagReference
---@field killedEnemyBullet TagReference
---@field killedEnemyNeedler TagReference
---@field killedEnemyPlasma TagReference
---@field killedEnemySniper TagReference
---@field killedEnemyGrenade TagReference
---@field killedEnemyExplosion TagReference
---@field killedEnemyMelee TagReference
---@field killedEnemyFlame TagReference
---@field killedEnemyShotgun TagReference
---@field killedEnemyVehicle TagReference
---@field killedEnemyMountedweapon TagReference
---@field killingSpree TagReference
---@field playerKillCm TagReference
---@field playerKillBulletCm TagReference
---@field playerKillNeedlerCm TagReference
---@field playerKillPlasmaCm TagReference
---@field playerKillSniperCm TagReference
---@field anyoneKillGrenadeCm TagReference
---@field playerKillExplosionCm TagReference
---@field playerKillMeleeCm TagReference
---@field playerKillFlameCm TagReference
---@field playerKillShotgunCm TagReference
---@field playerKillVehicleCm TagReference
---@field playerKillMountedweaponCm TagReference
---@field playerKilllingSpreeCm TagReference
---@field friendDied TagReference
---@field friendPlayerDied TagReference
---@field friendKilledByFriend TagReference
---@field friendKilledByFriendlyPlayer TagReference
---@field friendKilledByEnemy TagReference
---@field friendKilledByEnemyPlayer TagReference
---@field friendKilledByCovenant TagReference
---@field friendKilledByFlood TagReference
---@field friendKilledBySentinel TagReference
---@field friendBetrayed TagReference
---@field newCombatAlone TagReference
---@field newEnemyRecentCombat TagReference
---@field oldEnemySighted TagReference
---@field unexpectedEnemy TagReference
---@field deadFriendFound TagReference
---@field allianceBroken TagReference
---@field allianceReformed TagReference
---@field grenadeThrowing TagReference
---@field grenadeSighted TagReference
---@field grenadeStartle TagReference
---@field grenadeDangerEnemy TagReference
---@field grenadeDangerSelf TagReference
---@field grenadeDangerFriend TagReference
---@field newCombatGroupRe TagReference
---@field newCombatNearbyRe TagReference
---@field alertFriend TagReference
---@field alertFriendRe TagReference
---@field alertLostContact TagReference
---@field alertLostContactRe TagReference
---@field blocked TagReference
---@field blockedRe TagReference
---@field searchStart TagReference
---@field searchQuery TagReference
---@field searchQueryRe TagReference
---@field searchReport TagReference
---@field searchAbandon TagReference
---@field searchGroupAbandon TagReference
---@field groupUncover TagReference
---@field groupUncoverRe TagReference
---@field advance TagReference
---@field advanceRe TagReference
---@field retreat TagReference
---@field retreatRe TagReference
---@field cover TagReference
---@field sightedFriendPlayer TagReference
---@field shooting TagReference
---@field shootingVehicle TagReference
---@field shootingBerserk TagReference
---@field shootingGroup TagReference
---@field shootingTraitor TagReference
---@field taunt TagReference
---@field tauntRe TagReference
---@field flee TagReference
---@field fleeRe TagReference
---@field fleeLeaderDied TagReference
---@field attemptedFlee TagReference
---@field attemptedFleeRe TagReference
---@field lostContact TagReference
---@field hidingFinished TagReference
---@field vehicleEntry TagReference
---@field vehicleExit TagReference
---@field vehicleWoohoo TagReference
---@field vehicleScared TagReference
---@field vehicleCollision TagReference
---@field partiallySighted TagReference
---@field nothingThere TagReference
---@field pleading TagReference
---@field surprise TagReference
---@field berserk TagReference
---@field meleeAttack TagReference
---@field dive TagReference
---@field uncoverExclamation TagReference
---@field leapAttack TagReference
---@field resurrection TagReference
---@field celebration TagReference
---@field checkBodyEnemy TagReference
---@field checkBodyFriend TagReference
---@field shootingDeadEnemy TagReference
---@field shootingDeadEnemyPlayer TagReference
---@field alone TagReference
---@field unscathed TagReference
---@field seriouslyWounded TagReference
---@field seriouslyWoundedRe TagReference
---@field massacre TagReference
---@field massacreRe TagReference
---@field rout TagReference
---@field routRe TagReference

---@class GlobalsLookFunction
---@field scale number

---@alias MeterInterpolateColors
---| "through_random_noise"
---| "faster_near_full"
---| "faster_near_empty"
---| "linearly"

---@class ScenarioAIConversationFlags
---@field playerMustBeLooking boolean
---@field keepTryingToPlay boolean
---@field stopOtherActions boolean
---@field playerMustBeVisible boolean
---@field stopIfAlertedToEnemy boolean
---@field stopIfVisibleEnemy boolean
---@field stopIfDamaged boolean
---@field stopIfDeath boolean

---@class ScenarioStructureBSPClusterPortalIndex
---@field portal integer

---@class UnitSeat
---@field flags UnitSeatFlags
---@field label string
---@field markerName string
---@field accelerationScale VectorXYZ
---@field yawRate number
---@field pitchRate number
---@field cameraMarkerName string
---@field cameraSubmergedMarkerName string
---@field pitchAutoLevel number
---@field pitchRange number[2]
---@field cameraTracks UnitCameraTrack[]
---@field hudInterface UnitUnitHUDInterface[]
---@field hudTextMessageIndex integer
---@field yawMinimum number
---@field yawMaximum number
---@field builtInGunner TagReference

---@alias HUDInterfaceAnchor
---| "right_center"
---| "left_center"
---| "bottom_center"
---| "top_center"
---| "center"
---| "bottom_right"
---| "bottom_left"
---| "top_right"
---| "top_left"

---@alias WeaponPredictionType
---| "instant"
---| "continuous"
---| "none"

---@class SoundLoopingDetailFlags
---@field dontPlayWithoutAlternate boolean
---@field dontPlayWithAlternate boolean

---@alias ScenarioChangeAttackingDefendingStateWhen
---| "all_dead"
---| "all_but_one_dead"
---| "_75_dead"
---| "_50_dead"
---| "_25_dead"
---| "anybody_dead"
---| "_25_strength"
---| "_50_strength"
---| "_75_strength"
---| "never"

---@alias HUDInterfaceCanvasSize
---| "_960_p"
---| "_480_p"

---@class LightningMarkerFlag
---@field notConnectedToNextMarker boolean

---@alias ScenarioScriptValueType
---| "scenery_name"
---| "device_name"
---| "weapon_name"
---| "vehicle_name"
---| "unit_name"
---| "object_name"
---| "scenery"
---| "device"
---| "weapon"
---| "vehicle"
---| "unit"
---| "object"
---| "hud_corner"
---| "actor_type"
---| "ai_default_state"
---| "team"
---| "game_difficulty"
---| "object_definition"
---| "damage_effect"
---| "actor_variant"
---| "animation_graph"
---| "looping_sound"
---| "damage"
---| "effect"
---| "sound"
---| "object_list"
---| "hud_message"
---| "navpoint"
---| "conversation"
---| "starting_profile"
---| "ai_command_list"
---| "ai"
---| "device_group"
---| "cutscene_recording"
---| "cutscene_title"
---| "cutscene_camera_point"
---| "cutscene_flag"
---| "trigger_volume"
---| "script"
---| "string"
---| "long"
---| "short"
---| "real"
---| "boolean"
---| "void"
---| "passthrough"
---| "function_name"
---| "special_form"
---| "unparsed"

---@alias HUDInterfaceDestinationType
---| "fade_0_1"
---| "vertical_offset"
---| "horizontal_offset"
---| "tint_0_1"

---@alias WeaponSecondaryTriggerMode
---| "loads_multiple_primary_ammunition"
---| "loads_alterate_ammunition"
---| "inhibits_primary"
---| "slaved_to_primary"
---| "normal"

---@alias DecalLayer
---| "water"
---| "alpha_tested"
---| "light"
---| "secondary"
---| "primary"

---@alias ShaderTransparentGlassReflectionType
---| "dynamic_mirror"
---| "flat_cube_map"
---| "bumped_cube_map"

