/*
    SevTech: Ages Better With Mods Recipe Script

    This script handles the recipes for Better With Mods.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<betterwithmods:material> : [
		[
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>],
			[<totemic:cedar_plank>, null, <totemic:cedar_plank>],
			[<totemic:buffalo_items:1>, <totemic:cedar_plank>, <totemic:buffalo_items:1>]
		]
	],
	<betterwithmods:wicker> : [
		[
			[<minecraft:reeds>, <minecraft:reeds>],
			[<minecraft:reeds>, <minecraft:reeds>]
		]
	],
	<betterwithmods:shaft> : [
		[
			[<ore:stickWood>.firstItem, <primal:plant_cordage>],
			[<ore:stickWood>.firstItem, <primal:plant_cordage>],
			[<ore:stickWood>.firstItem, <primal:plant_cordage>]
		]
	],
	<betterwithmods:axle_generator:1> : [
		[
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, metals.copper.gear, <betterwithmods:material:10>],
			[<betterwithmods:material:10>, <betterwithmods:material:10>, <betterwithmods:material:10>]
		]
	],
	<betterwithmods:material:10> : [
		[
			[<ore:slabWood>, null, null],
			[<ore:slabWood>, <ore:slimeball>, <ore:slabWood>],
			[<ore:slabWood>, null, null]
		]
	],
	<betterwithmods:material:24> : [
		[
			[metals.bronze.rod, metals.bronze.rod, null],
			[null, metals.bronze.rod, metals.bronze.rod],
			[metals.bronze.rod, metals.bronze.rod, null]
		],
		[
			[metals.copper.rod,
			metals.copper.rod, null],
			[null, metals.copper.rod, metals.copper.rod],
			[metals.copper.rod, metals.copper.rod, null]
		],
		[
			[metals.tin.rod, metals.tin.rod, null],
			[null, metals.tin.rod, metals.tin.rod],
			[metals.tin.rod, metals.tin.rod, null]
		]
	],
	<betterwithmods:rope> : [
		[
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>],
			[<betterwithmods:material:3>, <betterwithmods:material:3>]
		]
	],
	<betterwithmods:saw> : [
		[[null, <primal_tech:flint_edged_disc>, null], [metals.copper.gear, <betterwithmods:material:9>, metals.copper.gear], [<ore:plankWood>, metals.bronze.gear, <ore:plankWood>]]
	],
	<betterwithmods:single_machine:3> : [
		[[sidingWood, sidingWood, sidingWood], [<minecraft:stone>, metals.copper.gear, <minecraft:stone>], [<minecraft:stone>, <betterwithmods:wooden_axle>, <minecraft:stone>]]
	],
	<betterwithmods:wooden_axle> : [
		[[null, <ore:stickWood>.firstItem, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, <ore:stickWood>.firstItem, null]]
	],
	<betterwithmods:wooden_gearbox> : [
		[
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>],
			[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
			[<ore:thinWood>, <betterwithmods:material>, <ore:thinWood>]
		],
		[
			[null, <betterwithmods:material>, null],
			[null, <betterwithmods:wooden_broken_gearbox>, null],
			[null, <betterwithmods:material>, null]
		]
	],
	<betterwithmods:bellows> : [
		[
			[sidingWood, sidingWood, sidingWood],
			[<ore:hideTanned>, <ore:hideTanned>, <ore:hideTanned>],
			[<ore:hideBelt>, <ore:gearWood>, <ore:hideBelt>]
		]
	],
	<betterwithmods:breeding_harness> : [
		[
			[<ore:cordageLeather>, <minecraft:leather>, <ore:cordageLeather>],
			[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
			[<ore:cordageLeather>, <minecraft:leather>, <ore:cordageLeather>]
		]
	],
	<betterwithmods:material> : [
		[
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem],
			[<ore:plankWood>, <betterwithmods:material:12>, <ore:plankWood>],
			[<ore:stickWood>.firstItem, <ore:plankWood>, <ore:stickWood>.firstItem]
		]
	],
	<betterwithmods:aesthetic:12> : [
		[
			[<betterwithmods:wicker>, <betterwithmods:wicker>],
			[<betterwithmods:wicker>, <betterwithmods:wicker>]
		]
	],
	<betterwithmods:material:36> : [
		[
			[null, <ore:cordageLeather>, null],
			[null, <ore:slimeball>, null],
			[null, mouldingWood, null]
		]
	],
	<betterwithmods:ender_spectacles> : [
		[
			[null, null, null],
			[<betterwithmods:material:40>, <ore:cordageLeather>, <betterwithmods:material:40>],
			[null, null, null]
		]
	],
	<betterwithmods:anchor> : [
		[
			[null, metals.iron.plate, null],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<betterwithmods:material:34>: [
		[
			[<minecraft:lever>, null],
			[metals.gold.plate, null]
		]
	],
	<betterwithmods:single_machine:1>: [
		[
			[<ore:plankWood>, metals.iron.plate, <ore:plankWood>],
			[<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>],
			[<ore:plankWood>, metals.iron.plate, <ore:plankWood>]
		]
	],
	<betterwithmods:material:8>: [
		[
			[null, null, <primal:leather_strip>],
			[null, <primal:leather_strip>, null],
			[<primal:leather_strip>, null, null]
		]
	],
	<betterwithmods:rope> : [
		[
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>],
			[<immersiveengineering:material:4>, <immersiveengineering:material:4>]
		]
	],
	<betterwithmods:material:9>: [
		[
			[null, <ore:cordageLeather>, null],
			[<ore:cordageLeather>, <ore:slimeball>, <ore:cordageLeather>],
			[null, <ore:cordageLeather>, null]
		]
	],
	<betterwithmods:single_machine>: [
		[
			[<minecraft:stone>, <minecraft:stone_slab>, <minecraft:stone>],
			[<minecraft:stone>, <horsepower:hand_grindstone>, <minecraft:stone>],
			[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	// ==================================
	// Stage Two
	// ==================================
	<betterwithmods:wooden_axle> : {
		Utils.genRecipeName(stageTwo, <betterwithmods:wooden_axle>): [
			[
				[null, mouldingWood, null],
				[null, <betterwithmods:rope>, null],
				[null, mouldingWood, null]
			]
		]
	},
	<betterwithmods:wooden_gearbox> : {
		Utils.genRecipeName(stageTwo, <betterwithmods:wooden_gearbox>): [
			[
				[mouldingWood, <betterwithmods:material>, mouldingWood],
				[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
				[mouldingWood, <betterwithmods:material>, mouldingWood]
			]
		]
	}
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<betterwithmods:manual> : [
		[<primal:plant_cloth>, <betterwithmods:material>]
	],
	<betterwithmods:rope> * 9: [
		[<betterwithmods:aesthetic:4>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<betterwithmods:aesthetic:8>,
	<betterwithmods:aesthetic:12>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:bellows>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:manual>,
	<betterwithmods:material:10>,
	<betterwithmods:material:24>,
	<betterwithmods:material:36>,
	<betterwithmods:material:8>,
	<betterwithmods:material:9>,
	<betterwithmods:material>,
	<betterwithmods:rope>,
	<betterwithmods:saw>,
	<betterwithmods:shaft>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:single_machine>,
	<betterwithmods:wicker>,
	<betterwithmods:wooden_axle>,
	<betterwithmods:wooden_gearbox>
];

static removeRegex as string[] = [
	"betterwithaddons:glass_bottle",
	"betterwithmods:higheff/item_frame",
	"betterwithmods:decompress/melon_decompress"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.betterwithmods.namedShapelessRecipes;

	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.betterwithmods.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.betterwithmods.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
