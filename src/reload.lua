---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- this file will be reloaded if it changes during gameplay,
-- 	so only assign to values or define things here.

function sjson_ShellText(data)
	for _,v in ipairs(data.Texts) do
		if v.Id == 'MainMenuScreen_PlayGame' then
			v.DisplayName = 'Test ' .. _PLUGIN.guid
			break
		end
	end
end

function CheckShoppingEventThread_Wrap(base, eventSource, args)
  if ShoppingNPCId then
    local delay = 3600
  if RandomChance( eventData.InstantChance ) then
      delay = 3600
      instantPurchase = false
  elseif RandomChance( eventData.NeverChance ) then
      delay = 3600
  end
  end
end

function NemesisPostFieldsCombatCheckExits_Wrap( nemesis, args )
	args = args or {}
	wait( args.Delay )
	local requiredObjects = ShallowCopyTable( MapState.RoomRequiredObjects )
	requiredObjects[nemesis.ObjectId] = nil
	if IsEmpty( requiredObjects ) then
		NemesisTeleportExitPresentation( nemesis, args )
	else
		NemesisTeleportExitPresentation( nemesis, args )
	end
end
