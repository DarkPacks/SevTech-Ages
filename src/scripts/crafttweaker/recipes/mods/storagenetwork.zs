/*
    SevTech: Ages Storage Network Recipe Script

    This script handles the recipes for Storage Network.

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
	<storagenetwork:master>: [
		[
			[metals.compressedIron.plate, <storagenetwork:kabel>, metals.compressedIron.plate],
			[<storagenetwork:kabel>, <teslacorelib:machine_case>, <storagenetwork:kabel>],
			[metals.compressedIron.plate, <storagenetwork:kabel>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:kabel> * 8 : [
		[
			[metals.compressedIron.plate, <immersiveengineering:wirecoil:4>, metals.compressedIron.plate],
		]
	],
	<storagenetwork:request>: [
		[
			[metals.compressedIron.plate, <minecraft:glass_pane>, metals.compressedIron.plate],
			[<storagenetwork:kabel>, <immersiveengineering:metal_decoration0:5>, <storagenetwork:kabel>],
			[metals.compressedIron.plate, <storagedrawers:controller>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:im_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:hopper>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:ex_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:piston>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:storage_kabel> * 4: [
		[
			[null, <storagenetwork:kabel>, null],
			[<storagenetwork:kabel>, <minecraft:chest>, <storagenetwork:kabel>],
			[null, <storagenetwork:kabel>, null]
		]
	],
	<storagenetwork:upgrade:1> * 4: [
		[
			[null, <minecraft:comparator>, null],
			[<minecraft:redstone>, <storagenetwork:kabel>, <minecraft:redstone>],
			[null, <minecraft:comparator>, null]
		]
	],
	<storagenetwork:upgrade> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[metals.gold.plate, <storagenetwork:kabel>, metals.gold.plate],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:2> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[<minecraft:blaze_powder>, <storagenetwork:kabel>, <minecraft:blaze_powder>],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:3> * 4: [
		[
			[null, <minecraft:comparator>, null],
			[null, <storagenetwork:kabel>, null],
			[null, <minecraft:comparator>, null]
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
	<storagenetwork:ex_kabel>,
	<storagenetwork:im_kabel>,
	<storagenetwork:kabel>,
	<storagenetwork:master>,
	<storagenetwork:request>,
	<storagenetwork:storage_kabel>,
	<storagenetwork:upgrade:1>,
	<storagenetwork:upgrade:2>,
	<storagenetwork:upgrade:3>,
	<storagenetwork:upgrade>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagenetwork.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.storagenetwork.removeRecipes;

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
