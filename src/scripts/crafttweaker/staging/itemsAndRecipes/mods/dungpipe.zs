import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<dungpipe:dung_pipe>,
		<dungpipe:sewer_pipe>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.dungpipe.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
