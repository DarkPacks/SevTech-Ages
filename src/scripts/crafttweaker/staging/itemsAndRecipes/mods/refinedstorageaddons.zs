import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<refinedstorageaddons:infinite_wireless_transmitter>,
		<refinedstorageaddons:network_bag:1>,
		<refinedstorageaddons:network_bag>,
		<refinedstorageaddons:network_picker:1>,
		<refinedstorageaddons:network_picker>,
		<refinedstorageaddons:wireless_crafting_grid:1>,
		<refinedstorageaddons:wireless_crafting_grid>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorageaddons.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
