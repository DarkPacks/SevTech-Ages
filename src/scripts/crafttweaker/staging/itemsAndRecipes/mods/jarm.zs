import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<jarm:acacia_raft>,
		<jarm:birch_raft>,
		<jarm:dark_oak_raft>,
		<jarm:jungle_raft>,
		<jarm:oak_raft>,
		<jarm:spruce_raft>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.jarm.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
