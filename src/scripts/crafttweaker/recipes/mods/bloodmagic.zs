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
	<bloodmagic:altar:0> : [
		[
			[<minecraft:stone:0>, null, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:furnace:0>, <minecraft:stone:0>],
			[metals.bronze.ingot, <bloodmagic:monster_soul:0>, metals.bronze.ingot]
		]
	],
	<bloodmagic:sacrificial_dagger:0> : [
		[
			[null, null, <primal:sharp_bone:0>],
			[null, metals.bronze.ingot, null],
			[metals.bronze.ingot, null, null]
		]
	],
	<bloodmagic:soul_snare:0> * 4: [
		[
			[<minecraft:string:0>, metals.tin.ingot, <minecraft:string:0>],
			[metals.tin.ingot, <betterwithaddons:tweakmat:0>, metals.tin.ingot],
			[<minecraft:string:0>, metals.tin.ingot, <minecraft:string:0>]
		]
	],
	<bloodmagic:soul_forge:0> : [
		[
			[metals.tin.ingot, null, metals.tin.ingot],
			[<minecraft:stone:0>, metals.bronze.ingot, <minecraft:stone:0>],
			[<minecraft:stone:0>, metals.copper.block, <minecraft:stone:0>]
		]
	],
	<bloodmagic:blood_rune:3> : [
		[
			[<minecraft:stone:0>, <bloodmagic:slate:1>, <minecraft:stone:0>],
			[metals.bronze.ingot, <bloodmagic:blood_rune:0>, metals.bronze.ingot],
			[<minecraft:stone:0>, <bloodmagic:blood_orb:*>, <minecraft:stone:0>]
		]
	],
	<bloodmagic:blood_rune:4> : [
		[
			[<minecraft:stone:0>, <bloodmagic:slate:1>, <minecraft:stone:0>],
			[<ore:dyeYellow>, <bloodmagic:blood_rune:0>, <ore:dyeYellow>],
			[<minecraft:stone:0>, <bloodmagic:blood_orb:*>, <minecraft:stone:0>]
		]
	],
	<bloodmagic:lava_crystal:0> : [
		[
			[<ore:blockGlass>, craftingUtils.getBucketAndTankIngredient(<liquid:lava>), <ore:blockGlass>],
			[craftingUtils.getBucketAndTankIngredient(<liquid:lava>), <bloodmagic:blood_orb:*>, craftingUtils.getBucketAndTankIngredient(<liquid:lava>)],
			[<tconstruct:firewood:0>, <ore:bottleFiery>, <tconstruct:firewood:0>]
		]
	],
	<bloodmagic:experience_tome:0> : [
		[
			[<minecraft:string:0>, <ore:blockLapis>, <minecraft:string:0>],
			[<bloodmagic:slate:2>, <betterwithmods:arcane_scroll:*>, <bloodmagic:slate:2>],
			[metals.gold.ingot, <bloodmagic:blood_orb:*>, metals.gold.ingot]
		]
	],
	<bloodmagic:ritual_diviner:0> : [
		[
			[metals.platinum.ingot, <bloodmagic:inscription_tool:2>, metals.platinum.ingot],
			[<bloodmagic:inscription_tool:4>, <ore:stickTreatedWood>, <bloodmagic:inscription_tool:3>],
			[metals.platinum.ingot, <bloodmagic:inscription_tool:1>, metals.platinum.ingot]
		]
	],
	<bloodmagic:ritual_diviner:1>.withTag({}) : [
		[
			[null, <bloodmagic:slate:3>, null],
			[<bloodmagic:inscription_tool:5>, <bloodmagic:ritual_diviner:0>, <bloodmagic:inscription_tool:5>],
			[null, <bloodmagic:slate:3>, null]
		]
	],
	<bloodmagic:decorative_brick:2> : [
		[
			[<bloodmagic:item_demon_crystal:1>, <bloodmagic:activation_crystal:1>, <bloodmagic:item_demon_crystal:2>],
			[<bloodmagic:slate:4>, <bloodmagic:decorative_brick:1>, <bloodmagic:slate:4>],
			[<bloodmagic:item_demon_crystal:3>, <bloodmagic:item_demon_crystal:0>, <bloodmagic:item_demon_crystal:4>]
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
	<bloodmagic:bound_sword:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_sword:0>]
	],
	<bloodmagic:bound_pickaxe:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_pickaxe:0>]
	],
	<bloodmagic:bound_axe:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_axe:0>]
	],
	<bloodmagic:bound_shovel:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_shovel:0>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<bloodmagic:altar:0>,
	<bloodmagic:blood_rune:3>,
	<bloodmagic:blood_rune:4>,
	<bloodmagic:experience_tome:0>,
	<bloodmagic:lava_crystal:0>,
	<bloodmagic:ritual_diviner:1>,
	<bloodmagic:ritual_diviner:0>,
	<bloodmagic:sacrificial_dagger:0>,
	<bloodmagic:soul_forge:0>,
	<bloodmagic:soul_snare:0>
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
