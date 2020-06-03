#priority 2751

/*
	SevTech: Ages Metals Processing Script

	TODO:

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.crafttweaker.utils;

zenClass Metals {
	var defaultArcEnergyPerTick as int = 512;
	var defaultArcTickTime as int = 100;
	var arcGivesSlag as bool = false;
	var immersivePressEnergy as int = 2400;
	var packingMold as IItemStack = <immersiveengineering:mold:6>;
	var unpackingMold as IItemStack = <immersiveengineering:mold:7>;
	var packingInputCount as int = 9;
	var packingOutputCount as int = 1;
	var unpackingInputCount as int = 1;
	var unpackingOutputCount as int = 9;

	var wires as IItemStack[string] = {
		aluminum: <immersiveengineering:material:22>,
		copper: <immersiveengineering:material:20>,
		electrum: <immersiveengineering:material:21>,
		steel: <immersiveengineering:material:23>
	};

	/*
		Secondary Output mapping for Ores.

		This should link/be to/an OreDict entry always!
	*/
	var secondaryOutputs as IOreDictEntry[string] = {
		copper: metals.gold.dust,
		iron: metals.nickel.dust,
		lead: metals.silver.dust,
		nickel: metals.platinum.dust,
		platinum: metals.nickel.dust,
		silver: metals.lead.dust,
		uranium: metals.lead.dust
	};

	zenConstructor() {
	}

	function handleTinkers(preferredMetalItem as IItemStack, metalName as string, metalPartName as string, metalLiquid as ILiquidStack) {
		var fluidAmount as int = utils.getFluidAmount(metalPartName);

		// ==============================
		// Melting
		tinkers.removeMelting(metalLiquid * 1, preferredMetalItem);
		if (fluidAmount != 0) {
			tinkers.addMelting(metalLiquid * fluidAmount, preferredMetalItem);
		}

		// ==============================
		// Casting
		if (metalPartName == "block") {
			tinkers.removeCastingBasin(preferredMetalItem);
			tinkers.addCastingBasin(preferredMetalItem, null, metalLiquid, fluidAmount, false);
		} else {
			var tinkersCast as IItemStack = utils.getCast(metalPartName);
			if (tinkersCast as bool) {
				tinkers.removeCastingTable(preferredMetalItem);
				tinkers.addCastingTable(preferredMetalItem, tinkersCast, metalLiquid, fluidAmount, false);
			}
		}
	}

	function handleDirtyDust(preferredMetalItem as IItemStack, metalName as string, metal as IOreDictEntry[string]) {
		mekanism.removeEnrichment(preferredMetalItem);
		if (metalItems[metalName].dust as bool) {
			mekanism.addEnrichment(preferredMetalItem, metalItems[metalName].dust.items[0]);
		}
		// Handle the dirtyDust set in the map to force change the outcome. (Fixes an issue with Meka registration)
		mekanism.removeEnrichment(metal.dirtyDust.firstItem);
		mekanism.addEnrichment(metal.dirtyDust.firstItem, metal.dust.firstItem);
	}

	function handleDust(preferredMetalItem as IItemStack, metalName as string, metalPartName as string, metal as IOreDictEntry[string]) {
		immersiveEngineering.addArcFurn(
			metalItems[metalName].ingot.items[0],
			metal[metalPartName],
			arcGivesSlag ? <ore:itemSlag>.firstItem : null,
			defaultArcTickTime,
			defaultArcEnergyPerTick
		);
		// Later Stage Smelting.
		mekanism.addSmelter(preferredMetalItem, metalItems[metalName].ingot.items[0]);
	}

	function handleIngot(preferredMetalItem as IItemStack, metalName as string, metalPartName as string) {
		// Remove ingot recipes, mainly for preventing ore doubling recipes.
		immersiveEngineering.removeArcFurn(preferredMetalItem);

		// ==============================
		// Nugget
		if (metalItems[metalName].nugget as bool) {
			// Packing
			immersiveEngineering.addPress(
				preferredMetalItem * packingOutputCount,
				metalItems[metalName].nugget.items[0],
				packingMold,
				immersivePressEnergy,
				packingInputCount
			);

			// Unpacking
			immersiveEngineering.addPress(
				metalItems[metalName].nugget.items[0] * unpackingOutputCount,
				preferredMetalItem,
				unpackingMold,
				immersivePressEnergy,
				unpackingInputCount
			);
		}

		// ==============================
		// Block
		if (metalItems[metalName].block as bool) {
			// Packing
			immersiveEngineering.addPress(
				metalItems[metalName].block.items[0] * packingOutputCount,
				preferredMetalItem,
				packingMold,
				immersivePressEnergy,
				packingInputCount
			);

			// Unpacking
			immersiveEngineering.addPress(
				preferredMetalItem * unpackingOutputCount,
				metalItems[metalName].block.items[0],
				unpackingMold,
				immersivePressEnergy,
				unpackingInputCount
			);
		}
	}

	function handlePlate(preferredMetalItem as IItemStack, metalName as string) {
		mods.primaltech.StoneAnvil.addRecipe(preferredMetalItem, metalItems[metalName].ingot.items[0]);
		// Plates should also be used in place of ingots for wire.
		if (metalName == "copper" | metalName == "electrum" | metalName == "aluminum" | metalName == "steel") {
			immersiveEngineering.addPress(
				wires[metalName] * 2,
				preferredMetalItem,
				<immersiveengineering:mold:4>,
				immersivePressEnergy,
				1
			);
		}
	}

	function handleBlock(preferredMetalItem as IItemStack, metalName as string) {
		mods.primaltech.StoneAnvil.addRecipe(metalItems[metalName].ingot.items[0] * 9, preferredMetalItem);
	}

	function handleRod(preferredMetalItem as IItemStack, metalName as string) {
		mods.primaltech.StoneAnvil.addRecipe(preferredMetalItem, metalItems[metalName].plate.items[0]);
	}

	function handlePress(preferredMetalItem as IItemStack, metalName as string, metalPartName as string) {
		var pressMold as IItemStack = utils.getMold(metalPartName);

		if (pressMold as bool) {
			immersiveEngineering.removePress(preferredMetalItem);
			immersiveEngineering.addPress(
				preferredMetalItem * utils.getPressOutputCount(metalPartName),
				metalItems[metalName].ingot.items[0],
				pressMold,
				immersivePressEnergy,
				utils.getPressInputCount(metalPartName)
			);
		}

		if (metalPartName != "plate" & metalItems[metalName].plate as bool) {
			immersiveEngineering.addPress(
				preferredMetalItem * utils.getPressOutputCount(metalPartName),
				metalItems[metalName].plate.items[0],
				pressMold,
				immersivePressEnergy,
				utils.getPressInputCount(metalPartName)
			);
		}
	}

	// ==============================
	// Ore Processing/Handling

	/*
		Remove all the current recipes for the ore and mods processing so we can add back in our tier system.

		(Some of these are not really needed but it flushes the system and ensures for compat with our forced dusts)
	*/
	function removeOreRecipes(metalType as IOreDictEntry[string]) {
		// Remove Ore recipes from mods which support IIngredient.
		mekanism.removeEnrichment(metalType.ore);
		// Remove Starlight Ingot Conversion.
		astralSorcery.removeStarlight(metalType.ingot.firstItem);
		// Remove the Ingot -> Dust recipe from Applied Energistics.
		appliedEnergistics.removeGrindstone(metalType.ingot.firstItem);

		// Remove all Dust recipes.
		for dust in metalType.dust.items {
			// Remove the dust from Actually Additions.
			actuallyAdditions.removeCrusher(dust);
			// Remove the dust from Astral Sorcery.
			astralSorcery.removeGrindstone(dust);
			astralSorcery.removeStarlight(dust);
			// Remove the dust from IE Crusher.
			immersiveEngineering.removeCrusher(dust);
			// Remove the dust from Mekanism.
			mekanism.removeCrusher(dust);
		}
		// Remove all Ore recipes.
		for ore in metalType.ore.items {
			// Remove the ore from Applied Energistics.
			appliedEnergistics.removeGrindstone(ore);
			// Remove the ore from Blood Magic.
			bloodMagic.removeAlchemyTable([ore, <bloodmagic:cutting_fluid:0>] as IItemStack[]);
			// Remove the ore from AbyssalCraft.
			abyssalcraft.removeCrystallization(ore);
		}
	}

	/*
		Add the recipes following our tier system back to the game.

		These are added using our tier system, along with tweaks to how progression works each tier
		is noted below and self explained with the method calling to the mods.
	*/
	function createOreRecipes(metalType as IOreDictEntry[string], oreSecondOutput as IOreDictEntry) {
		// Add recipes for mods which support input by IIngredient.
		if (!isNull(oreSecondOutput)) {
			// Tier 2 Recipes
			immersiveEngineering.addCrusher(metalType.dust.firstItem * 2, metalType.ore, immersiveEngineering.default_energy, oreSecondOutput.firstItem, 0.25);
		} else {
			// Tier 2 Recipes
			immersiveEngineering.addCrusher(metalType.dust.firstItem * 2, metalType.ore);
		}

		for ore in metalType.ore.items {
			// Tier 1 Recipes
			appliedEnergistics.addGrindstone(metalType.dust.firstItem, ore);
			astralSorcery.addGrindstone(ore, metalType.dust.firstItem);

			// Tier 3 Recipes
			mekanism.addCrusher(ore, metalType.dust.firstItem * 2);

			if (!isNull(oreSecondOutput)) {
				// Tier 3 Recipes
				actuallyAdditions.addCrusher(metalType.dust.firstItem * 2, ore, oreSecondOutput.firstItem, 50);
			} else {
				// Tier 3 Recipes
				actuallyAdditions.addCrusher(metalType.dust.firstItem * 2, ore);
			}
		}

		// Tier 4 Recipes
		createTier4Recipes(metalType, oreSecondOutput);
	}

	/*
		Add the conversion recipes for the ore sub items.

		This adds the processing such as Ingot -> Dust or other conversions needed for the Ore outputs which are removed
		in process with cleaning up via the `removeRecipes` Function.
	*/
	function createConversionRecipes(metalName as string, metalType as IOreDictEntry[string]) {
		// Handle the Ingot -> Dust conversion.
		if (metalType has "dust" & !isNull(metalItems[metalName].dust)) {
			immersiveEngineering.addCrusher(metalType.dust.firstItem, metalItems[metalName].ingot.items[0], 256);
			appliedEnergistics.addGrindstone(metalType.dust.firstItem, metalItems[metalName].ingot.items[0]);
			astralSorcery.addGrindstone(metalItems[metalName].ingot.items[0], metalType.dust.firstItem);
			actuallyAdditions.addCrusher(metalType.dust.firstItem, metalItems[metalName].ingot.items[0]);
			mekanism.addCrusher(metalItems[metalName].ingot.items[0], metalType.dust.firstItem);
		}
	}

	/*
		Add the recipes to the Modular Machine for processing Ores.

		This is a custom machine using various gases/fluids to tie with Mekanism but allow the
		player to explore with other options and to improve efficiency with autocrafting/autoprocessing.
	*/
	function createTier4Recipes(metalType as IOreDictEntry[string], oreSecondOutput as IOreDictEntry) {
		// Add the ore to the OreMatic 5000.
		orematic.addAllTiers(metalType.ore, metalType.dust.firstItem, oreSecondOutput);
	}

	/*
		Handle Ores by removing all recipes which are created from the Ore. Then re-add them using our logic/changes.
		Also add processing for the Ore Matic to enable faster Ore Processing in later Ages.
	*/
	function handleOre(metalName as string, metalType as IOreDictEntry[string]) {
		var secondaryOutput as IOreDictEntry = secondaryOutputs[metalName];
		// Remove all the old recipes for the ore conversion.
		removeOreRecipes(metalType);
		// Add back the recipes needed for the Tier'd Ore Processing.
		createOreRecipes(metalType, secondaryOutput);
		// Add back the conversion recipes which are removed by the script (Due to how the removals work).
		createConversionRecipes(metalName, metalType);
	}
}
