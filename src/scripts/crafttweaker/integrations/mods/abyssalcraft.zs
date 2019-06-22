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
	abyssalcraft.removeMaterialization(<minecraft:elytra:0>);

	// Crystallizer
	abyssalcraft.addSingleCrystallization(<charcoalblock:charcoal_block:0>, <abyssalcraft:crystal:3> * 2, 0.1);

	// Transmutator Recipes
	abyssalcraft.removeTransmutation(<abyssalcraft:crystalshard:0>); // Iron
	abyssalcraft.removeTransmutation(<minecraft:netherbrick:0>); // Nether Brick

	// Ritual Staging
	abyssalcraft.addRitualStage(stageOne.stage, "ascraftingtable");
	abyssalcraft.addRitualStage(stageTwo.stage, "constellationpaper");
	abyssalcraft.addRitualStage(stageTwo.stage, "transmutationGem");
	abyssalcraft.addRitualStage(stageTwo.stage, "oblivionCatalyst");

	// Infusion Ritual
	InfusionRitual.addRitual("beneathritual", 0, 0, 1000, false, <beneath:teleporterbeneath:0>, <progressiontweaks:blank_teleporter:0>, [
		<bloodmagic:monster_soul:0>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>,
		<betterwithmods:material:18>, <abyssalcraft:stone:7>, <minecraft:gunpowder:0>,
		<abyssalcraft:stone:7>, <minecraft:dark_oak_fence_gate:0>
	], false, []);
	game.setLocalization("ac.ritual.beneathritual", "Beneath Portal Creation Ritual");

	// Astral Sorcery Table 1
	InfusionRitual.addRitual("ascraftingtable", 0, 0, 1000, false, <astralsorcery:blockaltar:0>, <minecraft:crafting_table:0>, [
		<bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:0>, <ore:stoneMarble>,
		<astralsorcery:itemcraftingcomponent:0>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:0>,
		<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent:0>
	], false, []);
	game.setLocalization("ac.ritual.ascraftingtable", "Luminous Crafting Table Creation");
	game.setLocalization("ac.ritual.ascraftingtable.desc", "This ritual can only be performed in Age 1");

	// Astral Sorcery Constellation Paper
	InfusionRitual.addRitual("constellationpaper", 0, 0, 500, false, <astralsorcery:itemconstellationpaper:0>, <astralsorcery:itemcraftingcomponent:5>, [
		<ore:asCrystal>, <astralsorcery:itemcraftingcomponent:0>, <minecraft:gold_ingot:0>,
		<astralsorcery:itemcraftingcomponent:0>, <ore:asCrystal>, <astralsorcery:itemcraftingcomponent:0>,
		<minecraft:gold_ingot:0>, <astralsorcery:itemcraftingcomponent:0>
	], false, []);
	game.setLocalization("ac.ritual.constellationpaper", "Constellation Paper");
	game.setLocalization("ac.ritual.constellationpaper.desc", "This ritual can only be performed in Age 2");

	// Summon parrots because I can't stand this fucking god damn RNG in this fucking game
	SummonRitual.addRitual("parrots", 0, -1, 100, false, "minecraft:parrot", [<minecraft:feather:0>, <minecraft:wheat_seeds:0>, <minecraft:feather:0>, <minecraft:egg:0>, <minecraft:feather:0>, <minecraft:wheat_seeds:0>, <minecraft:feather:0>, <minecraft:egg:0>]);
	game.setLocalization("ac.ritual.parrots", "Parrot Summoning Ritual");
	game.setLocalization("ac.ritual.parrots.desc", "This ritual allows you to summon a Parrot without searching for a jungle");

	//Summons the Sevadus Boss to your world. Prepare for the rektening
	SummonRitual.addRitual("sevadus", 0, -1, 5000, false, "playerbosses:player_boss", [<minecraft:skull:2>, <extendedcrafting:material:32>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:32>, <extraplanets:tier7_items:7>, <extendedcrafting:material:32>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:material:32>]);
	game.setLocalization("ac.ritual.sevadus", "Sevadus Summoning Ritual");
	game.setLocalization("ac.ritual.sevadus.desc", "Summons Sevadus the ultimate boss of the Universe. Defeat him to defeat SevTech: Ages");

	// Infuse RF Tools Syringe with cow essence to make mooshroom essence for the Peace Essence for the Peaceful Environment Dimlet
	InfusionRitual.addRitual("mooshroomessence", 0, -1, 100, true, <rftools:syringe>.withTag({mobName: "Mooshroom", level: 10, mobId: "minecraft:mooshroom"}), <rftools:syringe>, [
		<minecraft:red_mushroom_block>, <minecraft:red_mushroom_block>,
		<minecraft:red_mushroom>, <minecraft:red_mushroom>, <minecraft:red_mushroom>,
		<primal:pelt_cow>, <minecraft:bone>, <minecraft:beef>
	], false, []);
	game.setLocalization("ac.ritual.mooshroomessence", "Mooshroom Essence Syringe Ritual");
	game.setLocalization("ac.ritual.mooshroomessence.desc", "This ritual fills a syringe with mooshroom essence for creating an RF Tools peaceful dimlet");

	// Ritual Modifications
	Rituals.modifyRitualOfferings("transmutationGem", [
		<minecraft:ender_pearl:0>, <astralsorcery:itemcraftingcomponent:0>, <twilightforest:transformation_powder:0>,
		<astralsorcery:itemcraftingcomponent:0>, <minecraft:ender_pearl:0>, <astralsorcery:itemcraftingcomponent:0>,
		<twilightforest:transformation_powder:0>, <astralsorcery:itemcraftingcomponent:0>
	]);

	// Oblivion Catalyst
	Rituals.modifyRitualSacrifice("oblivionCatalyst", <minecraft:ender_pearl:0>);
	Rituals.modifyRitualOfferings("oblivionCatalyst", [
		<abyssalcraft:oblivionshard:0>, <minecraft:prismarine_shard:0>, <abyssalcraft:oblivionshard:0>,
		<minecraft:prismarine_shard:0>, <abyssalcraft:oblivionshard:0>, <minecraft:prismarine_shard:0>,
		<abyssalcraft:oblivionshard:0>, <minecraft:prismarine_shard:0>
	]);
}
