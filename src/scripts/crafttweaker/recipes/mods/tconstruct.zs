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
	<tconstruct:firewood_slab> * 3 : [
		[
			[<tconstruct:firewood>, <tconstruct:firewood>, <tconstruct:firewood>]
		]
	],
	<tconstruct:seared_tank> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <ceramics:clay_barrel>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:piggybackpack> : [
		[
			[null, <ore:stickWood>.firstItem, null],
			[<minecraft:leather>, null, <minecraft:leather>],
			[null, <ore:stickWood>.firstItem, null]
		]
	],
	<tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:crimson_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	<tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:aqua_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:green_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],
	<tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	<tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <betterwithmods:material:27>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],
	<tconstruct:materials:16> : [
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:crimson_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:aqua_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		],
		[
			[null, <tconstruct:materials:15>, null],
			[<tconstruct:materials:15>, <thebetweenlands:green_middle_gem>, <tconstruct:materials:15>],
			[null, <tconstruct:materials:15>, null]
		]
	],
	<tconstruct:edible:4> * 4 : [
		[
			[null, <minecraft:magma_cream>, null],
			[<minecraft:magma_cream>, craftingUtils.getBucketIngredient(<liquid:lava>), <minecraft:magma_cream>],
			[null, <minecraft:magma_cream>, null]
		]
	],
	<tconstruct:wood_rail> * 8 : [
		[
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>],
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>],
			[<ore:thinWood>, <ore:plankWood>, <ore:thinWood>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
	<tconstruct:pattern> * 4: {
		Utils.genRecipeName(stageTwo, <tconstruct:pattern>): [
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
	<tconstruct:stone_torch> * 2 : [
		[<minecraft:coal:*>, <ore:cordageGeneral>, <tconstruct:stone_stick>]
	],
	<tconstruct:book> : [
		[<primal:plant_cloth>, <ore:dyeBrown>]
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
static removeRecipes as IIngredient[] = [
	<tconstruct:book>,
	<tconstruct:clear_glass>,
	<tconstruct:clear_stained_glass:*>,
	<tconstruct:edible:1>,
	<tconstruct:edible:2>,
	<tconstruct:edible:4>,
	<tconstruct:firewood_slab:1>,
	<tconstruct:firewood_slab>,
	<tconstruct:materials:16>,
	<tconstruct:pattern>,
	<tconstruct:piggybackpack>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:smeltery_controller>,
	<tconstruct:soil>,
	<tconstruct:stone_stick>,
	<tconstruct:stone_torch>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:wood_rail>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.tconstruct.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.tconstruct.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
