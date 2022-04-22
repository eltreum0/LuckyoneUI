local L1UI, E, L, V, P, G = unpack(select(2, ...))

local format = format
local ReloadUI = ReloadUI

-- Set install version to current LuckyoneUI version
local function InstallComplete()
	E.private.L1UI.install_version = L1UI.Version
	ReloadUI()
end

if E.Retail then

	-- Retail Installer Table
	L1UI.InstallerData = {
		Title = format('|cff4beb2c%s %s|r', L1UI.Name, L["Installation"]),
		Name = L1UI.Name,
		tutorialImage = 'Interface\\AddOns\\ElvUI_LuckyoneUI\\Media\\Textures\\Clover.tga',
		Pages = {
			[1] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome"])
				PluginInstallFrame.Desc1:SetText(L["This installation process will guide you through a few steps and apply settings to your current ElvUI profile."])
				PluginInstallFrame.Desc2:SetText(L["Note: |cff4beb2cMake sure you have a backup of your current profile|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Skip Process"])
			end,
			[2] = function()
				PluginInstallFrame.SubTitle:SetText(L["Layouts"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to apply the layout of your choosing."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupLayout('main') end)
				PluginInstallFrame.Option1:SetText(L["DPS/Tank"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupLayout('healing') end)
				PluginInstallFrame.Option2:SetText(L["Healing"])
			end,
			[3] = function()
				PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to set the UnitFrames Color Theme."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupTheme('dark') end)
				PluginInstallFrame.Option1:SetText(L["Dark"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupTheme('class') end)
				PluginInstallFrame.Option2:SetText(L["Class Color"])
			end,
			[4] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Chat"])
				PluginInstallFrame.Desc1:SetText(L["This will setup the chat windows to look like this:\n\nLeft Chat: General - Log - Whisper - Guild - Party\n\nRight Chat: Details! Damage Meter"])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupChat() end)
				PluginInstallFrame.Option1:SetText(L["Setup Chat"])
			end,
			[5] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["CVars"])
				PluginInstallFrame.Desc1:SetText('cameraDistanceMaxZoomFactor 2.6\nadvancedCombatLogging 1\nrawMouseEnable 1\nffxDeath 0\nffxGlow 0')
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupCVars() end)
				PluginInstallFrame.Option1:SetText(L["Setup CVars"])
			end,
			[6] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["NamePlates"])
				PluginInstallFrame.Desc1:SetText(L["Choose between ElvUI NamePlates and Plater NamePlates."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupNamePlates('ElvUI') end)
				PluginInstallFrame.Option1:SetText('ElvUI')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupNamePlates('Plater') end)
				PluginInstallFrame.Option2:SetText('Plater')
			end,
			[7] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["BossMods"])
				PluginInstallFrame.Desc1:SetText(L["Choose between DBM and BigWigs."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_BigWigs('main') end)
				PluginInstallFrame.Option1:SetText('BigWigs Main')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_BigWigs('healing') end)
				PluginInstallFrame.Option2:SetText('BigWigs Healing')
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript('OnClick', function() L1UI:Setup_DBM('main') end)
				PluginInstallFrame.Option3:SetText('DBM Main')
				PluginInstallFrame.Option4:Show()
				PluginInstallFrame.Option4:SetScript('OnClick', function() L1UI:Setup_DBM('healing') end)
				PluginInstallFrame.Option4:SetText('DBM Healing')
			end,
			[8] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Details Profile"])
				PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for Details! Damage Meter."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Details() end)
				PluginInstallFrame.Option1:SetText(L["Setup Details"])
			end,
			[9] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["OmniCD Profile"])
				PluginInstallFrame.Desc1:SetText('Please click the button below to apply Luckyones profile for OmniCD Party CDs.')
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_OmniCD('main') end)
				PluginInstallFrame.Option1:SetText('OmniCD Main')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_OmniCD('healing') end)
				PluginInstallFrame.Option2:SetText('OmniCD Healing')
			end,
			[10] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["WeakAuras Information"])
				PluginInstallFrame.Desc1:SetText(L["You can find WeakAuras for all 12 Classes and some Utility WeakAuras in the LuckyoneUI config."])
				PluginInstallFrame.Desc2:SetText('\nElvUI Options -> LuckyoneUI -> WeakAuras')
			end,
			[11] = function()
				PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
				PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Finished"])
			end,
		},
		StepTitles = {
			[1] = L["Welcome"],
			[2] = L["Layouts"],
			[3] = L["Color Theme"],
			[4] = L["Chat"],
			[5] = L["CVars"],
			[6] = L["NamePlates"],
			[7] = L["BossMods"],
			[8] = 'Details',
			[9] = 'OmniCD',
			[10] = 'WeakAuras',
			[11] = L["Installation Complete"],
		},
		StepTitlesColor = {1, 1, 1},
		StepTitlesColorSelected = {0, 179/255, 1},
		StepTitleWidth = 200,
		StepTitleButtonWidth = 180,
		StepTitleTextJustification = 'CENTER',
	}

elseif E.Classic then

	-- Classic Installer Table
	L1UI.InstallerData = {
		Title = format('|cff4beb2c%s %s|r', L1UI.Name, L["Installation"]),
		Name = L1UI.Name,
		tutorialImage = 'Interface\\AddOns\\ElvUI_LuckyoneUI\\Media\\Textures\\Clover.tga',
		Pages = {
			[1] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome"])
				PluginInstallFrame.Desc1:SetText(L["This installation process will guide you through a few steps and apply settings to your current ElvUI profile."])
				PluginInstallFrame.Desc2:SetText(L["Note: |cff4beb2cMake sure you have a backup of your current profile|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Skip Process"])
			end,
			[2] = function()
				PluginInstallFrame.SubTitle:SetText(L["Layouts"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to apply the layout of your choosing."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupLayout('main') end)
				PluginInstallFrame.Option1:SetText(L["DPS/Tank"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupLayout('healing') end)
				PluginInstallFrame.Option2:SetText(L["Healing"])
			end,
			[3] = function()
				PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to set the UnitFrames Color Theme."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupTheme('dark') end)
				PluginInstallFrame.Option1:SetText(L["Dark"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupTheme('class') end)
				PluginInstallFrame.Option2:SetText(L["Class Color"])
			end,
			[4] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Chat"])
				PluginInstallFrame.Desc1:SetText(L["This will setup the chat windows to look like this:\n\nLeft Chat: General - Log - Whisper - Guild - Party\n\nRight Chat: Details! Damage Meter"])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupChat() end)
				PluginInstallFrame.Option1:SetText(L["Setup Chat"])
			end,
			[5] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["CVars"])
				PluginInstallFrame.Desc1:SetText('cameraDistanceMaxZoomFactor 2.6\nadvancedCombatLogging 1\nrawMouseEnable 1\nffxDeath 0\nffxGlow 0')
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupCVars() end)
				PluginInstallFrame.Option1:SetText(L["Setup CVars"])
			end,
			[6] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["NamePlates"])
				PluginInstallFrame.Desc1:SetText(L["Choose between ElvUI NamePlates and Plater NamePlates."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupNamePlates('ElvUI') end)
				PluginInstallFrame.Option1:SetText('ElvUI')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupNamePlates('Plater') end)
				PluginInstallFrame.Option2:SetText('Plater')
			end,
			[7] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["BossMods"])
				PluginInstallFrame.Desc1:SetText(L["Choose between DBM and BigWigs."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_BigWigs('main') end)
				PluginInstallFrame.Option1:SetText('BigWigs Main')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_BigWigs('healing') end)
				PluginInstallFrame.Option2:SetText('BigWigs Healing')
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript('OnClick', function() L1UI:Setup_DBM('main') end)
				PluginInstallFrame.Option3:SetText('DBM Main')
				PluginInstallFrame.Option4:Show()
				PluginInstallFrame.Option4:SetScript('OnClick', function() L1UI:Setup_DBM('healing') end)
				PluginInstallFrame.Option4:SetText('DBM Healing')
			end,
			[8] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Details Profile"])
				PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for Details! Damage Meter."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Details() end)
				PluginInstallFrame.Option1:SetText(L["Setup Details"])
			end,
			[9] = function()
				PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
				PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Finished"])
			end,
		},
		StepTitles = {
			[1] = L["Welcome"],
			[2] = L["Layouts"],
			[3] = L["Color Theme"],
			[4] = L["Chat"],
			[5] = L["CVars"],
			[6] = L["NamePlates"],
			[7] = L["BossMods"],
			[8] = 'Details',
			[9] = L["Installation Complete"],
		},
		StepTitlesColor = {1, 1, 1},
		StepTitlesColorSelected = {0, 179/255, 1},
		StepTitleWidth = 200,
		StepTitleButtonWidth = 180,
		StepTitleTextJustification = 'CENTER',
	}

elseif E.TBC then

	-- TBC Installer Table
	L1UI.InstallerData = {
		Title = format('|cff4beb2c%s %s|r', L1UI.Name, L["Installation"]),
		Name = L1UI.Name,
		tutorialImage = 'Interface\\AddOns\\ElvUI_LuckyoneUI\\Media\\Textures\\Clover.tga',
		Pages = {
			[1] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome"])
				PluginInstallFrame.Desc1:SetText(L["This installation process will guide you through a few steps and apply settings to your current ElvUI profile."])
				PluginInstallFrame.Desc2:SetText(L["Note: |cff4beb2cMake sure you have a backup of your current profile|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Skip Process"])
			end,
			[2] = function()
				PluginInstallFrame.SubTitle:SetText(L["Layouts"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to apply the layout of your choosing."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupLayout('main') end)
				PluginInstallFrame.Option1:SetText(L["DPS/Tank"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupLayout('healing') end)
				PluginInstallFrame.Option2:SetText(L["Healing"])
			end,
			[3] = function()
				PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
				PluginInstallFrame.Desc1:SetText(L["Please click a button below to set the UnitFrames Color Theme."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupTheme('dark') end)
				PluginInstallFrame.Option1:SetText(L["Dark"])
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupTheme('class') end)
				PluginInstallFrame.Option2:SetText(L["Class Color"])
			end,
			[4] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Chat"])
				PluginInstallFrame.Desc1:SetText(L["This will setup the chat windows to look like this:\n\nLeft Chat: General - Log - Whisper - Guild - Party\n\nRight Chat: Details! Damage Meter"])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupChat() end)
				PluginInstallFrame.Option1:SetText(L["Setup Chat"])
			end,
			[5] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["CVars"])
				PluginInstallFrame.Desc1:SetText('cameraDistanceMaxZoomFactor 2.6\nadvancedCombatLogging 1\nrawMouseEnable 1\nffxDeath 0\nffxGlow 0')
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupCVars() end)
				PluginInstallFrame.Option1:SetText(L["Setup CVars"])
			end,
			[6] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["NamePlates"])
				PluginInstallFrame.Desc1:SetText(L["Choose between ElvUI NamePlates and Plater NamePlates."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:SetupNamePlates('ElvUI') end)
				PluginInstallFrame.Option1:SetText('ElvUI')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:SetupNamePlates('Plater') end)
				PluginInstallFrame.Option2:SetText('Plater')
			end,
			[7] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["BossMods"])
				PluginInstallFrame.Desc1:SetText(L["Choose between DBM and BigWigs."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_BigWigs('main') end)
				PluginInstallFrame.Option1:SetText('BigWigs Main')
				PluginInstallFrame.Option2:Show()
				PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_BigWigs('healing') end)
				PluginInstallFrame.Option2:SetText('BigWigs Healing')
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript('OnClick', function() L1UI:Setup_DBM('main') end)
				PluginInstallFrame.Option3:SetText('DBM Main')
				PluginInstallFrame.Option4:Show()
				PluginInstallFrame.Option4:SetScript('OnClick', function() L1UI:Setup_DBM('healing') end)
				PluginInstallFrame.Option4:SetText('DBM Healing')
			end,
			[8] = function()
				PluginInstallFrame.SubTitle:SetFormattedText(L["Details Profile"])
				PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for Details! Damage Meter."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Details() end)
				PluginInstallFrame.Option1:SetText(L["Setup Details"])
			end,
			[9] = function()
				PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
				PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
				PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
				PluginInstallFrame.Option1:Show()
				PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
				PluginInstallFrame.Option1:SetText(L["Finished"])
			end,
		},
		StepTitles = {
			[1] = L["Welcome"],
			[2] = L["Layouts"],
			[3] = L["Color Theme"],
			[4] = L["Chat"],
			[5] = L["CVars"],
			[6] = L["NamePlates"],
			[7] = L["BossMods"],
			[8] = 'Details',
			[9] = L["Installation Complete"],
		},
		StepTitlesColor = {1, 1, 1},
		StepTitlesColorSelected = {0, 179/255, 1},
		StepTitleWidth = 200,
		StepTitleButtonWidth = 180,
		StepTitleTextJustification = 'CENTER',
	}

end
