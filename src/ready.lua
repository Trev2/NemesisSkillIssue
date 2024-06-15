---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/ShellText.en.sjson')

sjson.hook(file, function(data)
	return sjson_ShellText(data)
end)

modutil.mod.path.Wrap("CheckShoppingEventThread", function(base, eventSource, args)
  CheckShoppingEventThread_Wrap(base, eventSource, args)
  base( eventSource, args)
end)

modutil.mod.path.Wrap("NemesisPostFieldsCombatCheckExits", function(base, nemesis, args )
	NemesisPostFieldsCombatCheckExits_Wrap(base, nemesis, args)
end)

NPCVariantData.NPC_Nemesis_01.ShopEventData.InstantChance = 0
NPCVariantData.NPC_Nemesis_01.ShopEventData.NeverChance = 1
NPCVariantData.NPC_Nemesis_01.NemesisPostRandomEventCombat.OutgoingDamageModifiers.NonPlayerMultiplier = 0
NPCVariantData.NPC_Nemesis_01.NemesisFieldsPreRandomEventCombat.OutgoingDamageModifiers.NonPlayerMultiplier = 0
NPCVariantData.NPC_Nemesis_01.NemesisCombat.OutgoingDamageModifiers.NonPlayerMultiplier = 0
NPCVariantData.NPC_Nemesis_01.NemesisCombat_G.OutgoingDamageModifiers.NonPlayerMultiplier = 0
NPCVariantData.NPC_Nemesis_01.NemesisCombat_G.OutgoingDamageModifiers.NonPlayerMultiplier = 0