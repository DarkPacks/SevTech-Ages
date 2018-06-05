#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.four;

/*
<item> : [
	[RECIPE1],
	[RECIPE2],
	[Recipe3],
	[etc...]
]

Put the normal recipe you make inside of the main array from the item (<betterwithaddons:bolt:1> : [])

<testmod:test_item> : [
	//You can do one recipe or as many recipes as you want
	[<testmod:test_item>, <minecraft:paper>],
	[<testmod:test_item>]
]
*/
var shapelessRecipes as IIngredient[][][IItemStack] = {
	<pneumaticcraft:printed_circuit_board> : [
		[
			<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>, <pneumaticcraft:transistor>,
			<pneumaticcraft:transistor>, <pneumaticcraft:capacitor>, <pneumaticcraft:capacitor>,
			<pneumaticcraft:capacitor>, <appliedenergistics2:material>, <appliedenergistics2:material>
		]
	],

	//Inductive Logistics
	<indlog:buffer:15> : [
		[
			<indlog:buffer:14>, <indlog:buffer:14>
		]
	],
	<indlog:buffer:14> : [
		[
			<indlog:buffer:13>, <indlog:buffer:13>
		]
	],
	<indlog:buffer:14> * 2 : [
	    [
			<indlog:buffer:15>
		]
	],
	<indlog:buffer:13> : [
		[
			<indlog:buffer:12>, <indlog:buffer:12>
		]
	],
	<indlog:buffer:13> * 2 : [
	    [
			<indlog:buffer:14>
	    ]
	],
	<indlog:buffer:12> * 2 : [
	    [
			<indlog:buffer:13>
		]
	],
	<indlog:buffer:11> : [
		[
			<indlog:buffer:10>, <indlog:buffer:10>
		]
	],
	<indlog:buffer:10> : [
		[
			<indlog:buffer:9>, <indlog:buffer:9>
		]
	],
	<indlog:buffer:10> * 2 : [
	    [
			<indlog:buffer:11>
		]
	],
	<indlog:buffer:9> : [
		[
			<indlog:buffer:8>, <indlog:buffer:8>
		]
	],
	<indlog:buffer:9> * 2 : [
	    [
			<indlog:buffer:10>
		]
	],
	<indlog:buffer:8> * 2 : [
	    [
			<indlog:buffer:9>
		]
	],
	<indlog:buffer:7> : [
		[
			<indlog:buffer:6>, <indlog:buffer:6>
		]
	],
	<indlog:buffer:6> : [
		[
			<indlog:buffer:5>, <indlog:buffer:5>
		]
	],
	<indlog:buffer:6> * 2 : [
	    [
			<indlog:buffer:7>
		]
	],
	<indlog:buffer:5> : [
		[
			<indlog:buffer:4>, <indlog:buffer:4>
		]
	],
	<indlog:buffer:5> * 2 : [
	    [
			<indlog:buffer:6>
		]
	],
	<indlog:buffer:4> * 2 : [
	    [
			<indlog:buffer:5>
		]
	],
	<indlog:buffer:3> : [
		[
			<indlog:buffer:2>, <indlog:buffer:2>

		]
	],
	<indlog:buffer:2> : [
	    [
			<indlog:buffer:1>, <indlog:buffer:1>
		]
	],
	<indlog:buffer:2> * 2 : [
	    [
			<indlog:buffer:3>

		]
	],
	<indlog:buffer:1> : [
		[
			<indlog:buffer>, <indlog:buffer>

		]
	],
	<indlog:buffer:1> * 2 : [
	    [
			<indlog:buffer:2>

		]
	],
	<indlog:buffer> * 2 : [
	    [
			<indlog:buffer:1>

		]
	],

	//Mob Grinding Utils
	<mob_grinding_utils:tank> : [
		[
			<mob_grinding_utils:tank>
		]
	],
	<mob_grinding_utils:tank_sink> : [
		[
			<mob_grinding_utils:tank_sink>
		]
	],

	// BuildCraft
	<buildcraftsilicon:plug_pulsar> : [
		[
			<buildcraftcore:engine>, metals.iron.ingot.firstItem
		]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
