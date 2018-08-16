import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<horsepower:chopping_block:*>
	],

	stageZero.stage: [
		<horsepower:chopper:*>,
		<horsepower:dough:0>,
		<horsepower:flour:0>,
		<horsepower:grindstone:0>,
		<horsepower:hand_grindstone:0>,
		<horsepower:press:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items, false);
	}
}
