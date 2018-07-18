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
			[null, null, null],
			[null, metals.gold.ingot, <astralsorcery:itemcraftingcomponent:3>],
			[metals.gold.ingot, <astralsorcery:itemcraftingcomponent:2>, metals.gold.ingot]
		]
	],
	<infoaccessories:info_accessory:2> : [
		[[null, <twilightforest:ironwood_ingot>, null], [<twilightforest:ironwood_ingot>, <minecraft:compass>, <twilightforest:ironwood_ingot>], [null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:6> : [
		[
			[null, <twilightforest:torchberries>, null],
			[<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty>, <twilightforest:twilight_sapling>],
			[null, <twilightforest:twilight_sapling:1>, null]
		]
	],
	<infoaccessories:info_accessory> : [
		[[null, <abyssalcraft:dsbutton>, null],
		[<twilightforest:firefly_jar>, <minecraft:clock>, <twilightforest:firefly_jar>],
		[null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:4> : [
		[[null, <minecraft:slime_ball>, null],
		[<minecraft:slime_ball>, <minecraft:compass>, <minecraft:slime_ball>],
		[null, <minecraft:slime_ball>, null]]
	],
	<infoaccessories:info_accessory:5> : [
	  	[[null, <minecraft:paper>, null],
	  	[<minecraft:paper>, <minecraft:clock>, <minecraft:paper>],
	  	[null, <minecraft:paper>, null]]
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
	<infoaccessories:info_accessory:1>,
	<infoaccessories:info_accessory:2>,
	<infoaccessories:info_accessory:4>,
	<infoaccessories:info_accessory:5>,
	<infoaccessories:info_accessory:6>,
	<infoaccessories:info_accessory>,
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.infoaccessories.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.infoaccessories.removeRecipes;

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
