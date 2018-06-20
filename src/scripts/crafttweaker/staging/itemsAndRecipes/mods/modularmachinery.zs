import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<modularmachinery:blockcasing:1>,
		<modularmachinery:blockcasing:3>,
		<modularmachinery:blockcasing:5>,
		<modularmachinery:blockcasing>,
		<modularmachinery:blockcontroller>,
		<modularmachinery:blockenergyinputhatch>,
		<modularmachinery:blockfluidinputhatch>,
		<modularmachinery:blockfluidoutputhatch>,
		<modularmachinery:blockinputbus:1>,
		<modularmachinery:blockoutputbus:1>
	],

	stageFour.stage: [
		<modularmachinery:blockcasing:2>,
		<modularmachinery:blockcasing:4>,
		<modularmachinery:blockenergyinputhatch:1>,
		<modularmachinery:blockenergyinputhatch:2>,
		<modularmachinery:blockenergyinputhatch:3>,
		<modularmachinery:blockenergyinputhatch:4>,
		<modularmachinery:blockenergyinputhatch:5>,
		<modularmachinery:blockenergyinputhatch:6>,
		<modularmachinery:blockenergyinputhatch:7>,
		<modularmachinery:blockenergyoutputhatch:1>,
		<modularmachinery:blockenergyoutputhatch:2>,
		<modularmachinery:blockenergyoutputhatch:3>,
		<modularmachinery:blockenergyoutputhatch:4>,
		<modularmachinery:blockenergyoutputhatch:5>,
		<modularmachinery:blockenergyoutputhatch:6>,
		<modularmachinery:blockenergyoutputhatch:7>,
		<modularmachinery:blockenergyoutputhatch>,
		<modularmachinery:blockfluidinputhatch:1>,
		<modularmachinery:blockfluidinputhatch:2>,
		<modularmachinery:blockfluidinputhatch:3>,
		<modularmachinery:blockfluidinputhatch:4>,
		<modularmachinery:blockfluidinputhatch:5>,
		<modularmachinery:blockfluidinputhatch:6>,
		<modularmachinery:blockfluidinputhatch:7>,
		<modularmachinery:blockfluidoutputhatch:1>,
		<modularmachinery:blockfluidoutputhatch:2>,
		<modularmachinery:blockfluidoutputhatch:3>,
		<modularmachinery:blockfluidoutputhatch:4>,
		<modularmachinery:blockfluidoutputhatch:5>,
		<modularmachinery:blockfluidoutputhatch:6>,
		<modularmachinery:blockfluidoutputhatch:7>,
		<modularmachinery:blockinputbus:2>,
		<modularmachinery:blockinputbus:3>,
		<modularmachinery:blockinputbus:4>,
		<modularmachinery:blockinputbus:5>,
		<modularmachinery:blockinputbus:6>,
		<modularmachinery:blockoutputbus:2>,
		<modularmachinery:blockoutputbus:3>,
		<modularmachinery:blockoutputbus:4>,
		<modularmachinery:blockoutputbus:5>,
		<modularmachinery:blockoutputbus:6>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.modularmachinery.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
