import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

function unify(oreDictEntry as IOreDictEntry, preferredItem as IItemStack, liquid as ILiquidStack) {
	var hasLiquid = liquid as bool;

	for item in oreDictEntry.items {
		if (!item.matches(preferredItem)) {
			mods.jei.JEI.removeAndHide(item);

			furnace.remove(item);

			if (loadedMods.contains("immersiveengineering")) {
				mods.immersiveengineering.MetalPress.removeRecipe(item);
			}

			if (hasLiquid) {
				if (loadedMods.contains("embers")) {
					mods.embers.Stamper.remove(item);
				}

				if (loadedMods.contains("tconstruct")) {
					mods.tconstruct.Casting.removeBasinRecipe(item);
					mods.tconstruct.Casting.removeTableRecipe(item);
					mods.tconstruct.Melting.removeRecipe(liquid, item);
				}
			}

			//Remove from Ore Dict
			oreDictEntry.remove(item);
		}
	}
}

unify(<ore:gearWood>, <betterwithmods:material>, null);
unify(<ore:gearDiamond>, <materialpart:diamond:gear>, null);
