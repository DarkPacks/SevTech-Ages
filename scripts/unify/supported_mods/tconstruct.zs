#priority 951
#modloaded tconstruct

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function removeFromAll(item as IItemStack, liquid as ILiquidStack) {
	var hasItem = item as bool;
	var hasLiquid = liquid as bool;

	if (!hasItem) {
		return null;
	}

	if (hasLiquid) {
		mods.tconstruct.Casting.removeBasinRecipe(item);
		mods.tconstruct.Casting.removeTableRecipe(item);
		mods.tconstruct.Melting.removeRecipe(liquid, item);
	}
}
