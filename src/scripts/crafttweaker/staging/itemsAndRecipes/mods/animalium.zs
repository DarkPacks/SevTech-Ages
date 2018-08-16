import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<animalium:bear_claw_paxel:0>,
		<animalium:bear_claw:0>,
		<animalium:bear_meat_cooked:0>,
		<animalium:bear_meat:0>,
		<animalium:dog_boots:0>,
		<animalium:rat_meat_cooked:0>,
		<animalium:rat_meat:0>,
		<animalium:wild_dog_pelt:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
