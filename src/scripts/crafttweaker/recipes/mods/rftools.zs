/*
    SevTech: Ages RFTools Recipe Script

    This script handles the recipes for RFTools.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<rftools:machine_base>: [
		[
			[<pneumaticcraft:plastic:8>, metals.invar.plate, <pneumaticcraft:plastic:8>]
		]
	],
	<rftools:matter_transmitter>: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<rftools:matter_receiver>: [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>]
		]
	],
	<rftools:machine_frame>: [
		[
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod],
			[<pneumaticcraft:plastic:8>, null, <pneumaticcraft:plastic:8>],
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<rftools:machine_base>,
	<rftools:machine_frame>,
	<rftools:matter_receiver>,
	<rftools:matter_transmitter>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.rftools.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.rftools.removeRecipes;

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