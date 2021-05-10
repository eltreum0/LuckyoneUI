local L1UI, E, L, V, P, G = unpack(select(2, ...))

local retail = "Luckyone D/T"
local tbc = "Luckyone TBC D/T"
local classic = "Luckyone Classic D/T"

-- DBM Profile
function L1UI:GetDBMProfile()

	if L1UI.Retail then

		DBM:CreateProfile(retail)

		DBM_AllSavedOptions = {
			[retail] = {
				["DontShowFarWarnings"] = true,
				["ChosenVoicePack"] = "VEM",
				["DontShowHudMap2"] = true,
				["AlwaysPlayVoice"] = false,
				["ShowSWarningsInChat"] = false,
				["RangeFrameRadarY"] = 0.9996873736381531,
				["DontRestoreIcons"] = false,
				["DontShowNameplateIcons"] = true,
				["CoreSavedRevision"] = 20210323164456,
				["RangeFrameX"] = 416.0001525878906,
				["RangeFrameY"] = 15.99973392486572,
				["FilterInterruptNoteName"] = false,
				["EnableModels"] = false,
				["SpecialWarningFlashAlph3"] = 0.4,
				["ArrowPoint"] = "TOP",
				["SWarnNameInNote"] = true,
				["FakeBWVersion"] = true,
				["InfoFramePoint"] = "BOTTOMRIGHT",
				["EventSoundMusicCombined"] = false,
				["SpecialWarningFlashCol2"] = {
					1, -- [1]
					0.5, -- [2]
					0, -- [3]
				},
				["WarningAlphabetical"] = true,
				["WarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["CheckGear"] = false,
				["SpecialWarningX"] = 0,
				["WorldBossAlert"] = false,
				["DontShowPT2"] = false,
				["MoviesSeen"] = {},
				["ShowQueuePop"] = true,
				["ShowAllVersions"] = true,
				["DebugMode"] = false,
				["DontShowTargetAnnouncements"] = true,
				["ShowWarningsInChat"] = false,
				["ShowReminders"] = true,
				["SpecialWarningFontCol"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
				},
				["InfoFrameFontStyle"] = "OUTLINE",
				["WarningFontStyle"] = "OUTLINE",
				["EventSoundEngage2"] = "None",
				["InfoFrameY"] = 1.000015616416931,
				["ChatFrame"] = "DEFAULT_CHAT_FRAME",
				["WarningIconRight"] = true,
				["UseSoundChannel"] = "Master",
				["RangeFrameRadarX"] = 415.9999389648438,
				["ShowRespawn"] = true,
				["EventSoundWipe"] = "None",
				["InfoFrameCols"] = 0,
				["AlwaysShowSpeedKillTimer2"] = false,
				["FilterDispel"] = true,
				["ShowGuildMessagesPlus"] = false,
				["LFDEnhance"] = true,
				["BadTimerAlert"] = false,
				["DontShowPTNoID"] = true,
				["HideGarrisonToasts"] = false,
				["RangeFramePoint"] = "BOTTOMLEFT",
				["SpecialWarningFontShadow"] = true,
				["EventMusicMythicFilter"] = true,
				["HideBossEmoteFrame2"] = true,
				["NPAuraSize"] = 40,
				["HideObjectivesFrame"] = true,
				["SpecialWarningShortText"] = true,
				["DontShowPTText"] = false,
				["SpecialWarningFontSize2"] = 35,
				["SpecialWarningFlashCol5"] = {
					0.2, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["UseNameplateHandoff"] = true,
				["ForumsMessageShown"] = false,
				["SpecialWarningFlashAlph4"] = 0.4,
				["SpecialWarningFlashAlph2"] = 0.3,
				["InfoFrameLocked"] = false,
				["PTCountThreshold2"] = 5,
				["SpecialWarningFlashCount2"] = 1,
				["SpecialWarningFlashDura1"] = 0.4,
				["EventSoundDungeonBGM"] = "None",
				["oRA3AnnounceConsumables"] = false,
				["CountdownVoice2"] = "VP:VEM",
				["AutoAcceptGuildInvite"] = false,
				["EnableWBSharing"] = false,
				["ArrowPosX"] = 0,
				["DebugLevel"] = 1,
				["AITimer"] = true,
				["SpecialWarningFlashDura3"] = 1,
				["WarningShortText"] = true,
				["DisableGuildStatus"] = false,
				["FilterInterrupt2"] = "TandFandBossCooldown",
				["SpecialWarningFlash4"] = false,
				["EventSoundMusic"] = "None",
				["AutologBosses"] = false,
				["DisableSFX"] = false,
				["GUIX"] = 91.00080108642578,
				["SpecialWarningFlashDura4"] = 0.7,
				["FilterTrashWarnings2"] = true,
				["RLReadyCheckSound"] = true,
				["SpecialWarningFlashCol3"] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["WarningColors"] = {
					{
						["b"] = 0.9411764705882353,
						["g"] = 0.8,
						["r"] = 0.4117647058823529,
					}, -- [1]
					{
						["b"] = 0,
						["g"] = 0.9490196078431372,
						["r"] = 0.9490196078431372,
					}, -- [2]
					{
						["b"] = 0,
						["g"] = 0.5019607843137255,
						["r"] = 1,
					}, -- [3]
					{
						["b"] = 0.1019607843137255,
						["g"] = 0.1019607843137255,
						["r"] = 1,
					}, -- [4]
				},
				["AutoReplySound"] = false,
				["SWarningAlphabetical"] = true,
				["SpecialWarningSound2"] = 15391,
				["BlockNoteShare"] = true,
				["SpecialWarningFlash5"] = false,
				["InfoFrameX"] = -415.4991760253906,
				["DontPlaySpecialWarningSound"] = true,
				["ModelSoundValue"] = "",
				["DontPlayTrivialSpecialWarningSound"] = true,
				["DontShowInfoFrame"] = true,
				["RaidWarningSound"] = "",
				["RangeFrameRadarPoint"] = "BOTTOMLEFT",
				["SpecialWarningY"] = -76.49984741210938,
				["GUIHeight"] = 600,
				["RangeFrameSound2"] = "none",
				["RangeFrameUpdates"] = "Average",
				["MovieFilter2"] = "OnlyFight",
				["ShortTimerText"] = true,
				["WarningY"] = -165.5003204345703,
				["CustomSounds"] = 0,
				["VoiceOverSpecW2"] = "DefaultOnly",
				["SpecialWarningFlashCount3"] = 3,
				["RoleSpecAlert"] = false,
				["WhisperStats"] = false,
				["SilentMode"] = false,
				["LogOnlyNonTrivial"] = true,
				["DontPlayPTCountdown"] = false,
				["SpecialWarningFlashAlph5"] = 0.5,
				["SpecialWarningDuration2"] = 1.5,
				["ShowEngageMessage"] = false,
				["RangeFrameLocked"] = false,
				["WarningIconLeft"] = true,
				["RangeFrameSound1"] = "none",
				["ArrowPosY"] = -150,
				["WarningFontSize"] = 20,
				["EventSoundVictory2"] = "None",
				["SpecialWarningFlashDura2"] = 0.4,
				["LastRevision"] = 0,
				["GUIPoint"] = "TOPLEFT",
				["SettingsMessageShown"] = true,
				["SWarnClassColor"] = true,
				["SpecialWarningFlashCount5"] = 3,
				["SpecialWarningFlashCount4"] = 2,
				["WarningX"] = -0.9999417662620544,
				["DontSetIcons"] = true,
				["BigBrotherAnnounceToRaid"] = false,
				["InfoFrameLines"] = 0,
				["CountdownVoice"] = "VP:VEM",
				["InfoFrameFontSize"] = 12,
				["DontShowUserTimers"] = false,
				["RecordOnlyBosses"] = false,
				["AutoRespond"] = true,
				["WarningDuration2"] = 1.5,
				["DisableStatusWhisper"] = false,
				["EventDungMusicMythicFilter"] = true,
				["GUIY"] = -60.00004959106445,
				["RangeFrameFrames"] = "radar",
				["DontPlayCountdowns"] = false,
				["ShowBigBrotherOnCombatStart"] = false,
				["SpecialWarningIcon"] = true,
				["InfoFrameFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["SpecialWarningFlashAlph1"] = 0.3,
				["ShowDefeatMessage"] = true,
				["FilterTankSpec"] = true,
				["DontShowRangeFrame"] = false,
				["SpecialWarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["InfoFrameShowSelf"] = false,
				["WarningFontShadow"] = true,
				["DontRestoreRange"] = false,
				["SpecialWarningFlash1"] = false,
				["DontShowBossTimers"] = false,
				["SpecialWarningFontStyle"] = "THICKOUTLINE",
				["DontShowSpecialWarningFlash"] = true,
				["SpecialWarningFlashCol4"] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				["CountdownVoice3"] = "VP:VEM",
				["WorldBossNearAlert"] = false,
				["DontShowBossAnnounces"] = false,
				["BadIDAlert"] = false,
				["SpecialWarningPoint"] = "TOP",
				["AutoAcceptFriendInvite"] = false,
				["WarningIconChat"] = true,
				["SpecialWarningFlashCount1"] = 1,
				["HideGuildChallengeUpdates"] = false,
				["SpecialWarningSound5"] = 128466,
				["DontSendYells"] = false,
				["ShowPizzaMessage"] = false,
				["AdvancedAutologBosses"] = false,
				["HideTooltips"] = false,
				["SpecialWarningFlash3"] = false,
				["SpecialWarningFlash2"] = false,
				["Enabled"] = true,
				["SpecialWarningFlashDura5"] = 1,
				["GUIWidth"] = 800,
				["FilterVoidFormSay"] = true,
				["SpecialWarningSound4"] = 9278,
				["LatencyThreshold"] = 250,
				["WarningPoint"] = "TOP",
				["ShowGuildMessages"] = false,
				["StripServerName"] = true,
				["SpecialWarningSound3"] = "Interface\\AddOns\\DBM-Core\\sounds\\AirHorn.ogg",
				["DontShowSpecialWarningText"] = false,
				["SpecialWarningSound"] = 8174,
				["DontShowPTCountdownText"] = false,
				["AFKHealthWarning"] = false,
				["SpecialWarningFlashCol1"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["HelpMessageVersion"] = 3,
			},
		}
		DBT_AllPersistentOptions = {
			[retail] = {
				["DBM"] = {
					["StartColorPR"] = 1,
					["Scale"] = 1,
					["HugeBarsEnabled"] = true,
					["TimerY"] = -198.5001220703125,
					["EndColorPR"] = 0.5,
					["Sort"] = true,
					["ExpandUpwardsLarge"] = false,
					["ExpandUpwards"] = false,
					["TimerPoint"] = "CENTER",
					["EndColorDG"] = 0,
					["Alpha"] = 0.800000011920929,
					["HugeTimerPoint"] = "CENTER",
					["StartColorIR"] = 0.47,
					["StartColorUIR"] = 1,
					["StartColorAG"] = 0.545,
					["EndColorDR"] = 1,
					["HugeBarXOffset"] = 0,
					["StartColorRR"] = 0.5,
					["StartColorUIG"] = 1,
					["FillUpLargeBars"] = true,
					["IconRight"] = false,
					["ClickThrough"] = true,
					["StartColorDG"] = 0.3,
					["StartColorAR"] = 0.375,
					["TextColorR"] = 1,
					["EndColorAER"] = 1,
					["StartColorIB"] = 1,
					["Font"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
					["EndColorAEB"] = 0.247,
					["HugeTimerX"] = 11.99995803833008,
					["EndColorAR"] = 0.15,
					["BarXOffset"] = 0,
					["EndColorB"] = 0,
					["EndColorDB"] = 1,
					["EndColorG"] = 0,
					["HugeScale"] = 1,
					["StartColorIG"] = 0.97,
					["StartColorDB"] = 1,
					["FadeBars"] = true,
					["TextColorB"] = 1,
					["EndColorIB"] = 1,
					["TDecimal"] = 5,
					["InlineIcons"] = false,
					["EndColorRB"] = 0.3,
					["TimerX"] = -241.5000305175781,
					["EndColorIR"] = 0.047,
					["StartColorAEG"] = 0.466,
					["EndColorRR"] = 0.11,
					["DynamicColor"] = true,
					["BarStyle"] = "NoAnim",
					["EnlargeBarTime"] = 10,
					["Spark"] = false,
					["StartColorDR"] = 0.9,
					["StartColorRB"] = 0.5,
					["FontFlag"] = "OUTLINE",
					["EndColorAB"] = 1,
					["Width"] = 167,
					["EndColorPG"] = 0.41,
					["StartColorRG"] = 1,
					["EndColorIG"] = 0.88,
					["EndColorAEG"] = 0.043,
					["Texture"] = "Interface\\AddOns\\ElvUI\\Media\\Textures\\Minimalist",
					["StartColorAEB"] = 0.459,
					["StartColorPG"] = 0.776,
					["EndColorPB"] = 0.285,
					["KeepBars"] = true,
					["HugeBarYOffset"] = 3,
					["HugeTimerY"] = -227.9998321533203,
					["Bar7ForceLarge"] = false,
					["FontSize"] = 12,
					["IconLeft"] = true,
					["IconLocked"] = true,
					["NoBarFade"] = false,
					["EndColorUIG"] = 0.92156862745098,
					["StartColorAB"] = 1,
					["EndColorUIB"] = 0.0117647058823529,
					["Bar7CustomInline"] = true,
					["FillUpBars"] = true,
					["ColorByType"] = true,
					["TextColorG"] = 1,
					["FlashBar"] = false,
					["EndColorUIR"] = 1,
					["EndColorRG"] = 1,
					["StartColorUIB"] = 0.0627450980392157,
					["StartColorG"] = 0.7,
					["HugeWidth"] = 273,
					["HugeAlpha"] = 0.800000011920929,
					["EndColorR"] = 1,
					["StartColorPB"] = 0.42,
					["StripCDText"] = true,
					["StartColorAER"] = 1,
					["EndColorAG"] = 0.385,
					["Skin"] = "",
					["StartColorB"] = 0,
					["BarYOffset"] = 3,
					["StartColorR"] = 1,
					["Height"] = 20,
				},
			},
		}
		DBM_MinimapIcon = {["hide"] = true}

		DBM:ApplyProfile(retail)

	elseif L1UI.TBC then

		DBM:CreateProfile(tbc)

		DBM_AllSavedOptions = {
			[tbc] = {
				["DontShowFarWarnings"] = true,
				["ChosenVoicePack"] = "VEM",
				["DontShowHudMap2"] = true,
				["AlwaysPlayVoice"] = false,
				["ShowSWarningsInChat"] = false,
				["RangeFrameRadarY"] = 0.9996463656425476,
				["DontRestoreIcons"] = false,
				["DontShowNameplateIcons"] = true,
				["CoreSavedRevision"] = 20210427031752,
				["RangeFrameX"] = 416.0001525878906,
				["AlwaysShowSpeedKillTimer"] = true,
				["RangeFrameY"] = 15.99973392486572,
				["FilterInterruptNoteName"] = false,
				["EnableModels"] = false,
				["SpecialWarningFlashAlph3"] = 0.4,
				["ArrowPoint"] = "TOP",
				["SWarnNameInNote"] = true,
				["FakeBWVersion"] = true,
				["InfoFramePoint"] = "BOTTOMRIGHT",
				["EventSoundMusicCombined"] = false,
				["SpecialWarningFlashCol2"] = {
					1, -- [1]
					0.5, -- [2]
					0, -- [3]
				},
				["WarningAlphabetical"] = true,
				["WarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["CheckGear"] = false,
				["SpecialWarningX"] = 0,
				["WorldBossAlert"] = false,
				["DontShowPT2"] = false,
				["WorldBuffAlert"] = true,
				["MoviesSeen"] = {
				},
				["ShowQueuePop"] = true,
				["ShowAllVersions"] = true,
				["DebugMode"] = false,
				["DontShowTargetAnnouncements"] = true,
				["ShowWarningsInChat"] = false,
				["ShowReminders"] = true,
				["SpecialWarningFontCol"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
				},
				["InfoFrameFontStyle"] = "OUTLINE",
				["WarningFontStyle"] = "OUTLINE",
				["EventSoundEngage2"] = "None",
				["InfoFrameY"] = 1.000015616416931,
				["ChatFrame"] = "DEFAULT_CHAT_FRAME",
				["WarningIconRight"] = true,
				["UseSoundChannel"] = "Master",
				["RangeFrameRadarX"] = 415.9999694824219,
				["ShowRespawn"] = true,
				["EventSoundWipe"] = "None",
				["InfoFrameCols"] = 0,
				["AlwaysShowSpeedKillTimer2"] = false,
				["FilterDispel"] = true,
				["ShowGuildMessagesPlus"] = false,
				["LFDEnhance"] = true,
				["BadTimerAlert"] = false,
				["DontShowPTNoID"] = true,
				["HideGarrisonToasts"] = false,
				["RangeFramePoint"] = "BOTTOMLEFT",
				["SpecialWarningFontShadow"] = true,
				["EventMusicMythicFilter"] = true,
				["HideBossEmoteFrame2"] = true,
				["NPAuraSize"] = 40,
				["HideObjectivesFrame"] = true,
				["SpecialWarningShortText"] = true,
				["DontShowPTText"] = false,
				["SpecialWarningFontSize2"] = 35,
				["SpecialWarningFlashCol5"] = {
					0.2, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["UseNameplateHandoff"] = true,
				["EventSoundTurle"] = "None",
				["ForumsMessageShown"] = false,
				["SpecialWarningFlashAlph4"] = 0.4,
				["AFKHealthWarning"] = false,
				["SpecialWarningFlashCol1"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["PTCountThreshold2"] = 5,
				["SpecialWarningFlashCount2"] = 1,
				["DontShowPTCountdownText"] = false,
				["EventSoundDungeonBGM"] = "None",
				["oRA3AnnounceConsumables"] = false,
				["CountdownVoice2"] = "Kolt",
				["AutoAcceptGuildInvite"] = false,
				["EnableWBSharing"] = false,
				["ArrowPosX"] = 0,
				["SpecialWarningSound"] = 8174,
				["AITimer"] = true,
				["SpecialWarningFlashDura3"] = 1,
				["WarningShortText"] = true,
				["DontShowSpecialWarningText"] = false,
				["StripServerName"] = true,
				["SpecialWarningFlash4"] = false,
				["SpecialWarningSound3"] = "Interface\\AddOns\\DBM-Core\\sounds\\AirHorn.ogg",
				["ShowGuildMessages"] = false,
				["DisableSFX"] = false,
				["GUIX"] = 91.00080108642578,
				["SpecialWarningFlashDura4"] = 0.7,
				["WarningPoint"] = "TOP",
				["LatencyThreshold"] = 250,
				["SpecialWarningFlashCol3"] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["WarningColors"] = {
					{
						["r"] = 0.4117647058823529,
						["g"] = 0.8,
						["b"] = 0.9411764705882353,
					}, -- [1]
					{
						["r"] = 0.9490196078431372,
						["g"] = 0.9490196078431372,
						["b"] = 0,
					}, -- [2]
					{
						["r"] = 1,
						["g"] = 0.5019607843137255,
						["b"] = 0,
					}, -- [3]
					{
						["r"] = 1,
						["g"] = 0.1019607843137255,
						["b"] = 0.1019607843137255,
					}, -- [4]
				},
				["SpecialWarningSound4"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\HoodWolfTransformPlayer01.ogg",
				["SWarningAlphabetical"] = true,
				["SpecialWarningSound2"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\UR_Algalon_BHole01.ogg",
				["BlockNoteShare"] = true,
				["SpecialWarningFlash5"] = false,
				["SpecialWarningFlashDura5"] = 1,
				["DontPlaySpecialWarningSound"] = true,
				["ModelSoundValue"] = "",
				["DontPlayTrivialSpecialWarningSound"] = true,
				["RangeFrameSound2"] = "none",
				["HideTooltips"] = false,
				["RangeFrameRadarPoint"] = "BOTTOMLEFT",
				["SpecialWarningY"] = -76.49984741210938,
				["SpecialWarningFlash2"] = false,
				["WarningY"] = -165.5003204345703,
				["RangeFrameUpdates"] = "Average",
				["MovieFilter2"] = "OnlyFight",
				["RoleSpecAlert"] = false,
				["RaidWarningSound"] = "",
				["CustomSounds"] = 0,
				["SilentMode"] = false,
				["SpecialWarningFlashCount3"] = 3,
				["ShortTimerText"] = true,
				["WhisperStats"] = false,
				["VoiceOverSpecW2"] = "DefaultOnly",
				["LogOnlyNonTrivial"] = true,
				["DontPlayPTCountdown"] = false,
				["SpecialWarningFlashAlph5"] = 0.5,
				["SpecialWarningDuration2"] = 1.5,
				["WarningIconLeft"] = true,
				["RangeFrameSound1"] = "none",
				["ShowEngageMessage"] = false,
				["RangeFrameLocked"] = false,
				["ArrowPosY"] = -150,
				["WarningFontSize"] = 20,
				["EventSoundVictory2"] = "None",
				["SpecialWarningFlashDura2"] = 0.4,
				["LastRevision"] = 0,
				["GUIPoint"] = "TOPLEFT",
				["SettingsMessageShown"] = true,
				["SWarnClassColor"] = true,
				["SpecialWarningFlashCount5"] = 3,
				["SpecialWarningPoint"] = "TOP",
				["InfoFrameLines"] = 0,
				["DontSetIcons"] = true,
				["BigBrotherAnnounceToRaid"] = false,
				["DontShowBossAnnounces"] = false,
				["CountdownVoice"] = "Corsica",
				["InfoFrameFontSize"] = 12,
				["DontShowUserTimers"] = false,
				["RecordOnlyBosses"] = false,
				["AutoRespond"] = true,
				["DontShowRangeFrame"] = false,
				["DisableStatusWhisper"] = false,
				["EventDungMusicMythicFilter"] = true,
				["GUIY"] = -60.00004959106445,
				["RangeFrameFrames"] = "radar",
				["DontPlayCountdowns"] = false,
				["ShowBigBrotherOnCombatStart"] = false,
				["SpecialWarningIcon"] = true,
				["InfoFrameFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["SpecialWarningFlashAlph1"] = 0.3,
				["ShowDefeatMessage"] = true,
				["FilterTankSpec"] = true,
				["WarningDuration2"] = 1.5,
				["WarningFontShadow"] = true,
				["InfoFrameShowSelf"] = false,
				["SpecialWarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["DontRestoreRange"] = false,
				["SpecialWarningFlash1"] = false,
				["DontShowBossTimers"] = false,
				["SpecialWarningFontStyle"] = "THICKOUTLINE",
				["DontShowSpecialWarningFlash"] = true,
				["SpecialWarningFlashCol4"] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				["CountdownVoice3"] = "Smooth",
				["WorldBossNearAlert"] = false,
				["WarningX"] = -0.9999417662620544,
				["BadIDAlert"] = false,
				["SpecialWarningFlashCount4"] = 2,
				["AutoAcceptFriendInvite"] = false,
				["WarningIconChat"] = true,
				["SpecialWarningFlashCount1"] = 1,
				["HideGuildChallengeUpdates"] = false,
				["SpecialWarningSound5"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\LOA_NAXX_AGGRO02.ogg",
				["DontSendYells"] = false,
				["ShowPizzaMessage"] = false,
				["AdvancedAutologBosses"] = false,
				["GUIHeight"] = 600,
				["SpecialWarningFlash3"] = false,
				["DontShowInfoFrame"] = true,
				["Enabled"] = true,
				["InfoFrameX"] = -415.4991760253906,
				["GUIWidth"] = 800,
				["FilterVoidFormSay"] = true,
				["AutoReplySound"] = false,
				["RLReadyCheckSound"] = true,
				["AutologBosses"] = false,
				["FilterTrashWarnings2"] = true,
				["EventSoundMusic"] = "None",
				["FilterInterrupt2"] = "TandFandBossCooldown",
				["DisableGuildStatus"] = false,
				["DebugLevel"] = 1,
				["SpecialWarningFlashDura1"] = 0.4,
				["InfoFrameLocked"] = false,
				["SpecialWarningFlashAlph2"] = 0.3,
				["HelpMessageVersion"] = 3,
			},
		}
		DBT_AllPersistentOptions = {
			[tbc] = {
				["DBM"] = {
					["StartColorPR"] = 1,
					["Scale"] = 1,
					["HugeBarsEnabled"] = true,
					["TimerY"] = -221.5001068115234,
					["EndColorPR"] = 0.5,
					["Sort"] = "Sort",
					["ExpandUpwardsLarge"] = false,
					["ExpandUpwards"] = false,
					["TimerPoint"] = "CENTER",
					["EndColorDG"] = 0,
					["Alpha"] = 0.800000011920929,
					["HugeTimerPoint"] = "CENTER",
					["StartColorIR"] = 0.47,
					["StartColorUIR"] = 1,
					["StartColorAG"] = 0.545,
					["EndColorDR"] = 1,
					["HugeBarXOffset"] = 0,
					["StartColorRR"] = 0.5,
					["StartColorUIG"] = 1,
					["FillUpLargeBars"] = true,
					["IconRight"] = false,
					["ClickThrough"] = true,
					["StartColorDG"] = 0.3,
					["StartColorAR"] = 0.375,
					["TextColorR"] = 1,
					["EndColorAER"] = 1,
					["StartColorIB"] = 1,
					["Font"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
					["EndColorAEB"] = 0.247,
					["HugeTimerX"] = 11.99995803833008,
					["Height"] = 20,
					["BarXOffset"] = 0,
					["EndColorB"] = 0,
					["EndColorDB"] = 1,
					["EndColorG"] = 0,
					["StartColorR"] = 1,
					["BarYOffset"] = 3,
					["StartColorB"] = 0,
					["FadeBars"] = true,
					["TextColorB"] = 1,
					["EndColorIB"] = 1,
					["Skin"] = "",
					["InlineIcons"] = false,
					["EndColorRB"] = 0.3,
					["TimerX"] = -241.5000305175781,
					["EndColorIR"] = 0.047,
					["StartColorAEG"] = 0.466,
					["EndColorRR"] = 0.11,
					["DynamicColor"] = true,
					["BarStyle"] = "NoAnim",
					["EnlargeBarTime"] = 10,
					["Spark"] = false,
					["StartColorDR"] = 0.9,
					["StripCDText"] = true,
					["FontFlag"] = "OUTLINE",
					["EndColorAB"] = 1,
					["Width"] = 167,
					["EndColorPG"] = 0.41,
					["StartColorPB"] = 0.42,
					["EndColorIG"] = 0.88,
					["EndColorAEG"] = 0.043,
					["Texture"] = "Interface\\AddOns\\ElvUI\\Media\\Textures\\Minimalist",
					["StartColorAEB"] = 0.459,
					["HugeAlpha"] = 0.800000011920929,
					["HugeWidth"] = 273,
					["KeepBars"] = true,
					["HugeBarYOffset"] = 3,
					["HugeTimerY"] = -227.9998321533203,
					["Bar7ForceLarge"] = false,
					["FontSize"] = 12,
					["IconLeft"] = true,
					["IconLocked"] = true,
					["NoBarFade"] = false,
					["TextColorG"] = 1,
					["StartColorAB"] = 1,
					["ColorByType"] = true,
					["FillUpBars"] = true,
					["Bar7CustomInline"] = true,
					["EndColorUIB"] = 0.0117647058823529,
					["EndColorUIG"] = 0.92156862745098,
					["FlashBar"] = false,
					["EndColorUIR"] = 1,
					["EndColorRG"] = 1,
					["StartColorUIB"] = 0.0627450980392157,
					["StartColorG"] = 0.7,
					["EndColorPB"] = 0.285,
					["StartColorPG"] = 0.776,
					["EndColorR"] = 1,
					["StartColorRG"] = 1,
					["StartColorRB"] = 0.5,
					["StartColorAER"] = 1,
					["EndColorAG"] = 0.385,
					["TDecimal"] = 5,
					["StartColorDB"] = 1,
					["StartColorIG"] = 0.97,
					["HugeScale"] = 1,
					["EndColorAR"] = 0.15,
				},
			},
		}
		DBM_MinimapIcon = {["hide"] = true}

		DBM:ApplyProfile(tbc)

	elseif L1UI.Classic then

		DBM:CreateProfile(classic)

		DBM_AllSavedOptions = {
			[classic] = {
				["DontShowFarWarnings"] = true,
				["ChosenVoicePack"] = "VEM",
				["DontShowHudMap2"] = true,
				["AlwaysPlayVoice"] = false,
				["ShowSWarningsInChat"] = false,
				["RangeFrameRadarY"] = 0.999646365642548,
				["DontRestoreIcons"] = false,
				["DontShowNameplateIcons"] = true,
				["CoreSavedRevision"] = 20210421144744,
				["RangeFrameX"] = 416.000152587891,
				["AlwaysShowSpeedKillTimer"] = true,
				["RangeFrameY"] = 15.9997339248657,
				["FilterInterruptNoteName"] = false,
				["EnableModels"] = false,
				["SpecialWarningFlashAlph3"] = 0.4,
				["ArrowPoint"] = "TOP",
				["SWarnNameInNote"] = true,
				["FakeBWVersion"] = true,
				["InfoFramePoint"] = "BOTTOMRIGHT",
				["EventSoundMusicCombined"] = false,
				["SpecialWarningFlashCol2"] = {
					1, -- [1]
					0.5, -- [2]
					0, -- [3]
				},
				["WarningAlphabetical"] = true,
				["WarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["CheckGear"] = false,
				["SpecialWarningX"] = 0,
				["WorldBossAlert"] = false,
				["DontShowPT2"] = false,
				["WorldBuffAlert"] = true,
				["MoviesSeen"] = {
				},
				["ShowQueuePop"] = true,
				["ShowAllVersions"] = true,
				["DebugMode"] = false,
				["DontShowTargetAnnouncements"] = true,
				["ShowWarningsInChat"] = false,
				["ShowReminders"] = true,
				["SpecialWarningFontCol"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
				},
				["InfoFrameFontStyle"] = "OUTLINE",
				["WarningFontStyle"] = "OUTLINE",
				["EventSoundEngage2"] = "None",
				["InfoFrameY"] = 1.00001561641693,
				["ChatFrame"] = "DEFAULT_CHAT_FRAME",
				["WarningIconRight"] = true,
				["UseSoundChannel"] = "Master",
				["RangeFrameRadarX"] = 415.999969482422,
				["ShowRespawn"] = true,
				["EventSoundWipe"] = "None",
				["InfoFrameCols"] = 0,
				["AlwaysShowSpeedKillTimer2"] = false,
				["FilterDispel"] = true,
				["ShowGuildMessagesPlus"] = false,
				["LFDEnhance"] = true,
				["BadTimerAlert"] = false,
				["DontShowPTNoID"] = true,
				["HideGarrisonToasts"] = false,
				["RangeFramePoint"] = "BOTTOMLEFT",
				["SpecialWarningFontShadow"] = true,
				["EventMusicMythicFilter"] = true,
				["HideBossEmoteFrame2"] = true,
				["NPAuraSize"] = 40,
				["HideObjectivesFrame"] = true,
				["SpecialWarningShortText"] = true,
				["DontShowPTText"] = false,
				["SpecialWarningFontSize2"] = 35,
				["SpecialWarningFlashCol5"] = {
					0.2, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["UseNameplateHandoff"] = true,
				["EventSoundTurle"] = "None",
				["ForumsMessageShown"] = false,
				["SpecialWarningFlashAlph4"] = 0.4,
				["AFKHealthWarning"] = false,
				["SpecialWarningFlashCol1"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["PTCountThreshold2"] = 5,
				["SpecialWarningFlashCount2"] = 1,
				["DontShowPTCountdownText"] = false,
				["EventSoundDungeonBGM"] = "None",
				["oRA3AnnounceConsumables"] = false,
				["CountdownVoice2"] = "Kolt",
				["AutoAcceptGuildInvite"] = false,
				["EnableWBSharing"] = false,
				["ArrowPosX"] = 0,
				["SpecialWarningSound"] = 8174,
				["AITimer"] = true,
				["SpecialWarningFlashDura3"] = 1,
				["WarningShortText"] = true,
				["DontShowSpecialWarningText"] = false,
				["StripServerName"] = true,
				["SpecialWarningFlash4"] = false,
				["SpecialWarningSound3"] = "Interface\\AddOns\\DBM-Core\\sounds\\AirHorn.ogg",
				["ShowGuildMessages"] = false,
				["DisableSFX"] = false,
				["AutologBosses"] = false,
				["SpecialWarningFlashDura4"] = 0.7,
				["WarningPoint"] = "TOP",
				["LatencyThreshold"] = 250,
				["SpecialWarningFlashCol3"] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["WarningColors"] = {
					{
						["r"] = 0.411764705882353,
						["g"] = 0.8,
						["b"] = 0.941176470588235,
					}, -- [1]
					{
						["r"] = 0.949019607843137,
						["g"] = 0.949019607843137,
						["b"] = 0,
					}, -- [2]
					{
						["r"] = 1,
						["g"] = 0.501960784313726,
						["b"] = 0,
					}, -- [3]
					{
						["r"] = 1,
						["g"] = 0.101960784313725,
						["b"] = 0.101960784313725,
					}, -- [4]
				},
				["SpecialWarningSound4"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\HoodWolfTransformPlayer01.ogg",
				["SWarningAlphabetical"] = true,
				["SpecialWarningSound2"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\UR_Algalon_BHole01.ogg",
				["BlockNoteShare"] = true,
				["SpecialWarningFlash5"] = false,
				["SpecialWarningFlashDura5"] = 1,
				["DontPlaySpecialWarningSound"] = true,
				["ModelSoundValue"] = "",
				["DontPlayTrivialSpecialWarningSound"] = true,
				["AdvancedAutologBosses"] = false,
				["HideTooltips"] = false,
				["RangeFrameRadarPoint"] = "BOTTOMLEFT",
				["DontShowInfoFrame"] = true,
				["RangeFrameSound2"] = "none",
				["WarningY"] = -165.50032043457,
				["RangeFrameUpdates"] = "Average",
				["MovieFilter2"] = "OnlyFight",
				["RoleSpecAlert"] = false,
				["RaidWarningSound"] = "",
				["CustomSounds"] = 0,
				["SilentMode"] = false,
				["SpecialWarningFlashCount3"] = 3,
				["ShortTimerText"] = true,
				["WhisperStats"] = false,
				["VoiceOverSpecW2"] = "DefaultOnly",
				["LogOnlyNonTrivial"] = true,
				["DontPlayPTCountdown"] = false,
				["SpecialWarningFlashAlph5"] = 0.5,
				["SpecialWarningDuration2"] = 1.5,
				["WarningIconLeft"] = true,
				["RangeFrameSound1"] = "none",
				["ShowEngageMessage"] = false,
				["RangeFrameLocked"] = false,
				["ArrowPosY"] = -150,
				["WarningFontSize"] = 20,
				["EventSoundVictory2"] = "None",
				["SpecialWarningFlashDura2"] = 0.4,
				["LastRevision"] = 0,
				["GUIPoint"] = "TOPLEFT",
				["SettingsMessageShown"] = true,
				["SWarnClassColor"] = true,
				["SpecialWarningFlashCount5"] = 3,
				["SpecialWarningPoint"] = "TOP",
				["InfoFrameLines"] = 0,
				["DontSetIcons"] = true,
				["BigBrotherAnnounceToRaid"] = false,
				["DontShowBossAnnounces"] = false,
				["CountdownVoice"] = "Corsica",
				["InfoFrameFontSize"] = 12,
				["RecordOnlyBosses"] = false,
				["CountdownVoice3"] = "Smooth",
				["AutoRespond"] = true,
				["DontShowRangeFrame"] = false,
				["DisableStatusWhisper"] = false,
				["EventDungMusicMythicFilter"] = true,
				["GUIY"] = -60.0000495910645,
				["RangeFrameFrames"] = "radar",
				["DontPlayCountdowns"] = false,
				["ShowBigBrotherOnCombatStart"] = false,
				["SpecialWarningIcon"] = true,
				["InfoFrameFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["SpecialWarningFlashAlph1"] = 0.3,
				["ShowDefeatMessage"] = true,
				["FilterTankSpec"] = true,
				["WarningDuration2"] = 1.5,
				["WarningFontShadow"] = true,
				["InfoFrameShowSelf"] = false,
				["SpecialWarningFont"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
				["DontRestoreRange"] = false,
				["SpecialWarningFlash1"] = false,
				["DontShowBossTimers"] = false,
				["SpecialWarningFontStyle"] = "THICKOUTLINE",
				["DontShowSpecialWarningFlash"] = true,
				["DontShowUserTimers"] = false,
				["SpecialWarningFlashCol4"] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				["WorldBossNearAlert"] = false,
				["WarningX"] = -0.999941766262055,
				["BadIDAlert"] = false,
				["SpecialWarningFlashCount4"] = 2,
				["AutoAcceptFriendInvite"] = false,
				["WarningIconChat"] = true,
				["SpecialWarningFlashCount1"] = 1,
				["HideGuildChallengeUpdates"] = false,
				["SpecialWarningSound5"] = "Interface\\AddOns\\DBM-Core\\sounds\\ClassicSupport\\LOA_NAXX_AGGRO02.ogg",
				["DontSendYells"] = false,
				["ShowPizzaMessage"] = false,
				["SpecialWarningFlash2"] = false,
				["GUIHeight"] = 600,
				["SpecialWarningFlash3"] = false,
				["SpecialWarningY"] = -76.4998474121094,
				["Enabled"] = true,
				["InfoFrameX"] = -416.499053955078,
				["GUIWidth"] = 800,
				["FilterVoidFormSay"] = true,
				["AutoReplySound"] = false,
				["RLReadyCheckSound"] = true,
				["GUIX"] = 91.0008010864258,
				["FilterTrashWarnings2"] = true,
				["EventSoundMusic"] = "None",
				["FilterInterrupt2"] = "TandFandBossCooldown",
				["DisableGuildStatus"] = false,
				["DebugLevel"] = 1,
				["SpecialWarningFlashDura1"] = 0.4,
				["InfoFrameLocked"] = false,
				["SpecialWarningFlashAlph2"] = 0.3,
				["HelpMessageVersion"] = 3,
			},
		}
		DBT_AllPersistentOptions = {
			[classic] = {
				["DBM"] = {
					["StartColorPR"] = 1,
					["Scale"] = 1,
					["HugeBarsEnabled"] = true,
					["TimerY"] = -198.500076293945,
					["EndColorPR"] = 0.5,
					["Sort"] = "Sort",
					["ExpandUpwardsLarge"] = false,
					["ExpandUpwards"] = false,
					["TimerPoint"] = "CENTER",
					["EndColorDG"] = 0,
					["Alpha"] = 0.800000011920929,
					["HugeTimerPoint"] = "CENTER",
					["StartColorIR"] = 0.47,
					["StartColorUIR"] = 1,
					["StartColorAG"] = 0.545,
					["EndColorDR"] = 1,
					["HugeBarXOffset"] = 0,
					["StartColorRR"] = 0.5,
					["StartColorUIG"] = 1,
					["FillUpLargeBars"] = true,
					["IconRight"] = false,
					["ClickThrough"] = true,
					["StartColorDG"] = 0.3,
					["StartColorAR"] = 0.375,
					["TextColorR"] = 1,
					["EndColorAER"] = 1,
					["StartColorIB"] = 1,
					["Font"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
					["EndColorAEB"] = 0.247,
					["HugeTimerX"] = 11.9999580383301,
					["Height"] = 20,
					["BarXOffset"] = 0,
					["EndColorB"] = 0,
					["EndColorAR"] = 0.15,
					["EndColorG"] = 0,
					["StartColorR"] = 1,
					["BarYOffset"] = 3,
					["StartColorB"] = 0,
					["FadeBars"] = true,
					["TextColorB"] = 1,
					["EndColorIB"] = 1,
					["Skin"] = "",
					["StartColorAER"] = 1,
					["EndColorRB"] = 0.3,
					["TimerX"] = -241.500030517578,
					["EndColorIR"] = 0.047,
					["InlineIcons"] = false,
					["EndColorRR"] = 0.11,
					["DynamicColor"] = true,
					["BarStyle"] = "NoAnim",
					["EnlargeBarTime"] = 10,
					["Spark"] = false,
					["StartColorDR"] = 0.9,
					["StripCDText"] = true,
					["FontFlag"] = "OUTLINE",
					["EndColorAB"] = 1,
					["Width"] = 167,
					["EndColorPG"] = 0.41,
					["StartColorPB"] = 0.42,
					["EndColorIG"] = 0.88,
					["EndColorAEG"] = 0.043,
					["Texture"] = "Interface\\AddOns\\ElvUI\\Media\\Textures\\Minimalist",
					["StartColorAEB"] = 0.459,
					["HugeAlpha"] = 0.800000011920929,
					["HugeWidth"] = 273,
					["KeepBars"] = true,
					["HugeBarYOffset"] = 3,
					["HugeTimerY"] = -227.999847412109,
					["Bar7ForceLarge"] = false,
					["FontSize"] = 12,
					["IconLeft"] = true,
					["IconLocked"] = true,
					["NoBarFade"] = false,
					["TextColorG"] = 1,
					["StartColorAB"] = 1,
					["ColorByType"] = true,
					["FillUpBars"] = true,
					["Bar7CustomInline"] = true,
					["EndColorUIB"] = 0.0117647058823529,
					["EndColorUIG"] = 0.92156862745098,
					["FlashBar"] = false,
					["EndColorUIR"] = 1,
					["EndColorRG"] = 1,
					["StartColorUIB"] = 0.0627450980392157,
					["StartColorG"] = 0.7,
					["EndColorPB"] = 0.285,
					["StartColorPG"] = 0.776,
					["EndColorR"] = 1,
					["StartColorRG"] = 1,
					["StartColorRB"] = 0.5,
					["StartColorAEG"] = 0.466,
					["EndColorAG"] = 0.385,
					["TDecimal"] = 5,
					["StartColorDB"] = 1,
					["StartColorIG"] = 0.97,
					["HugeScale"] = 1,
					["EndColorDB"] = 1,
				},
			},
		}
		DBM_MinimapIcon = {["hide"] = true}

		DBM:ApplyProfile(classic)

	end
end
