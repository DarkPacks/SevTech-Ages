import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<emberroot:owl_egg:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.emberroot.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
