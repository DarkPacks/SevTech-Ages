import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<horsepower:chopping_block:*>
	],

	stageZero.stage: [
		<horsepower:chopper:*>,
		<horsepower:dough:0>,
		<horsepower:flour:0>,
		<horsepower:grindstone:0>,
		<horsepower:hand_grindstone:0>,
		<horsepower:press:0>
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

		ZenStager.getStage(stageName).addIngredients(items, false);
	}
}
