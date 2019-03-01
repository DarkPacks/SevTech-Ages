import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<astikorcarts:cargocart:0>,
		<astikorcarts:mobcart:0>,
		<astikorcarts:plowcart:0>,
		<astikorcarts:wheel:0>
	]
};

static hiddenRemove as IIngredient[] = [
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
