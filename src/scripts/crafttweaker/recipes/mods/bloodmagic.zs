/*
    SevTech: Ages Blood Magic Recipe Script

    This script handles the recipes for Blood Magic.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;
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
	<bloodmagic:altar> : [
		[
			[<minecraft:stone>, null, <minecraft:stone>],
			[<minecraft:stone>, <minecraft:furnace>, <minecraft:stone>],
			[metals.bronze.ingot, <bloodmagic:monster_soul>, metals.bronze.ingot]
		]
	],
	<bloodmagic:sacrificial_dagger> : [
		[
			[null, null, <primal:sharp_bone>],
			[null, metals.bronze.ingot, null],
			[metals.bronze.ingot, null, null]
		]
	],
	<bloodmagic:soul_snare> * 4: [
		[
			[<minecraft:string>, metals.tin.ingot, <minecraft:string>],
			[metals.tin.ingot, <betterwithaddons:tweakmat>, metals.tin.ingot],
			[<minecraft:string>, metals.tin.ingot, <minecraft:string>]
		]
	],
	<bloodmagic:soul_forge> : [
		[
			[metals.tin.ingot, null, metals.tin.ingot],
			[<minecraft:stone>, metals.bronze.ingot, <minecraft:stone>],
			[<minecraft:stone>, metals.copper.block, <minecraft:stone>]
		]
	],
	<bloodmagic:blood_rune:3> : [
		[
			[<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
			[metals.bronze.ingot, <bloodmagic:blood_rune>, metals.bronze.ingot],
			[<minecraft:stone>, <bloodmagic:blood_orb:*>, <minecraft:stone>]
		]
	],
	<bloodmagic:blood_rune:4> : [
		[
			[<minecraft:stone>, <bloodmagic:slate:1>, <minecraft:stone>],
			[<ore:dyeYellow>, <bloodmagic:blood_rune>, <ore:dyeYellow>],
			[<minecraft:stone>, <bloodmagic:blood_orb:*>, <minecraft:stone>]
		]
	],
	<bloodmagic:lava_crystal> : [
		[
			[<ore:blockGlass>, craftingUtils.getBucketIngredient(<liquid:lava>), <ore:blockGlass>],
			[craftingUtils.getBucketIngredient(<liquid:lava>), <bloodmagic:blood_orb:*>, craftingUtils.getBucketIngredient(<liquid:lava>)],
			[<tconstruct:firewood>, <ore:bottleFiery>, <tconstruct:firewood>]
		]
	],
	<bloodmagic:experience_tome> : [
		[
			[<minecraft:string>, <ore:blockLapis>, <minecraft:string>],
			[<bloodmagic:slate:2>, <betterwithmods:arcane_scroll:*>, <bloodmagic:slate:2>],
			[metals.gold.ingot, <bloodmagic:blood_orb:*>, metals.gold.ingot]
		]
	],
	<bloodmagic:ritual_diviner> : [
		[
			[metals.platinum.ingot, <bloodmagic:inscription_tool:2>, metals.platinum.ingot],
			[<bloodmagic:inscription_tool:4>, <ore:stickTreatedWood>, <bloodmagic:inscription_tool:3>],
			[metals.platinum.ingot, <bloodmagic:inscription_tool:1>, metals.platinum.ingot]
		]
	],
	<bloodmagic:ritual_diviner:1>.withTag({}) : [
		[
			[null, <bloodmagic:slate:3>, null],
			[<bloodmagic:inscription_tool:5>, <bloodmagic:ritual_diviner>, <bloodmagic:inscription_tool:5>],
			[null, <bloodmagic:slate:3>, null]
		]
	],
	<bloodmagic:decorative_brick:2> : [
		[
			[<bloodmagic:item_demon_crystal:1>, <bloodmagic:activation_crystal:1>, <bloodmagic:item_demon_crystal:2>],
			[<bloodmagic:slate:4>, <bloodmagic:decorative_brick:1>, <bloodmagic:slate:4>],
			[<bloodmagic:item_demon_crystal:3>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal:4>]
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
	<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_sword>]
	],
	<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_pickaxe>]
	],
	<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_axe>]
	],
	<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_shovel>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<bloodmagic:altar>,
	<bloodmagic:blood_rune:3>,
	<bloodmagic:blood_rune:4>,
	<bloodmagic:experience_tome>,
	<bloodmagic:lava_crystal>,
	<bloodmagic:ritual_diviner:1>,
	<bloodmagic:ritual_diviner>,
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_forge>,
	<bloodmagic:soul_snare>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.bloodmagic.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.bloodmagic.removeRecipes;

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
