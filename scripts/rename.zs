import crafttweaker.item.IItemStack;

//<minecraft:chest>.displayName = "Storage Box";

var renameArray = {
	<primal:hide_tanned> : "Wet Tanned Hide",

	<betterwithaddons:japanmat:4> : "Rice Flour",

	<primal_tech:flint_edged_disc> : "Flint Saw Blade",

	<totemic:sub_items:1> : "Jingles",

	<primal:plant_fiber_pulp> : "Pulp",

	<primal:golden_stick> : "Golden Rod"

	<natura:materials:5> : "Baykok's Rib"
} as string[IItemStack];

for item in renameArray {
	item.displayName = renameArray[item];
}
