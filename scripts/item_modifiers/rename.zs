import crafttweaker.item.IItemStack;

//<minecraft:chest>.displayName = "Storage Box";

var renameArray as string[IItemStack] = {
	<primal:hide_tanned> : "Wet Tanned Hide",

	<betterwithaddons:japanmat:4> : "Rice Flour",

	<primal_tech:flint_edged_disc> : "Flint Saw Blade",

	<totemic:sub_items:1> : "Jingles",

	<primal:plant_fiber_pulp> : "Pulp",

	<primal:golden_stick> : "Golden Rod",

	<natura:materials:5> : "Baykok's Rib",

	<betterbuilderswands:wanddiamond> : "Platinum Wand",

	//Space Platinum
	<extraplanets:kepler22b:14> : "Block of Space Platinum",
	<extraplanets:tier11_items:5> : "§9Space Platinum Ingot",
	<extraplanets:tier11_items:6> : "§9Compressed Space Platinum"
};

for item in renameArray {
	item.displayName = renameArray[item];
}
