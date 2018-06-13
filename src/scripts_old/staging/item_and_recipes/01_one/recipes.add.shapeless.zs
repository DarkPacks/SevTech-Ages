#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

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
	<minecraft:torch> * 2 : [
		[<minecraft:coal:*>, cordage, stick],
		[<minecraft:coal:*>, <primal_tech:fibre_torch>]
	],

	<tconstruct:stone_torch> * 2 : [
		[<minecraft:coal:*>, cordage, <tconstruct:stone_stick>]
	],

	//Abyssalcraft for Stage1
	<abyssalcraft:corflesh> : [
		[<abyssalcraft:corbone>.transformReplace(<minecraft:bone>), <ore:toolWorkBlade>]
	],

	//Astral Sorcery Start
	<betterwithaddons:japanmat:8> : [
		[<primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <betterwithaddons:japanmat:36>]
	],

	//Chisel & Bits
	<chiselsandbits:negativeprint> : [
		[<chiselsandbits:negativeprint>]
	],
	<chiselsandbits:mirrorprint> : [
		[<chiselsandbits:mirrorprint>]
	],
	<chiselsandbits:positiveprint> : [
		[<chiselsandbits:positiveprint>]
	],
	<guideapi:bloodmagic-guide> : [
		[<primal:plant_cloth>, <ore:feather>]
	],
	<guideapi:cyclicmagic-guide> : [
		[<primal:plant_cloth>, <cyclicmagic:apple>]
	],
	<tconstruct:book> : [
		[<primal:plant_cloth>, <ore:dyeBrown>]
	],

	<geolosys:field_manual> : [
		[<minecraft:stone_pickaxe>, <primal:plant_cloth>]
	],

	<betterwithmods:rope> * 9: [
		[<betterwithmods:aesthetic:4>]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
