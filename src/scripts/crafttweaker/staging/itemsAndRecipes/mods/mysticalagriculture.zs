import crafttweaker.item.IIngredient;

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
	stageThree.stage: [
		"mysticalagriculture:cobbled_soulstone_slab",
		"mysticalagriculture:cobbled_soulstone_stairs",
		"mysticalagriculture:cobbled_soulstone_wall",
		"mysticalagriculture:soulstone",
		"mysticalagriculture:soulstone_1",
		"mysticalagriculture:soulstone_2",
		"mysticalagriculture:soulstone_3",
		"mysticalagriculture:soulstone_4",
		"mysticalagriculture:soulstone_brick_slab",
		"mysticalagriculture:soulstone_brick_stairs",
		"mysticalagriculture:soulstone_brick_wall",
		"mysticalagriculture:soulstone_slab"
	],
	stageFive.stage: [
		"REGEX:mysticalagriculture:(?!.*soulstone.*).*?$" // All in stage 5 unless it contains "soulstone"
	]
};

static hiddenRemove as IIngredient[] = [
	<mysticalagradditions:insanium:3>,
	<mysticalagriculture:crafting:45>  //Soulium Nugget
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

	for stageName, recipeNames in stagedRecipeNames {
		stageRecipeNameOrRegex(ZenStager.getStage(stageName), recipeNames);
	}

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}

function initOverride() {
	for stageName, items in stagedItems {
		if (stageName != stageFive.stage) {
			for item in items {
				mods.ItemStages.removeItemStage(item);
				mods.ItemStages.addItemStage(stageName, item);
			}
		}
	}

	for stageName, recipeNames in stagedRecipeNames {
		if (stageName != stageFive.stage) {
			for recipeName in recipeNames {
				if (recipeName.startsWith("REGEX:")) {
					mods.recipestages.Recipes.setRecipeStageByRegex(stageName, recipeName.substring(6, recipeName.length));
				} else {
					mods.recipestages.Recipes.setRecipeStage(stageName, recipeName);
				}
			}
		}
	}
}
