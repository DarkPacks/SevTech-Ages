import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<guideapi:bloodmagic-guide>,
		<guideapi:cyclicmagic-guide>
	],

	stageFour.stage: [
		<guideapi:modularrouters-guidebook>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.guideapi.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
