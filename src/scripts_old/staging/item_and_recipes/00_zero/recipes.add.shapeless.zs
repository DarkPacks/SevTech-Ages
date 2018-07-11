#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.zero;

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
	<progressiontweaks:spear> : [
		[<progressiontweaks:broken_spear_shaft>, stick],
		[<progressiontweaks:broken_spear_tip>, <primal:flint_knapp>]
	],

	//Coal/Charcoal Piece Fix
	<pickletweaks:coal_piece> * 8: [
		[<minecraft:coal>]
	],
	<pickletweaks:coal_piece:1> * 8: [
		[<minecraft:coal:1>]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
