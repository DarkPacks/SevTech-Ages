import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<geolosys:cluster:2>,
		<geolosys:cluster:3>,
		<geolosys:field_manual>,
		<geolosys:ore_sample_vanilla>,
		<geolosys:ore_sample:2>,
		<geolosys:ore_sample:3>,
		<geolosys:ore_sample:4>,
		<geolosys:ore_sample:5>,
		<geolosys:ore_vanilla>,
		<geolosys:ore:2>,
		<geolosys:ore:3>,
		<geolosys:ore:4>,
		<geolosys:ore:5>
	],

	stageTwo.stage: [
		<geolosys:cluster:1>,
		<geolosys:cluster>,
		<geolosys:ore_sample_vanilla:2>,
		<geolosys:ore_sample_vanilla:3>,
		<geolosys:ore_sample>,
		<geolosys:ore_vanilla:2>,
		<geolosys:ore_vanilla:3>,
		<geolosys:ore>
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
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.geolosys.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
