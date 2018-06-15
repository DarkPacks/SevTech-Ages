#priority 4000

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.sevtweaks.stager.Stage;

import scripts.stages.stageTutorial;
import scripts.stages.stageZero;
import scripts.stages.stageOne;
import scripts.stages.stageTwo;
import scripts.stages.stageThree;
import scripts.stages.stageFour;
import scripts.stages.stageFive;
import scripts.stages.stageCreative;
import scripts.stages.stageDisabled;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
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

static stagePriorityMap as string[int] = {
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

// Compares two stages and returns whichever is higher priority
function getHighestStage(firstStage as Stage, secondStage as Stage) as Stage {
	var stagePriorityMap as string[int] = scripts.utils.stagePriorityMap;

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
		var firstStagePriority as int = stagePriorityMap[firstStageName];
		var secondStagePriority as int = stagePriorityMap[secondStageName];

		if (secondStagePriority > firstStagePriority) {
			return secondStage;
		} else {
			return firstStage;
		}
	}
}
