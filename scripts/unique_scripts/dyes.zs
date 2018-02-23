import crafttweaker.item.IItemStack;

/*
	Dye Unification
*/
recipes.remove(<pickletweaks:dye_powder:*>);
recipes.addShapeless(<pickletweaks:dye_powder:1> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 2, [<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:10>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 3, [<pickletweaks:dye_powder:6>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:2> * 4, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:3> * 2, [<pickletweaks:dye_powder:11>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:5> * 2, [<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:6> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<pickletweaks:dye_powder:7> * 2, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]);
recipes.addShapeless(<pickletweaks:dye_powder:8> * 3, [<pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:0>, <pickletweaks:dye_powder:15>]);
recipes.addShapeless(<pickletweaks:dye_powder:9> * 2, [<pickletweaks:dye_powder:13>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:10> * 2, [<pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<pickletweaks:dye_powder:12> * 2, [<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:1>]);
recipes.addShapeless(<pickletweaks:dye_powder:12> * 3, [<pickletweaks:dye_powder:15>, <pickletweaks:dye_powder:14>, <pickletweaks:dye_powder:4>]);

//Remove all dye recipes
recipes.remove(<minecraft:dye:1>);
recipes.remove(<minecraft:dye:2>);
recipes.remove(<minecraft:dye:3>);
recipes.remove(<minecraft:dye:5>);
recipes.remove(<minecraft:dye:6>);
recipes.remove(<minecraft:dye:7>);
recipes.remove(<minecraft:dye:8>);
recipes.remove(<minecraft:dye:9>);
recipes.remove(<minecraft:dye:10>);
recipes.remove(<minecraft:dye:11>);
recipes.remove(<minecraft:dye:12>);
recipes.remove(<minecraft:dye:13>);
recipes.remove(<minecraft:dye:14>);
recipes.remove(<minecraft:dye:15>);
recipes.remove(<minecraft:dye>);

//[output, input]
var crushingPairs as IItemStack[][] = [
	[<pickletweaks:dye_powder:4>, <minecraft:dye:11>],
	[<pickletweaks:dye_powder:15>, <minecraft:dye>],
	[<pickletweaks:dye_powder:15>, <nex:item_dust_wither>]
];

var IE_CRUSHER_ENERGY as int = 3200;
var HP_GRINDSTONE_TIME as int = 12;

for pair in crushingPairs {
	var dye as IItemStack = pair[0];
	var item as IItemStack = pair[1];

	mods.betterwithmods.Mill.add(dye * 2, null, [item]);
	mods.immersiveengineering.Crusher.addRecipe(dye * 2, item, IE_CRUSHER_ENERGY);
	mods.horsepower.Grindstone.add(item, dye, HP_GRINDSTONE_TIME);
}
