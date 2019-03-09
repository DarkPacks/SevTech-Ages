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

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
	Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<extraplanets:tier1_pressure_layer:0>: [
		[
			[<minecraft:wool:*>, null, <minecraft:wool:*>],
			[<galacticraftcore:oxygen_concentrator:0>, null, <galacticraftcore:oxygen_concentrator:0>],
			[<minecraft:wool:*>, null, <minecraft:wool:*>]
		]
	],
	<extraplanets:tier1_radiation_layer:0>: [
		[
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate],
			[metals.lead.plate, null, metals.lead.plate],
			[metals.lead.plate, <minecraft:wool:*>, metals.lead.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_helmet:0>: [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic:0>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_chest:0>: [
		[
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, <industrialforegoing:plastic:0>, metals.aluminum.plate],
			[metals.aluminum.plate, metals.aluminum.plate, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_legings:0>: [
		[
			[metals.aluminum.plate, <industrialforegoing:plastic:0>, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:tier1_un_prepared_space_suit_boots:0>: [
		[
			[<industrialforegoing:plastic:0>, null, <industrialforegoing:plastic:0>],
			[metals.aluminum.plate, null, metals.aluminum.plate]
		]
	],
	<extraplanets:advanced_fuel_loader:0>: [
		[
			[metals.nickel.ingot, metals.nickel.ingot, metals.nickel.ingot],
			[metals.nickel.ingot, <galacticraftcore:fuel_loader:0>, metals.nickel.ingot],
			[<extraplanets:tier5_items:5>, <extraplanets:tier5_items:8>, <extraplanets:tier5_items:5>]
		]
	],
	<extraplanets:fire_bomb:0>: [
		[
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot],
			[<ore:sand>, <extraplanets:tier5_items:11>, <ore:sand>],
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot]
		]
	],
	<extraplanets:nuclear_bomb:0>: [
		[
			[<minecraft:gunpowder:0>, <ore:sand>, <minecraft:gunpowder:0>],
			[<ore:sand>, metals.uranium.ingot, <ore:sand>],
			[<minecraft:gunpowder:0>, <ore:sand>, <minecraft:gunpowder:0>]
		]
	],
	<extraplanets:tier1_space_suit_gravity_boots:0>: [
		[
			[null, <extraplanets:gravity_controller:0>, null],
			[<extraplanets:gravity_controller:0>, <extraplanets:tier1_space_suit_boots:0>, <extraplanets:gravity_controller:0>],
			[null, <extraplanets:gravity_controller:0>, null]
		]
	],
	<extraplanets:tier2_space_suit_helmet:0>: [
		[
			[null, <extraplanets:tier2_armor_layer:0>, null],
			[<extraplanets:tier2_radiation_layer:0>, <extraplanets:tier2_un_prepared_space_suit_helmet:0>, <extraplanets:tier2_pressure_layer:0>],
			[null, <extraplanets:tier2_armor_layer:0>, null]
		]
	],
	<extraplanets:tier2_space_suit_chest:0>: [
		[
			[null, <extraplanets:tier2_armor_layer:0>, null],
			[<extraplanets:tier2_radiation_layer:0>, <extraplanets:tier2_un_prepared_space_suit_chest:0>, <extraplanets:tier2_pressure_layer:0>],
			[null, <extraplanets:tier2_armor_layer:0>, null]
		]
	],
	<extraplanets:tier2_space_suit_legings:0>: [
		[
			[null, <extraplanets:tier2_armor_layer:0>, null],
			[<extraplanets:tier2_radiation_layer:0>, <extraplanets:tier2_un_prepared_space_suit_legings:0>, <extraplanets:tier2_pressure_layer:0>],
			[null, <extraplanets:tier2_armor_layer:0>, null]
		]
	],
	<extraplanets:tier2_space_suit_boots:0>: [
		[
			[null, <extraplanets:tier2_armor_layer:0>, null],
			[<extraplanets:tier2_radiation_layer:0>, <extraplanets:tier2_un_prepared_space_suit_boots:0>, <extraplanets:tier2_pressure_layer:0>],
			[null, <extraplanets:tier2_armor_layer:0>, null]
		]
	],
	<extraplanets:tier2_space_suit_gravity_boots:0>: [
		[
			[null, <extraplanets:gravity_controller:0>, null],
			[<extraplanets:gravity_controller:0>, <extraplanets:tier2_space_suit_boots:0>, <extraplanets:gravity_controller:0>],
			[null, <extraplanets:gravity_controller:0>, null]
		]
	],
	<extraplanets:tier3_space_suit_helmet:0>: [
		[
			[null, <extraplanets:tier3_armor_layer:0>, null],
			[<extraplanets:tier3_radiation_layer:0>, <extraplanets:tier3_un_prepared_space_suit_helmet:0>, <extraplanets:tier3_pressure_layer:0>],
			[null, <extraplanets:tier3_armor_layer:0>, null]
		]
	],
	<extraplanets:tier3_space_suit_chest:0>: [
		[
			[null, <extraplanets:tier3_armor_layer:0>, null],
			[<extraplanets:tier3_radiation_layer:0>, <extraplanets:tier3_un_prepared_space_suit_chest:0>, <extraplanets:tier3_pressure_layer:0>],
			[null, <extraplanets:tier3_armor_layer:0>, null]
		]
	],
	<extraplanets:tier3_space_suit_legings:0>: [
		[
			[null, <extraplanets:tier3_armor_layer:0>, null],
			[<extraplanets:tier3_radiation_layer:0>, <extraplanets:tier3_un_prepared_space_suit_legings:0>, <extraplanets:tier3_pressure_layer:0>],
			[null, <extraplanets:tier3_armor_layer:0>, null]
		]
	],
	<extraplanets:tier3_space_suit_boots:0>: [
		[
			[null, <extraplanets:tier3_armor_layer:0>, null],
			[<extraplanets:tier3_radiation_layer:0>, <extraplanets:tier3_un_prepared_space_suit_boots:0>, <extraplanets:tier3_pressure_layer:0>],
			[null, <extraplanets:tier3_armor_layer:0>, null]
		]
	],
	<extraplanets:tier3_space_suit_gravity_boots:0>: [
		[
			[null, <extraplanets:gravity_controller:0>, null],
			[<extraplanets:gravity_controller:0>, <extraplanets:tier3_space_suit_boots:0>, <extraplanets:gravity_controller:0>],
			[null, <extraplanets:gravity_controller:0>, null]
		]
	],
	<extraplanets:tier4_space_suit_helmet:0>: [
		[
			[null, <extraplanets:tier4_armor_layer:0>, null],
			[<extraplanets:tier4_radiation_layer:0>, <extraplanets:tier4_un_prepared_space_suit_helmet:0>, <extraplanets:tier4_pressure_layer:0>],
			[null, <extraplanets:tier4_armor_layer:0>, null]
		]
	],
	<extraplanets:tier4_space_suit_chest:0>: [
		[
			[null, <extraplanets:tier4_armor_layer:0>, null],
			[<extraplanets:tier4_radiation_layer:0>, <extraplanets:tier4_un_prepared_space_suit_chest:0>, <extraplanets:tier4_pressure_layer:0>],
			[null, <extraplanets:tier4_armor_layer:0>, null]
		]
	],
	<extraplanets:tier4_space_suit_legings:0>: [
		[
			[null, <extraplanets:tier4_armor_layer:0>, null],
			[<extraplanets:tier4_radiation_layer:0>, <extraplanets:tier4_un_prepared_space_suit_legings:0>, <extraplanets:tier4_pressure_layer:0>],
			[null, <extraplanets:tier4_armor_layer:0>, null]
		]
	],
	<extraplanets:tier4_space_suit_boots:0>: [
		[
			[null, <extraplanets:tier4_armor_layer:0>, null],
			[<extraplanets:tier4_radiation_layer:0>, <extraplanets:tier4_un_prepared_space_suit_boots:0>, <extraplanets:tier4_pressure_layer:0>],
			[null, <extraplanets:tier4_armor_layer:0>, null]
		]
	],
	<extraplanets:tier4_space_suit_gravity_boots:0>: [
		[
			[null, <extraplanets:gravity_controller:0>, null],
			[<extraplanets:gravity_controller:0>, <extraplanets:tier4_space_suit_boots:0>, <extraplanets:gravity_controller:0>],
			[null, <extraplanets:gravity_controller:0>, null]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	// ==================================
	// Stage Four
	// ==================================
	<extraplanets:tier1_space_suit_helmet:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_helmet:0>): [
			[
				[null, <extraplanets:tier1_armor_layer:0>, null],
				[<extraplanets:tier1_radiation_layer:0>, <extraplanets:tier1_un_prepared_space_suit_helmet:0>, <extraplanets:tier1_pressure_layer:0>],
				[null, <extraplanets:tier1_armor_layer:0>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_legings:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_legings:0>): [
			[
				[null, <extraplanets:tier1_armor_layer:0>, null],
				[<extraplanets:tier1_radiation_layer:0>, <extraplanets:tier1_un_prepared_space_suit_legings:0>, <extraplanets:tier1_pressure_layer:0>],
				[null, <extraplanets:tier1_armor_layer:0>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_boots:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_boots:0>): [
			[
				[null, <extraplanets:tier1_armor_layer:0>, null],
				[<extraplanets:tier1_radiation_layer:0>, <extraplanets:tier1_un_prepared_space_suit_boots:0>, <extraplanets:tier1_pressure_layer:0>],
				[null, <extraplanets:tier1_armor_layer:0>, null]
			]
		]
	},
	<extraplanets:tier1_space_suit_chest:0>.withTag({electricity: 50000.0f}): {
		Utils.genRecipeName(stageFour, <extraplanets:tier1_space_suit_chest:0>): [
			[
				[null, <extraplanets:tier1_armor_layer:0>, null],
				[<extraplanets:tier1_radiation_layer:0>, <extraplanets:tier1_un_prepared_space_suit_chest:0>, <extraplanets:tier1_pressure_layer:0>],
				[null, <extraplanets:tier1_armor_layer:0>, null]
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
	<extraplanets:advanced_fuel_loader:0>,
	<extraplanets:apple_diamond:0>,
	<extraplanets:apple_iron:0>,
	<extraplanets:fire_bomb:0>,
	<extraplanets:nuclear_bomb:0>,
	<extraplanets:tier1_pressure_layer:0>,
	<extraplanets:tier1_radiation_layer:0>,
	<extraplanets:tier1_space_suit_boots:0>,
	<extraplanets:tier1_space_suit_chest:0>,
	<extraplanets:tier1_space_suit_gravity_boots:0>,
	<extraplanets:tier1_space_suit_helmet:0>,
	<extraplanets:tier1_space_suit_legings:0>,
	<extraplanets:tier1_un_prepared_space_suit_boots:0>,
	<extraplanets:tier1_un_prepared_space_suit_chest:0>,
	<extraplanets:tier1_un_prepared_space_suit_helmet:0>,
	<extraplanets:tier1_un_prepared_space_suit_legings:0>,
	<extraplanets:tier2_space_suit_boots:0>,
	<extraplanets:tier2_space_suit_chest:0>,
	<extraplanets:tier2_space_suit_gravity_boots:0>,
	<extraplanets:tier2_space_suit_helmet:0>,
	<extraplanets:tier2_space_suit_legings:0>,
	<extraplanets:tier3_space_suit_boots:0>,
	<extraplanets:tier3_space_suit_chest:0>,
	<extraplanets:tier3_space_suit_gravity_boots:0>,
	<extraplanets:tier3_space_suit_helmet:0>,
	<extraplanets:tier3_space_suit_legings:0>,
	<extraplanets:tier4_space_suit_boots:0>,
	<extraplanets:tier4_space_suit_chest:0>,
	<extraplanets:tier4_space_suit_gravity_boots:0>,
	<extraplanets:tier4_space_suit_helmet:0>,
	<extraplanets:tier4_space_suit_legings:0>
];

static removeRegex as string[] = [
	"extraplanets:chest",
	"extraplanets:chest_alt.*"
];

static removeFurnace as IIngredient[] = [
	<extraplanets:ingot_mercury:0>,
	<extraplanets:tier10_items:5>,
	<extraplanets:tier11_items:1>,
	<extraplanets:tier11_items:1>,
	<extraplanets:tier11_items:2>,
	<extraplanets:tier11_items:3>,
	<extraplanets:tier11_items:4>,
	<extraplanets:tier11_items:5>,
	<extraplanets:tier11_items:0>,
	<extraplanets:tier4_items:5>,
	<extraplanets:tier5_items:5>,
	<extraplanets:tier5_items:8>,
	<extraplanets:tier6_items:5>,
	<extraplanets:tier7_items:5>,
	<extraplanets:tier7_items:7>,
	<extraplanets:tier8_items:6>,
	<extraplanets:tier9_items:5>
];

static removeFurnaceInput as IIngredient[IIngredient] = {
	<extraplanets:tier11_items:5>: <extraplanets:kepler22b:13>
};

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	// Removals
	recipeUtil.removeRecipes(removeRecipes);
	recipeUtil.removeRecipes(removeRegex);
	recipeUtil.removeFurnace(removeFurnace);
	recipeUtil.removeFurnace(removeFurnaceInput);
}
