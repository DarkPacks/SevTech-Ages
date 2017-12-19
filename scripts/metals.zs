#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

var metalStages = {
	abyssalnite: "",
	aluminum: "",
	aluminumBrass: "",
	ardite: "",
	blackIron: "three",
	bronze: "one",
	cobalt: "three",
	compressedIron: "",
	constantan: "",
	copper: "one",
	dawnstone: "two",
	dreadium: "",
	electrum: "",
	ethaxium: "",
	fiery: "two",
	galgadorian: "three",
	galgadorianEnhanced: "three",
	gold: "two",
	invar: "three",
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
	reinforcedMetal: "three",
	silver: "three",
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
	return metalItems[metalName][metalType] as bool ? metalItems[metalName][metalType].items[0] : null;
}

function handleMetalItem(metalName as string, metal as IOreDictEntry[string], metalType as string, preferredMetalItem as IItemStack, doFurnace as bool, hasLiquid as bool, metalStages as string[string]) {
	var hasPreferredItem = preferredMetalItem as bool;
	var metalLiquid as ILiquidStack = hasLiquid ? metalItems[metalName].liquid.liquids[0] : null;

	//Add preferredMetalItem to oreDict if it does not exist already
	if (hasPreferredItem & !(metal[metalType] in preferredMetalItem)) {
		metal[metalType].add(preferredMetalItem);
	}

	if (hasPreferredItem) {
		/*
			Remove Metal Recipes
		*/
		recipes.remove(preferredMetalItem);
		furnace.remove(preferredMetalItem);

		/*
			Stage Metal Item
		*/
		if (metalStages[metalName] != "" & hasPreferredItem) {
			mods.ItemStages.addItemStage(metalStages[metalName], preferredMetalItem);
			mods.recipestages.Recipes.setRecipeStage(metalStages[metalName], preferredMetalItem);
		}

		/*
			Add Metal Recipes
		*/
		//Embers Stamper
		if (loadedMods.contains("embers")) {
			if ((metalType == "ingot" | metalType == "plate") & hasLiquid) {
				mods.embers.Stamper.remove(preferredMetalItem);

				var stamp as IItemStack = metalType == "ingot" ? <embers:stamp_bar> : <embers:stamp_plate>;
				mods.embers.Stamper.add(preferredMetalItem, metalLiquid * 144, stamp);
			}
		}

		//Tinker's Construct
		if (loadedMods.contains("tconstruct")) {
			if (hasLiquid) {
				var fluidAmount as int = 0;

				if (metalType == "ingot" | metalType == "plate" | metalType == "dust") {
					fluidAmount = 144;
				} else if (metalType == "rod") {
					fluidAmount = 72;
				} else if (metalType == "block") {
					fluidAmount = 1296;
				} else if (metalType == "gear") {
					fluidAmount = 576;
				} else if (metalType == "nugget") {
					fluidAmount = 16;
				}

				mods.tconstruct.Melting.removeRecipe(metalLiquid, preferredMetalItem);
				mods.tconstruct.Melting.addRecipe(metalLiquid * fluidAmount, preferredMetalItem);

				//Casting
				if (metalType == "block") {
					var consumeCast = false;

					mods.tconstruct.Casting.removeBasinRecipe(preferredMetalItem);
					mods.tconstruct.Casting.addBasinRecipe(preferredMetalItem, null, metalLiquid, fluidAmount, consumeCast);
				} else {
					var tinkersCast as IItemStack = null;
					var consumeCast = false;

					if (metalType == "ingot") {
						tinkersCast = <tconstruct:cast_custom>;
					} else if (metalType == "gear") {
						tinkersCast = <tconstruct:cast_custom:4>;
					} else if (metalType == "plate") {
						tinkersCast = <tconstruct:cast_custom:3>;
					} else if (metalType == "nugget") {
						tinkersCast = <tconstruct:cast_custom:1>;
					}

					if (tinkersCast as bool) {
						mods.tconstruct.Casting.removeTableRecipe(preferredMetalItem);
						mods.tconstruct.Casting.addTableRecipe(preferredMetalItem, tinkersCast, metalLiquid, fluidAmount, consumeCast);
					}
				}
			}
		}

		//Immersive Engineering
		//mods.immersiveengineering.MetalPress.removeRecipe(output);
		//mods.mods.immersiveengineering.MetalPress.addRecipe(output, input, mold, energy, optionalInputSize);
		if (loadedMods.contains("immersiveengineering")) {
			var immersivePressMold as IItemStack = null;
			var immersivePressInputCount = 1;
			var immersivePressOutputCount = 1;
			var immersivePressEnergy = 2400;

			if (metalType == "plate") {
				immersivePressMold = <immersiveengineering:mold>;
			} else if (metalType == "gear") {
				immersivePressMold = <immersiveengineering:mold:1>;
				immersivePressInputCount = 4;
			} else if (metalType == "rod") {
				immersivePressOutputCount = 2;
				immersivePressMold = <immersiveengineering:mold:2>;
			}

			//If immersive mold isnt null, remove/create recipes
			if (immersivePressMold as bool) {
				mods.immersiveengineering.MetalPress.removeRecipe(preferredMetalItem);
				mods.immersiveengineering.MetalPress.addRecipe(
					preferredMetalItem * immersivePressOutputCount, //Output
					metalItems[metalName].ingot.items[0], //Input
					immersivePressMold, //Mold
					immersivePressEnergy, //Energy
					immersivePressInputCount //Input Count
				);
			}

			//Dust can only be used in arc furnace
			if (metalType == "dust") {
				if (loadedMods.contains("appliedenergistics2")) {
					mods.appliedenergistics2.Grinder.removeRecipe(preferredMetalItem);
				}

				if (loadedMods.contains("astralsorcery")) {
					mods.astralsorcery.Grindstone.removeRecipe(preferredMetalItem);
				}

				if (loadedMods.contains("immersiveengineering")) {
					mods.immersiveengineering.ArcFurnace.removeRecipe(preferredMetalItem);
					mods.immersiveengineering.Crusher.removeRecipe(preferredMetalItem);
				}

				var defaultArcEnergyPerTick as int = 512;
				var defaultArcTickTime as int = 100;
				var arcGivesSlag as bool = false;
				mods.immersiveengineering.ArcFurnace.addRecipe(
					metalItems[metalName].ingot.items[0],
					preferredMetalItem,
					arcGivesSlag ? <ore:itemSlag>.firstItem : null,
					defaultArcTickTime,
					defaultArcEnergyPerTick
				);
			}
		}

		//Primal Tech
		if (loadedMods.contains("primal_tech")) {
			//mods.primaltech.StoneAnvil.addRecipe(Itemstack output, IIngredient input);
			if (metalType == "plate") {
				mods.primaltech.StoneAnvil.addRecipe(preferredMetalItem, metalItems[metalName].ingot.items[0]);
			} else if (metalType == "rod" & metalItems[metalName].plate as bool) {
				mods.primaltech.StoneAnvil.addRecipe(preferredMetalItem, metalItems[metalName].plate.items[0]);
			} else if (metalType == "block") {
				mods.primaltech.StoneAnvil.addRecipe(metalItems[metalName].ingot.items[0] * 9, preferredMetalItem);
			} else if (metalType == "nugget") {
				mods.primaltech.StoneAnvil.addRecipe(preferredMetalItem * 9, metalItems[metalName].ingot.items[0]);
			}
		}

		//PneumaticCraft
		if (loadedMods.contains("pneumaticcraft")) {
			var defaultChamberPressure as double = 2.0;
			if (metalType == "nugget") {
				mods.pneumaticcraft.pressurechamber.addRecipe([preferredMetalItem * 9], defaultChamberPressure, [metalItems[metalName].ingot.items[0]]);
			} else if (metalType == "block") {
				mods.pneumaticcraft.pressurechamber.addRecipe([metalItems[metalName].ingot.items[0] * 9], defaultChamberPressure, [preferredMetalItem]);
			}
		}
	}

	//Remove other metal items completely
	for metalItem in metal[metalType].items {
		//If this item is the one we want, skip
		if (!metalItem.matches(preferredMetalItem)) {
			mods.jei.JEI.removeAndHide(metalItem);

			if (loadedMods.contains("immersiveengineering")) {
				mods.immersiveengineering.ArcFurnace.removeRecipe(metalItem);
				mods.immersiveengineering.Crusher.removeRecipe(metalItem);
				mods.immersiveengineering.MetalPress.removeRecipe(metalItem);
			}

			if (doFurnace) {
				furnace.remove(metalItem);
			}

			if (loadedMods.contains("appliedenergistics2")) {
				mods.appliedenergistics2.Grinder.removeRecipe(metalItem);
			}

			if (loadedMods.contains("astralsorcery")) {
				mods.astralsorcery.Grindstone.removeRecipe(metalItem);
			}

			if (hasLiquid) {
				if (loadedMods.contains("embers")) {
					mods.embers.Stamper.remove(metalItem);
					mods.embers.Melter.remove(metalItem);
				}

				if (loadedMods.contains("tconstruct")) {
					mods.tconstruct.Casting.removeBasinRecipe(metalItem);
					mods.tconstruct.Casting.removeTableRecipe(metalItem);
					mods.tconstruct.Melting.removeRecipe(metalLiquid, metalItem);
				}
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
