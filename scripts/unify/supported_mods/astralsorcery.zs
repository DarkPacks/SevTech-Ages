#priority 951
#modloaded astralsorcery

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function removeFromAll(item as IItemStack, liquid as ILiquidStack) {
	var hasItem = item as bool;
	var hasLiquid = liquid as bool;

	if (!hasItem) {
		return null;
	}

	//TODO: Change to removeRecipe once fixed in AS
	mods.astralsorcery.Grindstone.removeReipce(item);
}
