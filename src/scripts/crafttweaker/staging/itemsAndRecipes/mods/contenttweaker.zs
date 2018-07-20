import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<contenttweaker:bronze_chest>,
		<contenttweaker:bronze_feet>,
		<contenttweaker:bronze_head>,
		<contenttweaker:bronze_legs>,
		<contenttweaker:copper_chest>,
		<contenttweaker:copper_feet>,
		<contenttweaker:copper_head>,
		<contenttweaker:copper_legs>,
		<materialpart:aquamarine:ore_minecraft_stone>
	],

	stageTwo.stage: [
		<materialpart:stone:nugget>
	],

	stageFour.stage: [
		<materialpart:osmium:ore_minecraft_stone>
	],

	stageFive.stage: [
		<contenttweaker:sub_block_holder_0:6>, // Osmium Ore Sample // TODO: materialpart:osmium:ore_sample (?)
		<materialpart:gold:ore_galacticraftplanets_bottom>,
		<materialpart:inferium:ore_extraplanets_kepler22b_stone>,
		<materialpart:iron:ore_galacticraftcore_bottom>,
		<materialpart:osmium:ore_minecraft_stone>,
		<materialpart:osmium:ore_sample>,
		<materialpart:prosperity:ore_extraplanets_kepler22b_stone>,
		<materialpart:titanium:cluster> // Titanium Cluster
	],

	stageDisabled.stage: [
		<contenttweaker:creeper_tear> //TODO: Make texture and find use once SevTweaks is updated to make sad creeper item shedding possible.
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.contenttweaker.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}