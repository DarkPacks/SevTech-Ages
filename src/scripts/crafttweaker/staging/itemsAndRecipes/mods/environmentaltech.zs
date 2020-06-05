import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<environmentaltech:aethium:*>,
		<environmentaltech:erodium:*>,
		<environmentaltech:ionite:*>,
		<environmentaltech:kyronite:*>,
		<environmentaltech:laser_lens_colored:*>,
		<environmentaltech:litherite:*>,
		<environmentaltech:lonsdaleite:*>,
		<environmentaltech:pladium:*>,
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
