/*
    SevTech: Ages GalactiCraft Recipe Script

    This script handles the recipes for GalactiCraft.

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
	<galacticraftcore:machine:12>: [
		[
			[metals.aluminum.plate, <minecraft:piston>, metals.aluminum.plate],
			[metals.aluminum.plate, <natura:netherrack_furnace>, metals.aluminum.plate],
			[<enderutilities:enderpart:2>, <betterwithmods:steel_anvil>, <enderutilities:enderpart:2>]
		]
	],
	<galacticraftcore:fuel_loader>: [
		[
			[<galacticraftcore:basic_item:6>, <galacticraftcore:basic_item:6>, <galacticraftcore:basic_item:6>],
			[<appliedenergistics2:material:22>, <galacticraftcore:canister>, <appliedenergistics2:material:24>],
			[<galacticraftcore:basic_item:7>, <pneumaticcraft:printed_circuit_board>, <galacticraftcore:basic_item:7>]
		]
	],
	<galacticraftcore:air_fan>: [
		[
			[<galacticraftcore:basic_item:9>, null, <galacticraftcore:basic_item:9>],
			[null, metals.invar.gear, null],
			[<galacticraftcore:basic_item:9>, null, <galacticraftcore:basic_item:9>]
		]
	],
	<galacticraftcore:machine2:8>: [
		[
			[<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>],
			[<ore:tankOxygenHeavy>, <ore:tankOxygenHeavy>, <ore:tankOxygenHeavy>],
			[<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>]
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
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<galacticraftplanets:carbon_fragments> * 16 : [
		 [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]
	],
	<galacticraftplanets:carbon_fragments> * 32 : [
		[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>, <minecraft:coal>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<galacticraftcore:air_fan>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:machine2:8>,
	<galacticraftcore:machine:12>,
	<galacticraftcore:rocket_workbench>,
	<galacticraftplanets:carbon_fragments>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.galacticraft.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.galacticraft.removeRecipes;

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
