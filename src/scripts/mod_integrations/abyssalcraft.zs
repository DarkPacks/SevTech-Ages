import mods.abyssalcraft.Crystallizer;
import mods.abyssalcraft.InfusionRitual;
import mods.abyssalcraft.Materializer;
import mods.abyssalcraft.RitualStages;
import mods.abyssalcraft.Rituals;
import mods.abyssalcraft.Transmutator;

/*
	Infusion Ritual

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#infusion-rituals-are-added-this-way
*/
InfusionRitual.addRitual("beneathritual", 0, 0, 1000, false, <beneath:teleporterbeneath>, <progressiontweaks:blank_teleporter>, [
	<bloodmagic:monster_soul>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>,
	<betterwithmods:material:18>, <abyssalcraft:stone:7>, <minecraft:gunpowder>,
	<abyssalcraft:stone:7>, <minecraft:dark_oak_fence_gate>
], false, []);
game.setLocalization("ac.ritual.beneathritual", "Beneath Portal Creation Ritual");

//Astral Sorcery Table 1
InfusionRitual.addRitual("ascraftingtable", 0, 0, 1000, false, <astralsorcery:blockaltar>, <minecraft:crafting_table>, [
	<bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>,
	<astralsorcery:itemcraftingcomponent>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent>,
	<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>
], false, []);
game.setLocalization("ac.ritual.ascraftingtable", "Luminous Crafting Table Creation");
game.setLocalization("ac.ritual.ascraftingtable.desc", "This ritual can only be performed in Age 1");

//Astral Sorcery Constellation Paper
InfusionRitual.addRitual("constellationpaper", 0, 0, 500, false, <astralsorcery:itemconstellationpaper>, <astralsorcery:itemcraftingcomponent:5>, [
	<ore:asCrystal>, <astralsorcery:itemcraftingcomponent>, <minecraft:gold_ingot>,
	<astralsorcery:itemcraftingcomponent>, <ore:asCrystal>, <astralsorcery:itemcraftingcomponent>,
	<minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent>
], false, []);
game.setLocalization("ac.ritual.constellationpaper", "Constellation Paper");
game.setLocalization("ac.ritual.constellationpaper.desc", "This ritual can only be performed in Age 2");


//Summon parrots because I can't stand this fucking god damn RNG in this fucking game
mods.abyssalcraft.SummonRitual.addRitual("parrots", 0, -1, 100, false, "minecraft:parrot", [<minecraft:feather>, <minecraft:wheat_seeds>, <minecraft:feather>, <minecraft:egg>, <minecraft:feather>, <minecraft:wheat_seeds>, <minecraft:feather>, <minecraft:egg>]);


game.setLocalization("ac.ritual.parrots", "Parrot Summoning Ritual");
game.setLocalization("ac.ritual.parrots.desc", "This ritual allows you to summon a Parrot without searching for a jungle");

/*
	Ritual Modifications

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#ritual-functionality-can-be-expanded-to-additional-dimensions-this-way
	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#dimension-names-are-mapped-to-the-necronomicon-this-way
	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#ritual-properties-can-be-modified-this-way
*/
//=============================================================
//Altering Existing Recipes to Stage earlier
//Transmutation Gem
Rituals.modifyRitualOfferings("transmutationGem", [
	<minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>, <twilightforest:transformation_powder>,
	<astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>,
	<twilightforest:transformation_powder>, <astralsorcery:itemcraftingcomponent>
]);

//Oblivion Catalyst
Rituals.modifyRitualSacrifice("oblivionCatalyst", <minecraft:ender_pearl>);
Rituals.modifyRitualOfferings("oblivionCatalyst", [
	<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>,
	<minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>,
	<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>
]);

/*
	Transmutator Recipes

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#transmutator-recipes-are-added-this-way
*/
Transmutator.removeTransmutation(<abyssalcraft:crystalshard>); // Iron
Transmutator.removeTransmutation(<minecraft:netherbrick>); // Nether Brick

/*
	Ritual Staging

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#ritual-stages-are-added-this-way-1112
*/
RitualStages.addRitualStage(STAGES.one, "ascraftingtable");
RitualStages.addRitualStage(STAGES.two, "constellationpaper");
RitualStages.addRitualStage(STAGES.two, "transmutationGem");
RitualStages.addRitualStage(STAGES.two, "oblivionCatalyst");

/*
	Materializer

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#materializer-recipes-are-added-this-way
*/
Materializer.removeMaterialization(<minecraft:elytra>.withTag({}));

/*
	Crystallizer

	https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods#crystallizer-recipes-are-added-in-two-ways-to-separate-dual-output-recipes-with-single-output-recipes
*/
Crystallizer.addSingleCrystallization(<charcoalblock:charcoal_block>, <abyssalcraft:crystal:3> * 2, 0.1);
