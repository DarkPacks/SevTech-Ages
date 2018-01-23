import crafttweaker.item.IItemStack;

/*
	Seeds

	http://crafttweaker.readthedocs.io/en/latest/#Vanilla/Recipes/Seeds/#seeds
*/
var seedsToRemove as IItemStack[] = [
	<betterwithmods:hemp>,
	<minecraft:beetroot_seeds>,
	<minecraft:melon_seeds>,
	<minecraft:pumpkin_seeds>,
	<minecraft:stick>,
	<minecraft:wheat_seeds>
];

for seed in seedsToRemove {
	vanilla.seeds.removeSeed(seed);
}
