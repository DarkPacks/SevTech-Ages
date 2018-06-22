import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<translocators:translocator_part:1>,
		<translocators:translocator_part>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.translocators.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
