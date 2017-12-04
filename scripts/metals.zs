import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var metalStages = {
	abyssalnite: "",
	aluminum: "",
	aluminumBrass: "",
	ardite: "",
	bronze: "one",
	cobalt: "",
	constantan: "",
	copper: "one",
	dawnstone: "two",
	dreadium: "",
	electrum: "",
	ethaxium: "",
	fiery: "two",
	gold: "two",
	iron: "two",
	knightslime: "",
	lead: "three",
	manyullyn: "",
	modularium: "three",
	nickel: "",
	pigiron: "",
	platinum: "three",
	redstoneAlloy: "three",
	refinedCoralium: "",
	silver: "",
	steel: "",
	steeleaf: "two",
	tin: "one",
	uranium: ""
} as string[string];

function isItemToKeep(item as IItemStack) as bool {
	return false; //Comment this out if there are mods we want kept

	var modsToKeep = [
	] as string[];

	var itemOwner as string = item.definition.owner;
	for modName in modsToKeep {
		if (itemOwner == modName) {
			return true;
		}
	}
	return false;
}

//Returns item if it exists for that metal, or null
function getPreferredMetalItem(metalName as string, metalType as string) as IItemStack {
	return metalItems[metalName][metalType] as bool ? metalItems[metalName][metalType].itemArray[0] : null;
}

function handleMetalItem(metalName as string, metal as IOreDictEntry[string], metalType as string, preferredMetalItem as IItemStack, doFurnace as bool, hasLiquid as bool, metalStages as string[string]) {
	var hasPreferredItem = preferredMetalItem as bool;
	var metalLiquid = hasLiquid ? metalItems[metalName].liquid.liquids[0] : null;

	//Add preferredMetalItem to oreDict if it does not exist already
	if (hasPreferredItem & !(metal[metalType] in preferredMetalItem)) {
		metal[metalType].add(preferredMetalItem);
	}

	if (hasPreferredItem) {
		//Stage Metal Item
		if (metalStages[metalName] != "" & hasPreferredItem) {
			mods.ItemStages.addItemStage(metalStages[metalName], preferredMetalItem);
			mods.recipestages.Recipes.setRecipeStage(metalStages[metalName], preferredMetalItem);
		}

		/*
			Add Metal Recipes
		*/
		//Embers Stamper
		if ((metalType == "ingot" | metalType == "plate") & hasLiquid) {
			mods.embers.Stamper.remove(preferredMetalItem);

			var stamp as IItemStack = metalType == "ingot" ? <embers:stamp_bar> : <embers:stamp_plate>;
			mods.embers.Stamper.add(preferredMetalItem, metalLiquid * 144, stamp);
		}

		//TODO: Remove recipes we dont want on the preferredMetalItem
	}

	//Remove other metal items completely
	for metalItem in metal[metalType].itemArray {
		//If this item is the one we want, skip
		if (!metalItem.matches(preferredMetalItem)) {
			mods.jei.JEI.removeAndHide(metalItem);

			if (doFurnace) {
				furnace.remove(metalItem);
			}

			if (hasLiquid) {
				mods.embers.Stamper.remove(metalItem);

				mods.tconstruct.Casting.removeBasinRecipe(metalItem);
				mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalItem);
			}

			//Remove from Ore Dict
			if (!isItemToKeep(metalItem)) {
				metal[metalType].remove(metalItem);
			}
		}
	}
}

for metalName, metal in metals {
	var hasLiquid = metalItems[metalName].liquid as bool;

	//Remove block recipes
	if (metal.block as bool) {
		var preferredMetalBlock = getPreferredMetalItem(metalName, "block");

		handleMetalItem(metalName, metal, "block", preferredMetalBlock, false, hasLiquid, metalStages);
	}

	//Remove ingot recipes
	if (metal.ingot as bool) {
		var preferredMetalIngot = getPreferredMetalItem(metalName, "ingot");

		handleMetalItem(metalName, metal, "ingot", preferredMetalIngot, true, hasLiquid, metalStages);
	}

	//Remove nugget recipes
	if (metal.nugget as bool) {
		var preferredMetalNugget = getPreferredMetalItem(metalName, "nugget");

		handleMetalItem(metalName, metal, "nugget", preferredMetalNugget, false, hasLiquid, metalStages);
	}

	//Remove dust/grit recipes
	if (metal.dust as bool) {
		var preferredMetalDust = getPreferredMetalItem(metalName, "dust");

		handleMetalItem(metalName, metal, "dust", preferredMetalDust, false, hasLiquid, metalStages);
	}

	//Remove plate recipes
	if (metal.plate as bool) {
		var preferredMetalPlate = getPreferredMetalItem(metalName, "plate");

		handleMetalItem(metalName, metal, "plate", preferredMetalPlate, false, hasLiquid, metalStages);
	}

	//Remove gear recipes
	if (metal.gear as bool) {
		var preferredMetalGear = getPreferredMetalItem(metalName, "gear");

		handleMetalItem(metalName, metal, "gear", preferredMetalGear, false, hasLiquid, metalStages);
	}

	//Remove rod recipes
	if (metal.rod as bool) {
		var preferredMetalRod = getPreferredMetalItem(metalName, "rod");

		handleMetalItem(metalName, metal, "rod", preferredMetalRod, false, hasLiquid, metalStages);
	}
}
