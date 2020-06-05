import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageBaykok;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageBaykok.stage: [
		<simplyarrows:arrow_bone:0>,
		<simplyarrows:arrow_flint:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<simplyarrows:arrow_cake:0>,
	<simplyarrows:arrow_flame:0>,
	<simplyarrows:arrow_iron:0>,
	<simplyarrows:arrow_love:0>,
	<simplyarrows:arrow_tnt:0>,
	<simplyarrows:arrow_torch:0>
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
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
