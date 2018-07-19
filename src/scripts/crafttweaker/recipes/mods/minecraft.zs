/*
	SevTech: Ages Minecraft Recipe Script

	This script handles the recipes for Minecraft.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.utils;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

/*
	Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:furnace>: [
		[
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
			[<ore:cobblestone>, null, <ore:cobblestone>],
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
		]
	],
	<minecraft:cobblestone_wall>: [
		[
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
		]
	],
	<minecraft:wooden_button>: [
		[[<ore:plankWood>]]
	],
	<minecraft:stone_button>: [
		[[<minecraft:stone>]]
	],
	<minecraft:web>: [
		[
			[<ore:stickWood>, <minecraft:string>, <ore:stickWood>],
			[<minecraft:string>, <minecraft:string>, <minecraft:string>],
			[<ore:stickWood>, <minecraft:string>, <ore:stickWood>]
		]
	],
	<minecraft:map>: [
		[
			[<ore:paper>, <ore:paper>, <ore:paper>],
			[<ore:paper>, <minecraft:compass>, <ore:paper>],
			[<ore:paper>, <ore:paper>, <ore:paper>]
		]
	],
	<minecraft:brick_block>: [
		[
			[<minecraft:brick>, <minecraft:brick>],
			[<minecraft:brick>, <minecraft:brick>]
		]
	],
	<minecraft:saddle>: [
		[
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<primal:leather_cordage>, <primal:leather_cordage>, <primal:leather_cordage>]
		]
	],
	<minecraft:leather_helmet>: [
		[
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<minecraft:leather>, null, <minecraft:leather>]
		]
	],
	<minecraft:leather_chestplate>: [
		[
			[<minecraft:leather>, null, <minecraft:leather>],
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]
		]
	],
	<minecraft:leather_leggings>: [
		[
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<minecraft:leather>, null, <minecraft:leather>],
			[<minecraft:leather>, null, <minecraft:leather>]
		]
	],
	<minecraft:leather_boots>: [
		[
			[<minecraft:leather>, null, <minecraft:leather>],
			[<minecraft:leather>, null, <minecraft:leather>]
		]
	],
	<minecraft:bowl>: [
		[[<primal:flint_workblade:*>, <ore:plankWood>]],
		[[<primal:quartz_workblade:*>, <ore:plankWood>]],
		[[<primal:iron_workblade:*>, <ore:plankWood>]],
		[[<primal:emerald_workblade:*>, <ore:plankWood>]],
		[[<primal:diamond_workblade:*>, <ore:plankWood>]],
		[[<primal:opal_workblade:*>, <ore:plankWood>]],
		[[<primal:obsidian_workblade:*>, <ore:plankWood>]]
	],
    <minecraft:stone_slab2> * 3: [
		[[<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>]]
	],
	<minecraft:stone_slab> * 3: [
		[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]
	],
	<minecraft:stone_slab:1> * 3: [
		[[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]
	],
	<minecraft:stone_slab:3> * 3: [
		[[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]
	],
	<minecraft:stone_slab:4> * 3: [
		[[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
	],
	<minecraft:stone_slab:7> * 3: [
		[[<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>]]
	],
	<minecraft:wooden_slab> * 3: [
		[[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
	],
	<minecraft:wooden_slab:1> * 3: [
		[[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
	],
	<minecraft:wooden_slab:2> * 3: [
		[[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
	],
	<minecraft:wooden_slab:3> * 3: [
		[[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
	],
	<minecraft:wooden_slab:4> * 3: [
		[[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
	],
	<minecraft:wooden_slab:5> * 3: [
		[[<minecraft:cobblestone>], [<minecraft:cobblestone>], [<minecraft:cobblestone>]]
	],
	<minecraft:stone_sword>: [
		[[<minecraft:cobblestone>], [<minecraft:cobblestone>], [<ore:stickWood>]]
	],
	<minecraft:ladder> * 3: [
		[
			[<ore:stickWood>, null, <ore:stickWood>],
			[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
			[<ore:stickWood>, null, <ore:stickWood>]
		]
	],
	<minecraft:crafting_table>: [
		[[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]
	],
	<minecraft:item_frame>: [
		[
			[mouldingWood, mouldingWood, mouldingWood],
			[mouldingWood, <ore:hideTanned>, mouldingWood],
			[mouldingWood, mouldingWood, mouldingWood]
		]
	],
	<minecraft:chest>: [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[null, <primalchests:primal_chest_advanced>, null],
			[<ore:plankWood>, null, <ore:plankWood>]
		]
	],
	<minecraft:arrow> * 4: [
		[
			[<minecraft:flint>, null, null],
			[null, <ore:stickWood>, null],
			[null, null, <minecraft:feather>]
		],
		[
			[<minecraft:flint>, null, null],
			[null, <ore:stickWood>, null],
			[null, null, <twilightforest:raven_feather>]
		]
	],
	<minecraft:glass_bottle> * 3: [
		[[<ore:blockGlass>, null, <ore:blockGlass>], [null, <ore:blockGlass>, null]]
	],
	<minecraft:stone_slab:5> * 3: [
		[[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]
	],
	<minecraft:bed>: [
		[
			[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:1>: [
		[
			[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:2>: [
		[
			[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:3>: [
		[
			[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:4>: [
		[
			[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:5>: [
		[
			[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:6>: [
		[
			[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:7>: [
		[
			[<minecraft:wool:7>, <minecraft:wool:7>, <minecraft:wool:7>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:8>: [
		[
			[<minecraft:wool:8>, <minecraft:wool:8>, <minecraft:wool:8>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:9>: [
		[
			[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:10>: [
		[
			[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:11>: [
		[
			[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:12>: [
		[
			[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:13>: [
		[
			[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:14>: [
		[
			[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:bed:15>: [
		[
			[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:light_weighted_pressure_plate>: [
		[[metals.gold.plate, metals.gold.plate]]
	],
	<minecraft:heavy_weighted_pressure_plate>: [
		[[metals.iron.plate, metals.iron.plate]]
	],
	<minecraft:bookshelf>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:golden_axe>: [
		[
			[metals.gold.plate, metals.gold.plate, null],
			[metals.gold.plate, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:golden_boots>: [
		[
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_chestplate>: [
		[
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<minecraft:golden_helmet>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_hoe>: [
		[
			[metals.gold.plate, metals.gold.plate, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:golden_leggings>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_pickaxe>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:golden_shovel>: [
		[
			[null, metals.gold.plate, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:golden_sword>: [
		[
			[null, metals.gold.plate, null],
			[null, metals.gold.plate, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:hopper>: [
		[
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<minecraft:iron_bars> * 16: [
		[
			[metals.iron.rod, metals.iron.rod, metals.iron.rod],
			[metals.iron.rod, metals.iron.rod, metals.iron.rod]
		]
	],
	<minecraft:iron_axe>: [
		[
			[metals.iron.plate, metals.iron.plate, null],
			[metals.iron.plate, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_boots>: [
		[
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_chestplate>: [
		[
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<minecraft:iron_helmet>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_hoe>: [
		[
			[metals.iron.plate, metals.iron.plate, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_leggings>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_pickaxe>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_shovel>: [
		[
			[null, metals.iron.plate, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_sword>: [
		[
			[null, metals.iron.plate, null],
			[null, metals.iron.plate, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:name_tag>: [
		[
			[null, null, <minecraft:string>],
			[null, <minecraft:paper>, null],
			[null, <ore:dyeBlack>, null]
		]
	],
	<minecraft:piston>: [
		[
			[sidingWood, sidingWood, sidingWood],
			[<minecraft:cobblestone>, metals.iron.plate, <minecraft:cobblestone>],
			[<minecraft:cobblestone>, <thebetweenlands:octine_ingot>, <minecraft:cobblestone>]
		]
	],
	<minecraft:wool>: [
		[
			[null, <betterwithaddons:wool>, null],
			[<betterwithaddons:wool>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool>],
			[null, <betterwithaddons:wool>, null]
		]
	],
	<minecraft:wool:1>: [
		[
			[null, <betterwithaddons:wool:1>, null],
			[<betterwithaddons:wool:1>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:1>],
			[null, <betterwithaddons:wool:1>, null]
		]
	],
	<minecraft:wool:2>: [
		[
			[null, <betterwithaddons:wool:2>, null],
			[<betterwithaddons:wool:2>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:2>],
			[null, <betterwithaddons:wool:2>, null]
		]
	],
	<minecraft:wool:3>: [
		[
			[null, <betterwithaddons:wool:3>, null],
			[<betterwithaddons:wool:3>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:3>],
			[null, <betterwithaddons:wool:3>, null]
		]
	],
	<minecraft:wool:4>: [
		[
			[null, <betterwithaddons:wool:4>, null],
			[<betterwithaddons:wool:4>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:4>],
			[null, <betterwithaddons:wool:4>, null]
		]
	],
	<minecraft:wool:5>: [
		[
			[null, <betterwithaddons:wool:5>, null],
			[<betterwithaddons:wool:5>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:5>],
			[null, <betterwithaddons:wool:5>, null]
		]
	],
	<minecraft:wool:6>: [
		[
			[null, <betterwithaddons:wool:6>, null],
			[<betterwithaddons:wool:6>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:6>],
			[null, <betterwithaddons:wool:6>, null]
		]
	],
	<minecraft:wool:7>: [
		[
			[null, <betterwithaddons:wool:7>, null],
			[<betterwithaddons:wool:7>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:7>],
			[null, <betterwithaddons:wool:7>, null]
		]
	],
	<minecraft:wool:8>: [
		[
			[null, <betterwithaddons:wool:8>, null],
			[<betterwithaddons:wool:8>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:8>],
			[null, <betterwithaddons:wool:8>, null]
		]
	],
	<minecraft:wool:9>: [
		[
			[null, <betterwithaddons:wool:9>, null],
			[<betterwithaddons:wool:9>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:9>],
			[null, <betterwithaddons:wool:9>, null]
		]
	],
	<minecraft:wool:10>: [
		[
			[null, <betterwithaddons:wool:10>, null],
			[<betterwithaddons:wool:10>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:10>],
			[null, <betterwithaddons:wool:10>, null]
		]
	],
	<minecraft:wool:11>: [
		[
			[null, <betterwithaddons:wool:11>, null],
			[<betterwithaddons:wool:11>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:11>],
			[null, <betterwithaddons:wool:11>, null]
		]
	],
	<minecraft:wool:12>: [
		[
			[null, <betterwithaddons:wool:12>, null],
			[<betterwithaddons:wool:12>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:12>],
			[null, <betterwithaddons:wool:12>, null]
		]
	],
	<minecraft:wool:13>: [
		[
			[null, <betterwithaddons:wool:13>, null],
			[<betterwithaddons:wool:13>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:13>],
			[null, <betterwithaddons:wool:13>, null]
		]
	],
	<minecraft:wool:14>: [
		[
			[null, <betterwithaddons:wool:14>, null],
			[<betterwithaddons:wool:14>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:14>],
			[null, <betterwithaddons:wool:14>, null]
		]
	],
	<minecraft:wool:15>: [
		[
			[null, <betterwithaddons:wool:15>, null],
			[<betterwithaddons:wool:15>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:15>],
			[null, <betterwithaddons:wool:15>, null]
		]
	],
	<minecraft:acacia_boat>: [
		[[sidingAcacia, null, sidingAcacia], [sidingAcacia, sidingAcacia, sidingAcacia]]
	],
	<minecraft:birch_boat>: [
		[[sidingBirch, null, sidingBirch], [sidingBirch, sidingBirch, sidingBirch]]
	],
	<minecraft:boat>: [
		[[sidingOak, null, sidingOak], [sidingOak, sidingOak, sidingOak]]
	],
	<minecraft:dark_oak_boat>: [
		[[sidingDarkoak, null, sidingDarkoak], [sidingDarkoak, sidingDarkoak, sidingDarkoak]]
	],
	<minecraft:jungle_boat>: [
		[[sidingJungle, null, sidingJungle], [sidingJungle, sidingJungle, sidingJungle]]
	],
	<minecraft:spruce_boat>: [
		[[sidingSpruce, null, sidingSpruce], [sidingSpruce, sidingSpruce, sidingSpruce]]
	],
	<minecraft:clock>: [
		[
			[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>],
			[metals.gold.plate, <minecraft:dye:4>, metals.gold.plate],
			[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>]
		]
	],
	<minecraft:compass>: [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, <tconstruct:arrow_head>.withTag({Material: "iron"}), metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<minecraft:enchanting_table>: [
		[
			[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>],
			[<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>],
			[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]
		]
	],
	<minecraft:cake>: [
		[
			[
				scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk"),
				scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk"),
				scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk")
			],
			[<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
			[null, <ore:foodFlour>, null]
		]
	],
	<minecraft:activator_rail> * 2: [
		[
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone_torch>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
		]
	],
	<minecraft:detector_rail> * 2: [
		[
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
			[metals.iron.plate, <minecraft:light_weighted_pressure_plate>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone>, metals.iron.plate]
		]
	],
	<minecraft:golden_rail> * 4: [
		[
			[metals.gold.plate, <minecraft:redstone>, metals.gold.plate],
			[metals.gold.plate, <ore:plankWood>, metals.gold.plate],
			[metals.gold.plate, <minecraft:redstone>, metals.gold.plate]
		]
	],
	<minecraft:rail> * 8: [
		[
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
		]
	],
	<minecraft:skull:1> * 3: [
		[
			[<mysticalagradditions:stuff:1>, <mysticalagradditions:stuff:1>, null],
			[<mysticalagradditions:stuff:1>, null, null],
			[null, null, null]
		]
	],
	<minecraft:ender_chest>: [
		[
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		],
		[
			[<minecraft:obsidian>, <minecraft:ender_eye>, <minecraft:obsidian>],
			[<quark:biotite>, <ironchest:iron_chest:6>, <quark:biotite>],
			[<minecraft:obsidian>, <quark:biotite>, <minecraft:obsidian>]
		]
	],
	<minecraft:diamond_helmet>: [
		[
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_chestplate>: [
		[
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_leggings>: [
		[
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_boots>: [
		[
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	// ==================================
	// Stage Three
	// ==================================
	<minecraft:piston>: {
		Utils.genRecipeName(stageThree, "piston"): [
			[
				[sidingWood, sidingWood, sidingWood],
				[<minecraft:cobblestone>, metals.iron.plate, <minecraft:cobblestone>],
				[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>]
			]
		]
	},
	<ore:dyeBlack>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeBlack>.firstItem): [
			[
				[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>],
				[null, null, null],
				[null, null, null]
			]
		]
	},
	<ore:dyeRed>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeRed>.firstItem): [
			[
				[null, null, null],
				[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>],
				[null, null, null]
			]
		]
	},
	<ore:dyePurple>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyePurple>.firstItem): [
			[
				[null, null, null],
				[null, null, null],
				[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>]
			]
		]
	},
	<ore:dyeCyan>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeCyan>.firstItem): [
			[
				[<mysticalagriculture:dye_essence>, null, null],
				[<mysticalagriculture:dye_essence>, null, null],
				[<mysticalagriculture:dye_essence>, null, null]
			]
		]
	},
	<ore:dyeLightGray>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLightGray>.firstItem): [
			[
				[null, <mysticalagriculture:dye_essence>, null],
				[null, <mysticalagriculture:dye_essence>, null],
				[null, <mysticalagriculture:dye_essence>, null]
			]
		]
	},
	<ore:dyeGray>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeGray>.firstItem): [
			[
				[null, null, <mysticalagriculture:dye_essence>],
				[null, null, <mysticalagriculture:dye_essence>],
				[null, null, <mysticalagriculture:dye_essence>]
			]
		]
	},
	<ore:dyePink>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyePink>.firstItem): [
			[
				[<mysticalagriculture:dye_essence>, null, null],
				[null, <mysticalagriculture:dye_essence>, null],
				[null, null, <mysticalagriculture:dye_essence>]
			]
		]
	},
	<ore:dyeLime>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLime>.firstItem): [
			[
				[null, null, <mysticalagriculture:dye_essence>],
				[null, <mysticalagriculture:dye_essence>, null],
				[<mysticalagriculture:dye_essence>, null, null]
			]
		]
	},
	<ore:dyeYellow>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeYellow>.firstItem): [
			[
				[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
				[null, <mysticalagriculture:dye_essence>, null],
				[null, null, null]
			]
		]
	},
	<ore:dyeLightBlue>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLightBlue>.firstItem): [
			[
				[null, <mysticalagriculture:dye_essence>, null],
				[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
				[null, null, null]
			]
		]
	},
	<ore:dyeMagenta>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeMagenta>.firstItem): [
			[
				[null, null, null],
				[null, <mysticalagriculture:dye_essence>, null],
				[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>]
			]
		]
	},
	<ore:dyeOrange>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeOrange>.firstItem): [
			[
				[null, null, null],
				[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
				[null, <mysticalagriculture:dye_essence>, null]
			]
		]
	}
};

/*
	Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:lead>: [
		[
			[<minecraft:string>, null, null],
			[null, <ore:cordageLeather>, null],
			[null, null, <minecraft:string>]
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
	Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<minecraft:flint> * 9: [
		[<betterwithmods:aesthetic:5>]
	],
	<minecraft:flint>: [
		[<pickletweaks:grass_mesh:*>, <minecraft:gravel>],
		[<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]
	],
	<minecraft:string> * 4: [
		[<betterwithaddons:wool:*>, <ore:toolShears>.transformNew(scripts.crafttweaker.transformers.shearsTransformFunction)],
		[<betterwithaddons:wool:*>, <ore:toolWorkBlade>]
	],
	<minecraft:string> * 8: [
		[<betterwithaddons:bolt:6>]
	],
	<minecraft:string>: [
		[<ore:toolWorkBlade>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]
	],
	<minecraft:farmland>: [
		[<minecraft:dirt>, <minecraft:dye:15>]
	],
	<minecraft:gunpowder>: [
		[<betterwithmods:material:37>, <ore:dyeBlack>, <ore:foodSalt>]
	],
	<minecraft:torch> * 2: [
		[<minecraft:coal:*>, <ore:cordageGeneral>, <ore:stickWood>],
		[<minecraft:coal:*>, <primal_tech:fibre_torch>]
	],
	<minecraft:book>: [
		[<minecraft:paper>, <minecraft:leather>, <minecraft:paper>, <betterwithmods:material:12>]
	],
	<minecraft:writable_book>: [
		[<minecraft:book>, <minecraft:dye>, <minecraft:feather>]
	],
	// Arrow Bundle -> Arrows
	<minecraft:arrow> * 8: [
		[<betterwithaddons:bundle:1>]
	],
	<minecraft:hopper>: [
		[<uppers:upper>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	// ==================================
	// Stage Three
	// ==================================
	<minecraft:torch> * 2: {
		Utils.genRecipeName(stageThree, "torch"): [
			[<immersiveengineering:material:6>, <betterwithmods:rope>, <ore:stickWood>]
		]
	}
};

/*
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<minecraft:bread>: [<horsepower:dough>]
};

/*
	Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<minecraft:acacia_boat>,
	<minecraft:activator_rail>,
	<minecraft:arrow>,
	<minecraft:bed:*>,
	<minecraft:birch_boat>,
	<minecraft:boat>,
	<minecraft:book>,
	<minecraft:bowl>,
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:brick_block>,
	<minecraft:bucket>,
	<minecraft:cake>,
	<minecraft:chest>,
	<minecraft:clay>,
	<minecraft:clock>,
	<minecraft:coal:1>,
	<minecraft:coal>,
	<minecraft:coal_block>,
	<minecraft:compass>,
	<minecraft:crafting_table>,
	<minecraft:dark_oak_boat>,
	<minecraft:detector_rail>,
	<minecraft:diamond>,
	<minecraft:diamond_block>,
	<minecraft:diamond_boots>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_leggings>,
	<minecraft:dye:15>,
	<minecraft:emerald_block>,
	<minecraft:enchanting_table>,
	<minecraft:ender_chest>,
	<minecraft:farmland>,
	<minecraft:flint>,
	<minecraft:glass>,
	<minecraft:glass_bottle>,
	<minecraft:glass_pane>,
	<minecraft:gold_block>,
	<minecraft:gold_ingot>,
	<minecraft:gold_nugget>,
	<minecraft:golden_axe>,
	<minecraft:golden_boots>,
	<minecraft:golden_chestplate>,
	<minecraft:golden_helmet>,
	<minecraft:golden_hoe>,
	<minecraft:golden_leggings>,
	<minecraft:golden_pickaxe>,
	<minecraft:golden_rail>,
	<minecraft:golden_shovel>,
	<minecraft:golden_sword>,
	<minecraft:gunpowder>,
	<minecraft:heavy_weighted_pressure_plate>,
	<minecraft:hopper>,
	<minecraft:iron_axe>,
	<minecraft:iron_bars>,
	<minecraft:iron_block>,
	<minecraft:iron_boots>,
	<minecraft:iron_chestplate>,
	<minecraft:iron_helmet>,
	<minecraft:iron_hoe>,
	<minecraft:iron_ingot>,
	<minecraft:iron_leggings>,
	<minecraft:iron_nugget>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_sword>,
	<minecraft:item_frame>,
	<minecraft:jukebox>,
	<minecraft:jungle_boat>,
	<minecraft:ladder>,
	<minecraft:lapis_block>,
	<minecraft:lead>,
	<minecraft:leather>,
	<minecraft:leather_boots>,
	<minecraft:leather_chestplate>,
	<minecraft:leather_helmet>,
	<minecraft:leather_leggings>,
	<minecraft:light_weighted_pressure_plate>,
	<minecraft:map>,
	<minecraft:netherbrick>,
	<minecraft:paper>,
	<minecraft:piston>,
	<minecraft:rail>,
	<minecraft:redstone_block>,
	<minecraft:saddle>,
	<minecraft:string>,
	<minecraft:spruce_boat>,
	<minecraft:stone_slab2>,
	<minecraft:stone_slab:1>,
	<minecraft:stone_slab:3>,
	<minecraft:stone_slab:4>,
	<minecraft:stone_slab:5>,
	<minecraft:stone_slab:5>,
	<minecraft:stone_slab:7>,
	<minecraft:stone_slab>,
	<minecraft:torch>,
	<minecraft:water_bucket>,
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:4>,
	<minecraft:wooden_slab:5>,
	<minecraft:wooden_slab>,
	<minecraft:wool:*>,
	<minecraft:writable_book>
];

static removeRegex as string[] = [
	"minecraft:emerald",
	"minecraft:lapis_lazuli",
	"minecraft:redstone"
];

static removeFurnace as IIngredient[] = [
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:coal:1>, // Charcoal Revamp
	<minecraft:glass>, // Glass Revamp
	<minecraft:leather>,
	<minecraft:netherbrick>,
	<minecraft:diamond>,
	<minecraft:emerald>
];

static removeFurnaceInput as IIngredient[IIngredient] = {
	<minecraft:coal_block>: <extraplanets:kepler22b:5>,
	<minecraft:quartz>: <galacticraftplanets:venus:9>
};

function initElytraRecipe() {
	recipes.addShapeless("colored_elytra",
		<minecraft:elytra>.withTag({}),
		[<minecraft:elytra:*>.marked("elytra"), <ore:dye>.marked("dye")],
		function(out, ins, cInfo) {
			//Get dye color
			var color as string = utils.getDyeColor(ins.dye);
			var colorId as int = utils.getDyeIdFromColor(color);

			var currentTag = ins.elytra.tag;
			var newTag = currentTag.update({"quark:elytraDye": colorId});

			return ins.elytra.withTag(newTag);
		},
		null
	);
}

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapelessRecipes;

	// Furnace recipes
	var furnaceRecipes as IIngredient[][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.furnaceRecipes;

	// Removals
	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.minecraft.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.minecraft.removeRecipes;
	var removeFurnace as IIngredient[] = scripts.crafttweaker.recipes.mods.minecraft.removeFurnace;
	var removeFurnaceInput as IIngredient[IIngredient] = scripts.crafttweaker.recipes.mods.minecraft.removeFurnaceInput;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	// Furnace recipes
	recipeUtil.processFurnace(furnaceRecipes);

	// Removals
	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
	recipeUtil.removeFurnace(removeFurnace);
	recipeUtil.removeFurnace(removeFurnaceInput);

	// Init the Elytra recipe
	scripts.crafttweaker.recipes.mods.minecraft.initElytraRecipe();

	/*
		Specific Overrides
	*/
	recipes.remove(<ore:plankWood>);
	recipes.remove(<ore:stickWood>);
	recipes.removeShaped(<minecraft:skull:1> * 3);
	recipes.removeShapeless(<minecraft:cobblestone>, [<overloaded:compressed_cobblestone>]);
	recipes.removeShapeless(<minecraft:obsidian>, [<overloaded:compressed_obsidian>]);
}
