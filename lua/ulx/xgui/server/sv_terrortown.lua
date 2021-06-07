--painful file to create will all ttt cvars

local function init()
    if GetConVarString("gamemode") == "terrortown" then --Only execute the following code if it's a terrortown gamemode
        --Preparation and post-round
        ULib.replicatedWritableCvar("ttt_preptime_seconds", "rep_ttt_preptime_seconds", GetConVarNumber("ttt_preptime_seconds"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_firstpreptime", "rep_ttt_firstpreptime", GetConVarNumber("ttt_firstpreptime"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_posttime_seconds", "rep_ttt_posttime_seconds", GetConVarNumber("ttt_posttime_seconds"), false, false, "xgui_gmsettings")

        --Round length
        ULib.replicatedWritableCvar("ttt_haste", "rep_ttt_haste", GetConVarNumber("ttt_haste"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_haste_starting_minutes", "rep_ttt_haste_starting_minutes", GetConVarNumber("ttt_haste_starting_minutes"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_haste_minutes_per_death", "rep_ttt_haste_minutes_per_death", GetConVarNumber("ttt_haste_minutes_per_death"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_roundtime_minutes", "rep_ttt_roundtime_minutes", GetConVarNumber("ttt_roundtime_minutes"), false, false, "xgui_gmsettings")

        --map switching and voting
        ULib.replicatedWritableCvar("ttt_round_limit", "rep_ttt_round_limit", GetConVarNumber("ttt_round_limit"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_time_limit_minutes", "rep_ttt_time_limit_minutes", GetConVarNumber("ttt_time_limit_minutes"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_always_use_mapcycle", "rep_ttt_always_use_mapcycle", GetConVarNumber("ttt_always_use_mapcycle"), false, false, "xgui_gmsettings")

        --traitor and detective counts
        ULib.replicatedWritableCvar("ttt_traitor_pct", "rep_ttt_traitor_pct", GetConVarNumber("ttt_traitor_pct"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_traitor_max", "rep_ttt_traitor_max", GetConVarNumber("ttt_traitor_max"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_detective_pct", "rep_ttt_detective_pct", GetConVarNumber("ttt_detective_pct"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_detective_max", "rep_ttt_detective_max", GetConVarNumber("ttt_detective_max"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_detective_min_players", "rep_ttt_detective_min_players", GetConVarNumber("ttt_detective_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_detective_karma_min", "rep_ttt_detective_karma_min", GetConVarNumber("ttt_detective_karma_min"), false, false, "xgui_gmsettings")

        --special traitor settings
        ULib.replicatedWritableCvar("ttt_special_traitor_pct", "rep_ttt_special_traitor_pct", GetConVarNumber("ttt_special_traitor_pct"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_special_traitor_chance", "rep_ttt_special_traitor_chance", GetConVarNumber("ttt_special_traitor_chance"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_hypnotist_enabled", "rep_ttt_hypnotist_enabled", GetConVarNumber("ttt_hypnotist_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_hypnotist_spawn_weight", "rep_ttt_hypnotist_spawn_weight", GetConVarNumber("ttt_hypnotist_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_hypnotist_min_players", "rep_ttt_hypnotist_min_players", GetConVarNumber("ttt_hypnotist_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_impersonator_enabled", "rep_ttt_impersonator_enabled", GetConVarNumber("ttt_impersonator_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_impersonator_spawn_weight", "rep_ttt_impersonator_spawn_weight", GetConVarNumber("ttt_impersonator_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_impersonator_min_players", "rep_ttt_impersonator_min_players", GetConVarNumber("ttt_impersonator_min_players"), false, false, "xgui_gmsettings")

        --special innocent settings
        ULib.replicatedWritableCvar("ttt_special_innocent_pct", "rep_ttt_special_innocent_pct", GetConVarNumber("ttt_special_innocent_pct"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_special_innocent_chance", "rep_ttt_special_innocent_chance", GetConVarNumber("ttt_special_innocent_chance"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_glitch_enabled", "rep_ttt_glitch_enabled", GetConVarNumber("ttt_glitch_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_glitch_spawn_weight", "rep_ttt_glitch_spawn_weight", GetConVarNumber("ttt_glitch_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_glitch_min_players", "rep_ttt_glitch_min_players", GetConVarNumber("ttt_glitch_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_enabled", "rep_ttt_phantom_enabled", GetConVarNumber("ttt_phantom_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_spawn_weight", "rep_ttt_phantom_spawn_weight", GetConVarNumber("ttt_phantom_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_min_players", "rep_ttt_phantom_min_players", GetConVarNumber("ttt_phantom_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_revenger_enabled", "rep_ttt_revenger_enabled", GetConVarNumber("ttt_revenger_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_revenger_spawn_weight", "rep_ttt_revenger_spawn_weight", GetConVarNumber("ttt_revenger_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_revenger_min_players", "rep_ttt_revenger_min_players", GetConVarNumber("ttt_revenger_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_deputy_enabled", "rep_ttt_deputy_enabled", GetConVarNumber("ttt_deputy_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_deputy_spawn_weight", "rep_ttt_deputy_spawn_weight", GetConVarNumber("ttt_deputy_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_deputy_min_players", "rep_ttt_deputy_min_players", GetConVarNumber("ttt_deputy_min_players"), false, false, "xgui_gmsettings")

        --independent role settings
        ULib.replicatedWritableCvar("ttt_independent_chance", "rep_ttt_independent_chance", GetConVarNumber("ttt_independent_chance"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_jester_enabled", "rep_ttt_jester_enabled", GetConVarNumber("ttt_jester_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_jester_spawn_weight", "rep_ttt_jester_spawn_weight", GetConVarNumber("ttt_jester_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_jester_min_players", "rep_ttt_jester_min_players", GetConVarNumber("ttt_jester_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_swapper_enabled", "rep_ttt_swapper_enabled", GetConVarNumber("ttt_swapper_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_swapper_spawn_weight", "rep_ttt_swapper_spawn_weight", GetConVarNumber("ttt_swapper_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_swapper_min_players", "rep_ttt_swapper_min_players", GetConVarNumber("ttt_swapper_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_drunk_enabled", "rep_ttt_drunk_enabled", GetConVarNumber("ttt_drunk_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_drunk_spawn_weight", "rep_ttt_drunk_spawn_weight", GetConVarNumber("ttt_drunk_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_drunk_min_players", "rep_ttt_drunk_min_players", GetConVarNumber("ttt_drunk_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_clown_enabled", "rep_ttt_clown_enabled", GetConVarNumber("ttt_clown_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_clown_spawn_weight", "rep_ttt_clown_spawn_weight", GetConVarNumber("ttt_clown_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_clown_min_players", "rep_ttt_clown_min_players", GetConVarNumber("ttt_clown_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_beggar_enabled", "rep_ttt_beggar_enabled", GetConVarNumber("ttt_beggar_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_beggar_spawn_weight", "rep_ttt_beggar_spawn_weight", GetConVarNumber("ttt_beggar_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_beggar_min_players", "rep_ttt_beggar_min_players", GetConVarNumber("ttt_beggar_min_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_old_man_enabled", "rep_ttt_old_man_enabled", GetConVarNumber("ttt_old_man_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_old_man_spawn_weight", "rep_ttt_old_man_spawn_weight", GetConVarNumber("ttt_old_man_spawn_weight"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_old_man_min_players", "rep_ttt_old_man_min_players", GetConVarNumber("ttt_old_man_min_players"), false, false, "xgui_gmsettings")

        --phantom properties
        ULib.replicatedWritableCvar("ttt_phantom_respawn_health", "rep_ttt_phantom_respawn_health", GetConVarNumber("ttt_phantom_respawn_health"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_weaker_each_respawn", "rep_ttt_phantom_weaker_each_respawn", GetConVarNumber("ttt_phantom_weaker_each_respawn"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_smoke", "rep_ttt_phantom_killer_smoke", GetConVarNumber("ttt_phantom_killer_smoke"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_footstep_time", "rep_ttt_phantom_killer_footstep_time", GetConVarNumber("ttt_phantom_killer_footstep_time"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_announce_death", "rep_ttt_phantom_announce_death", GetConVarNumber("ttt_phantom_announce_death"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt", "rep_ttt_phantom_killer_haunt", GetConVarNumber("ttt_phantom_killer_haunt"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_power_max", "rep_ttt_phantom_killer_haunt_power_max", GetConVarNumber("ttt_phantom_killer_haunt_power_max"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_power_rate", "rep_ttt_phantom_killer_haunt_power_rate", GetConVarNumber("ttt_phantom_killer_haunt_power_rate"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_move_cost", "rep_ttt_phantom_killer_haunt_move_cost", GetConVarNumber("ttt_phantom_killer_haunt_move_cost"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_attack_cost", "rep_ttt_phantom_killer_haunt_attack_cost", GetConVarNumber("ttt_phantom_killer_haunt_attack_cost"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_jump_cost", "rep_ttt_phantom_killer_haunt_jump_cost", GetConVarNumber("ttt_phantom_killer_haunt_jump_cost"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_phantom_killer_haunt_drop_cost", "rep_ttt_phantom_killer_haunt_drop_cost", GetConVarNumber("ttt_phantom_killer_haunt_drop_cost"), false, false, "xgui_gmsettings")

        --custom role properties
        ULib.replicatedWritableCvar("ttt_detective_search_only", "rep_ttt_detective_search_only", GetConVarNumber("ttt_detective_search_only"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_detective_starting_health", "rep_ttt_detective_starting_health", GetConVarNumber("ttt_detective_starting_health"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_swapper_killer_health", "rep_ttt_swapper_killer_health", GetConVarNumber("ttt_swapper_killer_health"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_drunk_sober_time", "rep_ttt_drunk_sober_time", GetConVarNumber("ttt_drunk_sober_time"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_drunk_innocent_chance", "rep_ttt_drunk_innocent_chance", GetConVarNumber("ttt_drunk_innocent_chance"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_clown_damage_bonus", "rep_ttt_clown_damage_bonus", GetConVarNumber("ttt_clown_damage_bonus"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_deputy_damage_penalty", "rep_ttt_deputy_damage_penalty", GetConVarNumber("ttt_deputy_damage_penalty"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_impersonator_damage_penalty", "rep_ttt_impersonator_damage_penalty", GetConVarNumber("ttt_impersonator_damage_penalty"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_reveal_beggar_change", "rep_ttt_reveal_beggar_change", GetConVarNumber("ttt_reveal_beggar_change"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_single_deputy_impersonator", "rep_ttt_single_deputy_impersonator", GetConVarNumber("ttt_single_deputy_impersonator"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_old_man_starting_health", "rep_ttt_old_man_starting_health", GetConVarNumber("ttt_old_man_starting_health"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_jesters_trigger_traitor_testers", "rep_ttt_jesters_trigger_traitor_testers", GetConVarNumber("ttt_jesters_trigger_traitor_testers"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_independents_trigger_traitor_testers", "rep_ttt_independents_trigger_traitor_testers", GetConVarNumber("ttt_independents_trigger_traitor_testers"), false, false, "xgui_gmsettings")

        -- Shop configs
        ULib.replicatedWritableCvar("ttt_shop_random_percent", "rep_ttt_shop_random_percent", GetConVarNumber("ttt_shop_random_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_tra_percent", "rep_ttt_shop_random_tra_percent", GetConVarNumber("ttt_shop_random_tra_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_det_percent", "rep_ttt_shop_random_det_percent", GetConVarNumber("ttt_shop_random_det_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_hyp_percent", "rep_ttt_shop_random_hyp_percent", GetConVarNumber("ttt_shop_random_hyp_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_dep_percent", "rep_ttt_shop_random_dep_percent", GetConVarNumber("ttt_shop_random_dep_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_imp_percent", "rep_ttt_shop_random_imp_percent", GetConVarNumber("ttt_shop_random_imp_percent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_tra_enabled", "rep_ttt_shop_random_tra_enabled", GetConVarNumber("ttt_shop_random_tra_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_det_enabled", "rep_ttt_shop_random_det_enabled", GetConVarNumber("ttt_shop_random_det_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_hyp_enabled", "rep_ttt_shop_random_hyp_enabled", GetConVarNumber("ttt_shop_random_hyp_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_dep_enabled", "rep_ttt_shop_random_dep_enabled", GetConVarNumber("ttt_shop_random_dep_enabled"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_shop_random_imp_enabled", "rep_ttt_shop_random_imp_enabled", GetConVarNumber("ttt_shop_random_imp_enabled"), false, false, "xgui_gmsettings")

        --dna
        ULib.replicatedWritableCvar("ttt_killer_dna_range", "rep_ttt_killer_dna_range", GetConVarNumber("ttt_killer_dna_range"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_killer_dna_basetime", "rep_ttt_killer_dna_basetime", GetConVarNumber("ttt_killer_dna_basetime"), false, false, "xgui_gmsettings")

        --voicechat battery
        ULib.replicatedWritableCvar("ttt_voice_drain", "rep_ttt_voice_drain", GetConVarNumber("ttt_voice_drain"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_voice_drain_normal", "rep_ttt_voice_drain_normal", GetConVarNumber("ttt_voice_drain_normal"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_voice_drain_admin", "rep_ttt_voice_drain_admin", GetConVarNumber("ttt_voice_drain_admin"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_voice_drain_recharge", "rep_ttt_voice_drain_recharge", GetConVarNumber("ttt_voice_drain_recharge"), false, false, "xgui_gmsettings")

        --other gameplay settings
        ULib.replicatedWritableCvar("ttt_minimum_players", "rep_ttt_minimum_players", GetConVarNumber("ttt_minimum_players"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_postround_dm", "rep_ttt_postround_dm", GetConVarNumber("ttt_postround_dm"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_dyingshot", "rep_ttt_dyingshot", GetConVarNumber("ttt_dyingshot"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_no_nade_throw_during_prep", "rep_ttt_no_nade_throw_during_prep", GetConVarNumber("ttt_no_nade_throw_during_prep"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_weapon_carrying", "rep_ttt_weapon_carrying", GetConVarNumber("ttt_weapon_carrying"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_weapon_carrying_range", "rep_ttt_weapon_carrying_range", GetConVarNumber("ttt_weapon_carrying_range"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_teleport_telefrags", "rep_ttt_teleport_telefrags", GetConVarNumber("ttt_teleport_telefrags"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_ragdoll_pinning", "rep_ttt_ragdoll_pinning", GetConVarNumber("ttt_ragdoll_pinning"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_ragdoll_pinning_innocents", "rep_ttt_ragdoll_pinning_innocents", GetConVarNumber("ttt_ragdoll_pinning_innocents"), false, false, "xgui_gmsettings")

        --karma
        ULib.replicatedWritableCvar("ttt_karma", "rep_ttt_karma", GetConVarNumber("ttt_karma"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_strict", "rep_ttt_karma_strict", GetConVarNumber("ttt_karma_strict"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_starting", "rep_ttt_karma_starting", GetConVarNumber("ttt_karma_starting"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_max", "rep_ttt_karma_max", GetConVarNumber("ttt_karma_max"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_ratio", "rep_ttt_karma_ratio", GetConVarNumber("ttt_karma_ratio"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_kill_penalty", "rep_ttt_karma_kill_penalty", GetConVarNumber("ttt_karma_kill_penalty"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_round_increment", "rep_ttt_karma_round_increment", GetConVarNumber("ttt_karma_round_increment"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_clean_bonus", "rep_ttt_karma_clean_bonus", GetConVarNumber("ttt_karma_clean_bonus"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_traitordmg_ratio", "rep_ttt_karma_traitordmg_ratio", GetConVarNumber("ttt_karma_traitordmg_ratio"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_traitorkill_bonus", "rep_ttt_karma_traitorkill_bonus", GetConVarNumber("ttt_karma_traitorkill_bonus"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_jesterdmg_ratio", "rep_ttt_karma_jesterdmg_ratio", GetConVarNumber("ttt_karma_jesterdmg_ratio"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_jesterkill_penalty", "rep_ttt_karma_jesterkill_penalty", GetConVarNumber("ttt_karma_jesterkill_penalty"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_low_autokick", "rep_ttt_karma_low_autokick", GetConVarNumber("ttt_karma_low_autokick"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_low_amount", "rep_ttt_karma_low_amount", GetConVarNumber("ttt_karma_low_amount"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_low_ban", "rep_ttt_karma_low_ban", GetConVarNumber("ttt_karma_low_ban"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_low_ban_minutes", "rep_ttt_karma_low_ban_minutes", GetConVarNumber("ttt_karma_low_ban_minutes"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_persist", "rep_ttt_karma_persist", GetConVarNumber("ttt_karma_persist"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_debugspam", "rep_ttt_karma_debugspam", GetConVarNumber("ttt_karma_debugspam"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_karma_clean_half", "rep_ttt_karma_clean_half", GetConVarNumber("ttt_karma_clean_half"), false, false, "xgui_gmsettings")

        --map related
        ULib.replicatedWritableCvar("ttt_use_weapon_spawn_scripts", "rep_ttt_use_weapon_spawn_scripts", GetConVarNumber("ttt_use_weapon_spawn_scripts"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_weapon_spawn_count", "rep_ttt_weapon_spawn_count", GetConVarNumber("ttt_weapon_spawn_count"), false, false, "xgui_gmsettings")

        --traitor credits
        ULib.replicatedWritableCvar("ttt_credits_starting", "rep_ttt_credits_starting", GetConVarNumber("ttt_credits_starting"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_hyp_credits_starting", "rep_ttt_hyp_credits_starting", GetConVarNumber("ttt_hyp_credits_starting"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_credits_alonebonus", "rep_ttt_credits_alonebonus", GetConVarNumber("ttt_credits_alonebonus"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_credits_award_pct", "rep_ttt_credits_award_pct", GetConVarNumber("ttt_credits_award_pct"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_credits_award_size", "rep_ttt_credits_award_size", GetConVarNumber("ttt_credits_award_size"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_credits_award_repeat", "rep_ttt_credits_award_repeat", GetConVarNumber("ttt_credits_award_repeat"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_credits_detectivekill", "rep_ttt_credits_detectivekill", GetConVarNumber("ttt_credits_detectivekill"), false, false, "xgui_gmsettings")

        --detective credits
        ULib.replicatedWritableCvar("ttt_det_credits_starting", "rep_ttt_det_credits_starting", GetConVarNumber("ttt_det_credits_starting"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_det_credits_traitorkill", "rep_ttt_det_credits_traitorkill", GetConVarNumber("ttt_det_credits_traitorkill"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_det_credits_traitordead", "rep_ttt_det_credits_traitordead", GetConVarNumber("ttt_det_credits_traitordead"), false, false, "xgui_gmsettings")

        --sprint
        ULib.replicatedWritableCvar("ttt_sprint_bonus_rel", "rep_ttt_sprint_bonus_rel", GetConVarNumber("ttt_sprint_bonus_rel"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_sprint_regenerate_innocent", "rep_ttt_sprint_regenerate_innocent", GetConVarNumber("ttt_sprint_regenerate_innocent"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_sprint_regenerate_traitor", "rep_ttt_sprint_regenerate_traitor", GetConVarNumber("ttt_sprint_regenerate_traitor"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_sprint_consume", "rep_ttt_sprint_consume", GetConVarNumber("ttt_sprint_consume"), false, false, "xgui_gmsettings")

        --bem
        ULib.replicatedWritableCvar("ttt_bem_allow_change", "rep_ttt_bem_allow_change", GetConVarNumber("ttt_bem_allow_change"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_bem_sv_cols", "rep_ttt_bem_sv_cols", GetConVarNumber("ttt_bem_sv_cols"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_bem_sv_rows", "rep_ttt_bem_sv_rows", GetConVarNumber("ttt_bem_sv_rows"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_bem_sv_size", "rep_ttt_bem_sv_size", GetConVarNumber("ttt_bem_sv_size"), false, false, "xgui_gmsettings")

        --prop possession
        ULib.replicatedWritableCvar("ttt_spec_prop_control", "rep_ttt_spec_prop_control", GetConVarNumber("ttt_spec_prop_control"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spec_prop_base", "rep_ttt_spec_prop_base", GetConVarNumber("ttt_spec_prop_base"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spec_prop_maxpenalty", "rep_ttt_spec_prop_maxpenalty", GetConVarNumber("ttt_spec_prop_maxpenalty"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spec_prop_maxbonus", "rep_ttt_spec_prop_maxbonus", GetConVarNumber("ttt_spec_prop_maxbonus"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spec_prop_force", "rep_ttt_spec_prop_force", GetConVarNumber("ttt_spec_prop_force"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spec_prop_rechargetime", "rep_ttt_spec_prop_rechargetime", GetConVarNumber("ttt_spec_prop_rechargetime"), false, false, "xgui_gmsettings")

        --admin related
        ULib.replicatedWritableCvar("ttt_idle_limit", "rep_ttt_idle_limit", GetConVarNumber("ttt_idle_limit"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_namechange_kick", "rep_ttt_namechange_kick", GetConVarNumber("ttt_namechange_kick"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_namechange_bantime", "rep_ttt_namechange_bantime", GetConVarNumber("ttt_namechange_bantime"), false, false, "xgui_gmsettings")

        --misc
        ULib.replicatedWritableCvar("ttt_detective_hats", "rep_ttt_detective_hats", GetConVarNumber("ttt_detective_hats"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_playercolor_mode", "rep_ttt_playercolor_mode", GetConVarNumber("ttt_playercolor_mode"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_ragdoll_collide", "rep_ttt_ragdoll_collide", GetConVarNumber("ttt_ragdoll_collide"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_bots_are_spectators", "rep_ttt_bots_are_spectators", GetConVarNumber("ttt_bots_are_spectators"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_debug_preventwin", "rep_ttt_debug_preventwin", GetConVarNumber("ttt_debug_preventwin"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_debug_logkills", "rep_ttt_debug_logkills", GetConVarNumber("ttt_debug_logkills"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_debug_logroles", "rep_ttt_debug_logroles", GetConVarNumber("ttt_debug_logroles"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_locational_voice", "rep_ttt_locational_voice", GetConVarNumber("ttt_locational_voice"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_allow_discomb_jump", "rep_ttt_allow_discomb_jump", GetConVarNumber("ttt_allow_discomb_jump"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_spawn_wave_interval", "rep_ttt_spawn_wave_interval", GetConVarNumber("ttt_spawn_wave_interval"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_crowbar_unlocks", "rep_ttt_crowbar_unlocks", GetConVarNumber("ttt_crowbar_unlocks"), false, false, "xgui_gmsettings")
        ULib.replicatedWritableCvar("ttt_crowbar_pushforce", "rep_ttt_crowbar_pushforce", GetConVarNumber("ttt_crowbar_pushforce"), false, false, "xgui_gmsettings")
    end
end

xgui.addSVModule("terrortown", init)