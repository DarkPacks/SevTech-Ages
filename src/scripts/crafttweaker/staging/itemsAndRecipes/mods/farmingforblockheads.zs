import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<farmingforblockheads:market>
	],

	stageTwo.stage: [
		<farmingforblockheads:chicken_nest>,
		<farmingforblockheads:feeding_trough>,
		<farmingforblockheads:fertilizer:1>,
		<farmingforblockheads:fertilizer:2>,
		<farmingforblockheads:fertilizer>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.farmingforblockheads.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
