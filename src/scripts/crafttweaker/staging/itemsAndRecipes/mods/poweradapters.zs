import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<poweradapters:mj:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.poweradapters.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
