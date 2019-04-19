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
	<storagenetwork:master:0>: [
		[
			[metals.compressedIron.plate, <storagenetwork:kabel:0>, metals.compressedIron.plate],
			[<storagenetwork:kabel:0>, <teslacorelib:machine_case:0>, <storagenetwork:kabel:0>],
			[metals.compressedIron.plate, <storagenetwork:kabel:0>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:kabel:0> * 8 : [
		[
			[metals.compressedIron.plate, <immersiveengineering:wirecoil:4>, metals.compressedIron.plate],
		]
	],
	<storagenetwork:request:0>: [
		[
			[metals.compressedIron.plate, <minecraft:glass_pane:0>, metals.compressedIron.plate],
			[<storagenetwork:kabel:0>, <immersiveengineering:metal_decoration0:5>, <storagenetwork:kabel:0>],
			[metals.compressedIron.plate, <storagedrawers:controller:0>, metals.compressedIron.plate]
		]
	],
	<storagenetwork:im_kabel:0> * 4: [
		[
			[null, <storagenetwork:kabel:0>, null],
			[<storagenetwork:kabel:0>, <minecraft:hopper:0>, <storagenetwork:kabel:0>],
			[null, <storagenetwork:kabel:0>, null]
		]
	],
	<storagenetwork:ex_kabel:0> * 4: [
		[
			[null, <storagenetwork:kabel:0>, null],
			[<storagenetwork:kabel:0>, <minecraft:piston:0>, <storagenetwork:kabel:0>],
			[null, <storagenetwork:kabel:0>, null]
		]
	],
	<storagenetwork:storage_kabel:0> * 4: [
		[
			[null, <storagenetwork:kabel:0>, null],
			[<storagenetwork:kabel:0>, <minecraft:chest:0>, <storagenetwork:kabel:0>],
			[null, <storagenetwork:kabel:0>, null]
		]
	],
	<storagenetwork:upgrade:1> * 4: [
		[
			[null, <minecraft:comparator:0>, null],
			[<minecraft:redstone:0>, <storagenetwork:kabel:0>, <minecraft:redstone:0>],
			[null, <minecraft:comparator:0>, null]
		]
	],
	<storagenetwork:upgrade:0> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[metals.gold.plate, <storagenetwork:kabel:0>, metals.gold.plate],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:2> * 4: [
		[
			[null, metals.redstoneAlloy.plate, null],
			[<minecraft:blaze_powder:0>, <storagenetwork:kabel:0>, <minecraft:blaze_powder:0>],
			[null, metals.redstoneAlloy.plate, null]
		]
	],
	<storagenetwork:upgrade:3> * 4: [
		[
			[<minecraft:comparator:0>],
			[<storagenetwork:kabel:0>],
			[<minecraft:comparator:0>]
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
static removeRecipes as IItemStack[] = [
	<storagenetwork:ex_kabel:0>,
	<storagenetwork:im_kabel:0>,
	<storagenetwork:kabel:0>,
	<storagenetwork:master:0>,
	<storagenetwork:request:0>,
	<storagenetwork:storage_kabel:0>,
	<storagenetwork:upgrade:1>,
	<storagenetwork:upgrade:2>,
	<storagenetwork:upgrade:3>,
	<storagenetwork:upgrade:0>
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
