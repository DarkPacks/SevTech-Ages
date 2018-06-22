import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageBaykok;

static stagedItems as IIngredient[][string] = {
	stageBaykok.stage: [
		<simplyarrows:arrow_bone>,
		<simplyarrows:arrow_flint>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.simplyarrows.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
