import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<advancedmortars:mortar:1>,
		<advancedmortars:mortar>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.advancedmortars.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
