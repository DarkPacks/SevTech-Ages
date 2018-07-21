import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<antiqueatlas:antique_atlas:0>,
		<antiqueatlas:empty_antique_atlas:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.antiqueatlas.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
