import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<huntingdim:biome_changer:*>,
		<huntingdim:frame>,
		<huntingdim:portal>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.huntingdim.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
