import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<jaff:fish_bucket_clownfish:0>,
		<jaff:fish_bucket_cod:0>,
		<jaff:fish_bucket_pufferfish:0>,
		<jaff:fish_bucket_salmon:0>,
		<jaff:tank:0>
	]
};

static hiddenItems as IIngredient[] = [
	<jaff:fish_bones:0>
];

static hiddenRemove as IIngredient[] = [
	<jaff:diamond_fishing_rod:0>,
	<jaff:golden_fishing_rod:0>,
	<jaff:iron_fishing_rod:0>,
	<jaff:iron_hook:0>,
	<jaff:wooden_fishing_rod:0>
];

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
