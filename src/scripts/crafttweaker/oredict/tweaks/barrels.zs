#priority 2600

// The barrel oredicts don't work correctly at present as the removed planks are readded at some stage after
// this script is run.

/*
	SevTech: Ages Barrels Tweaks Script.

	This allows other wood types to be used when trying to craft the Primal Barrels.
	We can get around this by changing the oak barrel to use a custom OreDict w/o the main
	woods so people can still craft the other ones.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
// import crafttweaker.item.IItemStack;
// import crafttweaker.oredict.IOreDictEntry;

// var oreBarrelPlank as IOreDictEntry = <ore:barrelPlank>;
// oreBarrelPlank.addAll(<ore:plankWood>);

// var removeFromWoodDict as IItemStack[] = [
// 	<minecraft:planks:1>,
// 	<minecraft:planks:2>,
// 	<minecraft:planks:3>,
// 	<minecraft:planks:4>,
// 	<minecraft:planks:5>,
// 	<primal:planks:1>,
// 	<primal:planks:2>,
// 	<primal:planks:3>,
// 	<primal:planks:0>
// ];

// for plankName in removeFromWoodDict {
// 	oreBarrelPlank.remove(plankName);
// }

// var oreBarrelSlab as IOreDictEntry = <ore:barrelSlab>;
// oreBarrelSlab.addAll(<ore:slabWood>);

// var removeFromSlabDict as IItemStack[] = [
// 	<minecraft:wooden_slab:1>,
// 	<minecraft:wooden_slab:2>,
// 	<minecraft:wooden_slab:3>,
// 	<minecraft:wooden_slab:4>,
// 	<minecraft:wooden_slab:5>,
// 	<primal:slab_corypha:0>,
// 	<primal:slab_ironwood:0>,
// 	<primal:slab_lacquer:0>,
// 	<primal:slab_yew:0>
// ];

// for slabName in removeFromSlabDict {
// 	oreBarrelSlab.remove(slabName);
// }
