/*
	SevTech: Ages Extra Planets Recipe Script

	This script handles the recipes for Extra Planets.

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
	<extraplanets:tier1_pressure_layer>: [
		[
			[<minecraft:wool:*>, null, <minecraft:wool:*>],
			[<galacticraftcore:oxygen_concentrator>, null, <galacticraftcore:oxygen_concentrator>],
			[<minecraft:wool:*>, null, <minecraft:wool:*>]
		]
	],
	<extraplanets:tier1_radiation_layer>: [
		[
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate],
			[metals.lead.plate, null, metals.lead.plate],
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_helmet>: [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_chest>: [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_legings>: [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_boots>: [
		[
			[<industrialforegoing:plastic>, null, <industrialforegoing:plastic>],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:advanced_fuel_loader>: [
		[
			[metals.nickel.ingot, metals.nickel.ingot, metals.nickel.ingot],
			[metals.nickel.ingot, <galacticraftcore:fuel_loader>, metals.nickel.ingot],
			[<extraplanets:tier5_items:5>, <extraplanets:tier5_items:8>, <extraplanets:tier5_items:5>]
		]
	],
	<extraplanets:fire_bomb>: [
		[
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot],
			[<ore:sand>, <extraplanets:tier5_items:11>, <ore:sand>],
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot]
		]
	],
	<extraplanets:nuclear_bomb>: [
		[
			[<minecraft:gunpowder>, <ore:sand>, <minecraft:gunpowder>],
			[<ore:sand>, metals.uranium.ingot, <ore:sand>],
			[<minecraft:gunpowder>, <ore:sand>, <minecraft:gunpowder>]
		]
	],
	<extraplanets:tier1_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier1_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier2_space_suit_helmet>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_helmet>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_chest>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_chest>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_legings>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_legings>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_boots>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_boots>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier2_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier3_space_suit_helmet>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_helmet>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_chest>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_chest>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_legings>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_legings>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_boots>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_boots>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier3_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier4_space_suit_helmet>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_helmet>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_chest>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_chest>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_legings>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_legings>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_boots>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_boots>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier4_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	/*
		Stage Four
	*/
	<extraplanets:tier1_space_suit_helmet:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_helmet:0>): [
			[
				[null, <extraplanets:tier1_armor_layer>, null],
				[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_helmet>, <extraplanets:tier1_pressure_layer>],
				[null, <extraplanets:tier1_armor_layer>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_chest:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFive, <extraplanets:tier1_space_suit_chest:0>): [
			[
				[null, <extraplanets:tier1_armor_layer>, null],
				[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_chest>, <extraplanets:tier1_pressure_layer>],
				[null, <extraplanets:tier1_armor_layer>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_legings:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_legings:0>): [
			[
				[null, <extraplanets:tier1_armor_layer>, null],
				[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_legings>, <extraplanets:tier1_pressure_layer>],
				[null, <extraplanets:tier1_armor_layer>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_boots:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_boots:0>): [
			[
				[null, <extraplanets:tier1_armor_layer>, null],
				[<extraplanets:tier1_radiation_layer>, <extraplanets:tier1_un_prepared_space_suit_boots>, <extraplanets:tier1_pressure_layer>],
				[null, <extraplanets:tier1_armor_layer>, null]
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
	<extraplanets:advanced_fuel_loader>,
	<extraplanets:fire_bomb>,
	<extraplanets:nuclear_bomb>,
	<extraplanets:tier1_pressure_layer>,
	<extraplanets:tier1_radiation_layer>,
	<extraplanets:tier1_space_suit_boots>,
	<extraplanets:tier1_space_suit_chest>,
	<extraplanets:tier1_space_suit_gravity_boots>,
	<extraplanets:tier1_space_suit_helmet>,
	<extraplanets:tier1_space_suit_legings>,
	<extraplanets:tier1_un_prepared_space_suit_boots>,
	<extraplanets:tier1_un_prepared_space_suit_chest>,
	<extraplanets:tier1_un_prepared_space_suit_helmet>,
	<extraplanets:tier1_un_prepared_space_suit_legings>,
	<extraplanets:tier2_space_suit_boots>,
	<extraplanets:tier2_space_suit_chest>,
	<extraplanets:tier2_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_helmet>,
	<extraplanets:tier2_space_suit_legings>,
	<extraplanets:tier3_space_suit_boots>,
	<extraplanets:tier3_space_suit_chest>,
	<extraplanets:tier3_space_suit_gravity_boots>,
	<extraplanets:tier3_space_suit_helmet>,
	<extraplanets:tier3_space_suit_legings>,
	<extraplanets:tier4_space_suit_boots>,
	<extraplanets:tier4_space_suit_chest>,
	<extraplanets:tier4_space_suit_gravity_boots>,
	<extraplanets:tier4_space_suit_helmet>,
	<extraplanets:tier4_space_suit_legings>
];

static removeRegex as string[] = [
	"extraplanets:chest",
	"extraplanets:chest_alt.*"
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.extraplanets.namedShapelessRecipes;

	// Removals
	var removeRegex as string[] = scripts.crafttweaker.recipes.mods.extraplanets.removeRegex;
	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.extraplanets.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.process(namedShapedRecipes, false);
    recipeUtil.process(namedMirroredRecipes, true);
    recipeUtil.process(namedShapelessRecipes);

	// Removals
	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
}
