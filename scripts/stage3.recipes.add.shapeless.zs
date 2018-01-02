import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

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
	//Vanilla
	<minecraft:torch> * 4 : [
		[<immersiveengineering:material:6>, <betterwithmods:rope>, stick]
	],

	//Immersive Engineering
	<immersiveengineering:material:20> : [
		[<immersiveengineering:tool:1>, metals.copper.plate]
	],
	<immersiveengineering:material:21> : [
		[<immersiveengineering:tool:1>, metals.electrum.plate]
	],
	<immersiveengineering:material:22> : [
		[<immersiveengineering:tool:1>, metals.aluminum.plate]
	],
	<immersiveengineering:material:23> : [
		[<immersiveengineering:tool:1>, metals.steel.plate]
	],

	//Tinkers' Construct
	<tconstruct:materials:16> * 9 : [
		[<tconstruct:metal:6>]
	],

	//Nether new Recipes
	<primal:nether_cordage> : [
		[<primal:nether_fiber>, <primal:nether_fiber>, <primal:nether_fiber>]
	],

	//Extended Crafting
	<extendedcrafting:material:14> : [
		[metals.iron.rod, metals.iron.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
	],
	<extendedcrafting:material:15> : [
		[metals.gold.rod, metals.gold.rod, metals.blackIron.plate, <extendedcrafting:material:7>]
	],
	<extendedcrafting:material:7>*2 : [
		[<minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:gunpowder>, <astralsorcery:itemcraftingcomponent:2>]
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
