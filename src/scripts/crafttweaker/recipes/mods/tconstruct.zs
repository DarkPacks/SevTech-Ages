/*
    SevTech: Ages Tinkers Construct Recipe Script

    This script handles the recipes for Tinkers Construct.

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
	<tconstruct:firewood_slab:1> * 3 : [
		[
			[<tconstruct:firewood:1>, <tconstruct:firewood:1>, <tconstruct:firewood:1>]
		]
	],
	<tconstruct:firewood_slab:0> * 3 : [
		[
			[<tconstruct:firewood:0>, <tconstruct:firewood:0>, <tconstruct:firewood:0>]
		]
	],
	<tconstruct:seared_tank:0> : [
		[
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <ceramics:clay_barrel:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:piggybackpack:0> : [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<minecraft:leather:0>, null, <minecraft:leather:0>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<tconstruct:seared_furnace_controller:0> : [
		[
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <thebetweenlands:crimson_middle_gem:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <minecraft:furnace:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:smeltery_controller:0> : [
		[
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <thebetweenlands:aqua_middle_gem:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:tinker_tank_controller:0> : [
		[
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <thebetweenlands:green_middle_gem:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <minecraft:bucket:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:materials:16> : [
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:crimson_middle_gem:0>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:aqua_middle_gem:0>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:green_middle_gem:0>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		]
	],
	<tconstruct:edible:4> * 4 : [
		[
			[null, <minecraft:magma_cream:0>, null],
			[<minecraft:magma_cream:0>, craftingUtils.getBucketAndTankIngredient(<liquid:lava>), <minecraft:magma_cream:0>],
			[null, <minecraft:magma_cream:0>, null]
		]
	],
	<tconstruct:wood_rail:0> * 8 : [
		[
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>],
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>],
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<tconstruct:seared_furnace_controller:0>: {
		Utils.genRecipeName(stageThree, <tconstruct:seared_furnace_controller:0>): [
			[
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <betterwithmods:material:27>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <minecraft:furnace:0>, <tconstruct:materials:0>]
			]
		]
	},
	<tconstruct:smeltery_controller:0>: {
		Utils.genRecipeName(stageThree, <tconstruct:smeltery_controller:0>): [
			[
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <betterwithmods:material:27>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
			]
		]
	},
	<tconstruct:tinker_tank_controller:0>: {
		Utils.genRecipeName(stageThree, <tconstruct:tinker_tank_controller:0>): [
			[
				[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <betterwithmods:material:27>, <tconstruct:materials:0>],
				[<tconstruct:materials:0>, <minecraft:bucket:0>, <tconstruct:materials:0>]
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
	<tconstruct:pattern:0> * 4: {
		Utils.genRecipeName(stageTwo, <tconstruct:pattern:0>): [
			[
				[<ore:barkWood>, sidingWood],
				[sidingWood, <ore:barkWood>]
			]
		]
	}
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<tconstruct:stone_torch:0> * 2 : [
		[<minecraft:coal:*>, <ore:cordageGeneral>, <tconstruct:stone_stick:0>]
	],
	<tconstruct:book:0> : [
		[<primal:plant_cloth:0>, <ore:dyeBrown>]
	],
	<tconstruct:materials:16> * 9 : [
		[<tconstruct:metal:6>]
	],
	<tconstruct:edible:1> * 4 : [
		[<tconstruct:slime_congealed:1>]
	],
	<tconstruct:edible:2> * 4 : [
		[<tconstruct:slime_congealed:2>]
	],
	<tconstruct:edible:4> * 4 : [
		[<tconstruct:slime_congealed:4>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<tconstruct:book:0>,
	<tconstruct:clear_glass:0>,
	<tconstruct:clear_stained_glass:*>,
	<tconstruct:edible:1>,
	<tconstruct:edible:2>,
	<tconstruct:edible:4>,
	<tconstruct:firewood_slab:1>,
	<tconstruct:firewood_slab:0>,
	<tconstruct:materials:16>,
	<tconstruct:piggybackpack:0>,
	<tconstruct:seared_furnace_controller:0>,
	<tconstruct:smeltery_controller:0>,
	<tconstruct:soil:0>,
	<tconstruct:stone_stick:0>,
	<tconstruct:stone_torch:0>,
	<tconstruct:tinker_tank_controller:0>,
	<tconstruct:wood_rail:0>
];

static removeRegex as string[] = [
	"tconstruct:gadgets/slimesling/green",
	"tconstruct:tools/pattern"
];

function init() {
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
