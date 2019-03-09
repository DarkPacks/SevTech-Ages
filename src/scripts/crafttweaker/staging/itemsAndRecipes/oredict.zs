import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<ore:blockCharcoal>,
		<ore:blockSalt>,
		<ore:foodSalt>
	],

	stageOne.stage: [
		<ore:dustSulfur>
	],

	stageFour.stage: [
		<ore:blockSilicon>,
		<ore:itemSilicon>,
		<ore:oreSampleSilicon>
	],

	stageFive.stage: [
		<ore:dustDiamond>,
		<ore:gearDiamond>,
		<ore:oreOsmium>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
