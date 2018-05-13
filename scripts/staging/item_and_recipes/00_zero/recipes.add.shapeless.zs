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
	<actuallyadditions:item_booklet> : [
		[<actuallyadditions:item_coffee_seed>, <primal:plant_cloth>]
	],
	<actuallyadditions:item_coffee_seed> : [
		[<actuallyadditions:item_coffee_beans>]
	],
	<minecraft:farmland> : [
		[<minecraft:dirt>, <minecraft:dye:15>]
	],
	<minecraft:gunpowder> : [
		[<betterwithmods:material:37>, <ore:dyeBlack>, <ore:foodSalt>]
	],
	<progressiontweaks:spear> : [
		[<progressiontweaks:broken_spear_shaft>, stick],
		[<progressiontweaks:broken_spear_tip>, <primal:flint_knapp>]
	],

	<primal:bark_acacia> : [
		[<minecraft:log2>.transformReplace(<primal:logs_stripped:4>), <ore:toolWorkBlade>]
	],
	<primal:bark_bigoak> : [
		[<minecraft:log2:1>.transformReplace(<primal:logs_stripped:5>), <ore:toolWorkBlade>]
	],
	<primal:bark_birch> : [
		[<minecraft:log:2>.transformReplace(<primal:logs_stripped:2>), <ore:toolWorkBlade>]
	],
	<primal:bark_jungle> : [
		[<minecraft:log:3>.transformReplace(<primal:logs_stripped:3>), <ore:toolWorkBlade>]
	],
	<primal:bark_oak> : [
		[<minecraft:log>.transformReplace(<primal:logs_stripped>), <ore:toolWorkBlade>]
	],
	<primal:bark_spruce> : [
		[<minecraft:log:1>.transformReplace(<primal:logs_stripped:1>), <ore:toolWorkBlade>]
	],
	<primal:bark_yew> : [
		[<primal:logs:1>.transformReplace(<primal:logs_stripped:7>), <ore:toolWorkBlade>]
	],

	//Now you can make fleece in stage 0
	<betterwithaddons:wool> : [
		[str, str, str, str]
	],
	<betterwithmods:manual> : [
		[<primal:plant_cloth>, <betterwithmods:material>]
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
