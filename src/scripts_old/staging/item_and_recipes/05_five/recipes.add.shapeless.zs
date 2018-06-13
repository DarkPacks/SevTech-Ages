#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

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
	//Clear Mekanism creative tank
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}): [
	    [
			<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}, false).onlyWithTag({tier: 4})
		]
	],
	<valkyrielib:guide>: [
		[
			<minecraft:book>, <environmentaltech:litherite_crystal>
		]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
