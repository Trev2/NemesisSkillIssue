---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

modutil.mod.Path.Wrap("NemesisTakeRoomExit", function(base, eventSource, args)
  NemesisTakeroomExit_Wrap(base, eventSource, args)
  base(eventSource, args)
end, LoadTest)

game.EnemyData.NPC_Nemesis_01.ShopEventData.InstantChance = 0
game.EnemyData.NPC_Nemesis_01.ShopEventData.NeverChance = 1
game.NPCVariantData.NemesisPostRandomEventCombat.OutgoingDamageModifiers = {{PlayerMultiplier = 0}, {NonPlayerMultiplier = 0}}
game.NPCVariantData.NemesisFieldsPreRandomEventCombat.OutgoingDamageModifiers = {{PlayerMultiplier = 0}, {NonPlayerMultiplier = 0}}
game.NPCVariantData.NemesisCombat.OutgoingDamageModifiers = {{PlayerMultiplier = 0}, {NonPlayerMultiplier = 0}}
game.NPCVariantData.NemesisCombat_G.OutgoingDamageModifiers = {{PlayerMultiplier = 0}, {NonPlayerMultiplier = 0}}
game.NPCVariantData.NemesisCombat_G.OutgoingDamageModifiers = {{PlayerMultiplier = 0}, {NonPlayerMultiplier = 0}}
game.EncounterData.BaseNemesisCombat.ExitsUnlockedThreadedEvents = {{FunctionName = "NemesisTeleportExitPresentation", Args = {RandomWaitMin = 1.0,	RandomWaitMax = 3.0}, GameStateRequirements = {ChanceToPlay = 1.0,}}}
