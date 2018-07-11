#priority 2999

/*
	SevTech: Ages Utils Script

	This script provides utility functions for use in other scripts

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.betterwithmods.MiniBlocks;
import mods.zenstages.Stage;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageDisabled;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function squareNum(number as int, timesToSquare as int) as int {
	var returnNumber = number;

	for i in 0 to timesToSquare {
		returnNumber = returnNumber * 2;
	}

	return returnNumber;
}

// Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}

// Formats a bucket with liquid NBT
function formatBucket(bucket as IItemStack, liquidName as string) as IItemStack {
	var data as IData = null;

	if (bucket.matches(<ceramics:clay_bucket>)) {
		data = {
			fluids: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else if (bucket.matches(<thebetweenlands:bl_bucket:1>) | bucket.matches(<thebetweenlands:bl_bucket>)) {
		data = {
			Fluid: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else {
		data = {
			FluidName: liquidName,
			Amount: 1000
		};
	}

	// Minecraft unique buckets
	if (bucket.definition.owner == "forge") {
		if (liquidName == "lava") {
			return <minecraft:lava_bucket>;
		} else if (liquidName == "milk") {
			return <minecraft:milk_bucket>;
		} else if (liquidName == "water") {
			return <minecraft:water_bucket>;
		}
	}

	// Cyclic unique buckets
	if (liquidName == "milk") {
		if (bucket.definition.owner == "ceramics") {
			return <ceramics:clay_bucket:1>;
		} else if (bucket.definition.owner == "thebetweenlands") {
			// No support for betweenlands bucket
			return null;
		}
	}

	return bucket.withTag(data);
}

function formatBucketIngredient(bucket as IItemStack, liquidName as string) as IIngredient {
	return formatBucket(bucket, liquidName) as IIngredient;
}

// Compares two stages and returns whichever is higher priority
function getHighestStage(firstStage as Stage, secondStage as Stage) as Stage {
	var stagePriorityMap as int[string] = {
		stageTutorial.stage: 0,
		stageZero.stage: 1,
		stageOne.stage: 2,
		stageTwo.stage: 3,
		stageThree.stage: 4,
		stageFour.stage: 5,
		stageFive.stage: 6,
		stageCreative.stage: 7,
		stageDisabled.stage: 8
	};

	// Stage names
	var firstStageName as string = firstStage.stage;
	var secondStageName as string = secondStage.stage;

	// If no stage exists, return lowest priority
	if (!(stagePriorityMap has firstStageName) & !(stagePriorityMap has secondStageName)) {
		return stageTutorial;
	}
	// If first stage doesn't exist, return second stage
	else if (!(stagePriorityMap has firstStageName)) {
		return secondStage;
	}
	// If second stage doesn't exist, return first stage
	else if (!(stagePriorityMap has secondStageName)) {
		return firstStage;
	}
	// Compare the stages and return whichever has higher priority
	else {
		var firstStagePriority as int = stagePriorityMap[firstStageName] as int;
		var secondStagePriority as int = stagePriorityMap[secondStageName] as int;

		if (secondStagePriority > firstStagePriority) {
			return secondStage;
		} else {
			return firstStage;
		}
	}
}

/*
	Create a recipe name.
*/
function createRecipeName(string1 as string, string2 as string) as string {
	return string1 + "_" + string2;
}

function createAllMiniBlockIngredient(item as IIngredient) as IIngredient {
	var allMiniBlocks as IIngredient = null;
	var miniBlockTypes as string[] = [
		"corner",
		"moulding",
		"siding"
	];

	for miniBlockType in miniBlockTypes {
		var miniBlock as IIngredient = MiniBlocks.getMiniBlock(miniBlockType, item);

		if (!isNull(miniBlock)) {
			if (isNull(allMiniBlocks)) {
				allMiniBlocks = miniBlock;
			} else {
				allMiniBlocks |= miniBlock;
			}
		}
	}

	return allMiniBlocks;
}
