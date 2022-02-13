local L1UI, E, L, V, P, G = unpack(select(2, ...))

local _G = _G
local LoadAddOn = LoadAddOn

-- Weekly Rewards Frame chat commands
function L1UI:WeeklyRewards()

	LoadAddOn('Blizzard_WeeklyRewards')

	if _G.WeeklyRewardsFrame:IsShown() then
		_G.WeeklyRewardsFrame:Hide()
	else
		_G.WeeklyRewardsFrame:Show()
	end
end

-- LuckyoneUI chat commands
function L1UI:Toggles(message)

	if message == 'install' then

		E.PluginInstaller:Queue(L1UI.InstallerData)

	elseif message == 'config' then

		E:ToggleOptionsUI()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'L1UI')

	end
end

-- Debug mode from ElvUI\Core\General\Commands
function L1UI:DebugMode(msg)
	local switch = strlower(msg)
	if switch == 'on' or switch == '1' then
		for i = 1, GetNumAddOns() do
			local name = GetAddOnInfo(i)
			if name ~= 'ElvUI' and name ~= 'ElvUI_OptionsUI' and name ~= 'ElvUI_LuckyoneUI' and E:IsAddOnEnabled(name) then
				DisableAddOn(name, E.myname)
				L1UI.DisabledAddOns[name] = i
			end
		end

		SetCVar('scriptErrors', 1)
		ReloadUI()
	elseif switch == 'off' or switch == '0' then
		if switch == 'off' then
			SetCVar('scriptProfile', 0)
			SetCVar('scriptErrors', 0)
			L1UI:Print('Lua errors off.')

			if E:IsAddOnEnabled('ElvUI_CPU') then
				DisableAddOn('ElvUI_CPU')
			end
		end

		if next(L1UI.DisabledAddOns) then
			for name in pairs(L1UI.DisabledAddOns) do
				EnableAddOn(name, E.myname)
			end

			wipe(L1UI.DisabledAddOns)
			ReloadUI()
		end
	else
		L1UI:Print('/luckydebug on - /luckydebug off')
	end
end

-- RegisterChatCommand requires AceConsole-3.0
-- Left slash command Right function or funcref
function L1UI:LoadCommands()

	self:RegisterChatCommand('luckyoneui', 'Toggles')
	self:RegisterChatCommand('luckydebug', 'DebugMode')

	if E.Retail then
		self:RegisterChatCommand('weekly', 'WeeklyRewards')
		self:RegisterChatCommand('vault', 'WeeklyRewards')
	end
end
