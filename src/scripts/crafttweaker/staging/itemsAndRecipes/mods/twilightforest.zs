import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<twilightforest:spiral_bricks:0>
	],

	stageDisabled.stage: [
		<twilightforest:ore_map_empty:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.twilightforest.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
