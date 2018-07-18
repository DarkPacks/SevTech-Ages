/*
    SevTech: Ages Storage Drawers Recipe Script

    This script handles the recipes for Storage Drawers.

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
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<storagedrawers:upgrade_storage> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:coal_block>, <storagedrawers:upgrade_template>, <minecraft:coal_block>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem]
		]
	],
	<storagedrawers:upgrade_template> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:drawerTrim>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem]
		]
	],
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.platinum.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, <astralsorcery:itemcraftingcomponent:1>, metals.iron.plate]
		]
	],
	<storagedrawers:controller> : [
		[
			[metals.platinum.plate, <nex:block_amethyst>, metals.platinum.plate],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[metals.platinum.plate, <astralsorcery:itemcraftingcomponent:1>, metals.platinum.plate]
		]
	],
	<storagedrawers:controllerslave> : [
		[
			[metals.platinum.plate, <ore:plateRedstoneAlloy>, metals.platinum.plate],
			[metals.iron.plate, <ore:drawerTrim>, metals.iron.plate],
			[metals.platinum.plate, <immersiveengineering:metal_decoration0:3>, metals.platinum.plate]
		]
	],
	<storagedrawers:upgrade_storage:2> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[metals.gold.ingot, <storagedrawers:upgrade_template>, metals.gold.ingot],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],
	<storagedrawers:controller> : [
		[
			[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
			[<minecraft:comparator>, <ore:drawerTrim>, <minecraft:comparator>],
			[metals.compressedIron.plate, metals.redstoneAlloy.plate, metals.compressedIron.plate]
		]
	],
	<storagedrawers:compdrawers> : [
		[
			[metals.iron.plate, metals.compressedIron.plate, metals.iron.plate],
			[<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>],
			[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
		]
	],
	<storagedrawers:upgrade_storage:3> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],
	<storagedrawers:upgrade_storage:4> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:emerald>, <storagedrawers:upgrade_template>, <minecraft:emerald>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
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
static removeRecipes as IIngredient[] = [
	<storagedrawers:compdrawers>,
	<storagedrawers:controller>,
	<storagedrawers:controllerslave>,
	<storagedrawers:upgrade_storage:2>,
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,
	<storagedrawers:upgrade_storage>,
	<storagedrawers:upgrade_template>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.storagedrawers.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.storagedrawers.removeRecipes;

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
