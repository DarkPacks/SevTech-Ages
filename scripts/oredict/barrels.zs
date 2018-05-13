#priority 1050

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*
	Barrel Ore Dict

	This allows other wood types to be used when trying to craft the Primal Barrels.
	We can get around this by changing the oak barrel to use a custom OreDict w/o the main
	woods so people can still craft the other ones.
*/
var oreBarrelPlank as IOreDictEntry = <ore:barrelPlank>;
oreBarrelPlank.addAll(<ore:plankWood>);

var removeFromWoodDict as IItemStack[] = [
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:4>,
	<minecraft:planks:5>,
	<primal:planks:1>,
	<primal:planks:2>,
	<primal:planks:3>,
	<primal:planks>
];

for plankName in removeFromWoodDict {
	oreBarrelPlank.remove(plankName);
}

var oreBarrelSlab as IOreDictEntry = <ore:barrelSlab>;
oreBarrelSlab.addAll(<ore:slabWood>);

var removeFromSlabDict as IItemStack[] = [
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:4>,
	<minecraft:wooden_slab:5>,
	<primal:slab_corypha>,
	<primal:slab_ironwood>,
	<primal:slab_lacquer>,
	<primal:slab_yew>
];

for slabName in removeFromSlabDict {
	oreBarrelSlab.remove(slabName);
}
