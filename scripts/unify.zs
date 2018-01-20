#priority 950

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
				mods.immersiveengineering.ArcFurnace.removeRecipe(item);
				mods.immersiveengineering.Crusher.removeRecipe(item);
				mods.immersiveengineering.MetalPress.removeRecipe(item);
			}

			if (loadedMods.contains("appliedenergistics2")) {
				mods.appliedenergistics2.Grinder.removeRecipe(item);
			}

			if (loadedMods.contains("astralsorcery")) {
				//TODO: Change to removeRecipe once fixed in AS
				mods.astralsorcery.Grindstone.removeReipce(item);
			}

			if (hasLiquid) {
				if (loadedMods.contains("embers")) {
					mods.embers.Stamper.remove(item);
					mods.embers.Melter.remove(item);
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
unify(<ore:gearStone>, <teslacorelib:gear_stone>, null);
unify(<ore:gearDiamond>, <materialpart:diamond:gear>, null);
unify(<ore:foodFlour>, <horsepower:flour>, null);
unify(<ore:itemSilicon>, <galacticraftcore:basic_item:2>, null);