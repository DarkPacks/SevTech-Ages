import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<bonsaitrees:bonsaipot:1>,
		<bonsaitrees:bonsaipot>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.bonsaitrees.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
