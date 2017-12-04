import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
	<actuallyadditions:item_booklet> : [
		[<actuallyadditions:item_coffee_seed>, <minecraft:paper>]
	],
	<actuallyadditions:item_coffee_seed> : [
		[<actuallyadditions:item_coffee_beans>]
	],
	<minecraft:farmland> : [
		[<minecraft:dirt>, <minecraft:dye:15>]
	],
	<minecraft:gunpowder> : [
		[<roots:fairy_dust>, <actuallyadditions:item_misc:17>, <minecraft:dye:15>]
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		recipes.addShapeless(item, recipe);
	}
}
