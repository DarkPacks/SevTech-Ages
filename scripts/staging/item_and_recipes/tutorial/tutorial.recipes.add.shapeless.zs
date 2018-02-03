#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.tutorial;

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

/*
var shapelessRecipes as IIngredient[][][IItemStack] = {

};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
*/
