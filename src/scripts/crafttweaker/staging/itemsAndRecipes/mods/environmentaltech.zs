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
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
