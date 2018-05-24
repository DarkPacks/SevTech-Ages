#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

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
	<minecraft:book> : [
		[<minecraft:paper>, leather, <minecraft:paper>, <betterwithmods:material:12>]
	],
	<minecraft:writable_book> : [
		[<minecraft:book>, <minecraft:dye>, <minecraft:feather>]
	],
	// Arrow bundle -> arrows
	<minecraft:arrow> * 8 : [
		[<betterwithaddons:bundle:1>]
	],

	<primal:plant_fiber_pulp> * 3 : [
		[<betterwithmods:material:22>, <betterwithmods:material:12>, scripts.crafting_utils.getBucketIngredient(<liquid:water>)],
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]
	],

	//Twilight Forest
	<twilightforest:magic_map_focus> : [
		[<twilightforest:firefly>, <twilightforest:torchberries>, <twilightforest:raven_feather>]
	],
	//Re-add recipe for fiery since removed in metals script
	metals.fiery.ingot.firstItem : [
		[<ore:bottleFiery>, metals.iron.ingot]
	],
	// Dye recipes for castle doors
	<twilightforest:castle_door>: [
		[<twilightforest:castle_door:*>, <ore:dyeYellow>]
	],
	<twilightforest:castle_door:1>: [
		[<twilightforest:castle_door:*>, <ore:dyePurple>]
	],
	<twilightforest:castle_door:2>: [
		[<twilightforest:castle_door:*>, <ore:dyePink>]
	],
	<twilightforest:castle_door:3>: [
		[<twilightforest:castle_door:*>, <ore:dyeLightBlue>]
	],

	//Upper to hopper and reversed
	<uppers:upper> : [
		[<minecraft:hopper>]
	],
	<minecraft:hopper> : [
		[<uppers:upper>]
	],

	/*
		I guess I'll be the one who makes sure Bibliocraft uses oredict
	*/
	//Lantern Gold
	<bibliocraft:lanterngold:0> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:lanterngold:1> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lanterngold:2> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lanterngold:3> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lanterngold:4> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lanterngold:5> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lanterngold:6> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lanterngold:7> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lanterngold:8> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lanterngold:9> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lanterngold:10> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lanterngold:11> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lanterngold:12> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lanterngold:13> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lanterngold:14> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lanterngold:15> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:12>]
	],

	//Lantern Iron
	<bibliocraft:lanterniron:0> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:lanterniron:1> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lanterniron:2> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lanterniron:3> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lanterniron:4> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lanterniron:5> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lanterniron:6> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lanterniron:7> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lanterniron:8> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lanterniron:9> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lanterniron:10> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lanterniron:11> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lanterniron:12> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lanterniron:13> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lanterniron:14> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lanterniron:15> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:12>]
	],

	//Lamp Gold
	<bibliocraft:lampgold:0> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:lampgold:1> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lampgold:2> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lampgold:3> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lampgold:4> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lampgold:5> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lampgold:6> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lampgold:7> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lampgold:8> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lampgold:9> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lampgold:10> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lampgold:11> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lampgold:12> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lampgold:13> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lampgold:14> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lampgold:15> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:12>]
	],

	//Iron Lamps
	<bibliocraft:lampiron:0> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:lampiron:1> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lampiron:2> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lampiron:3> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lampiron:4> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lampiron:5> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lampiron:6> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lampiron:7> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lampiron:8> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lampiron:9> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lampiron:10> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lampiron:11> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lampiron:12> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lampiron:13> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lampiron:14> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lampiron:15> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:12>]
	],

	//Typewriter
	<bibliocraft:typewriter:0> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:typewriter:1> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:typewriter:2> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:typewriter:3> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:typewriter:4> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:typewriter:5> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:typewriter:6> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:typewriter:7> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:typewriter:8> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:typewriter:9> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:typewriter:10> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:typewriter:11> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:typewriter:12> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:typewriter:13> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:typewriter:14> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:typewriter:15> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:12>]
	],

	//Sword Pedestal
	<bibliocraft:swordpedestal:0> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder>]
	],
	<bibliocraft:swordpedestal:1> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:swordpedestal:2> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:swordpedestal:3> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:swordpedestal:4> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:swordpedestal:5> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:swordpedestal:6> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:swordpedestal:7> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:swordpedestal:8> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:swordpedestal:9> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:swordpedestal:10> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:swordpedestal:11> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:swordpedestal:12> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:swordpedestal:13> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:swordpedestal:14> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:swordpedestal:15> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:12>]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShapeless(STAGE, item, recipe);
	}
}
