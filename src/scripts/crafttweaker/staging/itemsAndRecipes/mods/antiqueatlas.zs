import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<antiqueatlas:antique_atlas>,
		<antiqueatlas:empty_antique_atlas>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.antiqueatlas.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
