import crafttweaker.item.IItemStack;

var metelItemsToRemove as IItemStack[] = [
	//Brass
	<primal:brass_dust>,
	<primal:brass_plate>,
	<primal:brass_nugget>,
	<primal:brass_ingot>,
];

for metalItem in metelItemsToRemove {
	mods.jei.JEI.removeAndHide(metalItem);

	for oreDict in metalItem.ores {
		oreDict.remove(metalItem);
	}
}

/*
var metalItemsPending as IItemStack[] = [
];

for metalItem in metalItemsPending {
	recipes.remove(metalItem);
}
*/
