import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<immcraft:chest>,
		<immcraft:rock>
	],

	stageZero.stage: [
		<immcraft:bookshelf>,
		<immcraft:cupboard>,
		<immcraft:shelf>
	]
};

static hiddenItems as IIngredient[] = [
	<immcraft:bookstand>,
	<immcraft:chisel>,
	<immcraft:dummybook>,
	<immcraft:furnace>,
	<immcraft:in_world_placer>,
	<immcraft:in_world_vertical_placer>,
	<immcraft:manual>,
	<immcraft:saw>,
	<immcraft:sticks>,
	<immcraft:workbench>,
	<immcraft:workbench_sec>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.immcraft.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.immcraft.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
