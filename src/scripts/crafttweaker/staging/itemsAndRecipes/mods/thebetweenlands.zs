import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<thebetweenlands:aspectrus_fruit:0>,
		<thebetweenlands:bl_bucket_infusion:0>,
		<thebetweenlands:present:0>,
		<thebetweenlands:syrmorite_bucket_solid_rubber:0>
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
