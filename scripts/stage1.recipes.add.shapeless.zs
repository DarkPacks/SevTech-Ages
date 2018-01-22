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

<betterwithaddons:bolt:1> : [
	//You can do one recipe or as many recipes as you want
	[<actuallyadditions:item_coffee_seed>, <minecraft:paper>],
	[<actuallyadditions:item_coffee_beans>]
]
*/
var shapelessRecipes = {
	<minecraft:torch> * 2 : [
		[<minecraft:coal:*>, cordage, stick],
		[<minecraft:coal:*>, <primal_tech:fibre_torch>]
	],
	<tconstruct:stone_torch> * 2 : [
		[<minecraft:coal:*>, cordage, <tconstruct:stone_stick>]
	],

	//Embers recipes fixed for Stage1
	<embers:blend_caminite> : [
		[<minecraft:sand>, <minecraft:clay_ball>, <primal:mud_clump>]
	],

	//Abyssalcraft for Stage1
	<abyssalcraft:corflesh> : [
		[<abyssalcraft:corbone>.giveBack(<minecraft:bone>), <ore:toolWorkBlade>]
	],

	//Astral Sorcery Start
	<betterwithaddons:japanmat:8> : [
		[<primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <betterwithaddons:japanmat:36>] 
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}

//Pickle Tweaks Mesh
recipes.addShapeless(<minecraft:flint>, [<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]);
