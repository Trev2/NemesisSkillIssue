---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- this file will be reloaded if it changes during gameplay,
-- 	so only assign to values or define things here.

function NemesisTakeroomExit_Wrap(base, eventSource, args)
	local nemesis = SessionMapState.Nemesis
	if nemesis.Exiting then
		return
	end

	UseableOff({ Id = nemesis.ObjectId })
	nemesis.SpecialInteractFunctionName = nil
	nemesis.CanReceiveGift = false
	wait( RandomFloat( args.RandomWaitMin, args.RandomWaitMax ) )

  NemesisTeleportExitPresentation( nemesis, args )
end

function NemesisPostFieldsCombatCheckExits_Wrap( nemesis, args )
	args = args or {}
	wait( args.Delay )
	local requiredObjects = ShallowCopyTable( MapState.RoomRequiredObjects )
	requiredObjects[nemesis.ObjectId] = nil
	NemesisTeleportExitPresentation( nemesis, args )
end
