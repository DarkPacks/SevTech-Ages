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
	[
		//IF LONG
		[<testmod:test_item1>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item2>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item3>, <testmod:test_item>, <testmod:test_item>]
	],
	//IF SHORT
	[[<testmod:test_item>, <testmod:test_item>, null], [<testmod:test_item>, <testmod:test_item>, null]]
]
*/
var shapedRecipes as IIngredient[][][][IItemStack] = {
	//Water Strainer
	<waterstrainer:strainer_base> : [
		[
			[stick, null, stick],
			[plank, <primal_tech:wooden_hopper>, plank],
			[plank, <immcraft:chest>, plank]
		]
	],
	<waterstrainer:garden_trowel> : [
		[
			[null, null, <minecraft:dirt>],
			[null, <minecraft:flint>, null],
			[stick, null, null]
		]
	],

	//Improved Backpacks
	<improvedbackpacks:blank_upgrade> : [
		[
			[null, leather, null],
			[stick, plank, stick],
			[null, leather, null]
		]
	],
	<improvedbackpacks:upgrade> : [
		[
			[null, leather, null],
			[log, <improvedbackpacks:blank_upgrade>, log],
			[null, log, null]
		]
	],
	<improvedbackpacks:upgrade:1> : [
		[
			[null, leather, null],
			[<minecraft:stone>, <improvedbackpacks:upgrade>, <minecraft:stone>],
			[null, <minecraft:stone>, null]
		]
	],

	//Totemic
	<totemic:eagle_bone_whistle> : [
		[
			[null, <totemic:eagle_drops>],
			[<totemic:eagle_drops:1>, null]
		]
	],

	//Animalium
	<animalium:dog_boots>: [
		[
			[<betterwithaddons:bundle>, <animalium:wild_dog_pelt>, <betterwithaddons:bundle>],
			[<animalium:wild_dog_pelt>, <minecraft:leather_boots>, <animalium:wild_dog_pelt>],
			[<ore:slimeball>, <animalium:wild_dog_pelt>, <ore:slimeball>]
		]
	],

	//Nature's Compass
	<naturescompass:naturescompass>: [
		[
			[<ore:treeSapling>, <ore:logWood>, <ore:treeSapling>],
			[<ore:logWood>, <primal:bone_knapp>, <ore:logWood>],
			[<ore:treeSapling>, <ore:logWood>, <ore:treeSapling>]
		]
	]

};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}
