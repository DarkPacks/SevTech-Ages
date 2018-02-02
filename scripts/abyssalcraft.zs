import mods.abyssalcraft.InfusionRitual;
import mods.abyssalcraft.RitualStages;

/*
	Infusion Ritual

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#infusion-rituals-are-added-this-way
*/
InfusionRitual.addRitual("beneathritual", 0, 0, 1000, false, <beneath:teleporterbeneath>, <progressiontweaks:blank_teleporter>, [
	<minecraft:sea_lantern>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>,
	<betterwithmods:material:18>, <abyssalcraft:stone:7>, <minecraft:gunpowder>,
	<abyssalcraft:stone:7>, <minecraft:dark_oak_fence_gate>
], false, []);
game.setLocalization("ac.ritual.beneathritual", "Beneath Portal Creation Ritual");

//Astral Sorcery Table 1
InfusionRitual.addRitual("ascraftingtable", 0, 0, 1000, false, <astralsorcery:blockaltar>, <minecraft:crafting_table>, [
	<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>,
	<astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>,
	<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>
], false, []);
game.setLocalization("ac.ritual.ascraftingtable", "Luminous Crafting Table Creation");
game.setLocalization("ac.ritual.ascraftingtable.desc", "This ritual can only be performed in Stage 1");

//Astral Sorcery Constellation Paper
InfusionRitual.addRitual("constellationpaper", 0, 0, 500, false, <astralsorcery:itemconstellationpaper>, <astralsorcery:itemcraftingcomponent:5>, [
	<ore:asCrystal>, <astralsorcery:itemcraftingcomponent>, <minecraft:gold_ingot>,
	<astralsorcery:itemcraftingcomponent>, <ore:asCrystal>, <astralsorcery:itemcraftingcomponent>,
	<minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent>
], false, []);
game.setLocalization("ac.ritual.constellationpaper", "Constellation Paper");
game.setLocalization("ac.ritual.constellationpaper.desc", "This ritual can only be performed in Stage 2");

/*
	Ritual Staging

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#ritual-stages-are-added-this-way-1112
*/
RitualStages.addRitualStage(STAGES.one, "ascraftingtable");
RitualStages.addRitualStage(STAGES.two, "constellationpaper");
RitualStages.addRitualStage(STAGES.two, "transmutationGem");
RitualStages.addRitualStage(STAGES.two, "oblivionCatalyst");

//Altering Existing Recipes to Stage earlier
//Transmutation Gem
mods.abyssalcraft.Rituals.modifyRitualOfferings("transmutationGem", 
[<minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>, <twilightforest:transformation_powder>, 
<astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>,
<twilightforest:transformation_powder>, <astralsorcery:itemcraftingcomponent>]);

//Oblivion Catalyst
mods.abyssalcraft.Rituals.modifyRitualSacrifice("oblivionCatalyst", <minecraft:ender_pearl>);
mods.abyssalcraft.Rituals.modifyRitualOfferings("oblivionCatalyst", 
[<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>, 
<minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>,
<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>]);