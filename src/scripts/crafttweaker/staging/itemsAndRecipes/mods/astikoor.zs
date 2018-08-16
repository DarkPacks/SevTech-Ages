import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<astikoor:cargocart:0>,
		<astikoor:plowcart:0>,
		<astikoor:wheel:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<astikoor:carriage:0>,
	<astikoor:chariot:0>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
