import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<tallgates:tall_gate:1>,
		<tallgates:tall_gate:2>,
		<tallgates:tall_gate:3>,
		<tallgates:tall_gate:4>,
		<tallgates:tall_gate:5>,
		<tallgates:tall_gate:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
