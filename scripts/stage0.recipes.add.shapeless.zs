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
		[<roots:fairy_dust>, <ore:dyeBlack>, <minecraft:dye:15>]
	],
	<progressiontweaks:spear> : [
		[<progressiontweaks:broken_spear_shaft>, <minecraft:stick>]
	],
	<progressiontweaks:spear> : [
		[<progressiontweaks:broken_spear_tip>, <minecraft:flint>]
	],

		//Now you can make fleece in stage 0
	<betterwithaddons:wool> : [
		[str, str, str, str]
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
