import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<primalchests:primal_chest_advanced>,
		<primalchests:primal_chest>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.primalchests.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
