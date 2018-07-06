/*
	SevTech: Ages Abyssalcraft Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.abyssalcraft.InfusionRitual;
import mods.abyssalcraft.Rituals;
import mods.abyssalcraft.SummonRitual;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;

function init() {
	// Materializer
	abyssalcraft.removeMaterialization(<minecraft:elytra>.withTag({}));

	// Crystallizer
	abyssalcraft.addSingleCrystallization(<charcoalblock:charcoal_block>, <abyssalcraft:crystal:3> * 2, 0.1);

	// Transmutator Recipes
	abyssalcraft.removeTransmutation(<abyssalcraft:crystalshard>); // Iron
	abyssalcraft.removeTransmutation(<minecraft:netherbrick>); // Nether Brick

	// Ritual Staging
	abyssalcraft.addRitualStage(stageOne.stage, "ascraftingtable");
	abyssalcraft.addRitualStage(stageTwo.stage, "constellationpaper");
	abyssalcraft.addRitualStage(stageTwo.stage, "transmutationGem");
	abyssalcraft.addRitualStage(stageTwo.stage, "oblivionCatalyst");

	// Infusion Ritual
	InfusionRitual.addRitual("beneathritual", 0, 0, 1000, false, <beneath:teleporterbeneath>, <progressiontweaks:blank_teleporter>, [
		<bloodmagic:monster_soul>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>,
		<betterwithmods:material:18>, <abyssalcraft:stone:7>, <minecraft:gunpowder>,
		<abyssalcraft:stone:7>, <minecraft:dark_oak_fence_gate>
	], false, []);
	game.setLocalization("ac.ritual.beneathritual", "Beneath Portal Creation Ritual");

	// Astral Sorcery Table 1
	InfusionRitual.addRitual("ascraftingtable", 0, 0, 1000, false, <astralsorcery:blockaltar>, <minecraft:crafting_table>, [
		<bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>,
		<astralsorcery:itemcraftingcomponent>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent>,
		<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>
	], false, []);
	game.setLocalization("ac.ritual.ascraftingtable", "Luminous Crafting Table Creation");
	game.setLocalization("ac.ritual.ascraftingtable.desc", "This ritual can only be performed in Age 1");

	// Astral Sorcery Constellation Paper
	InfusionRitual.addRitual("constellationpaper", 0, 0, 500, false, <astralsorcery:itemconstellationpaper>, <astralsorcery:itemcraftingcomponent:5>, [
		<ore:asCrystal>, <astralsorcery:itemcraftingcomponent>, <minecraft:gold_ingot>,
		<astralsorcery:itemcraftingcomponent>, <ore:asCrystal>, <astralsorcery:itemcraftingcomponent>,
		<minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent>
	], false, []);
	game.setLocalization("ac.ritual.constellationpaper", "Constellation Paper");
	game.setLocalization("ac.ritual.constellationpaper.desc", "This ritual can only be performed in Age 2");

	// Summon parrots because I can't stand this fucking god damn RNG in this fucking game
	SummonRitual.addRitual("parrots", 0, -1, 100, false, "minecraft:parrot", [<minecraft:feather>, <minecraft:wheat_seeds>, <minecraft:feather>, <minecraft:egg>, <minecraft:feather>, <minecraft:wheat_seeds>, <minecraft:feather>, <minecraft:egg>]);
	game.setLocalization("ac.ritual.parrots", "Parrot Summoning Ritual");
	game.setLocalization("ac.ritual.parrots.desc", "This ritual allows you to summon a Parrot without searching for a jungle");

	// Ritual Modifications
	Rituals.modifyRitualOfferings("transmutationGem", [
		<minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>, <twilightforest:transformation_powder>,
		<astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>, <astralsorcery:itemcraftingcomponent>,
		<twilightforest:transformation_powder>, <astralsorcery:itemcraftingcomponent>
	]);

	// Oblivion Catalyst
	Rituals.modifyRitualSacrifice("oblivionCatalyst", <minecraft:ender_pearl>);
	Rituals.modifyRitualOfferings("oblivionCatalyst", [
		<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>,
		<minecraft:prismarine_shard>, <abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>,
		<abyssalcraft:oblivionshard>, <minecraft:prismarine_shard>
	]);
}
