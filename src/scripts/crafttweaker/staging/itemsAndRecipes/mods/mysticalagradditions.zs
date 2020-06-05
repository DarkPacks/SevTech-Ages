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
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

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
