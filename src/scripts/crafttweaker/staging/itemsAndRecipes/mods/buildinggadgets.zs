import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<buildinggadgets:buildingtool:*>
	],
	stageFive.stage: [
		<buildinggadgets:exchangertool:*>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.buildinggadgets.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
