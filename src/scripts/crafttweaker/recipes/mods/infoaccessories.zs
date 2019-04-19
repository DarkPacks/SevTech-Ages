/*
    SevTech: Ages Info Accessories Recipe Script

    This script handles the recipes for Info Accessories.

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
	<infoaccessories:info_accessory:1>: [
		[
			[null, metals.gold.ingot, <astralsorcery:itemcraftingcomponent:3>],
			[metals.gold.ingot, <astralsorcery:itemcraftingcomponent:2>, metals.gold.ingot]
		]
	],
	<infoaccessories:info_accessory:2> : [
		[[null, <twilightforest:ironwood_ingot:0>, null], [<twilightforest:ironwood_ingot:0>, <minecraft:compass:0>, <twilightforest:ironwood_ingot:0>], [null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:6> : [
		[
			[null, <twilightforest:torchberries:0>, null],
			[<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty:0>, <twilightforest:twilight_sapling:0>],
			[null, <twilightforest:twilight_sapling:1>, null]
		]
	],
	<infoaccessories:info_accessory:0> : [
		[[null, <abyssalcraft:dsbutton:0>, null],
		[<twilightforest:firefly_jar:0>, <minecraft:clock:0>, <twilightforest:firefly_jar:0>],
		[null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:4> : [
		[[null, <minecraft:slime_ball:0>, null],
		[<minecraft:slime_ball:0>, <minecraft:compass:0>, <minecraft:slime_ball:0>],
		[null, <minecraft:slime_ball:0>, null]]
	],
	<infoaccessories:info_accessory:5> : [
	  	[[null, <minecraft:paper:0>, null],
	  	[<minecraft:paper:0>, <minecraft:clock:0>, <minecraft:paper:0>],
	  	[null, <minecraft:paper:0>, null]]
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
	<infoaccessories:info_accessory:1>,
	<infoaccessories:info_accessory:2>,
	<infoaccessories:info_accessory:4>,
	<infoaccessories:info_accessory:5>,
	<infoaccessories:info_accessory:6>,
	<infoaccessories:info_accessory:0>,
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
