import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<supersoundmuffler:sound_muffler_bauble>,
		<supersoundmuffler:sound_muffler>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.supersoundmuffler.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
