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
	<indlog:inv_connector:0> : [
		[
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>],
			[metals.aluminum.plate, <minecraft:ender_eye:0>, metals.aluminum.plate],
			[<indlog:buffer:10>, <indlog:buffer:10>, <indlog:buffer:10>]
		]
	],
	<indlog:buffer:1> : [
		[
			[sidingWood, <minecraft:iron_bars:0>, sidingWood],
			[<minecraft:iron_bars:0>, <minecraft:chest:0>, <minecraft:iron_bars:0>],
			[sidingWood, <minecraft:iron_bars:0>, sidingWood]
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
			[<minecraft:ender_eye:0>, metals.platinum.gear, <minecraft:ender_eye:0>],
			[metals.platinum.gear, <indlog:buffer:9>, metals.platinum.gear],
			[metals.platinum.plate, metals.platinum.gear, metals.platinum.plate]
		]
	],
	<indlog:fluid_pipe:0> * 8: [
		[
			[<appliedenergistics2:quartz_glass:0>, <appliedenergistics2:quartz_glass:0>, <appliedenergistics2:quartz_glass:0>],
			[<minecraft:iron_bars:0>, null, <minecraft:iron_bars:0>],
			[<appliedenergistics2:quartz_glass:0>, <appliedenergistics2:quartz_glass:0>, <appliedenergistics2:quartz_glass:0>]
		]
	],
	<indlog:fluid_pipe:1> * 4 : [
		[
			[null, <indlog:fluid_pipe:0>, null],
			[<indlog:fluid_pipe:0>, <minecraft:piston:0>, <indlog:fluid_pipe:0>],
			[null, <indlog:fluid_pipe:0>, null]
		]
	],
	<indlog:fluid_pipe:2> * 4 : [
		[
			[null, <indlog:fluid_pipe:1>, null],
			[<indlog:fluid_pipe:1>, <thebetweenlands:octine_ingot:0>, <indlog:fluid_pipe:1>],
			[null, <indlog:fluid_pipe:1>, null]
		]
	],
	<indlog:item_pipe:0> * 8: [
		[
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>],
			[<minecraft:iron_bars:0>, null, <minecraft:iron_bars:0>],
			[<pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>, <pneumaticcraft:plastic:3>]
		]
	],
	<indlog:item_pipe:1> * 4: [
		[
			[null, <indlog:item_pipe:0>, null],
			[<indlog:item_pipe:0>, <pneumaticcraft:plastic:2>, <indlog:item_pipe:0>],
			[null, <indlog:item_pipe:0>, null]
		]
	],
	<indlog:item_pipe:2> * 4: [
		[
			[null, <indlog:item_pipe:1>, null],
			[<indlog:item_pipe:1>, <pneumaticcraft:plastic:1>, <indlog:item_pipe:1>],
			[null, <indlog:item_pipe:1>, null]
		]
	],
	<indlog:warp_pipe:0> * 12: [
		[
			[<indlog:fluid_pipe:0>, <indlog:fluid_pipe:0>, <indlog:fluid_pipe:0>],
			[<minecraft:ender_eye:0>, <quark:biotite_block:0>, <minecraft:ender_eye:0>],
			[<indlog:item_pipe:0>, <indlog:item_pipe:0>, <indlog:item_pipe:0>]
		]
	],
	<indlog:tank:0>: [
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
			[<indlog:tank:0>, <indlog:tank:0>, <indlog:tank:0>],
			[<indlog:tank:0>, null, <indlog:tank:0>],
			[<indlog:tank:0>, <indlog:tank:0>, <indlog:tank:0>]
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
			[null, <quark:biotite_block:0>, null],
			[<minecraft:purpur_block:0>, <indlog:tank:3>, <minecraft:purpur_block:0>],
			[null, <quark:biotite_block:0>, null]
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
			[<minecraft:ender_eye:0>, <minecraft:end_stone:0>, <minecraft:ender_eye:0>],
			[<minecraft:nether_star:0>, <indlog:tank:5>, <minecraft:nether_star:0>],
			[<minecraft:ender_eye:0>, <minecraft:end_stone:0>, <minecraft:ender_eye:0>]
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
	<indlog:remote_inv:0>: [
		[
			[<indlog:item_pipe:2>, <indlog:warp_pipe:0>, <indlog:item_pipe:1>],
			[<indlog:item_pipe:2>, <minecraft:ender_chest:0>, <indlog:item_pipe:1>],
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
		[<indlog:buffer:0>, <indlog:buffer:0>]
	],
	<indlog:buffer:1> * 2 : [
	    [<indlog:buffer:2>]
	],
	<indlog:buffer:0> * 2 : [
	    [<indlog:buffer:1>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
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
	<indlog:buffer:0>,
	<indlog:fluid_pipe:1>,
	<indlog:fluid_pipe:2>,
	<indlog:fluid_pipe:0>,
	<indlog:inv_connector:0>,
	<indlog:item_pipe:1>,
	<indlog:item_pipe:2>,
	<indlog:item_pipe:0>,
	<indlog:remote_inv:0>,
	<indlog:tank:1>,
	<indlog:tank:2>,
	<indlog:tank:3>,
	<indlog:tank:4>,
	<indlog:tank:5>,
	<indlog:tank:6>,
	<indlog:tank:7>,
	<indlog:tank:0>,
	<indlog:warp_pipe:0>
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
