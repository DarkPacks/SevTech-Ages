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
import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

/*
	Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:furnace:0>: [
		[
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
			[<ore:cobblestone>, null, <ore:cobblestone>],
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
		]
	],
	<minecraft:cobblestone_wall:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]
		]
	],
	<minecraft:web:0>: [
		[
			[<ore:stickWood>, <minecraft:string:0>, <ore:stickWood>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<ore:stickWood>, <minecraft:string:0>, <ore:stickWood>]
		]
	],
	<minecraft:map:0>: [
		[
			[<ore:paper>, <ore:paper>, <ore:paper>],
			[<ore:paper>, <minecraft:compass:0>, <ore:paper>],
			[<ore:paper>, <ore:paper>, <ore:paper>]
		]
	],
	<minecraft:brick_block:0>: [
		[
			[<minecraft:brick:0>, <minecraft:brick:0>],
			[<minecraft:brick:0>, <minecraft:brick:0>]
		]
	],
	<minecraft:saddle:0>: [
		[
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<primal:leather_cordage:0>, <primal:leather_cordage:0>, <primal:leather_cordage:0>]
		]
	],
	<minecraft:leather_helmet:0>: [
		[
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<minecraft:leather:0>, null, <minecraft:leather:0>]
		]
	],
	<minecraft:leather_chestplate:0>: [
		[
			[<minecraft:leather:0>, null, <minecraft:leather:0>],
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>]
		]
	],
	<minecraft:leather_leggings:0>: [
		[
			[<minecraft:leather:0>, <minecraft:leather:0>, <minecraft:leather:0>],
			[<minecraft:leather:0>, null, <minecraft:leather:0>],
			[<minecraft:leather:0>, null, <minecraft:leather:0>]
		]
	],
	<minecraft:leather_boots:0>: [
		[
			[<minecraft:leather:0>, null, <minecraft:leather:0>],
			[<minecraft:leather:0>, null, <minecraft:leather:0>]
		]
	],
	<minecraft:bowl:0>: [
		[[<primal:flint_workblade:*>, <ore:plankWood>]],
		[[<primal:quartz_workblade:*>, <ore:plankWood>]],
		[[<primal:iron_workblade:*>, <ore:plankWood>]],
		[[<primal:emerald_workblade:*>, <ore:plankWood>]],
		[[<primal:diamond_workblade:*>, <ore:plankWood>]],
		[[<primal:opal_workblade:*>, <ore:plankWood>]],
		[[<primal:obsidian_workblade:*>, <ore:plankWood>]]
	],
    <minecraft:stone_slab2:0> * 3: [
		[[<minecraft:red_sandstone:0>, <minecraft:red_sandstone:0>, <minecraft:red_sandstone:0>]]
	],
	<minecraft:stone_slab:0> * 3: [
		[[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]]
	],
	<minecraft:stone_slab:1> * 3: [
		[[<minecraft:sandstone:0>, <minecraft:sandstone:0>, <minecraft:sandstone:0>]]
	],
	<minecraft:stone_slab:3> * 3: [
		[[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]]
	],
	<minecraft:stone_slab:4> * 3: [
		[[<minecraft:brick_block:0>, <minecraft:brick_block:0>, <minecraft:brick_block:0>]]
	],
	<minecraft:stone_slab:7> * 3: [
		[[<minecraft:quartz_block:0>, <minecraft:quartz_block:0>, <minecraft:quartz_block:0>]]
	],
	<minecraft:wooden_slab:0> * 3: [
		[[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]]
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
		[[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]
	],
	<minecraft:stone_sword:0>: [
		[[<minecraft:cobblestone:0>], [<minecraft:cobblestone:0>], [<ore:stickWood>]]
	],
	<minecraft:ladder:0> * 3: [
		[
			[<ore:stickWood>, null, <ore:stickWood>],
			[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
			[<ore:stickWood>, null, <ore:stickWood>]
		]
	],
	<minecraft:crafting_table:0>: [
		[[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]
	],
	<minecraft:item_frame:0>: [
		[
			[mouldingWood, mouldingWood, mouldingWood],
			[mouldingWood, <ore:hideTanned>, mouldingWood],
			[mouldingWood, mouldingWood, mouldingWood]
		]
	],
	<minecraft:chest:0>: [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[null, <primalchests:primal_chest_advanced:0>, null],
			[<ore:plankWood>, null, <ore:plankWood>]
		],
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		],
		[
			[sidingWood, sidingWood, sidingWood],
			[sidingWood, null, sidingWood],
			[sidingWood, sidingWood, sidingWood]
		]
	],
	<minecraft:arrow:0> * 4: [
		[
			[<minecraft:flint:0>, null, null],
			[null, <ore:stickWood>, null],
			[null, null, <minecraft:feather:0>]
		],
		[
			[<minecraft:flint:0>, null, null],
			[null, <ore:stickWood>, null],
			[null, null, <twilightforest:raven_feather:0>]
		]
	],
	<minecraft:glass_bottle:0> * 3: [
		[[<ore:blockGlass>, null, <ore:blockGlass>], [null, <ore:blockGlass>, null]]
	],
	<minecraft:stone_slab:5> * 3: [
		[[<minecraft:stonebrick:0>, <minecraft:stonebrick:0>, <minecraft:stonebrick:0>]]
	],
	<minecraft:bed:0>: [
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
	<minecraft:light_weighted_pressure_plate:0>: [
		[[metals.gold.plate, metals.gold.plate]]
	],
	<minecraft:heavy_weighted_pressure_plate:0>: [
		[[metals.iron.plate, metals.iron.plate]]
	],
	<minecraft:bookshelf:0>: [
		[
			[<minecraft:planks:*>, <minecraft:planks:*>, <minecraft:planks:*>],
			[<minecraft:book:0>, <minecraft:book:0>, <minecraft:book:0>],
			[<minecraft:planks:*>, <minecraft:planks:*>, <minecraft:planks:*>]
		]
	],
	<minecraft:golden_axe:0>: [
		[
			[metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<minecraft:golden_boots:0>: [
		[
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_chestplate:0>: [
		[
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<minecraft:golden_helmet:0>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_hoe:0>: [
		[
			[metals.gold.plate, metals.gold.plate],
			[null, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<minecraft:golden_leggings:0>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate],
			[metals.gold.plate, null, metals.gold.plate]
		]
	],
	<minecraft:golden_pickaxe:0>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:golden_shovel:0>: [
		[
			[metals.gold.plate],
			[<ore:stickWood>],
			[<ore:stickWood>]
		]
	],
	<minecraft:golden_sword:0>: [
		[
			[metals.gold.plate],
			[metals.gold.plate],
			[<ore:stickWood>]
		]
	],
	<minecraft:hopper:0>: [
		[
			[metals.iron.plate, <minecraft:chest:0>, metals.iron.plate],
			[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<minecraft:iron_bars:0> * 16: [
		[
			[metals.iron.rod, metals.iron.rod, metals.iron.rod],
			[metals.iron.rod, metals.iron.rod, metals.iron.rod]
		]
	],
	<minecraft:iron_axe:0>: [
		[
			[metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<minecraft:iron_boots:0>: [
		[
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_chestplate:0>: [
		[
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<minecraft:iron_helmet:0>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_hoe:0>: [
		[
			[metals.iron.plate, metals.iron.plate],
			[null, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<minecraft:iron_leggings:0>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate],
			[metals.iron.plate, null, metals.iron.plate]
		]
	],
	<minecraft:iron_pickaxe:0>: [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_shovel:0>: [
		[
			[metals.iron.plate],
			[<ore:stickWood>],
			[<ore:stickWood>]
		]
	],
	<minecraft:iron_sword:0>: [
		[
			[metals.iron.plate],
			[metals.iron.plate],
			[<ore:stickWood>]
		]
	],
	<minecraft:name_tag:0>: [
		[
			[null, <minecraft:string:0>],
			[<minecraft:paper:0>, null],
			[<ore:dyeBlack>, null]
		]
	],
	<minecraft:piston:0>: [
		[
			[sidingWood, sidingWood, sidingWood],
			[<minecraft:cobblestone:0>, metals.iron.plate, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <thebetweenlands:octine_ingot:0>, <minecraft:cobblestone:0>]
		]
	],
	<minecraft:wool:0>: [
		[
			[null, <betterwithaddons:wool:0>, null],
			[<betterwithaddons:wool:0>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:0>],
			[null, <betterwithaddons:wool:0>, null]
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
	<minecraft:acacia_boat:0>: [
		[[sidingAcacia, null, sidingAcacia], [sidingAcacia, sidingAcacia, sidingAcacia]]
	],
	<minecraft:birch_boat:0>: [
		[[sidingBirch, null, sidingBirch], [sidingBirch, sidingBirch, sidingBirch]]
	],
	<minecraft:boat:0>: [
		[[sidingOak, null, sidingOak], [sidingOak, sidingOak, sidingOak]]
	],
	<minecraft:dark_oak_boat:0>: [
		[[sidingDarkoak, null, sidingDarkoak], [sidingDarkoak, sidingDarkoak, sidingDarkoak]]
	],
	<minecraft:jungle_boat:0>: [
		[[sidingJungle, null, sidingJungle], [sidingJungle, sidingJungle, sidingJungle]]
	],
	<minecraft:spruce_boat:0>: [
		[[sidingSpruce, null, sidingSpruce], [sidingSpruce, sidingSpruce, sidingSpruce]]
	],
	<minecraft:clock:0>: [
		[
			[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>],
			[metals.gold.plate, <minecraft:dye:4>, metals.gold.plate],
			[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>]
		]
	],
	<minecraft:compass:0>: [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, <tconstruct:arrow_head:0>.withTag({Material: "iron"}), metals.iron.plate],
			[null, metals.iron.plate, null]
		]
	],
	<minecraft:enchanting_table:0>: [
		[
			[<minecraft:dye:4>, <minecraft:obsidian:0>, <minecraft:dye:4>],
			[<minecraft:obsidian:0>, <ore:book>, <minecraft:obsidian:0>],
			[<minecraft:dye:4>, <minecraft:obsidian:0>, <minecraft:dye:4>]
		]
	],
	<minecraft:cake:0>: [
		[
			[
				craftingUtils.getBucketAndTankIngredientFromName("milk"),
				craftingUtils.getBucketAndTankIngredientFromName("milk"),
				craftingUtils.getBucketAndTankIngredientFromName("milk")
			],
			[<minecraft:sugar:0>, <minecraft:egg:0>, <minecraft:sugar:0>],
			[null, <ore:foodFlour>, null]
		]
	],
	<minecraft:activator_rail:0> * 2: [
		[
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone_torch:0>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
		]
	],
	<minecraft:detector_rail:0> * 2: [
		[
			[metals.iron.plate, <minecraft:redstone:0>, metals.iron.plate],
			[metals.iron.plate, <minecraft:light_weighted_pressure_plate:0>, metals.iron.plate],
			[metals.iron.plate, <minecraft:redstone:0>, metals.iron.plate]
		]
	],
	<minecraft:golden_rail:0> * 4: [
		[
			[metals.gold.plate, <minecraft:redstone:0>, metals.gold.plate],
			[metals.gold.plate, <ore:plankWood>, metals.gold.plate],
			[metals.gold.plate, <minecraft:redstone:0>, metals.gold.plate]
		]
	],
	<minecraft:rail:0> * 8: [
		[
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
			[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
		]
	],
	<minecraft:skull:1> * 3: [
		[
			[<mysticalagradditions:stuff:1>, <mysticalagradditions:stuff:1>],
			[<mysticalagradditions:stuff:1>, null]
		]
	],
	<minecraft:ender_chest:0>: [
		[
			[<minecraft:obsidian:0>, <quark:biotite:0>, <minecraft:obsidian:0>],
			[<quark:biotite:0>, <ironchest:iron_chest:6>, <quark:biotite:0>],
			[<minecraft:obsidian:0>, <quark:biotite:0>, <minecraft:obsidian:0>]
		],
		[
			[<minecraft:obsidian:0>, <minecraft:ender_eye:0>, <minecraft:obsidian:0>],
			[<quark:biotite:0>, <ironchest:iron_chest:6>, <quark:biotite:0>],
			[<minecraft:obsidian:0>, <quark:biotite:0>, <minecraft:obsidian:0>]
		]
	],
	<minecraft:diamond_helmet:0>: [
		[
			[<minecraft:diamond:0>, <minecraft:diamond:0>, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>]
		]
	],
	<minecraft:diamond_chestplate:0>: [
		[
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, <minecraft:diamond:0>, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, <minecraft:diamond:0>, <minecraft:diamond:0>]
		]
	],
	<minecraft:diamond_leggings:0>: [
		[
			[<minecraft:diamond:0>, <minecraft:diamond:0>, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>]
		]
	],
	<minecraft:diamond_boots:0>: [
		[
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>],
			[<minecraft:diamond:0>, null, <minecraft:diamond:0>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	// ==================================
	// Stage Three
	// ==================================
	<minecraft:piston:0>: {
		Utils.genRecipeName(stageThree, "piston"): [
			[
				[sidingWood, sidingWood, sidingWood],
				[<minecraft:cobblestone:0>, metals.iron.plate, <minecraft:cobblestone:0>],
				[<minecraft:cobblestone:0>, <minecraft:redstone:0>, <minecraft:cobblestone:0>]
			]
		]
	},
	<minecraft:jukebox:0>: {
		Utils.genRecipeName(stageThree, "jukebox"): [
			[
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
				[<ore:plankWood>, <minecraft:quartz:0>, <ore:plankWood>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<ore:dyeBlack>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeBlack>.firstItem): [
			[
				[<mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>],
				[null, null, null],
				[null, null, null]
			]
		]
	},
	<ore:dyeRed>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeRed>.firstItem): [
			[
				[null, null, null],
				[<mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>],
				[null, null, null]
			]
		]
	},
	<ore:dyePurple>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyePurple>.firstItem): [
			[
				[null, null, null],
				[null, null, null],
				[<mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>, <mysticalagriculture:dye_essence:0>]
			]
		]
	},
	<ore:dyeCyan>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeCyan>.firstItem): [
			[
				[<mysticalagriculture:dye_essence:0>, null, null],
				[<mysticalagriculture:dye_essence:0>, null, null],
				[<mysticalagriculture:dye_essence:0>, null, null]
			]
		]
	},
	<ore:dyeLightGray>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLightGray>.firstItem): [
			[
				[null, <mysticalagriculture:dye_essence:0>, null],
				[null, <mysticalagriculture:dye_essence:0>, null],
				[null, <mysticalagriculture:dye_essence:0>, null]
			]
		]
	},
	<ore:dyeGray>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeGray>.firstItem): [
			[
				[null, null, <mysticalagriculture:dye_essence:0>],
				[null, null, <mysticalagriculture:dye_essence:0>],
				[null, null, <mysticalagriculture:dye_essence:0>]
			]
		]
	},
	<ore:dyePink>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyePink>.firstItem): [
			[
				[<mysticalagriculture:dye_essence:0>, null, null],
				[null, <mysticalagriculture:dye_essence:0>, null],
				[null, null, <mysticalagriculture:dye_essence:0>]
			]
		]
	},
	<ore:dyeLime>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLime>.firstItem): [
			[
				[null, null, <mysticalagriculture:dye_essence:0>],
				[null, <mysticalagriculture:dye_essence:0>, null],
				[<mysticalagriculture:dye_essence:0>, null, null]
			]
		]
	},
	<ore:dyeYellow>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeYellow>.firstItem): [
			[
				[<mysticalagriculture:dye_essence:0>, null, <mysticalagriculture:dye_essence:0>],
				[null, <mysticalagriculture:dye_essence:0>, null],
				[null, null, null]
			]
		]
	},
	<ore:dyeLightBlue>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeLightBlue>.firstItem): [
			[
				[null, <mysticalagriculture:dye_essence:0>, null],
				[<mysticalagriculture:dye_essence:0>, null, <mysticalagriculture:dye_essence:0>],
				[null, null, null]
			]
		]
	},
	<ore:dyeMagenta>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeMagenta>.firstItem): [
			[
				[null, null, null],
				[null, <mysticalagriculture:dye_essence:0>, null],
				[<mysticalagriculture:dye_essence:0>, null, <mysticalagriculture:dye_essence:0>]
			]
		]
	},
	<ore:dyeOrange>.firstItem: {
		Utils.genRecipeName(stageFive, <ore:dyeOrange>.firstItem): [
			[
				[null, null, null],
				[<mysticalagriculture:dye_essence:0>, null, <mysticalagriculture:dye_essence:0>],
				[null, <mysticalagriculture:dye_essence:0>, null]
			]
		]
	}
};

/*
	Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:lead:0>: [
		[
			[<minecraft:string:0>, null, null],
			[null, <ore:cordageLeather>, null],
			[null, null, <minecraft:string:0>]
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
	Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<minecraft:flint:0> * 9: [
		[<betterwithmods:aesthetic:5>]
	],
	<minecraft:flint:0>: [
		[<pickletweaks:grass_mesh:*>, <minecraft:gravel:0>],
		[<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile:0>]
	],
	<minecraft:string:0> * 4: [
		[<betterwithaddons:wool:*>, <ore:toolShears>.transformNew(scripts.crafttweaker.transformers.shearsTransformFunction)],
		[<betterwithaddons:wool:*>, <ore:toolWorkBlade>]
	],
	<minecraft:string:0> * 8: [
		[<betterwithaddons:bolt:6>]
	],
	<minecraft:string:0>: [
		[<ore:toolWorkBlade>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]
	],
	<minecraft:farmland:0>: [
		[<minecraft:dirt:0>, <minecraft:dye:15>]
	],
	<minecraft:gunpowder:0>: [
		[<betterwithmods:material:37>, <ore:dyeBlack>, <ore:foodSalt>]
	],
	<minecraft:torch:0> * 2: [
		[<minecraft:coal:*>, <ore:cordageGeneral>, <ore:stickWood>],
		[<minecraft:coal:*>, <ore:fibreTorch>]
	],
	<minecraft:book:0>: [
		[<minecraft:paper:0>, <minecraft:leather:0>, <minecraft:paper:0>, <betterwithmods:material:12>]
	],
	<minecraft:writable_book:0>: [
		[<minecraft:book:0>, <minecraft:dye:0>, <minecraft:feather:0>]
	],
	// Arrow Bundle -> Arrows
	<minecraft:arrow:0> * 8: [
		[<betterwithaddons:bundle:1>]
	],
	<minecraft:hopper:0>: [
		[<uppers:upper:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	// ==================================
	// Stage Three
	// ==================================
	<minecraft:torch:0> * 4: {
		Utils.genRecipeName(stageThree, "torch"): [
			[<immersiveengineering:material:6>, <betterwithmods:rope:0>, <ore:stickWood>]
		]
	}
};

/*
	Furnace Recipes
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<minecraft:bread:0>: [<horsepower:dough:0>]
};

/*
	Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<minecraft:acacia_boat:0>,
	<minecraft:activator_rail:0>,
	<minecraft:arrow:0>,
	<minecraft:bed:*>,
	<minecraft:birch_boat:0>,
	<minecraft:boat:0>,
	<minecraft:book:0>,
	<minecraft:bookshelf:0>,
	<minecraft:bowl:0>,
	<minecraft:bread:0>,
	<minecraft:brick:0>,
	<minecraft:brick_block:0>,
	<minecraft:bucket:0>,
	<minecraft:cake:0>,
	<minecraft:chest:0>,
	<minecraft:clay:0>,
	<minecraft:clock:0>,
	<minecraft:coal:1>,
	<minecraft:coal:0>,
	<minecraft:coal_block:0>,
	<minecraft:compass:0>,
	<minecraft:crafting_table:0>,
	<minecraft:dark_oak_boat:0>,
	<minecraft:detector_rail:0>,
	<minecraft:diamond:0>,
	<minecraft:diamond_block:0>,
	<minecraft:diamond_boots:0>,
	<minecraft:diamond_chestplate:0>,
	<minecraft:diamond_helmet:0>,
	<minecraft:diamond_leggings:0>,
	<minecraft:dye:15>,
	<minecraft:emerald_block:0>,
	<minecraft:enchanting_table:0>,
	<minecraft:ender_chest:0>,
	<minecraft:farmland:0>,
	<minecraft:flint:0>,
	<minecraft:furnace:0>,
	<minecraft:glass:0>,
	<minecraft:glass_bottle:0>,
	<minecraft:glass_pane:0>,
	<minecraft:gold_block:0>,
	<minecraft:gold_ingot:0>,
	<minecraft:gold_nugget:0>,
	<minecraft:golden_axe:0>,
	<minecraft:golden_boots:0>,
	<minecraft:golden_chestplate:0>,
	<minecraft:golden_helmet:0>,
	<minecraft:golden_hoe:0>,
	<minecraft:golden_leggings:0>,
	<minecraft:golden_pickaxe:0>,
	<minecraft:golden_rail:0>,
	<minecraft:golden_shovel:0>,
	<minecraft:golden_sword:0>,
	<minecraft:gunpowder:0>,
	<minecraft:heavy_weighted_pressure_plate:0>,
	<minecraft:hopper:0>,
	<minecraft:iron_axe:0>,
	<minecraft:iron_bars:0>,
	<minecraft:iron_block:0>,
	<minecraft:iron_boots:0>,
	<minecraft:iron_chestplate:0>,
	<minecraft:iron_helmet:0>,
	<minecraft:iron_hoe:0>,
	<minecraft:iron_ingot:0>,
	<minecraft:iron_leggings:0>,
	<minecraft:iron_nugget:0>,
	<minecraft:iron_pickaxe:0>,
	<minecraft:iron_shovel:0>,
	<minecraft:iron_sword:0>,
	<minecraft:item_frame:0>,
	<minecraft:jukebox:0>,
	<minecraft:jungle_boat:0>,
	<minecraft:ladder:0>,
	<minecraft:lapis_block:0>,
	<minecraft:lead:0>,
	<minecraft:leather:0>,
	<minecraft:leather_boots:0>,
	<minecraft:leather_chestplate:0>,
	<minecraft:leather_helmet:0>,
	<minecraft:leather_leggings:0>,
	<minecraft:light_weighted_pressure_plate:0>,
	<minecraft:map:0>,
	<minecraft:netherbrick:0>,
	<minecraft:paper:0>,
	<minecraft:piston:0>,
	<minecraft:rail:0>,
	<minecraft:redstone_block:0>,
	<minecraft:saddle:0>,
	<minecraft:string:0>,
	<minecraft:spruce_boat:0>,
	<minecraft:stone_slab2:0>,
	<minecraft:stone_slab:1>,
	<minecraft:stone_slab:3>,
	<minecraft:stone_slab:4>,
	<minecraft:stone_slab:5>,
	<minecraft:stone_slab:5>,
	<minecraft:stone_slab:7>,
	<minecraft:stone_slab:0>,
	<minecraft:torch:0>,
	<minecraft:water_bucket:0>,
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:4>,
	<minecraft:wooden_slab:5>,
	<minecraft:wooden_slab:0>,
	<minecraft:wool:*>,
	<minecraft:writable_book:0>
];

static removeRegex as string[] = [
	"minecraft:emerald",
	"minecraft:lapis_lazuli",
	"minecraft:redstone"
];

static removeFurnace as IIngredient[] = [
	<minecraft:bread:0>,
	<minecraft:brick:0>,
	<minecraft:coal:1>, // Charcoal Revamp
	<minecraft:glass:0>, // Glass Revamp
	<minecraft:leather:0>,
	<minecraft:netherbrick:0>,
	<minecraft:diamond:0>,
	<minecraft:emerald:0>,
	<betterwithaddons:japanmat:4>
];

static removeFurnaceInput as IIngredient[IIngredient] = {
	<minecraft:coal_block:0>: <extraplanets:kepler22b:5>,
	<minecraft:quartz:0>: <galacticraftplanets:venus:9>
};

function initElytraRecipe() {
	recipes.addShapeless("colored_elytra",
		<minecraft:elytra:0>.withTag({}),
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
	recipes.removeShapeless(<minecraft:cobblestone:0>, [<overloaded:compressed_cobblestone:0>]);
	recipes.removeShapeless(<minecraft:obsidian:0>, [<overloaded:compressed_obsidian:0>]);
}
