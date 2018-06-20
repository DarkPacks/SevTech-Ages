import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<enderstorage:ender_pouch>,
		<enderstorage:ender_storage:1>,
		<enderstorage:ender_storage>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.enderstorage.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
