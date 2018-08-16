import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<jarm:acacia_raft:0>,
		<jarm:birch_raft:0>,
		<jarm:dark_oak_raft:0>,
		<jarm:jungle_raft:0>,
		<jarm:oak_raft:0>,
		<jarm:spruce_raft:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
