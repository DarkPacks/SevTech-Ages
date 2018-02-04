#priority 950

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

//In order of priority
static defaultPreferredMods as string[] = [
	"minecraft",
	"contenttweaker",
	"immersiveengineering",
	"mekanism"
];

function unifyWithPreferredItem(oreDictEntry as IOreDictEntry, preferredItem as IItemStack, liquid as ILiquidStack) {
	var hasLiquid = liquid as bool;

	for item in oreDictEntry.items {
		if (!item.matches(preferredItem)) {
			if (!loadedMods.contains("jei")) {
				recipes.remove(item);
			}

			furnace.remove(item);

			/*
				Check supported mods and call script if loaded
			*/
			if (loadedMods.contains("appliedenergistics2")) {
				scripts.unify.supported_mods.appliedenergistics2.removeFromAll(item, liquid);
			}

			if (loadedMods.contains("astralsorcery")) {
				scripts.unify.supported_mods.astralsorcery.removeFromAll(item, liquid);
			}

			if (loadedMods.contains("immersiveengineering")) {
				scripts.unify.supported_mods.immersiveengineering.removeFromAll(item, liquid);
			}

			if (loadedMods.contains("jei")) {
				scripts.unify.supported_mods.jei.removeFromAll(item, liquid);
			}

			if (loadedMods.contains("tconstruct")) {
				scripts.unify.supported_mods.tconstruct.removeFromAll(item, liquid);
			}

			//Remove from Ore Dict
			oreDictEntry.remove(item);
		}
	}
}

function unifyWithPreferredMods(oreDictEntry as IOreDictEntry, preferredModsParam as string[], liquid as ILiquidStack) {
	//Set to defaultPreferredMods if the param preferredModsParam is null
	var preferredMods as string[] = isNull(preferredModsParam) ?
		scripts.unify.base.defaultPreferredMods : preferredModsParam;

	var preferredItem as IItemStack = null;

	/*
		Figure out which item is preferred

		The array should be in order of priority, so if its found, return immediately
		as this will be the most preferred option
	*/
	for modName in preferredMods {
		for item in oreDictEntry.items {
			if (item.definition.owner == modName) {
				preferredItem = item;
				return;
			}
		}
	}

	//If there is still no item found, take the first availble
	if (!(preferredItem as bool)) {
		preferredItem = oreDictEntry.firstItem;
	}

	//Call unifyWithPreferred
	scripts.unify.base.unifyWithPreferredItem(oreDictEntry, preferredItem, liquid);
}

unifyWithPreferredItem(<ore:gearWood>, <betterwithmods:material>, null);
unifyWithPreferredItem(<ore:gearStone>, <teslacorelib:gear_stone>, null);
unifyWithPreferredItem(<ore:gearDiamond>, <materialpart:diamond:gear>, null);
unifyWithPreferredItem(<ore:foodFlour>, <horsepower:flour>, null);
unifyWithPreferredItem(<ore:itemSilicon>, <galacticraftcore:basic_item:2>, null);
unifyWithPreferredItem(<ore:stickWood>, <minecraft:stick>, null);
