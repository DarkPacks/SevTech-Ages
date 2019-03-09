/*
    SevTech: Ages Mekanism Recipe Script

    This script handles the recipes for Mekanism.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<mekanism:basicblock:7> * 4: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:ingot:0>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd:0>, null, <galacticraftcore:cheese_curd:0>],
			[metals.platinum.plate, <mekanism:ingot:3>, metals.platinum.plate]
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
	// Clear Mekanism creative tank
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}): [
	    [
			<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}, false).onlyWithTag({tier: 4})
		]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<mekanism:basicblock:7>,
	<mekanism:machineblock3:3>,
	<mekanism:saltblock:0>
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
}
