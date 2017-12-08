import crafttweaker.item.IItemStack;

var metelItemsToRemove = [
	//Brass
	<primal:brass_dust>,
	<primal:brass_plate>,
	<primal:brass_nugget>,
	<primal:brass_ingot>,
] as IItemStack[];

for metalItem in metelItemsToRemove {
	mods.jei.JEI.removeAndHide(metalItem);

	for oreDict in metalItem.ores {
		oreDict.remove(metalItem);
	}
}

var metalItemsPending = [
	//Mithril
	<embers:ingot_mithril>,
	<embers:nugget_mithril>,
	<embers:plate_mithril>,
	<embers:block_mithril>,
] as IItemStack[];

for metalItem in metalItemsPending {
	recipes.remove(metalItem);
}
