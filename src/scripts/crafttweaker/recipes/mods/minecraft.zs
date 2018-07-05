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

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
	Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][string][IItemStack] = {
	/*
		Non-Staged Recipes
	*/
	<minecraft:furnace>: {
		"nameless": [
			[
				[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
				[<ore:cobblestone>, null, <ore:cobblestone>],
				[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
			]
		]
	},
	<minecraft:cobblestone_wall>: {
		"nameless": [
			[
				[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
			]
		]
	},
	<minecraft:wooden_button>: {
		"nameless": [
			[[<ore:plankWood>]]
		]
	},
	<minecraft:stone_button>: {
		"nameless": [
			[[<minecraft:stone>]]
		]
	},
	<minecraft:web>: {
		"nameless": [
			[
				[<ore:stickWood>, <minecraft:string>, <ore:stickWood>],
				[<minecraft:string>, <minecraft:string>, <minecraft:string>],
				[<ore:stickWood>, <minecraft:string>, <ore:stickWood>]
			]
		]
	},
	<minecraft:map>: {
		"nameless": [
			[
				[<ore:paper>, <ore:paper>, <ore:paper>],
				[<ore:paper>, <minecraft:compass>, <ore:paper>],
				[<ore:paper>, <ore:paper>, <ore:paper>]
			]
		]
	},
	<minecraft:brick_block>: {
		"nameless": [
			[
				[<minecraft:brick>, <minecraft:brick>],
				[<minecraft:brick>, <minecraft:brick>]
			]
		]
	},
	<minecraft:saddle>: {
		"nameless": [
			[
				[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
				[<primal:leather_cordage>, <primal:leather_cordage>, <primal:leather_cordage>]
			]
		]
	},
	<minecraft:leather_helmet>: {
		"nameless": [
			[
				[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
				[<minecraft:leather>, null, <minecraft:leather>]
			]
		]
	},
	<minecraft:leather_chestplate>: {
		"nameless": [
			[
				[<minecraft:leather>, null, <minecraft:leather>],
				[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
				[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]
			]
		]
	},
	<minecraft:leather_leggings>: {
		"nameless": [
			[
				[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
				[<minecraft:leather>, null, <minecraft:leather>],
				[<minecraft:leather>, null, <minecraft:leather>]
			]
		]
	},
	<minecraft:leather_boots>: {
		"nameless": [
			[
				[<minecraft:leather>, null, <minecraft:leather>],
				[<minecraft:leather>, null, <minecraft:leather>]
			]
		]
	},
	<minecraft:bowl>: {
		"nameless": [
			[[<primal:flint_workblade:*>, <ore:plankWood>]],
			[[<primal:quartz_workblade:*>, <ore:plankWood>]],
			[[<primal:iron_workblade:*>, <ore:plankWood>]],
			[[<primal:emerald_workblade:*>, <ore:plankWood>]],
			[[<primal:diamond_workblade:*>, <ore:plankWood>]],
			[[<primal:opal_workblade:*>, <ore:plankWood>]],
			[[<primal:obsidian_workblade:*>, <ore:plankWood>]]
		]
	},

	/*
		Stage Zero Recipes
	*/
    <minecraft:stone_slab2> * 3: {
        Utils.genRecipeName(stageZero, <minecraft:stone_slab2>): [
            [[<minecraft:red_sandstone>, <minecraft:red_sandstone>, <minecraft:red_sandstone>]]
        ]
    },
	<minecraft:stone_slab:1> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:stone_slab:1>): [
			[[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]
		]
	},
	<minecraft:stone_slab:3> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:stone_slab:3>): [
			[[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]
		]
	},
	<minecraft:stone_slab:4> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:stone_slab:4>): [
			[[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
		]
	},
	<minecraft:stone_slab:7> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:stone_slab:7>): [
			[[<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>]]
		]
	},
	<minecraft:stone_slab> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:stone_slab>): [
			[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]
		]
	},
	<minecraft:wooden_slab:1> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab:1>): [
			[[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
		]
	},
	<minecraft:wooden_slab:2> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab:2>): [
			[[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
		]
	},
	<minecraft:wooden_slab:3> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab:3>): [
			[[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
		]
	},
	<minecraft:wooden_slab:4> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab:4>): [
			[[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
		]
	},
	<minecraft:wooden_slab:5> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab:5>): [
			[[<minecraft:cobblestone>], [<minecraft:cobblestone>], [<minecraft:cobblestone>]]
		]
	},
	<minecraft:wooden_slab> * 3: {
		Utils.genRecipeName(stageZero, <minecraft:wooden_slab>): [
			[[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
		]
	},
	<minecraft:stone_sword>: {
		Utils.genRecipeName(stageZero, <minecraft:stone_sword>): [
			[[<minecraft:cobblestone>], [<minecraft:cobblestone>], [<ore:stickWood>]]
		]
	},
	<minecraft:ladder> * 3: {
		Utils.genRecipeName(stageOne, "ladder"): [
			[
				[<ore:stickWood>, null, <ore:stickWood>],
				[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
				[<ore:stickWood>, null, <ore:stickWood>]
			]
		]
	},
	<minecraft:crafting_table>: {
		Utils.genRecipeName(stageOne, "craftting_table"): [
			[[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]
		]
	},
	<minecraft:item_frame>: {
		Utils.genRecipeName(stageOne, "item_frame"): [
			[
				[mouldingWood, mouldingWood, mouldingWood],
				[mouldingWood, <ore:hideTanned>, mouldingWood],
				[mouldingWood, mouldingWood, mouldingWood]
			]
		]
	},
	<minecraft:chest>: {
		Utils.genRecipeName(stageOne, "chest"): [
			[
				[<ore:plankWood>, null, <ore:plankWood>],
				[null, <primalchests:primal_chest_advanced>, null],
				[<ore:plankWood>, null, <ore:plankWood>]
			]
		]
	},

	/*
		Stage Two
	*/
	<minecraft:arrow> * 4: {
		Utils.genRecipeName(stageTwo, "arrow_with_feather"): [
			[
				[<minecraft:flint>, null, null],
				[null, <ore:stickWood>, null],
				[null, null, <minecraft:feather>]
			]
		],
		Utils.genRecipeName(stageTwo, "arrow_with_raven"): [
			[
				[<minecraft:flint>, null, null],
				[null, <ore:stickWood>, null],
				[null, null, <twilightforest:raven_feather>]
			]
		]
	},
	<minecraft:glass_bottle> * 3: {
		Utils.genRecipeName(stageTwo, "glass_bottle"): [
			[[<ore:blockGlass>, null, <ore:blockGlass>], [null, <ore:blockGlass>, null]]
		]
	},
	<minecraft:stone_slab:5> * 3: {
		Utils.genRecipeName(stageTwo, <minecraft:stone_slab:5>): [
			[[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]
		]
	},
	<minecraft:bed:10>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:10>): [
			[
				[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:11>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:11>): [
			[
				[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:12>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:12>): [
			[
				[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:13>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:13>): [
			[
				[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:14>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:14>): [
			[
				[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:15>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:15>): [
			[
				[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:1>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:1>): [
			[
				[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:2>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:2>): [
			[
				[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:3>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:3>): [
			[
				[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:4>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:4>): [
			[
				[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:5>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:5>): [
			[
				[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:6>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:6>): [
			[
				[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:7>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:7>): [
			[
				[<minecraft:wool:7>, <minecraft:wool:7>, <minecraft:wool:7>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:8>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:8>): [
			[
				[<minecraft:wool:8>, <minecraft:wool:8>, <minecraft:wool:8>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed:9>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed:9>): [
			[
				[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:bed>: {
		Utils.genRecipeName(stageTwo, <minecraft:bed>): [
			[
				[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:light_weighted_pressure_plate>: {
		Utils.genRecipeName(stageTwo, <minecraft:light_weighted_pressure_plate>): [
			[[metals.gold.plate, metals.gold.plate]]
		]
	},
	<minecraft:heavy_weighted_pressure_plate>: {
		Utils.genRecipeName(stageTwo, <minecraft:heavy_weighted_pressure_plate>): [
			[[metals.iron.plate, metals.iron.plate]]
		]
	},
	<minecraft:bookshelf>: {
		Utils.genRecipeName(stageTwo, "bookshelf"): [
			[
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
				[<minecraft:book>, <minecraft:book>, <minecraft:book>],
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<minecraft:golden_axe>: {
		Utils.genRecipeName(stageTwo, "golden_axe"): [
			[
				[metals.gold.plate, metals.gold.plate, null],
				[metals.gold.plate, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:golden_boots>: {
		Utils.genRecipeName(stageTwo, "golden_boots"): [
			[
				[metals.gold.plate, null, metals.gold.plate],
				[metals.gold.plate, null, metals.gold.plate]
			]
		]
	},
	<minecraft:golden_chestplate>: {
		Utils.genRecipeName(stageTwo, "golden_chestplate"): [
			[
				[metals.gold.plate, null, metals.gold.plate],
				[metals.gold.plate, metals.gold.plate, metals.gold.plate],
				[metals.gold.plate, metals.gold.plate, metals.gold.plate]
			]
		]
	},
	<minecraft:golden_helmet>: {
		Utils.genRecipeName(stageTwo, "golden_helmet"): [
			[
				[metals.gold.plate, metals.gold.plate, metals.gold.plate],
				[metals.gold.plate, null, metals.gold.plate]
			]
		]
	},
	<minecraft:golden_hoe>: {
		Utils.genRecipeName(stageTwo, "golden_hoe"): [
			[
				[metals.gold.plate, metals.gold.plate, null],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:golden_leggings>: {
		Utils.genRecipeName(stageTwo, "golden_leggings"): [
			[
				[metals.gold.plate, metals.gold.plate, metals.gold.plate],
				[metals.gold.plate, null, metals.gold.plate],
				[metals.gold.plate, null, metals.gold.plate]
			]
		]
	},
	<minecraft:golden_pickaxe>: {
		Utils.genRecipeName(stageTwo, "golden_pickaxe"): [
			[
				[metals.gold.plate, metals.gold.plate, metals.gold.plate],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:golden_shovel>: {
		Utils.genRecipeName(stageTwo, "golden_shovel"): [
			[
				[null, metals.gold.plate, null],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:golden_sword>: {
		Utils.genRecipeName(stageTwo, "golden_sword"): [
			[
				[null, metals.gold.plate, null],
				[null, metals.gold.plate, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:hopper>: {
		Utils.genRecipeName(stageTwo, "hopper"): [
			[
				[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
				[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
				[null, metals.iron.plate, null]
			]
		]
	},
	<minecraft:iron_bars> * 16: {
		Utils.genRecipeName(stageTwo, "iron_bars"): [
			[
				[metals.iron.rod, metals.iron.rod, metals.iron.rod],
				[metals.iron.rod, metals.iron.rod, metals.iron.rod]
			]
		]
	},
	<minecraft:iron_axe>: {
		Utils.genRecipeName(stageTwo, "iron_axe"): [
			[
				[metals.iron.plate, metals.iron.plate, null],
				[metals.iron.plate, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:iron_boots>: {
		Utils.genRecipeName(stageTwo, "iron_boots"): [
			[
				[metals.iron.plate, null, metals.iron.plate],
				[metals.iron.plate, null, metals.iron.plate]
			]
		]
	},
	<minecraft:iron_chestplate>: {
		Utils.genRecipeName(stageTwo, "iron_chestplate"): [
			[
				[metals.iron.plate, null, metals.iron.plate],
				[metals.iron.plate, metals.iron.plate, metals.iron.plate],
				[metals.iron.plate, metals.iron.plate, metals.iron.plate]
			]
		]
	},
	<minecraft:iron_helmet>: {
		Utils.genRecipeName(stageTwo, "iron_helmet"): [
			[
				[metals.iron.plate, metals.iron.plate, metals.iron.plate],
				[metals.iron.plate, null, metals.iron.plate]
			]
		]
	},
	<minecraft:iron_hoe>: {
		Utils.genRecipeName(stageTwo, "iron_hoe"): [
			[
				[metals.iron.plate, metals.iron.plate, null],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:iron_leggings>: {
		Utils.genRecipeName(stageTwo, "iron_leggings"): [
			[
				[metals.iron.plate, metals.iron.plate, metals.iron.plate],
				[metals.iron.plate, null, metals.iron.plate],
				[metals.iron.plate, null, metals.iron.plate]
			]
		]
	},
	<minecraft:iron_pickaxe>: {
		Utils.genRecipeName(stageTwo, "iron_pickaxe"): [
			[
				[metals.iron.plate, metals.iron.plate, metals.iron.plate],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:iron_shovel>: {
		Utils.genRecipeName(stageTwo, "iron_shovel"): [
			[
				[null, metals.iron.plate, null],
				[null, <ore:stickWood>, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:iron_sword>: {
		Utils.genRecipeName(stageTwo, "iron_sword"): [
			[
				[null, metals.iron.plate, null],
				[null, metals.iron.plate, null],
				[null, <ore:stickWood>, null]
			]
		]
	},
	<minecraft:name_tag>: {
		Utils.genRecipeName(stageTwo, "name_tag"): [
			[
				[null, null, <minecraft:string>],
				[null, <minecraft:paper>, null],
				[null, <ore:dyeBlack>, null]
			]
		]
	},
	<minecraft:piston>: {
		Utils.genRecipeName(stageTwo, "piston"): [
			[
				[sidingWood, sidingWood, sidingWood],
				[<minecraft:cobblestone>, metals.iron.plate, <minecraft:cobblestone>],
				[<minecraft:cobblestone>, <thebetweenlands:octine_ingot>, <minecraft:cobblestone>]
			]
		]
	},
	<minecraft:wool:10>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:10>): [
			[
				[null, <betterwithaddons:wool:10>, null],
				[<betterwithaddons:wool:10>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:10>],
				[null, <betterwithaddons:wool:10>, null]
			]
		]
	},
	<minecraft:wool:11>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:11>): [
			[
				[null, <betterwithaddons:wool:11>, null],
				[<betterwithaddons:wool:11>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:11>],
				[null, <betterwithaddons:wool:11>, null]
			]
		]
	},
	<minecraft:wool:12>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:12>): [
			[
				[null, <betterwithaddons:wool:12>, null],
				[<betterwithaddons:wool:12>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:12>],
				[null, <betterwithaddons:wool:12>, null]
			]
		]
	},
	<minecraft:wool:13>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:13>): [
			[
				[null, <betterwithaddons:wool:13>, null],
				[<betterwithaddons:wool:13>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:13>],
				[null, <betterwithaddons:wool:13>, null]
			]
		]
	},
	<minecraft:wool:14>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:14>): [
			[
				[null, <betterwithaddons:wool:14>, null],
				[<betterwithaddons:wool:14>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:14>],
				[null, <betterwithaddons:wool:14>, null]
			]
		]
	},
	<minecraft:wool:15>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:15>): [
			[
				[null, <betterwithaddons:wool:15>, null],
				[<betterwithaddons:wool:15>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:15>],
				[null, <betterwithaddons:wool:15>, null]
			]
		]
	},
	<minecraft:wool:1>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:1>): [
			[
				[null, <betterwithaddons:wool:1>, null],
				[<betterwithaddons:wool:1>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:1>],
				[null, <betterwithaddons:wool:1>, null]
			]
		]
	},
	<minecraft:wool:2>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:2>): [
			[
				[null, <betterwithaddons:wool:2>, null],
				[<betterwithaddons:wool:2>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:2>],
				[null, <betterwithaddons:wool:2>, null]
			]
		]
	},
	<minecraft:wool:3>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:3>): [
			[
				[null, <betterwithaddons:wool:3>, null],
				[<betterwithaddons:wool:3>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:3>],
				[null, <betterwithaddons:wool:3>, null]
			]
		]
	},
	<minecraft:wool:4>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:4>): [
			[
				[null, <betterwithaddons:wool:4>, null],
				[<betterwithaddons:wool:4>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:4>],
				[null, <betterwithaddons:wool:4>, null]
			]
		]
	},
	<minecraft:wool:5>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:5>): [
			[
				[null, <betterwithaddons:wool:5>, null],
				[<betterwithaddons:wool:5>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:5>],
				[null, <betterwithaddons:wool:5>, null]
			]
		]
	},
	<minecraft:wool:6>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:6>): [
			[
				[null, <betterwithaddons:wool:6>, null],
				[<betterwithaddons:wool:6>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:6>],
				[null, <betterwithaddons:wool:6>, null]
			]
		]
	},
	<minecraft:wool:7>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:7>): [
			[
				[null, <betterwithaddons:wool:7>, null],
				[<betterwithaddons:wool:7>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:7>],
				[null, <betterwithaddons:wool:7>, null]
			]
		]
	},
	<minecraft:wool:8>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:8>): [
			[
				[null, <betterwithaddons:wool:8>, null],
				[<betterwithaddons:wool:8>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:8>],
				[null, <betterwithaddons:wool:8>, null]
			]
		]
	},
	<minecraft:wool:9>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool:9>): [
			[
				[null, <betterwithaddons:wool:9>, null],
				[<betterwithaddons:wool:9>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:9>],
				[null, <betterwithaddons:wool:9>, null]
			]
		]
	},
	<minecraft:wool>: {
		Utils.genRecipeName(stageTwo, <minecraft:wool>): [
			[
				[null, <betterwithaddons:wool>, null],
				[<betterwithaddons:wool>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool>],
				[null, <betterwithaddons:wool>, null]
			]
		]
	},
	<minecraft:acacia_boat>: {
		Utils.genRecipeName(stageTwo, "acacia_boat"): [
			[[sidingAcacia, null, sidingAcacia], [sidingAcacia, sidingAcacia, sidingAcacia]]
		]
	},
	<minecraft:birch_boat>: {
		Utils.genRecipeName(stageTwo, "birch_boat"): [
			[[sidingBirch, null, sidingBirch], [sidingBirch, sidingBirch, sidingBirch]]
		]
	},
	<minecraft:boat>: {
		Utils.genRecipeName(stageTwo, "boat"): [
			[[sidingOak, null, sidingOak], [sidingOak, sidingOak, sidingOak]]
		]
	},
	<minecraft:dark_oak_boat>: {
		Utils.genRecipeName(stageTwo, "dark_oak_boat"): [
			[[sidingDarkoak, null, sidingDarkoak], [sidingDarkoak, sidingDarkoak, sidingDarkoak]]
		]
	},
	<minecraft:jungle_boat>: {
		Utils.genRecipeName(stageTwo, "jungle_boat"): [
			[[sidingJungle, null, sidingJungle], [sidingJungle, sidingJungle, sidingJungle]]
		]
	},
	<minecraft:spruce_boat>: {
		Utils.genRecipeName(stageTwo, "spruce_boat"): [
			[[sidingSpruce, null, sidingSpruce], [sidingSpruce, sidingSpruce, sidingSpruce]]
		]
	},
	<minecraft:clock>: {
		Utils.genRecipeName(stageTwo, "clock"): [
			[
				[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>],
				[metals.gold.plate, <minecraft:dye:4>, metals.gold.plate],
				[<minecraft:dye:4>, metals.gold.plate, <minecraft:dye:4>]
			]
		]
	},
	<minecraft:compass>: {
		Utils.genRecipeName(stageTwo, "compass"): [
			[
				[null, metals.iron.plate, null],
				[metals.iron.plate, <tconstruct:arrow_head>.withTag({Material: "iron"}), metals.iron.plate],
				[null, metals.iron.plate, null]
			]
		]
	},

	/*
		Stage Three
	*/
	<minecraft:enchanting_table>: {
		Utils.genRecipeName(stageThree, "enchanting_table"): [
			[
				[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>],
				[<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>],
				[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]
			]
		]
	},
	<minecraft:piston>: {
		Utils.genRecipeName(stageThree, "piston"): [
			[
				[sidingWood, sidingWood, sidingWood],
				[<minecraft:cobblestone>, metals.iron.plate, <minecraft:cobblestone>],
				[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>]
			]
		]
	},
	<minecraft:cake>: {
		Utils.genRecipeName(stageThree, "cake"): [
			[
				[scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk"), scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk"), scripts.crafttweaker.craftingUtils.getBucketIngredientFromName("milk")],
				[<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
				[null, <ore:foodFlour>, null]
			]
		]
	},
	<minecraft:activator_rail> * 2: {
		Utils.genRecipeName(stageThree, "activator_rail"): [
			[
				[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
				[metals.iron.plate, <minecraft:redstone_torch>, metals.iron.plate],
				[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
			]
		]
	},
	<minecraft:detector_rail> * 2: {
		Utils.genRecipeName(stageThree, "detector_rail"): [
			[
				[metals.iron.plate, <minecraft:redstone>, metals.iron.plate],
				[metals.iron.plate, <minecraft:light_weighted_pressure_plate>, metals.iron.plate],
				[metals.iron.plate, <minecraft:redstone>, metals.iron.plate]
			]
		]
	},
	<minecraft:golden_rail> * 4: {
		Utils.genRecipeName(stageThree, "golden_rail"): [
			[
				[metals.gold.plate, <minecraft:redstone>, metals.gold.plate],
				[metals.gold.plate, <ore:plankWood>, metals.gold.plate],
				[metals.gold.plate, <minecraft:redstone>, metals.gold.plate]
			]
		]
	},
	<minecraft:rail> * 8: {
		Utils.genRecipeName(stageThree, "rail"): [
			[
				[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
				[metals.iron.plate, <ore:plankWood>, metals.iron.plate],
				[metals.iron.plate, <ore:plankWood>, metals.iron.plate]
			]
		]
	},
	<minecraft:skull:1> * 3: {
		Utils.genRecipeName(stageThree, <minecraft:skull:1>): [
			[
				[<mysticalagradditions:stuff:1>, <mysticalagradditions:stuff:1>, null],
				[<mysticalagradditions:stuff:1>, null, null],
				[null, null, null]
			]
		]
	},

	/*
		Stage Four
	*/
	<minecraft:ender_chest>: {
		Utils.genRecipeName(stageFour, "enderchest"): [
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
		]
	},

	/*
		Stage Five
	*/
	<minecraft:diamond_helmet>: {
		Utils.genRecipeName(stageFive, <minecraft:diamond_helmet>): [
			[
				[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
				[<minecraft:diamond>, null, <minecraft:diamond>]
			]
		]
	},
	<minecraft:diamond_chestplate>: {
		Utils.genRecipeName(stageFive, <minecraft:diamond_chestplate>): [
			[
				[<minecraft:diamond>, null, <minecraft:diamond>],
				[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
				[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
			]
		]
	},
	<minecraft:diamond_leggings>: {
		Utils.genRecipeName(stageFive, <minecraft:diamond_leggings>): [
			[
				[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
				[<minecraft:diamond>, null, <minecraft:diamond>],
				[<minecraft:diamond>, null, <minecraft:diamond>]
			]
		]
	},
	<minecraft:diamond_boots>: {
		Utils.genRecipeName(stageFive, <minecraft:diamond_boots>): [
			[
				[<minecraft:diamond>, null, <minecraft:diamond>],
				[<minecraft:diamond>, null, <minecraft:diamond>]
			]
		]
	}
};

/*
	Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][string][IItemStack] = {
	<minecraft:lead>: {
		"nameless": [
			[
				[<minecraft:string>, null, null],
				[null, <ore:cordageLeather>, null],
				[null, null, <minecraft:string>]
			]
		]
	}
};

/*
	Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][string][IItemStack] = {
	/*
		Non-Staged Recipes
	*/
	<minecraft:flint> * 9: {
		"nameless": [
			[<betterwithmods:aesthetic:5>]
		]
	},
	<minecraft:flint>: {
		"nameless": [
			[<pickletweaks:grass_mesh:*>, <minecraft:gravel>],
			[<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]
		]
	},
	<minecraft:string> * 4: {
		"nameless": [
			[<betterwithaddons:wool:*>, <ore:toolShears>.transformNew(scripts.crafttweaker.transformers.shearsTransformFunction)],
			[<betterwithaddons:wool:*>, <ore:toolWorkBlade>]
		]
	},
	<minecraft:string> * 8: {
		"nameless": [
			 [<betterwithaddons:bolt:6>]
		]
	},
	<minecraft:string>: {
		"nameless": [
			 [<ore:toolWorkBlade>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]
		]
	},

	/*
		Stage Zero
	*/
    <minecraft:farmland>: {
        Utils.genRecipeName(stageZero, "farmland"): [
            [<minecraft:dirt>, <minecraft:dye:15>]
        ]
    },
	<minecraft:gunpowder>: {
		Utils.genRecipeName(stageZero, "gunpowder"): [
			[<betterwithmods:material:37>, <ore:dyeBlack>, <ore:foodSalt>]
		]
	},

	/*
		Stage One
	*/
	<minecraft:torch> * 2: {
		Utils.genRecipeName(stageOne, "torch"): [
			[<minecraft:coal:*>, <ore:cordageGeneral>, <ore:stickWood>],
			[<minecraft:coal:*>, <primal_tech:fibre_torch>]
		],
		Utils.genRecipeName(stageThree, "torch"): [
			[<immersiveengineering:material:6>, <betterwithmods:rope>, <ore:stickWood>]
		]
	},

	/*
		Stage Two
	*/
	<minecraft:book>: {
		Utils.genRecipeName(stageTwo, "book"): [
			[<minecraft:paper>, <minecraft:leather>, <minecraft:paper>, <betterwithmods:material:12>]
		]
	},
	<minecraft:writable_book>: {
		Utils.genRecipeName(stageTwo, <minecraft:writable_book>): [
			[<minecraft:book>, <minecraft:dye>, <minecraft:feather>]
		]
	},
	// Arrow Bundle -> Arrows
	<minecraft:arrow> * 8: {
		Utils.genRecipeName(stageTwo, "bundle_to_arrow"): [
			[<betterwithaddons:bundle:1>]
		]
	},
	<minecraft:hopper>: {
		Utils.genRecipeName(stageTwo, "upper_to_hopper"): [
			[<uppers:upper>]
		]
	}
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

function init() {
	var shapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapelessRecipes;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.minecraft.removeRecipes;

	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);

	/*
		Specific Overrides
	*/
	recipes.remove(<ore:plankWood>);
	recipes.remove(<ore:stickWood>);
	recipes.removeShaped(<minecraft:skull:1> * 3);
	recipes.removeShapeless(<minecraft:cobblestone>, [<overloaded:compressed_cobblestone>]);
	recipes.removeShapeless(<minecraft:obsidian>, [<overloaded:compressed_obsidian>]);
}
