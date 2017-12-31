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

<betterwithaddons:bolt:1> : [
	//You can do one recipe or as many recipes as you want
	[<actuallyadditions:item_coffee_seed>, <minecraft:paper>],
	[<actuallyadditions:item_coffee_beans>]
]
*/


var shapelessRecipes = {
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
	]

} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}

