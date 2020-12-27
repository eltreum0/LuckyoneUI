local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- Filters: Buffs
function L1UI:SetupBuffs(frame, type)

	local all = "Blacklist,Personal,nonPersonal"
	local min = "Blacklist,Dispellable,RaidBuffsElvUI"

	if frame == 'player' then

	elseif frame == 'target' then

	elseif frame == 'focus' then

	elseif frame == 'nameplate' then

	end

	E:StaggeredUpdateAll(nil, true)

	L1UI:Print('Buff filters updated.')
end

-- Filters: Debuffs
function L1UI:SetupDebuffs(frame, type)

	local all = "Blacklist,Personal,nonPersonal"
	local min = "Blacklist,RaidDebuffs,Dispellable"

	if frame == 'player' then

	elseif frame == 'target' then

	elseif frame == 'focus' then

	elseif frame == 'nameplate' then

	end

	E:StaggeredUpdateAll(nil, true)

	L1UI:Print('Debuff filters updated.')
end
