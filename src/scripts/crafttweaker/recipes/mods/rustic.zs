/*
    SevTech: Ages Rustic Recipe Script

    This script handles the recipes for Rustic.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.utils;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<rustic:ironwood_slab_item:0> * 3 : [
		[
			[<rustic:planks:1>, <rustic:planks:1>, <rustic:planks:1>]
		]
	],
	<rustic:olive_slab_item:0> * 3 : [
		[
			[<rustic:planks:0>, <rustic:planks:0>, <rustic:planks:0>]
		]
	],
	<rustic:crushing_tub> : [
		[
			[<ore:slabWood>, null, <ore:slabWood>],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]


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
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<rustic:fertile_soil:0>,
	<rustic:ironwood_slab_item:0>,
	<rustic:olive_slab_item:0>,
	<rustic:crushing_tub>
];

static removeRegex as string[] = [
	"rustic:bottle_emptying"
];

function initPaintedWoodRecipes() {
	for i in 0 to 16 {
		var pWoodBlock as IItemStack = itemUtils.getItem("rustic:painted_wood_" + utils.convertCamelToSnake(minecraftDyeIdTableAlternate[i]));
		var dyeOredict as IOreDictEntry = oreDict.get("dye" ~ utils.capitalize(minecraftDyeIdTable[i]));
		recipes.addShaped(pWoodBlock * 8, [
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, dyeOredict, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]);
	}
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

	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);

	// Rustic Bottle -> Empty Bottle
	recipes.addShapeless("rutic_empting",
		<minecraft:glass_bottle>,
		[<rustic:fluid_bottle>.marked("bottle")],
		function (out, ins, cInfo) {
			// Only allow conversion with the bottles which actually contain something.
			if (ins.bottle.tag has "Fluid") {
				return out;
			}
			return null;
		},
		null
	);

	initPaintedWoodRecipes();
}

