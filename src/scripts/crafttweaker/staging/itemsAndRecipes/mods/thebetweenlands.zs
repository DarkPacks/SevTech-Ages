import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<thebetweenlands:volarpad:0>,
		<thebetweenlands:volarkite:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<thebetweenlands:glue:0>,
	<thebetweenlands:location_debug:0>,
	<thebetweenlands:test_item:0>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
