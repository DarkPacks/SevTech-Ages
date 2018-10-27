import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<refinedstorageaddons:wireless_crafting_grid:1>,
		<refinedstorageaddons:wireless_crafting_grid:0>
	],

	stageCreativeUnused.stage: [
		<refinedstorageaddons:wireless_crafting_grid:1>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
