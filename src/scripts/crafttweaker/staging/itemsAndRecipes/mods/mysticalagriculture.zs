import crafttweaker.item.IIngredient;

import mods.zenstages.Stage;
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.utils.stageRecipeNameOrRegex;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<mysticalagriculture:cobbled_soulstone_slab:0>,
		<mysticalagriculture:cobbled_soulstone_stairs:0>,
		<mysticalagriculture:cobbled_soulstone_wall:0>,
		<mysticalagriculture:soulstone_brick_slab:0>,
		<mysticalagriculture:soulstone_brick_stairs:0>,
		<mysticalagriculture:soulstone_brick_wall:0>,
		<mysticalagriculture:soulstone_slab:0>,
		<mysticalagriculture:soulstone:1>,
		<mysticalagriculture:soulstone:2>,
		<mysticalagriculture:soulstone:3>,
		<mysticalagriculture:soulstone:4>,
		<mysticalagriculture:soulstone:5>,
		<mysticalagriculture:soulstone:6>,
		<mysticalagriculture:soulstone:0>
	]
};

static stagedRecipeNames as string[][string] = {
	stageFive.stage: [
		"REGEX:mysticalagriculture:.*"
	]
};

static hiddenRemove as IIngredient[] = [
	<mysticalagradditions:insanium:3>,
	<mysticalagriculture:crafting:45>  //Soulium Nugget
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}

	for stageName, recipeNames in stagedRecipeNames {
		stageRecipeNameOrRegex(ZenStager.getStage(stageName), recipeNames);
	}

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
