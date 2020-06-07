import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<immcraft:chest:0>,
		<immcraft:rock:0>
	],

	stageZero.stage: [
		<immcraft:bookshelf:0>,
		<immcraft:cupboard:0>,
		<immcraft:shelf:0>
	]
};

static hiddenItems as IIngredient[] = [
	<immcraft:dummybook:0>,
	<immcraft:in_world_placer:0>,
	<immcraft:in_world_vertical_placer:0>,
	<immcraft:sticks:0>,
	<immcraft:workbench_sec:0>,
	<immcraft:workbench:0>
];

static hiddenRemove as IIngredient[] = [
	<immcraft:bookstand:0>,
	<immcraft:chisel:0>,
	<immcraft:furnace:0>,
	<immcraft:manual:0>,
	<immcraft:saw:*>
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
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
