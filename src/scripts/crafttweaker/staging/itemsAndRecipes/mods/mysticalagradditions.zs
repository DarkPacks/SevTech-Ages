import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.utils.stageRecipeNameOrRegex;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<mysticalagradditions:stuff:1>
	],

	stageFour.stage: [
		<mysticalagradditions:stuff:3>
	]
};

static stagedRecipeNames as string[][string] = {
	stageFive.stage: [
		"REGEX:mysticalagradditions:.*"
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}

	for stageName, recipeNames in stagedRecipeNames {
		stageRecipeNameOrRegex(ZenStager.getStage(stageName), recipeNames);
	}
}

function initOverride() {
	for stageName, items in stagedItems {
		if (stageName != stageFive.stage) {
			for item in items {
				mods.ItemStages.removeItemStage(item);
				mods.ItemStages.addItemStage(stageName, item);
			}
		}
	}
}
