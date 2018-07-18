/*
    SevTech: Ages Industrial Logistics Recipe Script

    This script handles the recipes for Industrial Logistics.

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
	<indlog:inv_connector> : [
		[
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>],
			[metals.aluminum.plate, <minecraft:ender_eye>, metals.aluminum.plate],
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>]
		]
	],
	<indlog:buffer:1> : [
		[
			[sidingWood, <minecraft:iron_bars>, sidingWood],
			[<minecraft:iron_bars>, <minecraft:chest>, <minecraft:iron_bars>],
			[sidingWood, <minecraft:iron_bars>, sidingWood]
		]
	],
	<indlog:buffer:5> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.gear, <indlog:buffer:1>, metals.iron.gear],
			[metals.iron.plate, metals.iron.gear, metals.iron.plate]
		]
	],
	<indlog:buffer:9> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.gear, <indlog:buffer:5>, metals.gold.gear],
			[metals.gold.plate, metals.gold.gear, metals.gold.plate]
		]
	],
	<indlog:buffer:13> : [
		[
			[<minecraft:ender_eye>, metals.platinum.gear, <minecraft:ender_eye>],
			[metals.platinum.gear, <indlog:buffer:9>, metals.platinum.gear],
			[metals.platinum.plate, metals.platinum.gear, metals.platinum.plate]
		]
	],
	<indlog:fluid_pipe> * 8: [
		[
			[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>]
		]
	],
	<indlog:fluid_pipe:1> * 4 : [
		[
			[null, <indlog:fluid_pipe>, null],
			[<indlog:fluid_pipe>, <minecraft:piston>, <indlog:fluid_pipe>],
			[null, <indlog:fluid_pipe>, null]
		]
	],
	<indlog:fluid_pipe:2> * 4 : [
		[
			[null, <indlog:fluid_pipe:1>, null],
			[<indlog:fluid_pipe:1>, <thebetweenlands:octine_ingot>, <indlog:fluid_pipe:1>],
			[null, <indlog:fluid_pipe:1>, null]
		]
	],
	<indlog:item_pipe> * 8: [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<minecraft:iron_bars>, null, <minecraft:iron_bars>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<indlog:item_pipe:1> * 4: [
		[
			[null, <indlog:item_pipe>, null],
			[<indlog:item_pipe>, <pneumaticcraft:plastic:2>, <indlog:item_pipe>],
			[null, <indlog:item_pipe>, null]
		]
	],
	<indlog:item_pipe:2> * 4: [
		[
			[null, <indlog:item_pipe:1>, null],
			[<indlog:item_pipe:1>, <pneumaticcraft:plastic:1>, <indlog:item_pipe:1>],
			[null, <indlog:item_pipe:1>, null]
		]
	],
	<indlog:warp_pipe> * 12: [
		[
			[<indlog:fluid_pipe>, <indlog:fluid_pipe>, <indlog:fluid_pipe>],
			[<minecraft:ender_eye>, <quark:biotite_block>, <minecraft:ender_eye>],
			[<indlog:item_pipe>, <indlog:item_pipe>, <indlog:item_pipe>]
		]
	],
	<indlog:tank>: [
		[
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
			[<ore:paneGlass>, <mob_grinding_utils:tank>, <ore:paneGlass>],
			[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		]
	],
	<indlog:tank:1>: [
		[
			[null, <ore:blockGlass>, null],
			[<ore:blockGlass>, metals.iron.plate, <ore:blockGlass>],
			[null, <ore:blockGlass>, null]
		],
		[
			[<indlog:tank>, <indlog:tank>, <indlog:tank>],
			[<indlog:tank>, null, <indlog:tank>],
			[<indlog:tank>, <indlog:tank>, <indlog:tank>]
		]
	],
	<indlog:tank:2>: [
		[
			[<indlog:tank:1>, <indlog:tank:1>, <indlog:tank:1>],
			[<indlog:tank:1>, null, <indlog:tank:1>],
			[<indlog:tank:1>, <indlog:tank:1>, <indlog:tank:1>]
		]
	],
	<indlog:tank:3>: [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <indlog:tank:2>, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		],
		[
			[<indlog:tank:2>, <indlog:tank:2>, <indlog:tank:2>],
			[<indlog:tank:2>, null, <indlog:tank:2>],
			[<indlog:tank:2>, <indlog:tank:2>, <indlog:tank:2>]
		]
	],
	<indlog:tank:4>: [
		[
			[null, <quark:biotite_block>, null],
			[<minecraft:purpur_block>, <indlog:tank:3>, <minecraft:purpur_block>],
			[null, <quark:biotite_block>, null]
		]
	],
	<indlog:tank:5>: [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[metals.platinum.plate, <indlog:tank:4>, metals.platinum.plate],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<indlog:tank:6>: [
		[
			[<minecraft:ender_eye>, <minecraft:end_stone>, <minecraft:ender_eye>],
			[<minecraft:nether_star>, <indlog:tank:5>, <minecraft:nether_star>],
			[<minecraft:ender_eye>, <minecraft:end_stone>, <minecraft:ender_eye>]
		]
	],
	<indlog:tank:7>: [
		[
			[<indlog:tank:6>, <indlog:tank:6>, <indlog:tank:6>],
			[<indlog:tank:6>, null, <indlog:tank:6>],
			[<indlog:tank:6>, <indlog:tank:6>, <indlog:tank:6>]
		]
	],
	<indlog:tank:8>: [
		[
			[<indlog:tank:7>, <indlog:tank:7>, <indlog:tank:7>],
			[<indlog:tank:7>, null, <indlog:tank:7>],
			[<indlog:tank:7>, <indlog:tank:7>, <indlog:tank:7>]
		]
	],
	<indlog:remote_inv>: [
		[
			[<indlog:item_pipe:2>, <indlog:warp_pipe>, <indlog:item_pipe:1>],
			[<indlog:item_pipe:2>, <minecraft:ender_chest>, <indlog:item_pipe:1>],
			[<immersiveengineering:material:4>, <indlog:tank:6>, <immersiveengineering:material:4>]
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
	<indlog:buffer:15> : [
		[<indlog:buffer:14>, <indlog:buffer:14>]
	],
	<indlog:buffer:14> : [
		[<indlog:buffer:13>, <indlog:buffer:13>]
	],
	<indlog:buffer:14> * 2 : [
	    [<indlog:buffer:15>]
	],
	<indlog:buffer:13> : [
		[<indlog:buffer:12>, <indlog:buffer:12>]
	],
	<indlog:buffer:13> * 2 : [
	    [<indlog:buffer:14>]
	],
	<indlog:buffer:12> * 2 : [
	    [<indlog:buffer:13>]
	],
	<indlog:buffer:11> : [
		[<indlog:buffer:10>, <indlog:buffer:10>]
	],
	<indlog:buffer:10> : [
		[<indlog:buffer:9>, <indlog:buffer:9>]
	],
	<indlog:buffer:10> * 2 : [
	    [<indlog:buffer:11>]
	],
	<indlog:buffer:9> : [
		[<indlog:buffer:8>, <indlog:buffer:8>]
	],
	<indlog:buffer:9> * 2 : [
	    [<indlog:buffer:10>]
	],
	<indlog:buffer:8> * 2 : [
	    [<indlog:buffer:9>]
	],
	<indlog:buffer:7> : [
		[<indlog:buffer:6>, <indlog:buffer:6>]
	],
	<indlog:buffer:6> : [
		[<indlog:buffer:5>, <indlog:buffer:5>]
	],
	<indlog:buffer:6> * 2 : [
	    [<indlog:buffer:7>]
	],
	<indlog:buffer:5> : [
		[<indlog:buffer:4>, <indlog:buffer:4>]
	],
	<indlog:buffer:5> * 2 : [
	    [<indlog:buffer:6>]
	],
	<indlog:buffer:4> * 2 : [
	    [<indlog:buffer:5>]
	],
	<indlog:buffer:3> : [
		[<indlog:buffer:2>, <indlog:buffer:2>]
	],
	<indlog:buffer:2> : [
	    [<indlog:buffer:1>, <indlog:buffer:1>]
	],
	<indlog:buffer:2> * 2 : [
	    [<indlog:buffer:3>]
	],
	<indlog:buffer:1> : [
		[<indlog:buffer>, <indlog:buffer>]
	],
	<indlog:buffer:1> * 2 : [
	    [<indlog:buffer:2>]
	],
	<indlog:buffer> * 2 : [
	    [<indlog:buffer:1>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<indlog:buffer:1>,
	<indlog:buffer:2>,
	<indlog:buffer:3>,
	<indlog:buffer:4>,
	<indlog:buffer:5>,
	<indlog:buffer:6>,
	<indlog:buffer:7>,
	<indlog:buffer:8>,
	<indlog:buffer:9>,
	<indlog:buffer:10>,
	<indlog:buffer:11>,
	<indlog:buffer:12>,
	<indlog:buffer:13>,
	<indlog:buffer:14>,
	<indlog:buffer:15>,
	<indlog:buffer>,
	<indlog:fluid_pipe:1>,
	<indlog:fluid_pipe:2>,
	<indlog:fluid_pipe>,
	<indlog:inv_connector>,
	<indlog:item_pipe:1>,
	<indlog:item_pipe:2>,
	<indlog:item_pipe>,
	<indlog:remote_inv>,
	<indlog:tank:1>,
	<indlog:tank:2>,
	<indlog:tank:3>,
	<indlog:tank:4>,
	<indlog:tank:5>,
	<indlog:tank:6>,
	<indlog:tank:7>,
	<indlog:tank>,
	<indlog:warp_pipe>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.indlog.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.indlog.removeRecipes;

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
