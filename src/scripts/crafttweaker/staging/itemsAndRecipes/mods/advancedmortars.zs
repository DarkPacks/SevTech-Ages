import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<advancedmortars:mortar:1>,
		<advancedmortars:mortar:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<advancedmortars:mortar:2>,
	<advancedmortars:mortar:3>,
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
