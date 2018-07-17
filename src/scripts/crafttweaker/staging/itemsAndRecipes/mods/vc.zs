import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageCreativeUnused.stage: [
		<vc:airships/item_creative_airship_v1>,
		<vc:airships/item_creative_airship_v2>,
		<vc:airships/item_creative_airship_v3>,
		<vc:airships/item_creative_airship_v4>,
		<vc:modules/item_module_creative>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.vc.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
