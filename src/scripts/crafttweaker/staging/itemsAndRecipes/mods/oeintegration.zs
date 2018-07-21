import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<oeintegration:excavatemodifier:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.oeintegration.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
