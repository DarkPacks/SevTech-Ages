#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import crafttweaker.oredict.IOreDictEntry;

/*
	Secondary Output mapping for Ores.

	This should link/be to/an OreDict entry always!
*/
static secondaryOutputs as IOreDictEntry[string] = {
	copper: metals.gold.dust,
	iron: metals.nickel.dust,
	lead: metals.silver.dust,
	nickel: metals.platinum.dust,
	platinum: metals.nickel.dust,
	silver: metals.lead.dust,
	uranium: metals.lead.dust
};

/*
	Remove all the current recipes for the ore and mods processing so we can add back in our tier system.

	(Some of these are not really needed but it flushes the system and ensures for compat with our forced dusts)
*/
function removeRecipes(metalType as IOreDictEntry[string]) {
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
		bloodMagic.removeAlchemy([ore, <bloodmagic:cutting_fluid>] as IItemStack[]);
		// Remove the ore from AbyssalCraft.
		abyssalcraft.removeCrystallization(ore);
	}
}

/*
	Add the recipes following our tier system back to the game.

	These are added using our tier system, along with tweaks to how progression works each tier
	is noted below and self explained with the method calling to the mods.
*/
function createRecipes(metalType as IOreDictEntry[string], oreSecondOutput as IOreDictEntry) {
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
		mekanism.addCrusher(ore, metalType.dust.firstItem);

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
	Add the recipes to the Modular Machine for processing Ores.

	This is a custom machine using various gases/fluids to tie with Mekanism but allow the
	player to explore with other options and to improve efficiency with autocrafting/autoprocessing.
*/
function createTier4Recipes(metalType as IOreDictEntry[string], oreSecondOutput as IOreDictEntry) {
	// Add the ore to the OreMatic 5000.
	orematic.addAllTiers(metalType.ore, metalType.dust.firstItem, oreSecondOutput);
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
	Hardcoded recipe removals from processing. For the ones not handling correctly in the Ore Dict.
*/
appliedEnergistics.removeGrindstone(<galacticraftplanets:asteroids_block:4>);
immersiveEngineering.addCrusher(<appliedenergistics2:material> * 3, <ore:oreBasicCertusQuartz>);
immersiveEngineering.addCrusher(<appliedenergistics2:material:1> * 3, <ore:oreChargedCertusQuartz>);

// Silcon
actuallyAdditions.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftplanets:venus:10>);
immersiveEngineering.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftplanets:venus:10>);
immersiveEngineering.addCrusher(<galacticraftcore:basic_item:2> * 5, <galacticraftcore:basic_block_core:8>);

/*
	Loop over the metals and re-create the processing recipes.
*/
for metalName, metalType in metals {
	for partName, part in metalType {
		if (part as bool & partName == "ore" & !isNull(metalType.dust)) {
			// Remove all the old recipes for the ore conversion.
			removeRecipes(metalType);
			// Add back the recipes needed for the Tier'd Ore Processing.
			createRecipes(metalType, secondaryOutputs[metalName]);
			// Add back the conversion recipes which are removed by the script (Due to how the removals work).
			createConversionRecipes(metalName, metalType);
		}
	}
}
