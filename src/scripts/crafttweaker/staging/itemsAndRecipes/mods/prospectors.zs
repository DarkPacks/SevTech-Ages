import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<prospectors:prospector_lowest:0>
	],

	stageTwo.stage: [
		<prospectors:prospector_low:0>
	],

	stageThree.stage: [
		<prospectors:prospector_med:0>
	],

	stageFour.stage: [
		<prospectors:prospector_high:0>
	],

	stageFive.stage: [
		<prospectors:prospector_best:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
