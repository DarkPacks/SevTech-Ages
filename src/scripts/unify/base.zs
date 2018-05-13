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
			furnace.setFuel(item, 0); //Setting the burnTime to 0 will stop the input from being a fuel item

			/*
				Check supported mods and call script if loaded

				TODO: Currently if a mod is not loaded, the script wont be loaded, so this script will error. See if theres a way around that.
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

			if (loadedMods.contains("mekanism")) {
				scripts.unify.supported_mods.mekanism.removeFromAll(item, liquid);
			}

			if (loadedMods.contains("tconstruct")) {
				scripts.unify.supported_mods.tconstruct.removeFromAll(item, liquid);
			}

			//Remove from Ore Dict
			oreDictEntry.remove(item);
		}
	}

	scripts.utils.ensureOreDict(oreDictEntry, preferredItem);
}

/*
	Figure out which item is preferred

	The array should be in order of priority, so if its found, return immediately
	as this will be the most preferred option
*/
function getPreferredItem(oreDictEntry as IOreDictEntry, preferredMods as string[]) as IItemStack {
	for modName in preferredMods {
		for item in oreDictEntry.items {
			if (item.definition.owner == modName) {
				return item;
			}
		}
	}
	return null;
}

function unifyWithPreferredMods(oreDictEntry as IOreDictEntry, preferredModsParam as string[], liquid as ILiquidStack) {
	//Set to defaultPreferredMods if the param preferredModsParam is null
	var preferredMods as string[] = isNull(preferredModsParam) ?
		scripts.unify.base.defaultPreferredMods : preferredModsParam;

	var preferredItem as IItemStack = scripts.unify.base.getPreferredItem(oreDictEntry, preferredMods);

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
unifyWithPreferredItem(<ore:dustCoal>, <betterwithmods:material:18>, null);
unifyWithPreferredItem(<ore:dustWood>, <betterwithmods:material:22>, null);
unifyWithPreferredItem(<ore:pulpWood>, <betterwithmods:material:22>, null);
unifyWithPreferredItem(<ore:dustDiamond>, <mekanism:otherdust>, null);
unifyWithPreferredItem(<ore:dustEmerald>, null, null);
unifyWithPreferredItem(<ore:dustSulfur>, <immersiveengineering:material:25>, null);
unifyWithPreferredItem(<ore:blockCharcoal>, <charcoalblock:charcoal_block>, null);
unifyWithPreferredItem(<ore:nuggetDiamond>, <extendedcrafting:material:128>, null);
