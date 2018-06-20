import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<astikoor:cargocart>,
		<astikoor:plowcart>,
		<astikoor:wheel>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.astikoor.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
