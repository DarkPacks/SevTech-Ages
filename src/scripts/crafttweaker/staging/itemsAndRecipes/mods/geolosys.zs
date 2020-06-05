import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<geolosys:cluster:2>,
		<geolosys:cluster:3>,
		<geolosys:field_manual:0>,
		<geolosys:ore_sample_vanilla:0>,
		<geolosys:ore_sample:2>,
		<geolosys:ore_sample:3>,
		<geolosys:ore_sample:4>,
		<geolosys:ore_sample:5>,
		<geolosys:ore_vanilla:0>,
		<geolosys:ore:2>,
		<geolosys:ore:3>,
		<geolosys:ore:4>,
		<geolosys:ore:5>
	],

	stageTwo.stage: [
		<geolosys:cluster:1>,
		<geolosys:cluster:0>,
		<geolosys:ore_sample_vanilla:2>,
		<geolosys:ore_sample_vanilla:3>,
		<geolosys:ore_sample:0>,
		<geolosys:ore_vanilla:2>,
		<geolosys:ore_vanilla:3>,
		<geolosys:ore:0>
	],

	stageThree.stage: [
		<geolosys:cluster:4>,
		<geolosys:cluster:5>,
		<geolosys:cluster:6>,
		<geolosys:cluster:7>,
		<geolosys:cluster:8>,
		<geolosys:ore_sample_vanilla:1>,
		<geolosys:ore_sample:1>,
		<geolosys:ore_sample:6>,
		<geolosys:ore_sample:7>,
		<geolosys:ore_sample:8>,
		<geolosys:ore_vanilla:1>,
		<geolosys:ore:1>,
		<geolosys:ore:6>,
		<geolosys:ore:7>,
		<geolosys:ore:8>
	],

	stageFour.stage: [
		<geolosys:ore_sample_vanilla:4>,
		<geolosys:ore_vanilla:4>
	],

	stageFive.stage: [
		<geolosys:cluster:9>,
		<geolosys:ore_sample_vanilla:5>,
		<geolosys:ore_sample_vanilla:6>,
		<geolosys:ore_sample:9>,
		<geolosys:ore_vanilla:5>,
		<geolosys:ore_vanilla:6>,
		<geolosys:ore:9>
	],

	stageDisabled.stage: [
		<geolosys:cluster:10>,
		<geolosys:ore:10>,
		<geolosys:ore_sample:10>
	]
};

static hiddenItems as IIngredient[] = [
	<geolosys:cluster:11>
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
}
