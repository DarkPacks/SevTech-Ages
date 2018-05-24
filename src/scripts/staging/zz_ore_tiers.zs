import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/*
	Ore Tiers

	https://github.com/Darkhax-Minecraft/Ore-Stages/blob/master/src/main/java/net/darkhax/orestages/compat/crt/OreTiersCrT.java
*/
var replacementItemsForStage as IIngredient[][][string] = {
	STAGES.one : [
		//Village Replacement for stage1
		[<minecraft:oak_stairs:*>, <minecraft:planks>],
		[<minecraft:stone_stairs:*>, <minecraft:cobblestone>],
		[<abyssalcraft:dltfence:*>, <abyssalcraft:dltplank>],
		[<minecraft:spruce_fence:*>, <minecraft:planks:1>],
		[<minecraft:birch_fence:*>, <minecraft:planks:2>],
		[<minecraft:jungle_fence:*>, <minecraft:planks:3>],
		[<minecraft:dark_oak_fence:*>, <minecraft:planks:5>],
		[<minecraft:acacia_fence:*>, <minecraft:planks:4>],
		[<abyssalcraft:dltstairs:*>, <abyssalcraft:dltplank>],
		[<abyssalcraft:dcstairs:*>, <abyssalcraft:cobblestone>],
		[<minecraft:fence:*>, <minecraft:planks>],

		[<betterwithmods:wood_table:*>, <minecraft:planks>],

		[<minecraft:spruce_stairs:*>, <minecraft:planks:1>],
		[<minecraft:birch_stairs:*>, <minecraft:planks:2>],
		[<minecraft:jungle_stairs:*>, <minecraft:planks:3>],
		[<minecraft:dark_oak_stairs:*>, <minecraft:planks:5>],
		[<minecraft:acacia_stairs:*>, <minecraft:planks:4>],
		[<minecraft:sandstone_stairs:*>, <minecraft:sandstone:2>],

		[<minecraft:wool>, <minecraft:planks>],
		[<minecraft:wool:1>, <minecraft:planks>],
		[<minecraft:wool:2>, <minecraft:planks>],
		[<minecraft:wool:3>, <minecraft:planks>],
		[<minecraft:wool:4>, <minecraft:planks>],
		[<minecraft:wool:5>, <minecraft:planks>],
		[<minecraft:wool:6>, <minecraft:planks>],
		[<minecraft:wool:7>, <minecraft:planks>],
		[<minecraft:wool:8>, <minecraft:planks>],
		[<minecraft:wool:9>, <minecraft:planks>],
		[<minecraft:wool:10>, <minecraft:planks>],
		[<minecraft:wool:11>, <minecraft:planks>],
		[<minecraft:wool:12>, <minecraft:planks>],
		[<minecraft:wool:13>, <minecraft:planks>],
		[<minecraft:wool:14>, <minecraft:planks>],
		[<minecraft:wool:15>, <minecraft:planks>],

		//Coal
		[<minecraft:coal_ore>],
		[<geolosys:ore_vanilla>],
		[<geolosys:ore_sample_vanilla>, <immcraft:rock>],

		//Abyssalcraft
		[<abyssalcraft:coraliumore>],
		[<abyssalcraft:abypcorore>, <abyssalcraft:stone:1>],
		[<abyssalcraft:abylcorore>, <abyssalcraft:stone:1>],

		//Nitre
		[<abyssalcraft:nitreore>],
		[<abyssalcraft:abynitore>, <abyssalcraft:stone:1>],

		//Copper
		[<immersiveengineering:ore>],
		[<geolosys:ore:2>],
		[<geolosys:ore_sample:2>, <immcraft:rock>],
		[<geolosys:ore:3>],
		[<geolosys:ore_sample:3>, <immcraft:rock>],
		[<abyssalcraft:abycopore>, <abyssalcraft:stone:1>],

		//Tin
		[<geolosys:ore:4>],
		[<geolosys:ore:5>],
		[<geolosys:ore_sample:4>, <immcraft:rock>],
		[<geolosys:ore_sample:5>, <immcraft:rock>],
		[<abyssalcraft:abytinore>, <abyssalcraft:stone:1>],

		//Black Quarts
		[<actuallyadditions:block_misc:3>],

		//Aquamarine ContentTweaker
		[<materialpart:aquamarine:ore_minecraft_stone>]
	],

	STAGES.two : [
		[<minecraft:iron_bars:*>],

		[<minecraft:stonebrick:0>, <minecraft:cobblestone>],
		[<minecraft:stonebrick:1>, <minecraft:cobblestone>],
		[<minecraft:stonebrick:2>, <minecraft:cobblestone>],
		[<minecraft:stonebrick:3>, <minecraft:cobblestone>],
		[<minecraft:mossy_cobblestone>, <minecraft:cobblestone>],
		[<minecraft:bookshelf>, <minecraft:planks>],

		//Iron
		[<minecraft:iron_ore>],
		[<geolosys:ore:0>],
		[<geolosys:ore_sample:0>, <immcraft:rock>],
		[<abyssalcraft:abyiroore>, <abyssalcraft:stone:1>],

		//Lapis
		[<minecraft:lapis_ore>],
		[<minecraft:lapis_block:0>],
		[<geolosys:ore_vanilla:3>],
		[<geolosys:ore_sample_vanilla:3>, <immcraft:rock>],

		//Gold
		[<minecraft:gold_ore>],
		[<geolosys:ore_vanilla:2>],
		[<geolosys:ore_sample_vanilla:2>, <immcraft:rock>],
		[<minecraft:gold_block>],
		[<abyssalcraft:abygolore>, <abyssalcraft:stone:1>],

		//Redstone
		[<minecraft:redstone_ore>],

		//Astral Sorcery
		[<astralsorcery:blockcustomsandore>, <minecraft:sand>],
		[<astralsorcery:blockcustomore>],
		[<astralsorcery:blockgeolosyssamplecluster>, <immcraft:rock>]
	],

	STAGES.three : [
		[<minecraft:obsidian>, <chisel:basalt>],
		[<chisel:obsidian>, <chisel:basalt:1>],
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

		//Silver + Lead
		[<geolosys:ore:6>],
		[<geolosys:ore_sample:6>, <immcraft:rock>],

		//Bauxite
		[<immersiveengineering:ore:1>],
		[<geolosys:ore:7>],
		[<geolosys:ore_sample:7>, <immcraft:rock>],

		//Lead
		[<immersiveengineering:ore:2>],

		//Nickel
		[<immersiveengineering:ore:4>],
		[<geolosys:ore:1>],
		[<geolosys:ore_sample:1>, <immcraft:rock>],

		//Nether
		[<minecraft:soul_sand>, <minecraft:dirt>],
		[<minecraft:glowstone>],
		[<minecraft:quartz_ore>, <minecraft:netherrack>],
		[<abyssalcraft:abyore>],

		//Platinum
		[<geolosys:ore:8>],
		[<geolosys:ore_sample:8>, <immcraft:rock>],

		//Redstone
		[<mundaneredstone:redstone_ore>],
		[<geolosys:ore_vanilla:1>],
		[<geolosys:ore_sample_vanilla:1>, <immcraft:rock>],
		[<minecraft:redstone_block>, <minecraft:stone:1>],
		[<chisel:redstone>, <chisel:granite>],
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
		[<chisel:redstone1>, <chisel:granite1>],
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

		//Silver
		[<immersiveengineering:ore:3>]
	],

	STAGES.four : [
		[<tconstruct:ore:0>, <minecraft:netherrack>],
		[<tconstruct:ore:1>, <minecraft:netherrack>],

		//Quartz
		[<geolosys:ore_vanilla:4>],
		[<geolosys:ore_sample_vanilla:4>, <immcraft:rock>],

		//Certus Quartz
		[<appliedenergistics2:quartz_ore>],
		[<appliedenergistics2:charged_quartz_ore>],

		//Silicon
		[<galacticraftcore:basic_block_core:8>],
		[<contenttweaker:sub_block_holder_0:5>, <immcraft:rock>]
	],

	STAGES.five : [
		//Diamond
		[<minecraft:diamond_ore>],
		[<geolosys:ore_vanilla:5>],
		[<geolosys:ore_sample_vanilla:5>, <immcraft:rock>],
		[<abyssalcraft:abydiaore>, <abyssalcraft:stone:1>],

		//Emerald
		[<minecraft:emerald_ore>],
		[<geolosys:ore_vanilla:6>],
		[<geolosys:ore_sample_vanilla:6>, <immcraft:rock>],

		//Uranium
		[<immersiveengineering:ore:5>],
		[<geolosys:ore:9>],
		[<geolosys:ore_sample:9>, <immcraft:rock>],

		//Dimensional Shard Ore
		[<rftools:dimensional_shard_ore>, <minecraft:magma>],
		[<rftools:dimensional_shard_ore:1>, <minecraft:glowstone>],
		[<rftools:dimensional_shard_ore:2>, <minecraft:glowstone>],

		//Osmium
		[<mekanism:oreblock>],
		[<materialpart:osmium:ore_minecraft_stone>],
		[<contenttweaker:sub_block_holder_0:6>, <immcraft:rock>]
	],

	//Just to hide any in generation etc going forward, disable these
	//Generally used for when it generated in worlds due to a bug etc
	STAGES.disabled : [
		[<geolosys:cluster:10>],
		[<geolosys:ore:10>],
		[<geolosys:ore_sample:10>, <immcraft:rock>],
		[<primal:ore_magnetite:*>],
		[<cyclicmagic:uncrafting_block>]
	]
};

for stage, itemReplacementPairs in replacementItemsForStage {
	for itemReplacementPair in itemReplacementPairs {
		var length = itemReplacementPair.length;

		if (length == 1) {
			mods.orestages.OreStages.addReplacement(stage, itemReplacementPair[0]);
		} else if (length == 2) {
			mods.orestages.OreStages.addReplacement(stage, itemReplacementPair[0], itemReplacementPair[1].items[0]);
		}
	}
}

var nonDefaultReplacementItemsForStage as IIngredient[][][string] = {
	STAGES.one : [
		[<minecraft:ladder:*>, <minecraft:planks>],

		//Torches
		[<minecraft:torch:0>, <primal_tech:fibre_torch_lit:0>],
		[<minecraft:torch:1>, <primal_tech:fibre_torch_lit:1>],
		[<minecraft:torch:2>, <primal_tech:fibre_torch_lit:2>],
		[<minecraft:torch:3>, <primal_tech:fibre_torch_lit:3>],
		[<minecraft:torch:4>, <primal_tech:fibre_torch_lit:4>],
		[<minecraft:torch:5>, <primal_tech:fibre_torch_lit:5>]
	],

	STAGES.three : [
		//Worldgen Items
		[<minecraft:rail:*>, <immcraft:rock>],

		// Nether
		[<minecraft:netherrack>, <primal_tech:charcoal_block>]
	]
};

for stage, itemReplacementPairs in nonDefaultReplacementItemsForStage {
	for itemReplacementPair in itemReplacementPairs {
		var length = itemReplacementPair.length;

		if (length == 1) {
			mods.orestages.OreStages.addNonDefaultingReplacement(stage, itemReplacementPair[0]);
		} else if (length == 2) {
			mods.orestages.OreStages.addNonDefaultingReplacement(stage, itemReplacementPair[0], itemReplacementPair[1].items[0]);
		}
	}
}

//Nether Wart
mods.orestages.OreStages.addNonDefaultingReplacementById(STAGES.three, "minecraft:nether_wart:0", "minecraft:beetroots:0");
mods.orestages.OreStages.addNonDefaultingReplacementById(STAGES.three, "minecraft:nether_wart:1", "minecraft:beetroots:1");
mods.orestages.OreStages.addNonDefaultingReplacementById(STAGES.three, "minecraft:nether_wart:2", "minecraft:beetroots:2");
mods.orestages.OreStages.addNonDefaultingReplacementById(STAGES.three, "minecraft:nether_wart:3", "minecraft:beetroots:3");
