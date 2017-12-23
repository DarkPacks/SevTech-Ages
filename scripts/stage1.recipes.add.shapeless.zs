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
		[<minecraft:coal:*>, cordage, stick]
	],
	<minecraft:torch> * 2 : [
		[<minecraft:coal:*>, <primal_tech:fibre_torch>]
	],
	<primal:bark_acacia> : [
		[<minecraft:log2>.giveBack(<primal:logs_stripped:4>), <ore:toolWorkBlade>]
	],
	<primal:bark_bigoak> : [
		[<minecraft:log2:1>.giveBack(<primal:logs_stripped:5>), <ore:toolWorkBlade>]
	],
	<primal:bark_birch> : [
		[<minecraft:log:2>.giveBack(<primal:logs_stripped:2>), <ore:toolWorkBlade>]
	],
	<primal:bark_jungle> : [
		[<minecraft:log:3>.giveBack(<primal:logs_stripped:3>), <ore:toolWorkBlade>]
	],
	<primal:bark_oak> : [
		[<minecraft:log>.giveBack(<primal:logs_stripped>), <ore:toolWorkBlade>]
	],
	<primal:bark_spruce> : [
		[<minecraft:log:1>.giveBack(<primal:logs_stripped:1>), <ore:toolWorkBlade>]
	],
	<primal:bark_yew> : [
		[<primal:logs:1>.giveBack(<primal:logs_stripped:7>), <ore:toolWorkBlade>]
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
		[<primal_tech:fluid_bladder>, <betterwithaddons:japanmat:36>]
	]
} as IIngredient[][][IItemStack];

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}

//Pickle Tweaks Mesh
recipes.addShapeless(<minecraft:flint>, [<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]);
