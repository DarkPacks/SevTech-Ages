import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<prospectors:prospector_lowest>
	],

	stageTwo.stage: [
		<prospectors:prospector_low>
	],

	stageThree.stage: [
		<prospectors:prospector_med>
	],

	stageFour.stage: [
		<prospectors:prospector_high>
	],

	stageFive.stage: [
		<prospectors:prospector_best>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.prospectors.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
