import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<contenttweaker:bronze_chest:*>,
		<contenttweaker:bronze_feet:0>,
		<contenttweaker:bronze_head:0>,
		<contenttweaker:bronze_legs:*>,
		<contenttweaker:copper_chest:*>,
		<contenttweaker:copper_feet:0>,
		<contenttweaker:copper_head:0>,
		<contenttweaker:copper_legs:*>,
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
		<contenttweaker:the_oj>,
		<materialpart:gold:ore_galacticraftplanets_bottom>,
		<materialpart:inferium:ore_extraplanets_kepler22b_stone>,
		<materialpart:iron:ore_galacticraftcore_bottom>,
		<materialpart:osmium:ore_minecraft_stone>,
		<materialpart:osmium:ore_sample>,
		<materialpart:prosperity:ore_extraplanets_kepler22b_stone>,
		<materialpart:titanium:cluster> // Titanium Cluster
	],

	stageDisabled.stage: [
		<contenttweaker:creeper_tear:0> //TODO: Make texture and find use once SevTweaks is updated to make sad creeper item shedding possible.
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
