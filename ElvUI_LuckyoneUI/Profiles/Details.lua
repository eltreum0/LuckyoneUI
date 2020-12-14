local L1UI, E, L, V, P, G = unpack(select(2, ...))

local twipe = table.wipe

-- Details profile setup
function L1UI:GetDetailsProfile()

	local key = "Luckyone"

	if _detalhes_global then twipe(_detalhes_global) end

	_detalhes_global = {
		["npcid_pool"] = {
		},
		["death_recap"] = {
			["enabled"] = true,
			["show_segments"] = false,
			["show_life_percent"] = false,
			["relevance_time"] = 7,
		},
		["spell_pool"] = {
		},
		["encounter_spell_pool"] = {
		},
		["immersion_pets_on_solo_play"] = false,
		["npcid_ignored"] = {
		},
		["report_where"] = "PARTY",
		["auto_open_news_window"] = true,
		["got_first_run"] = true,
		["report_pos"] = {
			1, -- [1]
			2.0001220703125, -- [2]
		},
		["latest_report_table"] = {
			{
				1, -- [1]
				4, -- [2]
				3, -- [3]
				5, -- [4]
				"PARTY", -- [5]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
				5, -- [4]
				"SAY", -- [5]
			}, -- [2]
		},
		["exp90temp"] = {
			["delete_damage_TCOB"] = true,
		},
		["always_use_profile"] = true,
		["immersion_special_units"] = true,
		["boss_mods_timers"] = {
			["encounter_timers_bw"] = {
			},
			["encounter_timers_dbm"] = {
			},
		},
		["spell_school_cache"] = {
		},
		["deathlog_healingdone_min"] = 1,
		["__profiles"] = {
			[key] = {
				["show_arena_role_icon"] = false,
				["capture_real"] = {
					["heal"] = true,
					["spellcast"] = true,
					["miscdata"] = true,
					["aura"] = true,
					["energy"] = true,
					["damage"] = true,
				},
				["row_fade_in"] = {
					"in", -- [1]
					0.2, -- [2]
				},
				["streamer_config"] = {
					["faster_updates"] = false,
					["quick_detection"] = false,
					["reset_spec_cache"] = false,
					["no_alerts"] = false,
					["disable_mythic_dungeon"] = false,
					["use_animation_accel"] = true,
				},
				["all_players_are_group"] = false,
				["use_row_animations"] = true,
				["report_heal_links"] = false,
				["remove_realm_from_name"] = true,
				["minimum_overall_combat_time"] = 10,
				["event_tracker"] = {
					["enabled"] = false,
					["font_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["line_height"] = 16,
					["line_color"] = {
						0.1, -- [1]
						0.1, -- [2]
						0.1, -- [3]
						0.3, -- [4]
					},
					["font_shadow"] = "NONE",
					["font_size"] = 10,
					["font_face"] = "Friz Quadrata TT",
					["frame"] = {
						["show_title"] = true,
						["strata"] = "LOW",
						["backdrop_color"] = {
							0.16, -- [1]
							0.16, -- [2]
							0.16, -- [3]
							0.47, -- [4]
						},
						["locked"] = false,
						["height"] = 300,
						["width"] = 250,
					},
					["line_texture"] = "Details Serenity",
					["options_frame"] = {
					},
				},
				["report_to_who"] = "",
				["class_specs_coords"] = {
					[62] = {
						0.251953125, -- [1]
						0.375, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[63] = {
						0.375, -- [1]
						0.5, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[250] = {
						0, -- [1]
						0.125, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[251] = {
						0.125, -- [1]
						0.25, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[252] = {
						0.25, -- [1]
						0.375, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[253] = {
						0.875, -- [1]
						1, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[254] = {
						0, -- [1]
						0.125, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[255] = {
						0.125, -- [1]
						0.25, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[66] = {
						0.125, -- [1]
						0.25, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[257] = {
						0.5, -- [1]
						0.625, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[258] = {
						0.6328125, -- [1]
						0.75, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[259] = {
						0.75, -- [1]
						0.875, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[260] = {
						0.875, -- [1]
						1, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[577] = {
						0.25, -- [1]
						0.375, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[262] = {
						0.125, -- [1]
						0.25, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[581] = {
						0.375, -- [1]
						0.5, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[264] = {
						0.375, -- [1]
						0.5, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[265] = {
						0.5, -- [1]
						0.625, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[266] = {
						0.625, -- [1]
						0.75, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[267] = {
						0.75, -- [1]
						0.875, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[268] = {
						0.625, -- [1]
						0.75, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[269] = {
						0.875, -- [1]
						1, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[270] = {
						0.75, -- [1]
						0.875, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[70] = {
						0.251953125, -- [1]
						0.375, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[102] = {
						0.375, -- [1]
						0.5, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[71] = {
						0.875, -- [1]
						1, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[103] = {
						0.5, -- [1]
						0.625, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[72] = {
						0, -- [1]
						0.125, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[104] = {
						0.625, -- [1]
						0.75, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[73] = {
						0.125, -- [1]
						0.25, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[64] = {
						0.5, -- [1]
						0.625, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[105] = {
						0.75, -- [1]
						0.875, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[65] = {
						0, -- [1]
						0.125, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[256] = {
						0.375, -- [1]
						0.5, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[261] = {
						0, -- [1]
						0.125, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[263] = {
						0.25, -- [1]
						0.375, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
				},
				["profile_save_pos"] = true,
				["tooltip"] = {
					["header_statusbar"] = {
						0.3, -- [1]
						0.3, -- [2]
						0.3, -- [3]
						0.8, -- [4]
						false, -- [5]
						false, -- [6]
						"WorldState Score", -- [7]
					},
					["fontcolor_right"] = {
						1, -- [1]
						0.7, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["line_height"] = 17,
					["tooltip_max_targets"] = 2,
					["icon_size"] = {
						["W"] = 17,
						["H"] = 17,
					},
					["tooltip_max_pets"] = 2,
					["anchor_relative"] = "top",
					["abbreviation"] = 2,
					["anchored_to"] = 1,
					["show_amount"] = false,
					["header_text_color"] = {
						1, -- [1]
						0.9176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["fontsize"] = 10,
					["background"] = {
						0.196, -- [1]
						0.196, -- [2]
						0.196, -- [3]
						0.8, -- [4]
					},
					["submenu_wallpaper"] = true,
					["fontsize_title"] = 10,
					["fontcolor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["commands"] = {
					},
					["tooltip_max_abilities"] = 6,
					["fontface"] = "Friz Quadrata TT",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_texture"] = "Details BarBorder 3",
					["anchor_offset"] = {
						0, -- [1]
						0, -- [2]
					},
					["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
					["maximize_method"] = 1,
					["border_size"] = 14,
					["fontshadow"] = false,
					["anchor_screen_pos"] = {
						507.7, -- [1]
						-350.5, -- [2]
					},
					["anchor_point"] = "bottom",
					["menus_bg_coords"] = {
						0.309777336120606, -- [1]
						0.924000015258789, -- [2]
						0.213000011444092, -- [3]
						0.279000015258789, -- [4]
					},
					["icon_border_texcoord"] = {
						["R"] = 0.921875,
						["L"] = 0.078125,
						["T"] = 0.078125,
						["B"] = 0.921875,
					},
					["menus_bg_color"] = {
						0.8, -- [1]
						0.8, -- [2]
						0.8, -- [3]
						0.2, -- [4]
					},
				},
				["ps_abbreviation"] = 3,
				["world_combat_is_trash"] = false,
				["update_speed"] = 0.05000000074505806,
				["bookmark_text_size"] = 11,
				["animation_speed_mintravel"] = 0.45,
				["track_item_level"] = true,
				["windows_fade_in"] = {
					"in", -- [1]
					0.2, -- [2]
				},
				["instances_menu_click_to_open"] = false,
				["overall_clear_newchallenge"] = false,
				["current_dps_meter"] = {
					["enabled"] = false,
					["font_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["arena_enabled"] = true,
					["font_shadow"] = "NONE",
					["font_size"] = 18,
					["mythic_dungeon_enabled"] = true,
					["sample_size"] = 5,
					["font_face"] = "Friz Quadrata TT",
					["frame"] = {
						["show_title"] = false,
						["strata"] = "LOW",
						["backdrop_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.2, -- [4]
						},
						["locked"] = false,
						["height"] = 65,
						["width"] = 220,
					},
					["update_interval"] = 0.3,
					["options_frame"] = {
					},
				},
				["data_cleanup_logout"] = false,
				["instances_disable_bar_highlight"] = false,
				["trash_concatenate"] = false,
				["color_by_arena_team"] = true,
				["animation_speed"] = 33,
				["disable_stretch_from_toolbar"] = false,
				["disable_lock_ungroup_buttons"] = true,
				["memory_ram"] = 64,
				["disable_window_groups"] = false,
				["instances_suppress_trash"] = 0,
				["options_window"] = {
					["scale"] = 1,
				},
				["animation_speed_maxtravel"] = 3,
				["time_type_original"] = 2,
				["default_bg_alpha"] = 0.5,
				["font_faces"] = {
					["menus"] = "Expressway",
				},
				["time_type"] = 2,
				["death_tooltip_width"] = 350,
				["animate_scroll"] = false,
				["instances"] = {
					{
						["__pos"] = {
							["normal"] = {
								["y"] = -461.4999465942383,
								["x"] = 649.5015869140625,
								["w"] = 205.0004730224609,
								["h"] = 155.0001068115234,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["hide_in_combat_type"] = 1,
						["clickthrough_window"] = false,
						["menu_anchor"] = {
							16, -- [1]
							0, -- [2]
							["side"] = 2,
						},
						["bg_r"] = 0.09411764705882353,
						["hide_out_of_combat"] = false,
						["color_buttons"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
						["skin_custom"] = "",
						["fontstrings_width"] = 35,
						["tooltip"] = {
							["n_abilities"] = 3,
							["n_enemies"] = 3,
						},
						["switch_all_roles_in_combat"] = false,
						["clickthrough_toolbaricons"] = false,
						["attribute_text"] = {
							["show_timer"] = false,
							["shadow"] = false,
							["side"] = 1,
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["custom_text"] = "{name}",
							["text_face"] = "Expressway",
							["anchor"] = {
								-18, -- [1]
								3, -- [2]
							},
							["enabled"] = true,
							["enable_custom_text"] = false,
							["text_size"] = 10,
						},
						["ignore_mass_showhide"] = false,
						["switch_all_roles_after_wipe"] = false,
						["menu_icons"] = {
							false, -- [1]
							true, -- [2]
							false, -- [3]
							true, -- [4]
							true, -- [5]
							false, -- [6]
							["space"] = 0,
							["shadow"] = false,
						},
						["desaturated_menu"] = false,
						["micro_displays_side"] = 2,
						["window_scale"] = 1,
						["hide_icon"] = true,
						["toolbar_side"] = 1,
						["bg_g"] = 0.09411764705882353,
						["menu_icons_alpha"] = 0.5,
						["bg_b"] = 0.09411764705882353,
						["switch_healer_in_combat"] = false,
						["color"] = {
							0.07058823529411765, -- [1]
							0.07058823529411765, -- [2]
							0.07058823529411765, -- [3]
							0, -- [4]
						},
						["hide_on_context"] = {
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [1]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [2]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [3]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [4]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [5]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [6]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [7]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [8]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [9]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [10]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [11]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [12]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [13]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [14]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [15]
						},
						["skin"] = "Minimalistic",
						["following"] = {
							["enabled"] = true,
							["bar_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["switch_healer"] = false,
						["fontstrings_text2_anchor"] = 70,
						["__snapV"] = false,
						["__snapH"] = false,
						["StatusBarSaved"] = {
							["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
							["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
							["options"] = {
								["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["textYMod"] = 1,
									["textAlign"] = 3,
									["timeType"] = 1,
									["textSize"] = 10,
									["maxSectionIds"] = 17,
								},
								["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["textYMod"] = 1,
									["textAlign"] = 1,
									["timeType"] = 1,
									["textSize"] = 10,
									["maxSectionIds"] = 17,
								},
								["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["textYMod"] = 1,
									["textAlign"] = 2,
									["timeType"] = 1,
									["textSize"] = 10,
									["maxSectionIds"] = 17,
								},
							},
							["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
						},
						["grab_on_top"] = false,
						["__was_opened"] = true,
						["instance_button_anchor"] = {
							-27, -- [1]
							1, -- [2]
						},
						["bg_alpha"] = 0,
						["fontstrings_text4_anchor"] = 0,
						["__locked"] = true,
						["menu_alpha"] = {
							["enabled"] = false,
							["onleave"] = 1,
							["ignorebars"] = false,
							["iconstoo"] = true,
							["onenter"] = 1,
						},
						["auto_hide_menu"] = {
							["left"] = false,
							["right"] = false,
						},
						["row_show_animation"] = {
							["anim"] = "Fade",
							["options"] = {
							},
						},
						["fontstrings_text3_anchor"] = 35,
						["strata"] = "LOW",
						["clickthrough_incombatonly"] = false,
						["__snap"] = {
							[3] = 2,
						},
						["stretch_button_side"] = 1,
						["hide_in_combat_alpha"] = 0,
						["row_info"] = {
							["textR_outline"] = true,
							["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
							["textL_outline"] = true,
							["textR_outline_small"] = false,
							["textR_show_data"] = {
								true, -- [1]
								true, -- [2]
								false, -- [3]
							},
							["percent_type"] = 1,
							["fixed_text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["space"] = {
								["right"] = 0,
								["left"] = 0,
								["between"] = 0,
							},
							["texture_background_class_color"] = false,
							["textL_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
							["backdrop"] = {
								["enabled"] = false,
								["texture"] = "Details BarBorder 2",
								["color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["size"] = 10,
							},
							["models"] = {
								["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
								["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
								["upper_alpha"] = 0.5,
								["lower_enabled"] = false,
								["lower_alpha"] = 0.1,
								["upper_enabled"] = false,
							},
							["textL_translit_text"] = false,
							["texture_custom_file"] = "Interface\\",
							["texture_file"] = "Interface\\Buttons\\WHITE8X8",
							["textR_bracket"] = "(",
							["font_size"] = 11,
							["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
							["icon_grayscale"] = false,
							["textL_custom_text"] = "{data1}. {data3}{data2}",
							["use_spec_icons"] = true,
							["textR_enable_custom_text"] = false,
							["textL_enable_custom_text"] = false,
							["fixed_texture_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
							},
							["textL_show_number"] = false,
							["texture_custom"] = "",
							["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
							["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
							["texture"] = "Solid",
							["start_after_icon"] = false,
							["texture_background_file"] = "Interface\\Buttons\\WHITE8X8",
							["textL_class_colors"] = false,
							["alpha"] = 1,
							["texture_background"] = "Solid",
							["textR_class_colors"] = false,
							["textR_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["no_icon"] = false,
							["icon_offset"] = {
								0, -- [1]
								0, -- [2]
							},
							["fixed_texture_background_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.150228589773178, -- [4]
							},
							["font_face"] = "Expressway",
							["texture_class_colors"] = true,
							["textL_outline_small"] = false,
							["fast_ps_update"] = true,
							["textR_separator"] = "NONE",
							["height"] = 17,
						},
						["show_statusbar"] = false,
						["libwindow"] = {
							["y"] = 0.9999418258666992,
							["x"] = -207.998046875,
							["point"] = "BOTTOMRIGHT",
							["scale"] = 1,
						},
						["statusbar_info"] = {
							["alpha"] = 0,
							["overlay"] = {
								0.07058823529411765, -- [1]
								0.07058823529411765, -- [2]
								0.07058823529411765, -- [3]
							},
						},
						["backdrop_texture"] = "Details Ground",
						["bars_grow_direction"] = 1,
						["switch_damager"] = false,
						["switch_tank_in_combat"] = false,
						["bars_inverted"] = false,
						["switch_damager_in_combat"] = false,
						["icon_desaturated"] = false,
						["bars_sort_direction"] = 1,
						["auto_current"] = true,
						["menu_anchor_down"] = {
							16, -- [1]
							-3, -- [2]
						},
						["clickthrough_rows"] = false,
						["version"] = 3,
						["hide_in_combat"] = false,
						["posicao"] = {
							["normal"] = {
								["y"] = -461.4999465942383,
								["x"] = 649.5015869140625,
								["w"] = 205.0004730224609,
								["h"] = 155.0001068115234,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["switch_tank"] = false,
						["plugins_grow_direction"] = 1,
						["wallpaper"] = {
							["enabled"] = false,
							["texture"] = "Interface\\AddOns\\Details\\images\\background",
							["texcoord"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								0.7, -- [4]
							},
							["overlay"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["anchor"] = "all",
							["height"] = 114.042518615723,
							["alpha"] = 0.5,
							["width"] = 283.000183105469,
						},
						["total_bar"] = {
							["enabled"] = false,
							["only_in_group"] = false,
							["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["show_sidebars"] = false,
						["micro_displays_locked"] = true,
						["use_multi_fontstrings"] = false,
						["menu_icons_size"] = 0.8500000238418579,
					}, -- [1]
					{
						["__pos"] = {
							["normal"] = {
								["y"] = -461.4999465942383,
								["x"] = 854.5023193359375,
								["w"] = 205.0004730224609,
								["h"] = 155.0001068115234,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["hide_in_combat_type"] = 1,
						["clickthrough_window"] = false,
						["menu_anchor"] = {
							16, -- [1]
							0, -- [2]
							["side"] = 2,
						},
						["bg_r"] = 0.09411764705882353,
						["hide_out_of_combat"] = false,
						["color_buttons"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
						["micro_displays_locked"] = true,
						["fontstrings_width"] = 35,
						["tooltip"] = {
							["n_abilities"] = 3,
							["n_enemies"] = 3,
						},
						["switch_all_roles_in_combat"] = false,
						["clickthrough_toolbaricons"] = false,
						["row_info"] = {
							["textR_outline"] = true,
							["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
							["textL_outline"] = true,
							["textR_outline_small"] = false,
							["textR_show_data"] = {
								true, -- [1]
								true, -- [2]
								false, -- [3]
							},
							["percent_type"] = 1,
							["fixed_text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["space"] = {
								["right"] = 0,
								["left"] = 0,
								["between"] = 0,
							},
							["texture_background_class_color"] = false,
							["textL_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
							["backdrop"] = {
								["enabled"] = false,
								["texture"] = "Details BarBorder 2",
								["color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["size"] = 12,
							},
							["models"] = {
								["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
								["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
								["upper_alpha"] = 0.5,
								["lower_enabled"] = false,
								["lower_alpha"] = 0.1,
								["upper_enabled"] = false,
							},
							["textL_translit_text"] = false,
							["texture_custom_file"] = "Interface\\",
							["texture_file"] = "Interface\\Buttons\\WHITE8X8",
							["textR_bracket"] = "(",
							["font_size"] = 11,
							["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
							["icon_grayscale"] = false,
							["textL_custom_text"] = "{data1}. {data3}{data2}",
							["use_spec_icons"] = true,
							["textR_enable_custom_text"] = false,
							["textL_enable_custom_text"] = false,
							["fixed_texture_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
							},
							["textL_show_number"] = false,
							["texture_custom"] = "",
							["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
							["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
							["texture"] = "Solid",
							["start_after_icon"] = false,
							["texture_background_file"] = "Interface\\Buttons\\WHITE8X8",
							["textL_class_colors"] = false,
							["alpha"] = 1,
							["texture_background"] = "Solid",
							["textR_class_colors"] = false,
							["textR_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["no_icon"] = false,
							["icon_offset"] = {
								0, -- [1]
								0, -- [2]
							},
							["fixed_texture_background_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.150228589773178, -- [4]
							},
							["font_face"] = "Expressway",
							["texture_class_colors"] = true,
							["textL_outline_small"] = false,
							["fast_ps_update"] = false,
							["textR_separator"] = "NONE",
							["height"] = 17.16361999511719,
						},
						["switch_tank"] = false,
						["plugins_grow_direction"] = 1,
						["menu_icons"] = {
							false, -- [1]
							true, -- [2]
							false, -- [3]
							true, -- [4]
							true, -- [5]
							false, -- [6]
							["space"] = 0,
							["shadow"] = false,
						},
						["desaturated_menu"] = false,
						["micro_displays_side"] = 2,
						["window_scale"] = 1,
						["hide_icon"] = true,
						["toolbar_side"] = 1,
						["bg_g"] = 0.09411764705882353,
						["menu_icons_alpha"] = 0.5,
						["bg_b"] = 0.09411764705882353,
						["switch_healer_in_combat"] = false,
						["color"] = {
							0.07058823529411765, -- [1]
							0.07058823529411765, -- [2]
							0.07058823529411765, -- [3]
							0, -- [4]
						},
						["hide_on_context"] = {
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [1]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [2]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [3]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [4]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [5]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [6]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [7]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [8]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [9]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [10]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [11]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [12]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [13]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [14]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [15]
						},
						["skin"] = "Minimalistic",
						["following"] = {
							["bar_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["enabled"] = true,
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["switch_healer"] = false,
						["fontstrings_text2_anchor"] = 70,
						["__snapV"] = false,
						["__snapH"] = false,
						["StatusBarSaved"] = {
							["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
							["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
							["options"] = {
								["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
									["isHidden"] = false,
									["timeType"] = 1,
									["textYMod"] = 1,
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["maxSectionIds"] = 19,
									["textAlign"] = 3,
									["textSize"] = 10,
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
								},
								["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
									["isHidden"] = false,
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
									["textAlign"] = 1,
									["timeType"] = 1,
									["textSize"] = 10,
									["textYMod"] = 1,
								},
								["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
									["isHidden"] = false,
									["timeType"] = 1,
									["textYMod"] = 1,
									["segmentType"] = 2,
									["textFace"] = "Accidental Presidency",
									["maxSectionIds"] = 19,
									["textAlign"] = 2,
									["textSize"] = 10,
									["textColor"] = {
										1, -- [1]
										1, -- [2]
										1, -- [3]
										1, -- [4]
									},
								},
							},
							["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
						},
						["grab_on_top"] = false,
						["__was_opened"] = true,
						["instance_button_anchor"] = {
							-27, -- [1]
							1, -- [2]
						},
						["version"] = 3,
						["fontstrings_text4_anchor"] = 0,
						["__locked"] = true,
						["menu_alpha"] = {
							["enabled"] = false,
							["onenter"] = 1,
							["iconstoo"] = true,
							["ignorebars"] = false,
							["onleave"] = 1,
						},
						["switch_all_roles_after_wipe"] = false,
						["row_show_animation"] = {
							["anim"] = "Fade",
							["options"] = {
							},
						},
						["bars_inverted"] = false,
						["strata"] = "LOW",
						["clickthrough_incombatonly"] = false,
						["__snap"] = {
							1, -- [1]
						},
						["stretch_button_side"] = 1,
						["hide_in_combat_alpha"] = 0,
						["bars_sort_direction"] = 1,
						["show_statusbar"] = false,
						["libwindow"] = {
							["y"] = 0.9999418258666992,
							["x"] = -2.99755859375,
							["point"] = "BOTTOMRIGHT",
							["scale"] = 1,
						},
						["statusbar_info"] = {
							["alpha"] = 0,
							["overlay"] = {
								0.07058823529411765, -- [1]
								0.07058823529411765, -- [2]
								0.07058823529411765, -- [3]
							},
						},
						["backdrop_texture"] = "Details Ground",
						["menu_anchor_down"] = {
							16, -- [1]
							-3, -- [2]
						},
						["bg_alpha"] = 0,
						["switch_tank_in_combat"] = false,
						["bars_grow_direction"] = 1,
						["switch_damager_in_combat"] = false,
						["icon_desaturated"] = false,
						["clickthrough_rows"] = false,
						["auto_current"] = true,
						["attribute_text"] = {
							["show_timer"] = false,
							["shadow"] = false,
							["side"] = 1,
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["custom_text"] = "{name}",
							["text_face"] = "Expressway",
							["anchor"] = {
								-18, -- [1]
								3, -- [2]
							},
							["enabled"] = true,
							["enable_custom_text"] = false,
							["text_size"] = 10,
						},
						["auto_hide_menu"] = {
							["left"] = false,
							["right"] = false,
						},
						["switch_damager"] = false,
						["hide_in_combat"] = false,
						["posicao"] = {
							["normal"] = {
								["y"] = -461.4999465942383,
								["x"] = 854.5023193359375,
								["w"] = 205.0004730224609,
								["h"] = 155.0001068115234,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["skin_custom"] = "",
						["ignore_mass_showhide"] = false,
						["wallpaper"] = {
							["enabled"] = false,
							["texture"] = "Interface\\AddOns\\Details\\images\\background",
							["texcoord"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								0.7, -- [4]
							},
							["overlay"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["anchor"] = "all",
							["height"] = 155.0001068115234,
							["alpha"] = 0.5,
							["width"] = 204.0004730224609,
						},
						["total_bar"] = {
							["enabled"] = false,
							["only_in_group"] = false,
							["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["show_sidebars"] = false,
						["fontstrings_text3_anchor"] = 35,
						["use_multi_fontstrings"] = false,
						["menu_icons_size"] = 0.850000023841858,
					}, -- [2]
				},
				["report_lines"] = 5,
				["clear_ungrouped"] = true,
				["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
				["skin"] = "Dark Theme",
				["override_spellids"] = true,
				["pvp_as_group"] = true,
				["force_activity_time_pvp"] = true,
				["numerical_system"] = 1,
				["player_details_window"] = {
					["scale"] = 1,
					["skin"] = "ElvUI",
					["bar_texture"] = "Skyline",
				},
				["overall_clear_logout"] = false,
				["memory_threshold"] = 3,
				["cloud_capture"] = true,
				["damage_taken_everything"] = false,
				["scroll_speed"] = 2,
				["font_sizes"] = {
					["menus"] = 10,
				},
				["chat_tab_embed"] = {
					["enabled"] = false,
					["y_offset"] = 0,
					["x_offset"] = 0,
					["tab_name"] = "",
					["single_window"] = false,
				},
				["deadlog_events"] = 32,
				["window_clamp"] = {
					-8, -- [1]
					0, -- [2]
					21, -- [3]
					-14, -- [4]
				},
				["close_shields"] = false,
				["class_coords"] = {
					["HUNTER"] = {
						0, -- [1]
						0.25, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["WARRIOR"] = {
						0, -- [1]
						0.25, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["ROGUE"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["MAGE"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["PET"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["DRUID"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["MONK"] = {
						0.5, -- [1]
						0.73828125, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["DEATHKNIGHT"] = {
						0.25, -- [1]
						0.5, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["ENEMY"] = {
						0, -- [1]
						0.25, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["UNKNOW"] = {
						0.5, -- [1]
						0.75, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["PRIEST"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["UNGROUPPLAYER"] = {
						0.5, -- [1]
						0.75, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["Alliance"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["WARLOCK"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["DEMONHUNTER"] = {
						0.73828126, -- [1]
						1, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["Horde"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["PALADIN"] = {
						0, -- [1]
						0.25, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["SHAMAN"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["MONSTER"] = {
						0, -- [1]
						0.25, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
				},
				["overall_flag"] = 16,
				["disable_alldisplays_window"] = false,
				["numerical_system_symbols"] = "auto",
				["trash_auto_remove"] = true,
				["total_abbreviation"] = 2,
				["segments_amount_to_save"] = 18,
				["clear_graphic"] = true,
				["hotcorner_topleft"] = {
					["hide"] = false,
				},
				["animation_speed_triggertravel"] = 5,
				["options_group_edit"] = true,
				["broadcaster_enabled"] = false,
				["minimap"] = {
					["onclick_what_todo"] = 1,
					["radius"] = 160,
					["hide"] = true,
					["minimapPos"] = 220,
					["text_format"] = 3,
					["text_type"] = 1,
				},
				["instances_amount"] = 3,
				["max_window_size"] = {
					["height"] = 450,
					["width"] = 480,
				},
				["default_bg_color"] = 0.0941,
				["only_pvp_frags"] = false,
				["disable_stretch_button"] = true,
				["deny_score_messages"] = false,
				["segments_auto_erase"] = 2,
				["class_colors"] = {
					["HUNTER"] = {
						0.67, -- [1]
						0.83, -- [2]
						0.45, -- [3]
					},
					["WARRIOR"] = {
						0.78, -- [1]
						0.61, -- [2]
						0.43, -- [3]
					},
					["SHAMAN"] = {
						0, -- [1]
						0.44, -- [2]
						0.87, -- [3]
					},
					["MAGE"] = {
						0.41, -- [1]
						0.8, -- [2]
						0.94, -- [3]
					},
					["ARENA_YELLOW"] = {
						1, -- [1]
						1, -- [2]
						0.25, -- [3]
					},
					["UNGROUPPLAYER"] = {
						0.4, -- [1]
						0.4, -- [2]
						0.4, -- [3]
					},
					["DRUID"] = {
						1, -- [1]
						0.49, -- [2]
						0.04, -- [3]
					},
					["MONK"] = {
						0, -- [1]
						1, -- [2]
						0.59, -- [3]
					},
					["DEATHKNIGHT"] = {
						0.77, -- [1]
						0.12, -- [2]
						0.23, -- [3]
					},
					["ARENA_GREEN"] = {
						0.4, -- [1]
						1, -- [2]
						0.4, -- [3]
					},
					["UNKNOW"] = {
						0.2, -- [1]
						0.2, -- [2]
						0.2, -- [3]
					},
					["PRIEST"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["WARLOCK"] = {
						0.58, -- [1]
						0.51, -- [2]
						0.79, -- [3]
					},
					["ROGUE"] = {
						1, -- [1]
						0.96, -- [2]
						0.41, -- [3]
					},
					["ENEMY"] = {
						0.94117, -- [1]
						0, -- [2]
						0.0196, -- [3]
						1, -- [4]
					},
					["DEMONHUNTER"] = {
						0.64, -- [1]
						0.19, -- [2]
						0.79, -- [3]
					},
					["version"] = 1,
					["NEUTRAL"] = {
						1, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["PALADIN"] = {
						0.96, -- [1]
						0.55, -- [2]
						0.73, -- [3]
					},
					["PET"] = {
						0.3, -- [1]
						0.4, -- [2]
						0.5, -- [3]
					},
				},
				["segments_panic_mode"] = false,
				["standard_skin"] = false,
				["windows_fade_out"] = {
					"out", -- [1]
					0.2, -- [2]
				},
				["row_fade_out"] = {
					"out", -- [1]
					0.2, -- [2]
				},
				["new_window_size"] = {
					["height"] = 158,
					["width"] = 310,
				},
				["minimum_combat_time"] = 5,
				["overall_clear_newboss"] = false,
				["report_schema"] = 1,
				["use_scroll"] = false,
				["use_battleground_server_parser"] = false,
				["disable_reset_button"] = true,
				["data_broker_text"] = "",
				["segments_amount"] = 18,
				["instances_no_libwindow"] = false,
				["deadlog_limit"] = 16,
				["instances_segments_locked"] = true,
			},
		},
		["plater"] = {
			["realtime_dps_enabled"] = false,
			["damage_taken_shadow"] = true,
			["realtime_dps_player_shadow"] = true,
			["damage_taken_enabled"] = false,
			["realtime_dps_player_size"] = 12,
			["damage_taken_size"] = 12,
			["realtime_dps_color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["realtime_dps_anchor"] = {
				["y"] = 0,
				["x"] = 0,
				["side"] = 7,
			},
			["damage_taken_anchor"] = {
				["y"] = 0,
				["x"] = 0,
				["side"] = 7,
			},
			["realtime_dps_size"] = 12,
			["damage_taken_color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["realtime_dps_player_color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["realtime_dps_player_anchor"] = {
				["y"] = 0,
				["x"] = 0,
				["side"] = 7,
			},
			["realtime_dps_player_enabled"] = false,
			["realtime_dps_shadow"] = true,
		},
		["dungeon_data"] = {
		},
		["mythic_plus"] = {
			["make_overall_boss_only"] = false,
			["mythicrun_chart_frame"] = {
			},
			["merge_boss_trash"] = false,
			["delay_to_show_graphic"] = 5,
			["always_in_combat"] = false,
			["make_overall_when_done"] = true,
			["delete_trash_after_merge"] = true,
			["show_damage_graphic"] = false,
			["mythicrun_chart_frame_ready"] = {
				["y"] = 7.62939453125e-05,
				["x"] = 3.0517578125e-05,
				["point"] = "CENTER",
				["scale"] = 1,
			},
			["boss_dedicated_segment"] = true,
			["mythicrun_chart_frame_minimized"] = {
			},
			["last_mythicrun_chart"] = {
			},
		},
		["exit_log"] = {
			"1 - Closing Janela Info.", -- [1]
			"2 - Clearing user place from instances.", -- [2]
			"4 - Reversing switches.", -- [3]
			"6 - Saving Config.", -- [4]
			"7 - Saving Profiles.", -- [5]
			"8 - Saving nicktag cache.", -- [6]
		},
		["run_code"] = {
			["on_specchanged"] = "\n-- run when the player changes its spec",
			["on_zonechanged"] = "\n-- when the player changes zone, this code will run",
			["on_init"] = "\n-- code to run when Details! initializes, put here code which only will run once\n-- this also will run then the profile is changed\n\n--size of the death log tooltip in the Deaths display (default 350)\nDetails.death_tooltip_width = 350;\n\n--when in arena or battleground, details! silently switch to activity time (goes back to the old setting on leaving, default true)\nDetails.force_activity_time_pvp = true;\n\n--speed of the bar animations (default 33)\nDetails.animation_speed = 33;\n\n--threshold to trigger slow or fast speed (default 0.45)\nDetails.animation_speed_mintravel = 0.45;\n\n--call to update animations\nDetails:RefreshAnimationFunctions();\n\n--max window size, does require a /reload to work (default 480 x 450)\nDetails.max_window_size.width = 480;\nDetails.max_window_size.height = 450;\n\n--use the arena team color as the class color (default true)\nDetails.color_by_arena_team = true;\n\n--use the role icon in the player bar when inside an arena (default false)\nDetails.show_arena_role_icon = false;\n\n--how much time the update warning is shown (default 10)\nDetails.update_warning_timeout = 10;",
			["on_groupchange"] = "\n-- this code runs when the player enter or leave a group",
			["on_leavecombat"] = "\n-- this code runs when the player leave combat",
			["on_entercombat"] = "\n-- this code runs when the player enters in combat",
		},
		["damage_scroll_auto_open"] = false,
		["damage_scroll_position"] = {
			["y"] = 159,
			["x"] = -388.499755859375,
			["point"] = "RIGHT",
			["scale"] = 1,
		},
		["plugin_window_pos"] = {
			["y"] = -114.9986572265625,
			["x"] = 119.0002136230469,
			["point"] = "TOP",
			["scale"] = 1,
		},
		["spellid_ignored"] = {
		},
		["createauraframe"] = {
		},
		["global_plugin_database"] = {
			["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
				["encounter_timers_bw"] = {
				},
				["encounter_timers_dbm"] = {
				},
			},
		},
		["item_level_pool"] = {
		},
		["savedCustomSpells"] = {
		},
		["realm_sync"] = true,
		["update_warning_timeout"] = 10,
		["raid_data"] = {
		},
		["switchSaved"] = {
			["slots"] = 16,
			["table"] = {
				{
					["atributo"] = 1,
					["sub_atributo"] = 1,
				}, -- [1]
				{
					["atributo"] = 2,
					["sub_atributo"] = 1,
				}, -- [2]
				{
					["atributo"] = 1,
					["sub_atributo"] = 6,
				}, -- [3]
				{
					["atributo"] = 4,
					["sub_atributo"] = 5,
				}, -- [4]
				{
				}, -- [5]
				{
				}, -- [6]
				{
				}, -- [7]
				{
				}, -- [8]
				{
				}, -- [9]
				{
				}, -- [10]
				{
				}, -- [11]
				{
				}, -- [12]
				{
				}, -- [13]
				{
				}, -- [14]
				{
				}, -- [15]
				{
				}, -- [16]
			},
		},
		["always_use_profile_name"] = key,
		["savedStyles"] = {
		},
		["always_use_profile_exception"] = {
		},
		["details_auras"] = {
		},
		["show_totalhitdamage_on_overkill"] = false,
		["savedTimeCaptures"] = {
		},
		["latest_news_saw"] = "v9.0.1.8002",
		["custom"] = {
		},
		["performance_profiles"] = {
			["Dungeon"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["RaidFinder"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Battleground15"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Battleground40"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Mythic"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Arena"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Raid30"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
			["Raid15"] = {
				["enabled"] = false,
				["update_speed"] = 1,
				["miscdata"] = true,
				["aura"] = true,
				["heal"] = true,
				["use_row_animations"] = false,
				["energy"] = false,
				["damage"] = true,
			},
		},
		["last_changelog_size"] = 2669,
		["immersion_unit_special_icons"] = true,
		["lastUpdateWarning"] = 1607209217,
		["tutorial"] = {
			["bookmark_tutorial"] = false,
			["main_help_button"] = 1269,
			["DETAILS_INFO_TUTORIAL1"] = true,
			["alert_frames"] = {
				false, -- [1]
				false, -- [2]
				false, -- [3]
				false, -- [4]
				false, -- [5]
				false, -- [6]
			},
			["MIN_COMBAT_TIME"] = true,
			["OVERALLDATA_WARNING1"] = 6,
			["logons"] = 1269,
			["version_announce"] = 0,
			["DETAILS_INFO_TUTORIAL2"] = 10,
			["ctrl_click_close_tutorial"] = false,
			["DISABLE_ONDEATH_PANEL"] = true,
			["unlock_button"] = 1,
		},
	}

	_detalhes:ApplyProfile(key)
end
