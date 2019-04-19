/*
    SevTech: Ages VC Recipe Script

    This script handles the recipes for VC.

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
	<vc:upgrades/item_upgrade_airship_core:1> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <stevescarts:cartmodule:0>, <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_core:2> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_core:1>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_core:3> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_core:2>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_core:4> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_core:3>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_core:5> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_core:4>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_frame:1> : [
		[
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:item_airship_frame:0>, <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>]
		]
	],
	<vc:upgrades/item_upgrade_airship_frame:2> : [
		[
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame:1>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>]
		]
	],
	<vc:upgrades/item_upgrade_airship_frame:3> : [
		[
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame:2>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>]
		]
	],
	<vc:upgrades/item_upgrade_airship_frame:4> : [
		[
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame:3>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>]
		]
	],
	<vc:upgrades/item_upgrade_airship_frame:5> : [
		[
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>],
			[<vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame:4>.reuse(), <vc:upgrades/item_upgrade_airship_core:0>],
			[<vc:upgrades/item_upgrade_airship_frame>, <vc:upgrades/item_upgrade_airship_core:0>, <vc:upgrades/item_upgrade_airship_frame>]
		]
	],
	<vc:upgrades/item_upgrade_airship_engine:1> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_engine:0>, <stevescarts:cartmodule:0>, <vc:upgrades/item_upgrade_airship_engine:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_engine:2> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_engine:0>, <vc:upgrades/item_upgrade_airship_engine:1>.reuse(), <vc:upgrades/item_upgrade_airship_engine:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_engine:3> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_engine:0>, <vc:upgrades/item_upgrade_airship_engine:2>.reuse(), <vc:upgrades/item_upgrade_airship_engine:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_engine:4> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_engine:0>, <vc:upgrades/item_upgrade_airship_engine:3>.reuse(), <vc:upgrades/item_upgrade_airship_engine:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_engine:5> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_engine:0>, <vc:upgrades/item_upgrade_airship_engine:4>.reuse(), <vc:upgrades/item_upgrade_airship_engine:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_engine:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_balloon:1> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_airship_balloon:0>, <vc:upgrades/item_upgrade_airship_balloon:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_balloon:2> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_balloon:0>, <vc:upgrades/item_upgrade_airship_balloon:1>.reuse(), <vc:upgrades/item_upgrade_airship_balloon:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_balloon:3> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_balloon:0>, <vc:upgrades/item_upgrade_airship_balloon:2>.reuse(), <vc:upgrades/item_upgrade_airship_balloon:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_balloon:4> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_balloon:0>, <vc:upgrades/item_upgrade_airship_balloon:3>.reuse(), <vc:upgrades/item_upgrade_airship_balloon:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:upgrades/item_upgrade_airship_balloon:5> : [
		[
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>],
			[<vc:upgrades/item_upgrade_airship_balloon:0>, <vc:upgrades/item_upgrade_airship_balloon:4>.reuse(), <vc:upgrades/item_upgrade_airship_balloon:0>],
			[<vc:item_logic_chip:0>, <vc:upgrades/item_upgrade_airship_balloon:0>, <vc:item_logic_chip:0>]
		]
	],
	<vc:item_logic_chip:0> : [
		[
			[<ore:dyeGreen>, metals.redstoneAlloy.plate, <ore:dyeGreen>],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<vc:modules/item_module_type:0> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[metals.platinum.plate, <vc:item_logic_chip:0>, metals.platinum.plate],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<vc:modules/item_module_type:2> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:1>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:14> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:13>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:17> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:16>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:20> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:19>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:9> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:8>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:11> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:10>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:5> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:4>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:21> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:20>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:8> : [
		[
			[metals.modularium.plate, metals.modularium.plate, metals.modularium.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:7>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:24> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:23>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:6> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:5>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:18> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:17>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:15> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:14>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
		]
	],
	<vc:modules/item_module_type:12> : [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<minecraft:quartz:0>, <vc:modules/item_module_type:11>, <minecraft:quartz:0>],
			[<vc:modules/item_module_type:0>, <minecraft:heavy_weighted_pressure_plate:0>, <vc:modules/item_module_type:0>]
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
static shapelessRecipes as IIngredient[][][IItemStack] = {};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<vc:item_airship_balloon:0>,
	<vc:item_airship_engine:0>,
	<vc:item_airship_ignition:0>,
	<vc:item_logic_chip:0>,
	<vc:modules/item_module_type:11>,
	<vc:modules/item_module_type:12>,
	<vc:modules/item_module_type:14>,
	<vc:modules/item_module_type:15>,
	<vc:modules/item_module_type:17>,
	<vc:modules/item_module_type:18>,
	<vc:modules/item_module_type:20>,
	<vc:modules/item_module_type:21>,
	<vc:modules/item_module_type:24>,
	<vc:modules/item_module_type:2>,
	<vc:modules/item_module_type:5>,
	<vc:modules/item_module_type:6>,
	<vc:modules/item_module_type:8>,
	<vc:modules/item_module_type:9>,
	<vc:modules/item_module_type:0>,
	<vc:upgrades/item_upgrade_airship_balloon:1>,
	<vc:upgrades/item_upgrade_airship_balloon:2>,
	<vc:upgrades/item_upgrade_airship_balloon:3>,
	<vc:upgrades/item_upgrade_airship_balloon:4>,
	<vc:upgrades/item_upgrade_airship_balloon:5>,
	<vc:upgrades/item_upgrade_airship_core:1>,
	<vc:upgrades/item_upgrade_airship_core:2>,
	<vc:upgrades/item_upgrade_airship_core:3>,
	<vc:upgrades/item_upgrade_airship_core:4>,
	<vc:upgrades/item_upgrade_airship_core:5>,
	<vc:upgrades/item_upgrade_airship_engine:1>,
	<vc:upgrades/item_upgrade_airship_engine:2>,
	<vc:upgrades/item_upgrade_airship_engine:3>,
	<vc:upgrades/item_upgrade_airship_engine:4>,
	<vc:upgrades/item_upgrade_airship_engine:5>,
	<vc:upgrades/item_upgrade_airship_frame:1>,
	<vc:upgrades/item_upgrade_airship_frame:2>,
	<vc:upgrades/item_upgrade_airship_frame:3>,
	<vc:upgrades/item_upgrade_airship_frame:4>,
	<vc:upgrades/item_upgrade_airship_frame:5>
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
