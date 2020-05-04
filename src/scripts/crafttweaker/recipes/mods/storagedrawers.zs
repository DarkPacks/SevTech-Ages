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
	<storagedrawers:upgrade_storage:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<minecraft:coal_block:0>, <storagedrawers:upgrade_template:0>, <minecraft:coal_block:0>],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem]
		]
	],
	<storagedrawers:upgrade_template:0> : [
		[
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:drawerTrim>, <ore:stickWood>.firstItem],
			[<ore:stickWood>.firstItem, <ore:stickWood>.firstItem, <ore:stickWood>.firstItem]
		]
	],
	<storagedrawers:compdrawers:0> : [
		[
			[metals.iron.plate, metals.platinum.plate, metals.iron.plate],
			[<minecraft:piston:0>, <ore:drawerTrim>, <minecraft:piston:0>],
			[metals.iron.plate, <astralsorcery:itemcraftingcomponent:1>, metals.iron.plate]
		]
	],
	<storagedrawers:controller:0> : [
		[
			[metals.platinum.plate, <nex:amethyst_block:0>, metals.platinum.plate],
			[<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>],
			[metals.platinum.plate, <astralsorcery:itemcraftingcomponent:1>, metals.platinum.plate]
		]
	],
	<storagedrawers:controllerslave:0> : [
		[
			[metals.platinum.plate, <ore:plateRedstoneAlloy>, metals.platinum.plate],
			[metals.iron.plate, <ore:drawerTrim>, metals.iron.plate],
			[metals.platinum.plate, <immersiveengineering:metal_decoration0:3>, metals.platinum.plate]
		]
	],
	<storagedrawers:upgrade_storage:2> : [
		[
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>],
			[metals.gold.ingot, <storagedrawers:upgrade_template:0>, metals.gold.ingot],
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>]
		]
	],
	<storagedrawers:upgrade_storage:3> : [
		[
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>],
			[<minecraft:diamond:0>, <storagedrawers:upgrade_template:0>, <minecraft:diamond:0>],
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>]
		]
	],
	<storagedrawers:upgrade_storage:4> : [
		[
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>],
			[<minecraft:emerald:0>, <storagedrawers:upgrade_template:0>, <minecraft:emerald:0>],
			[<immersiveengineering:material:0>, <immersiveengineering:material:0>, <immersiveengineering:material:0>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<storagedrawers:controller:0> : {
		Utils.genRecipeName(stageFour, <storagedrawers:controller:0>) : [
			[
				[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
				[<minecraft:comparator:0>, <ore:drawerTrim>, <minecraft:comparator:0>],
				[metals.compressedIron.plate, metals.redstoneAlloy.plate, metals.compressedIron.plate]
			]
		]
	},
	<storagedrawers:compdrawers:0> : {
		Utils.genRecipeName(stageFour, <storagedrawers:compdrawers:0>) : [
			[
				[metals.iron.plate, metals.compressedIron.plate, metals.iron.plate],
				[<minecraft:piston:0>, <ore:drawerTrim>, <minecraft:piston:0>],
				[metals.iron.plate, metals.redstoneAlloy.plate, metals.iron.plate]
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
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<storagedrawers:compdrawers:0>,
	<storagedrawers:controller:0>,
	<storagedrawers:controllerslave:0>,
	<storagedrawers:upgrade_storage:2>,
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,
	<storagedrawers:upgrade_storage:0>,
	<storagedrawers:upgrade_template:0>
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
