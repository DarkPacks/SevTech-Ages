import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<thebetweenlands:aspectrus_fruit>,
		<thebetweenlands:bl_bucket_infusion>,
		<thebetweenlands:bog_bean_stalk>,
		<thebetweenlands:golden_club_stalk>,
		<thebetweenlands:marsh_marigold_stalk>,
		<thebetweenlands:present>,
		<thebetweenlands:syrmorite_bucket_solid_rubber>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.thebetweenlands.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
