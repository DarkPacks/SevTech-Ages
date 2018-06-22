import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<witherskelefix:blade>,
		<witherskelefix:blade2>,
		<witherskelefix:fragment>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.witherskelefix.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
