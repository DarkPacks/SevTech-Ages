#priority 951
#modloaded immersiveengineering

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function removeFromAll(item as IItemStack, liquid as ILiquidStack) {
	var hasItem = item as bool;
	var hasLiquid = liquid as bool;

	if (!hasItem) {
		return null;
	}

	mods.immersiveengineering.AlloySmelter.removeRecipe(item);
	mods.immersiveengineering.ArcFurnace.removeRecipe(item);
	mods.immersiveengineering.Crusher.removeRecipe(item);
	mods.immersiveengineering.MetalPress.removeRecipe(item);
}
