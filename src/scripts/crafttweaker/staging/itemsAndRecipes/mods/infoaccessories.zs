import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<infoaccessories:info_accessory:1>,
		<infoaccessories:info_accessory:2>,
		<infoaccessories:info_accessory:4>,
		<infoaccessories:info_accessory:5>,
		<infoaccessories:info_accessory:6>,
		<infoaccessories:info_accessory>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.infoaccessories.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
