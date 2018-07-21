import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<thebetweenlands:aspectrus_fruit:0>,
		<thebetweenlands:bl_bucket_infusion:0>,
		<thebetweenlands:bog_bean_stalk:0>,
		<thebetweenlands:golden_club_stalk:0>,
		<thebetweenlands:marsh_marigold_stalk:0>,
		<thebetweenlands:present:0>,
		<thebetweenlands:syrmorite_bucket_solid_rubber:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.thebetweenlands.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
