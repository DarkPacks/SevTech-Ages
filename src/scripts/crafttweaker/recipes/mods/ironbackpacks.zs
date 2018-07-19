/*
    SevTech: Ages Iron Backpacks Recipe Script

    This script handles the recipes for Iron Backpacks.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.utils.ironbackpacksRecipeFunc;
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
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}) : [
		[
			[<minecraft:wool:*>, <minecraft:leather>, <minecraft:wool:*>],
			[<minecraft:leather>, <primal:storage_crate:*>, <minecraft:leather>],
			[<minecraft:wool:*>, <minecraft:leather>, <minecraft:wool:*>]
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
	<ironbackpacks:backpack>
];

function initSpecRecipes() {
	// ==================================
	// Iron

	// Upgrade Spec
	recipes.addShaped("ct-ironbackpacks-iron-upgrade_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}),
		[
			[metals.iron.plate, <ironbackpacks:upgrade>, metals.iron.plate],
			[
				metals.iron.plate,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:basic"}}).marked("bag"),
				metals.iron.plate
			],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		],
		ironbackpacksRecipeFunc,
		null
	);
	// Storage Spec
	recipes.addShaped("ct-ironbackpacks-iron-storage_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}),
		[
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[
				metals.iron.plate,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:basic"}}).marked("bag"),
				metals.iron.plate
			],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		],
		ironbackpacksRecipeFunc,
		null
	);

	// ==================================
	// Gold

	// Upgrade Spec
	recipes.addShaped("ct-ironbackpacks-gold-upgrade_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}),
		[
			[metals.gold.plate, <ironbackpacks:upgrade>, metals.gold.plate],
			[
				metals.gold.plate,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:iron", spec: "UPGRADE"}}).marked("bag"),
				metals.gold.plate
			],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		],
		ironbackpacksRecipeFunc,
		null
	);
	// Storage Spec
	recipes.addShaped("ct-ironbackpacks-gold-storage_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
		[
			[metals.gold.plate, <minecraft:chest>, metals.gold.plate],
			[
				metals.gold.plate,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:iron", spec: "STORAGE"}}).marked("bag"),
				metals.gold.plate
			],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		],
		ironbackpacksRecipeFunc,
		null
	);

	// ==================================
	// Diamond

	// Upgrade Spec
	recipes.addShaped("ct-ironbackpacks-diamond-upgrade_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}),
		[
			[<minecraft:diamond>, <ironbackpacks:upgrade>, <minecraft:diamond>],
			[
				<minecraft:diamond>,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:gold", spec: "UPGRADE"}}).marked("bag"),
				<minecraft:diamond>
			],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
		],
		ironbackpacksRecipeFunc,
		null
	);
	// Storage Spec
	recipes.addShaped("ct-ironbackpacks-diamond-storage_spec",
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}),
		[
			[<minecraft:diamond>, <minecraft:chest>, <minecraft:diamond>],
			[
				<minecraft:diamond>,
				<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}).onlyWithTag({packInfo: {type: "ironbackpacks:gold", spec: "STORAGE"}}).marked("bag"),
				<minecraft:diamond>
			],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
		],
		ironbackpacksRecipeFunc,
		null
	);
}

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.ironbackpacks.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.ironbackpacks.removeRecipes;

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
