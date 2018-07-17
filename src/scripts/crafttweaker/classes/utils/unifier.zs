#priority 2750

/*
	SevTech: Ages Unifier Class Script

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

zenClass Unifier {
	// In order of priority
	var defaultPreferredMods as string[] = [
		"minecraft",
		"contenttweaker",
		"immersiveengineering",
		"mekanism"
	];

	zenConstructor() {
	}

	/*
		Figure out which item is preferred

		The array should be in order of priority, so if its found, return immediately
		as this will be the most preferred option
	*/
	function getPreferredItem(oreDictEntry as IOreDictEntry) as IItemStack {
		return getPreferredItem(oreDictEntry, defaultPreferredMods);
	}
	function getPreferredItem(oreDictEntry as IOreDictEntry, preferredMods as string[]) as IItemStack {
		for modName in preferredMods {
			for item in oreDictEntry.items {
				if (item.definition.owner == modName) {
					return item;
				}
			}
		}

		// If there is still no item found, take the first availble
		return oreDictEntry.firstItem;
	}

	function unify(oreDictEntry as IOreDictEntry) {
		unify(oreDictEntry, getPreferredItem(oreDictEntry), null);
	}
	function unify(oreDictEntry as IOreDictEntry, liquid as ILiquidStack) {
		unify(oreDictEntry, getPreferredItem(oreDictEntry), liquid);
	}
	function unify(oreDictEntry as IOreDictEntry, preferredItem as IItemStack) {
		unify(oreDictEntry, preferredItem, null);
	}
	function unify(oreDictEntry as IOreDictEntry, preferredItem as IItemStack, liquid as ILiquidStack) {
		var hasLiquid = liquid as bool;

		for item in oreDictEntry.items {
			if (!item.matches(preferredItem)) {
				oreDictEntry.remove(item);

				furnace.remove(item);
				furnace.setFuel(item, 0); // Setting the burnTime to 0 will stop the input from being a fuel item

				/*
					Remove from mod integrations
				*/
				// ==================================
				// Applied Energistics 2
				appliedEnergistics.removeGrindstone(item);
				appliedEnergistics.removeInscribe(item);

				// ==================================
				// Astral Sorcery
				astralSorcery.removeGrindstone(item);

				// ==================================
				// Immersive Engineering
				immersiveEngineering.removeAlloy(item);
				immersiveEngineering.removeArcFurn(item);
				immersiveEngineering.removeCrusher(item);
				immersiveEngineering.removeCrusherByInput(item);
				immersiveEngineering.removePress(item);

				// ==================================
				// Just Enough Items
				mods.jei.JEI.removeAndHide(item);

				// ==================================
				// Mekanism
				mekanism.removeChemicalCrystallizer(item);
				mekanism.removeChemicalInjection(item);
				mekanism.removeCombiner(item);
				mekanism.removeCrusher(item);
				mekanism.removeSmelter(item);
				mekanism.removeEnrichment(item);
				mekanism.removeInfusion(item);
				mekanism.removeCompressor(item);
				mekanism.removeSawmill(item);
				mekanism.removePurification(item);

				// ==================================
				// Tinker's Construct
				tinkers.removeCastingBasin(item);
				tinkers.removeCastingTable(item);

				if (hasLiquid) {
					tinkers.removeMelting(liquid, item);
				}
			}
		}

		scripts.crafttweaker.utils.ensureOreDict(oreDictEntry, preferredItem);
	}
}
