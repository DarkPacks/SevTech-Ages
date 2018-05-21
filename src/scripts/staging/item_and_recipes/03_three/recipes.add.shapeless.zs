#priority -2

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

<testmod:test_item> : [
	//You can do one recipe or as many recipes as you want
	[<testmod:test_item>, <minecraft:paper>],
	[<testmod:test_item>]
]
*/
var shapelessRecipes as IIngredient[][][IItemStack] = {
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

	//Reset IE Capacitor settings
	<immersiveengineering:metal_device0:0>: [
		[<immersiveengineering:metal_device0:0>]
	],
	<immersiveengineering:metal_device0:1>: [
		[<immersiveengineering:metal_device0:1>]
	],
	<immersiveengineering:metal_device0:2>: [
		[<immersiveengineering:metal_device0:2>]
	],

	//Tinkers' Construct
	<tconstruct:materials:16> * 9 : [
		[<tconstruct:metal:6>]
	],
	<tconstruct:edible:1> * 4 : [
		[<tconstruct:slime_congealed:1>]
	],
	<tconstruct:edible:2> * 4 : [
		[<tconstruct:slime_congealed:2>]
	],
	<tconstruct:edible:4> * 4 : [
		[<tconstruct:slime_congealed:4>]
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
	],

	//Breakable Bound Tool to Unbreakable Bound Tool conversions
	<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_sword>]
	],
	<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_pickaxe>]
	],
	<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_axe>]
	],
	<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}) : [
		[<bloodmagic:bound_shovel>]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
