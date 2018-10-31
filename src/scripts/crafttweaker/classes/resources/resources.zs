#priority 2650

/*
	SevTech: Ages Resources Script

	It does things and stuff which some of us understand?

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.craftingUtils;
import scripts.crafttweaker.stages.metalStages;

zenClass Resources {
	var partsToSkip as string[] = [
		"clump",
		"crystal",
		"shard"
	];

	zenConstructor() {
	}

	/*
		Returns liquid if it exists for that metal if not return null.
	*/
	function getMetalLiquid(metalName as string) as ILiquidStack {
		return metalItems[metalName].liquid as bool ? metalItems[metalName].liquid.liquids[0] : null;
	}

	/*
		Returns item if it exists for that metal if not return null.
	*/
	function getPreferredMetalItem(metalName as string, metalPartName as string) as IItemStack {
		return metalItems[metalName][metalPartName] as bool ? metalItems[metalName][metalPartName].items[0] : null;
	}

	/*
		This method will handle the part being passed. This will perform the magic required to make the magic happen!
	*/
	function processPart(metalName as string, metalPartName as string, metal as IOreDictEntry[string], preferredMetalItem as IItemStack, metalLiquid as ILiquidStack, doFurnace as bool, metalStage as string, hasLiquid as bool) {
		recipes.remove(preferredMetalItem);
		furnace.remove(preferredMetalItem);

		if (hasLiquid) {
			metalProc.handleTinkers(preferredMetalItem, metalName, metalPartName, metalLiquid);
		}

		// ==============================
		// Process the part via their own handlers.
		if (metalPartName == "dirtyDust") {
			metalProc.handleDirtyDust(preferredMetalItem, metalName, metal);
		} else if (metalPartName == "dust") {
			metalProc.handleDust(preferredMetalItem, metalName, metalPartName, metal);
		} else if (metalPartName == "ingot") {
			metalProc.handleIngot(preferredMetalItem, metalName, metalPartName);
		} else if (metalPartName == "plate") {
			metalProc.handlePlate(preferredMetalItem, metalName);
		} else if (metalPartName == "block") {
			metalProc.handleBlock(preferredMetalItem, metalName);
		} else if (metalPartName == "rod") {
			metalProc.handleRod(preferredMetalItem, metalName);
		}
		// ==============================
		// Handle Press Recipes
		metalProc.handlePress(preferredMetalItem, metalName, metalPartName);
	}

	/*
		This method is called to init the loop over metals to change how the processing mechanics work for the pack.
		TLDR: Removes/Adds/Changes recipes/usages for the metal being handled.
	*/
	function processMetal(metalName as string, metal as IOreDictEntry[string]) {
		var metalLiquid = getMetalLiquid(metalName);
		var hasLiquid = metalLiquid as bool;
		var metalStage = (metalStages has metalName) ? metalStages[metalName] : "";

		// Log as a warn is the metal has no Stage. As ALL metals should have been staged!
		// I.E. Could be a new metal or change to a name which we missed in a mod update etc...
		if (metalStage == "") {
			logger.logWarning("[Metals] No stage found for " ~ metalName);
		}

		// ==============================
		// Stage the Liquid
		if (metalStage != "" & hasLiquid) {
			ZenStager.getStage(metalStage).addLiquid(metalLiquid);
			ZenStager.getStage(metalStage).addIngredient(craftingUtils.getBucketIngredient(metalLiquid));
		}
		// ==============================
		// Loop over the parts for the Metal and handle each part for correcting/changing processing recipes/mechanics.
		for partName, part in metal {
			if (part as bool & partName != "ore") {
				var preferredMetalItem = getPreferredMetalItem(metalName, partName);
				unifier.unify(part, preferredMetalItem, metalLiquid);

				if (preferredMetalItem as bool) {
					// Stage the part.
					if (metalStage != "") {
						ZenStager.getStage(metalStage).addIngredient(preferredMetalItem);
					}

					if (!(partsToSkip has partName)) {
						processPart(metalName, partName, metal, preferredMetalItem, metalLiquid, partName == "ingot", metalStage, hasLiquid);
					}
				}
			}
		}
		// ==============================
		// Ore Processing
		if (metal has "ore" & !isNull(metal.dust)) {
			metalProc.handleOre(metalName, metal);
		}
	}

	function processCluster(metal as string, cluster as IItemStack) {
		// ==============================
		// Crushing Recipes
		if (metal == "titanium") {
			immersiveEngineering.addCrusher(metals[metal].dust.firstItem * 2, cluster, metals.iron.dust.firstItem, 0.50);
			actuallyAdditions.addCrusher(metals[metal].dust.firstItem * 2, cluster, metals.iron.dust.firstItem, 50);
		} else {
			immersiveEngineering.addCrusher(metals[metal].dust.firstItem * 2, cluster);
			actuallyAdditions.addCrusher(metals[metal].dust.firstItem * 2, cluster);
		}

		// ==============================
		// Smelting Recipes
		mekanism.addEnrichment(cluster, metals[metal].dust.firstItem * 2);

		// ==============================
		// Tinkers Melting
		if (!isNull(metalItems[metal].liquid)) {
			tinkers.addMelting(metalItems[metal].liquid.liquids[0] * 144, cluster);
		}
	}
}
