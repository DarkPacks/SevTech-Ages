/*
	SevTech: Ages Ore/Block Staging Script

	This script handles the staging of ores/blocks to set stages for them to appear.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.zenstages.Stage;
import mods.zenstages.ZenStager;
import mods.orestages.OreStages;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static replacementItemsForStage as IIngredient[][][string] = {
	stageZero.stage: [
		[<minecraft:mossy_cobblestone:0>, <minecraft:cobblestone:0>]
	],

	stageOne.stage : [
		// Village Replacement for stage1
		[<minecraft:oak_stairs:*>, <minecraft:planks:0>],
		[<minecraft:stone_stairs:*>, <minecraft:cobblestone:0>],
		[<abyssalcraft:dltfence:*>, <abyssalcraft:dltplank:0>],
		[<minecraft:spruce_fence:*>, <minecraft:planks:1>],
		[<minecraft:birch_fence:*>, <minecraft:planks:2>],
		[<minecraft:jungle_fence:*>, <minecraft:planks:3>],
		[<minecraft:dark_oak_fence:*>, <minecraft:planks:5>],
		[<minecraft:acacia_fence:*>, <minecraft:planks:4>],
		[<abyssalcraft:dltstairs:*>, <abyssalcraft:dltplank:0>],
		[<abyssalcraft:dcstairs:*>, <abyssalcraft:cobblestone:0>],
		[<minecraft:fence:*>, <minecraft:planks:0>],

		[<betterwithmods:wood_table:*>, <minecraft:planks:0>],

		[<minecraft:spruce_stairs:*>, <minecraft:planks:1>],
		[<minecraft:birch_stairs:*>, <minecraft:planks:2>],
		[<minecraft:jungle_stairs:*>, <minecraft:planks:3>],
		[<minecraft:dark_oak_stairs:*>, <minecraft:planks:5>],
		[<minecraft:acacia_stairs:*>, <minecraft:planks:4>],
		[<minecraft:sandstone_stairs:*>, <minecraft:sandstone:2>],

		// Coal
		[<minecraft:coal_ore:0>],
		[<geolosys:ore_vanilla:0>],
		[<geolosys:ore_sample_vanilla:0>, <immcraft:rock:0>],

		// Abyssalcraft
		[<abyssalcraft:coraliumore:0>],
		[<abyssalcraft:abypcorore:0>, <abyssalcraft:stone:1>],
		[<abyssalcraft:abylcorore:0>, <abyssalcraft:stone:1>],

		// Nitre
		[<abyssalcraft:nitreore:0>],
		[<abyssalcraft:abynitore:0>, <abyssalcraft:stone:1>],

		// Copper
		[<immersiveengineering:ore:0>],
		[<geolosys:ore:2>],
		[<geolosys:ore_sample:2>, <immcraft:rock:0>],
		[<geolosys:ore:3>],
		[<geolosys:ore_sample:3>, <immcraft:rock:0>],
		[<abyssalcraft:abycopore:0>, <abyssalcraft:stone:1>],

		// Tin
		[<geolosys:ore:4>],
		[<geolosys:ore:5>],
		[<geolosys:ore_sample:4>, <immcraft:rock:0>],
		[<geolosys:ore_sample:5>, <immcraft:rock:0>],
		[<abyssalcraft:abytinore:0>, <abyssalcraft:stone:1>],

		// Black Quarts
		[<actuallyadditions:block_misc:3>],

		// Aquamarine ContentTweaker
		[<materialpart:aquamarine:ore_minecraft_stone>]
	],

	stageTwo.stage : [
		[<minecraft:iron_bars:*>],

		[<minecraft:stonebrick:0>, <minecraft:cobblestone:0>],
		[<minecraft:stonebrick:1>, <minecraft:cobblestone:0>],
		[<minecraft:stonebrick:2>, <minecraft:cobblestone:0>],
		[<minecraft:stonebrick:3>, <minecraft:cobblestone:0>],
		[<minecraft:bookshelf:0>, <minecraft:planks:0>],

		[<minecraft:wool:0>, <minecraft:planks:0>],
		[<minecraft:wool:1>, <minecraft:planks:0>],
		[<minecraft:wool:2>, <minecraft:planks:0>],
		[<minecraft:wool:3>, <minecraft:planks:0>],
		[<minecraft:wool:4>, <minecraft:planks:0>],
		[<minecraft:wool:5>, <minecraft:planks:0>],
		[<minecraft:wool:6>, <minecraft:planks:0>],
		[<minecraft:wool:7>, <minecraft:planks:0>],
		[<minecraft:wool:8>, <minecraft:planks:0>],
		[<minecraft:wool:9>, <minecraft:planks:0>],
		[<minecraft:wool:10>, <minecraft:planks:0>],
		[<minecraft:wool:11>, <minecraft:planks:0>],
		[<minecraft:wool:12>, <minecraft:planks:0>],
		[<minecraft:wool:13>, <minecraft:planks:0>],
		[<minecraft:wool:14>, <minecraft:planks:0>],
		[<minecraft:wool:15>, <minecraft:planks:0>],

		// Iron
		[<minecraft:iron_ore:0>],
		[<geolosys:ore:0>],
		[<geolosys:ore_sample:0>, <immcraft:rock:0>],
		[<abyssalcraft:abyiroore:0>, <abyssalcraft:stone:1>],

		// Lapis
		[<minecraft:lapis_ore:0>],
		[<minecraft:lapis_block:0>],
		[<geolosys:ore_vanilla:3>],
		[<geolosys:ore_sample_vanilla:3>, <immcraft:rock:0>],

		// Gold
		[<minecraft:gold_ore:0>],
		[<geolosys:ore_vanilla:2>],
		[<geolosys:ore_sample_vanilla:2>, <immcraft:rock:0>],
		[<minecraft:gold_block:0>],
		[<abyssalcraft:abygolore:0>, <abyssalcraft:stone:1>],

		// Redstone
		[<minecraft:redstone_ore:0>],

		// Astral Sorcery
		[<astralsorcery:blockcustomsandore:0>, <minecraft:sand:0>],
		[<astralsorcery:blockcustomore:0>],
		[<astralsorcery:blockgeolosyssamplecluster:0>, <immcraft:rock:0>]
	],

	stageThree.stage : [
		[<minecraft:obsidian:0>, <chisel:basalt:0>],
		[<chisel:obsidian:0>, <chisel:basalt:1>],
		[<chisel:obsidian:1>, <chisel:basalt:2>],
		[<chisel:obsidian:2>, <chisel:basalt:3>],
		[<chisel:obsidian:3>, <chisel:basalt:4>],
		[<chisel:obsidian:4>, <chisel:basalt:5>],
		[<chisel:obsidian:5>, <chisel:basalt:6>],
		[<chisel:obsidian:6>, <chisel:basalt:7>],
		[<chisel:obsidian:7>, <chisel:basalt:8>],
		[<chisel:obsidian:8>, <chisel:basalt:9>],
		[<chisel:obsidian:9>, <chisel:basalt:10>],
		[<chisel:obsidian:10>, <chisel:basalt:11>],
		[<chisel:obsidian:11>, <chisel:basalt:12>],
		[<chisel:obsidian:12>, <chisel:basalt:13>],
		[<chisel:obsidian:13>, <chisel:basalt:14>],
		[<chisel:obsidian:14>, <chisel:basalt:15>],

		// Silver + Lead
		[<geolosys:ore:6>],
		[<geolosys:ore_sample:6>, <immcraft:rock:0>],

		// Bauxite
		[<immersiveengineering:ore:1>],
		[<geolosys:ore:7>],
		[<geolosys:ore_sample:7>, <immcraft:rock:0>],

		// Lead
		[<immersiveengineering:ore:2>],

		// Nickel
		[<immersiveengineering:ore:4>],
		[<geolosys:ore:1>],
		[<geolosys:ore_sample:1>, <immcraft:rock:0>],

		// Nether
		[<minecraft:soul_sand:0>, <minecraft:dirt:0>],
		[<minecraft:glowstone:0>],
		[<minecraft:quartz_ore:0>, <minecraft:netherrack:0>],
		[<abyssalcraft:abyore:0>],

		// Platinum
		[<geolosys:ore:8>],
		[<geolosys:ore_sample:8>, <immcraft:rock:0>],

		// Redstone
		[<mundaneredstone:redstone_ore:0>],
		[<geolosys:ore_vanilla:1>],
		[<geolosys:ore_sample_vanilla:1>, <immcraft:rock:0>],
		[<minecraft:redstone_block:0>, <minecraft:stone:1>],
		[<chisel:redstone:0>, <chisel:granite:0>],
		[<chisel:redstone:1>, <chisel:granite:1>],
		[<chisel:redstone:2>, <chisel:granite:2>],
		[<chisel:redstone:3>, <chisel:granite:3>],
		[<chisel:redstone:4>, <chisel:granite:4>],
		[<chisel:redstone:5>, <chisel:granite:5>],
		[<chisel:redstone:6>, <chisel:granite:6>],
		[<chisel:redstone:7>, <chisel:granite:7>],
		[<chisel:redstone:8>, <chisel:granite:8>],
		[<chisel:redstone:9>, <chisel:granite:9>],
		[<chisel:redstone:10>, <chisel:granite:10>],
		[<chisel:redstone:11>, <chisel:granite:11>],
		[<chisel:redstone:12>, <chisel:granite:12>],
		[<chisel:redstone:13>, <chisel:granite:13>],
		[<chisel:redstone:14>, <chisel:granite:14>],
		[<chisel:redstone:15>, <chisel:granite:15>],
		[<chisel:redstone1:0>, <chisel:granite1:0>],
		[<chisel:redstone1:1>, <chisel:granite1:1>],
		[<chisel:redstone1:2>, <chisel:granite1:2>],
		[<chisel:redstone1:3>, <chisel:granite1:3>],
		[<chisel:redstone1:4>, <chisel:granite1:4>],
		[<chisel:redstone1:5>, <chisel:granite1:5>],
		[<chisel:redstone1:6>, <chisel:granite1:6>],
		[<chisel:redstone1:7>, <chisel:granite1:7>],
		[<chisel:redstone1:8>, <chisel:granite1:8>],
		[<chisel:redstone1:9>, <chisel:granite1:9>],
		[<chisel:redstone1:10>, <chisel:granite1:10>],
		[<chisel:redstone1:11>, <chisel:granite1:11>],

		// Silver
		[<immersiveengineering:ore:3>]
	],

	stageFour.stage : [
		[<tconstruct:ore:0>, <minecraft:netherrack:0>],
		[<tconstruct:ore:1>, <minecraft:netherrack:0>],

		// Quartz
		[<geolosys:ore_vanilla:4>],
		[<geolosys:ore_sample_vanilla:4>, <immcraft:rock:0>],

		// Certus Quartz
		[<appliedenergistics2:quartz_ore:0>],
		[<appliedenergistics2:charged_quartz_ore:0>],

		// Silicon
		[<galacticraftcore:basic_block_core:8>],
		[<contenttweaker:sub_block_holder_0:5>, <immcraft:rock:0>]
	],

	stageFive.stage : [
		// Diamond
		[<minecraft:diamond_ore:0>],
		[<geolosys:ore_vanilla:5>],
		[<geolosys:ore_sample_vanilla:5>, <immcraft:rock:0>],
		[<abyssalcraft:abydiaore:0>, <abyssalcraft:stone:1>],

		// Emerald
		[<minecraft:emerald_ore:0>],
		[<geolosys:ore_vanilla:6>],
		[<geolosys:ore_sample_vanilla:6>, <immcraft:rock:0>],

		// Uranium
		[<immersiveengineering:ore:5>],
		[<geolosys:ore:9>],
		[<geolosys:ore_sample:9>, <immcraft:rock:0>],

		// Dimensional Shard Ore
		[<rftools:dimensional_shard_ore:0>, <minecraft:magma:0>],
		[<rftools:dimensional_shard_ore:1>, <minecraft:glowstone:0>],
		[<rftools:dimensional_shard_ore:2>, <minecraft:glowstone:0>],

		// Osmium
		[<mekanism:oreblock:0>],
		[<materialpart:osmium:ore_minecraft_stone>],
		[<contenttweaker:sub_block_holder_0:6>, <immcraft:rock:0>]
	],

	// Just to hide any in generation etc going forward, disable these
	// Generally used for when it generated in worlds due to a bug etc
	stageDisabled.stage : [
		[<geolosys:cluster:10>],
		[<geolosys:ore:10>],
		[<geolosys:ore_sample:10>, <immcraft:rock:0>],
		[<cyclicmagic:uncrafting_block:0>]
	]
};

static nonDefaultReplacementItemsForStage as IIngredient[][][string] = {
	stageOne.stage : [
		[<minecraft:ladder:*>, <minecraft:planks:0>],

		// Torches
		[<minecraft:torch:0>, <primal_tech:fibre_torch_lit:0>],
		[<minecraft:torch:1>, <primal_tech:fibre_torch_lit:1>],
		[<minecraft:torch:2>, <primal_tech:fibre_torch_lit:2>],
		[<minecraft:torch:3>, <primal_tech:fibre_torch_lit:3>],
		[<minecraft:torch:4>, <primal_tech:fibre_torch_lit:4>],
		[<minecraft:torch:5>, <primal_tech:fibre_torch_lit:5>]
	],

	stageThree.stage : [
		// Worldgen Items
		[<minecraft:rail:*>, <immcraft:rock:0>],
		[<betterwithaddons:rail_rusted:*>, <immcraft:rock:0>],

		// Nether
		[<minecraft:netherrack:0>, <primal_tech:charcoal_block>]
	]
};

// TODO: Add support for staging these in ZenStages
OreStages.addNonDefaultingReplacementById(stageThree.stage, "minecraft:nether_wart:0", "minecraft:beetroots:0");
OreStages.addNonDefaultingReplacementById(stageThree.stage, "minecraft:nether_wart:1", "minecraft:beetroots:1");
OreStages.addNonDefaultingReplacementById(stageThree.stage, "minecraft:nether_wart:2", "minecraft:beetroots:2");
OreStages.addNonDefaultingReplacementById(stageThree.stage, "minecraft:nether_wart:3", "minecraft:beetroots:3");

/*
	Init method to perform the logic for the script.
*/
function init() {
	addOreReplacements(replacementItemsForStage, false);
	addOreReplacements(nonDefaultReplacementItemsForStage, true);
}

function addOreReplacements(replacementItemsForStage as IIngredient[][][string], isNonDefaulting as bool) {
	for stageName, itemReplacementPairs in replacementItemsForStage {
		var stage as Stage = ZenStager.getStage(stageName);

		for itemReplacementPair in itemReplacementPairs {
			var length as int = itemReplacementPair.length;

			if (length == 1) {
				stage.addOreReplacement(itemReplacementPair[0], isNonDefaulting);
			} else if (length == 2) {
				stage.addOreReplacement(itemReplacementPair[0], itemReplacementPair[1].items[0], isNonDefaulting);
			}
		}
	}
}
