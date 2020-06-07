import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<animalium:bear_claw_paxel:*>,
		<animalium:bear_claw:0>,
		<animalium:bear_meat_cooked:0>,
		<animalium:bear_meat:0>,
		<animalium:dog_boots:*>,
		<animalium:rat_meat_cooked:0>,
		<animalium:rat_meat:0>,
		<animalium:wild_dog_pelt:0>
	]
};

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
}
