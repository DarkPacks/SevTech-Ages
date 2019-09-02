/*
    SevTech: Ages Modular Machinery Recipe Script

    This script handles the recipes for Modular Machinery.

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
	<modularmachinery:blockcontroller:0> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil:0>, metals.modularium.plate],
			[metals.redstoneAlloy.gear, <modularmachinery:blockcasing:0>, metals.redstoneAlloy.gear],
			[metals.modularium.plate, <immersiveengineering:material:27>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:0>*2 : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[metals.modularium.plate, null, metals.modularium.plate],
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:1>*2 : [
		[
			[metals.modularium.plate, <minecraft:iron_bars:0>, metals.modularium.plate],
			[<minecraft:iron_bars:0>, null, <minecraft:iron_bars:0>],
			[metals.modularium.plate, <minecraft:iron_bars:0>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockoutputbus:1> : [
		[
			[metals.modularium.plate, <uppers:upper:0>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing:0>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockinputbus:1> : [
		[
			[metals.modularium.plate, <minecraft:hopper:0>, metals.modularium.plate],
			[null, <modularmachinery:blockcasing:0>, null],
			[metals.modularium.plate, null, metals.modularium.plate]
		]
	],
	<modularmachinery:blockfluidinputhatch:0> : [
		[
			[metals.modularium.plate, <minecraft:hopper:0>, metals.modularium.plate],
			[null, <immersiveengineering:metal_device0:4>, null],
			[metals.modularium.plate, <immersiveengineering:metal_device0:4>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockenergyinputhatch:0> : [
		[
			[metals.modularium.plate, <immersiveengineering:wirecoil:0>, metals.modularium.plate],
			[<immersiveengineering:wirecoil:0>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil:0>],
			[metals.modularium.plate, <immersiveengineering:wirecoil:0>, metals.modularium.plate]
		]
	],
	<modularmachinery:blockcasing:3> * 1 : [
		[
			[null, metals.copper.gear, null],
			[metals.copper.gear, <modularmachinery:blockcasing:0>, metals.copper.gear],
			[null, metals.copper.gear, null]
		]
	],
	<modularmachinery:blockcasing:3> * 4 : [
		[
			[null, metals.steel.gear, null],
			[metals.steel.gear, <modularmachinery:blockcasing:0>, metals.steel.gear],
			[null, metals.steel.gear, null]
		]
	],
	<modularmachinery:blockcasing:5> * 2 : [
		[
			[null, <immersiveengineering:material:27>, null],
			[<immersiveengineering:wirecoil:5>, <modularmachinery:blockcasing:0>, <immersiveengineering:wirecoil:5>],
			[null, <immersiveengineering:wirecoil:5>, null]
		]
	],
	<modularmachinery:blockcasing:3> * 8 : [
		[
			[null, metals.cobalt.gear, null],
			[metals.cobalt.gear, <modularmachinery:blockcasing:0>, metals.cobalt.gear],
			[null, metals.cobalt.gear, null]
		]
	],
	<modularmachinery:blockenergyinputhatch:2> : [
		[
			[<minecraft:redstone>, <minecraft:repeater>, <minecraft:redstone>],
			[metals.redstoneAlloy.block, <modularmachinery:blockenergyinputhatch:1>, metals.redstoneAlloy.block],
			[<minecraft:redstone>, metals.redstoneAlloy.block, <minecraft:redstone>]
		]
	],
	<modularmachinery:blockenergyinputhatch:3> : [
		[
			[<modularmachinery:blockcasing:4>, <minecraft:repeater>, <modularmachinery:blockcasing:4>],
			[<modularmachinery:blockenergyinputhatch:2>, metals.redstoneAlloy.block, <modularmachinery:blockenergyinputhatch:2>],
			[<modularmachinery:blockcasing:4>, <minecraft:repeater>, <modularmachinery:blockcasing:4>]
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
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:auto_cauldron"}) : [
		[<minecraft:paper:0>, <betterwithmods:cooking_pot:1>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:chemical_mixer"}) : [
		[<immersiveengineering:material:6>, <betterwithmods:rope:0>, <ore:stickWood>.firstItem, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:industrial_loom"}) : [
		[<minecraft:paper:0>, <minecraft:string:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:volcanic_crystalizer"}) : [
		[<minecraft:paper:0>, <minecraft:obsidian:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:ethylitic_enricher"}) : [
		[<minecraft:paper:0>, <actuallyadditions:item_fertilizer:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit"}) : [
		[<minecraft:paper:0>, <minecraft:leather:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit_mk2"}) : [
		[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:leather:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit_mk3"}) : [
		[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>, <minecraft:leather:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:plastic_molder"}) : [
		[<minecraft:paper:0>, <minecraft:paper:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:industrial_mill"}) : [
		[<minecraft:paper:0>, <minecraft:wheat:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:liquid_processor"}) : [
		[<minecraft:paper:0>, <minecraft:water_bucket:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:mixer"}) : [
		[<minecraft:paper:0>, <minecraft:bucket:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:mixer_mk2"}) : [
		[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:bucket:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:mixer_mk3"}) : [
		[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>, <minecraft:bucket:0>, <ore:dyeBlue>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:paperclip_factory"}) : [
		[<minecraft:paper:0>, <pickletweaks:ppm4:2>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:orematic5000"}) : [
		[<minecraft:paper:0>, <geolosys:cluster:8>, <geolosys:cluster:12>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:orematic5000_mk2"}) : [
		[<minecraft:paper:0>, <geolosys:cluster:8>, <geolosys:cluster:8>, <geolosys:cluster:12>,  <geolosys:cluster:12>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:orematic5000_mk3"}) : [
		[<minecraft:paper:0>, <geolosys:cluster:8>, <geolosys:cluster:8>, <geolosys:cluster:8>, <geolosys:cluster:12>, <geolosys:cluster:12>,  <geolosys:cluster:12>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:hydraulic_press"}) : [
		[<minecraft:paper:0>, <galacticraftcore:basic_item:6>, <galacticraftcore:basic_item:7>]
	],
	<modularmachinery:itemblueprint:0>.withTag({dynamicmachine: "modularmachinery:scamulator"}) : [
		[<minecraft:paper:0>, <galacticraftcore:basic_item:14>, <ore:dyeBlue>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<modularmachinery:blockcasing:1>,
	<modularmachinery:blockcasing:0>,
	<modularmachinery:blockcontroller:0>,
	<modularmachinery:blockenergyinputhatch:3>,
	<modularmachinery:blockenergyinputhatch:2>,
	<modularmachinery:blockenergyinputhatch:0>,
	<modularmachinery:blockfluidinputhatch:0>,
	<modularmachinery:blockinputbus:1>,
	<modularmachinery:blockoutputbus:1>,
	<modularmachinery:itemmodularium:0>,
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
