import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<farmingforblockheads:market:0>
	],

	stageTwo.stage: [
		<farmingforblockheads:chicken_nest:0>,
		<farmingforblockheads:feeding_trough:0>,
		<farmingforblockheads:fertilizer:1>,
		<farmingforblockheads:fertilizer:2>,
		<farmingforblockheads:fertilizer:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.farmingforblockheads.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
