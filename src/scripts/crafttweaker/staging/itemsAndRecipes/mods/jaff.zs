import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<jaff:fish_bucket_clownfish>,
		<jaff:fish_bucket_cod>,
		<jaff:fish_bucket_pufferfish>,
		<jaff:fish_bucket_salmon>,
		<jaff:tank>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.jaff.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
