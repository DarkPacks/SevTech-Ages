import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

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
	<minecraft:book> : [
		[<minecraft:paper>, leather, <minecraft:paper>, <minecraft:paper>]
	],
	<minecraft:writable_book> : [
		[<minecraft:book>, <minecraft:dye>, <minecraft:feather>]
	],
	<primal:plant_fiber_pulp> * 3 : [
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <minecraft:water_bucket>],
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],
	<tconstruct:clear_glass> : [
		[<minecraft:glass>]
	],

	//Now you can make fleece in stage 2
	<betterwithaddons:wool> : [
		[str, str, str, str]
	],

	//Twilight Forest
	<twilightforest:magic_map_focus> : [
		[<twilightforest:firefly>, <twilightforest:torchberries>, <twilightforest:raven_feather>]
	],
	//Re-add recipe for fiery since removed in metals script
	metals.fiery.ingot.firstItem : [
		[<ore:bottleFiery>, metals.iron.ingot]
	],

	//Upper to hopper and reversed
	<uppers:upper> : [
		[<minecraft:hopper>]
	],
	<minecraft:hopper> : [
		[<uppers:upper>]
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
