import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<overloaded:compressed_cobblestone:*>,
		<overloaded:compressed_obsidian:*>,
		<overloaded:energy_extractor>,
		<overloaded:hyper_energy_receiver>,
		<overloaded:hyper_energy_sender>,
		<overloaded:hyper_fluid_receiver>,
		<overloaded:hyper_fluid_sender>,
		<overloaded:hyper_item_receiver>,
		<overloaded:hyper_item_sender>,
		<overloaded:infinite_barrel>,
		<overloaded:infinite_capacitor>,
		<overloaded:infinite_tank>,
		<overloaded:infinite_water_source>,
		<overloaded:item_interface>,
		<overloaded:linking_card>,
		<overloaded:multi_tool>,
		<overloaded:player_interface>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.overloaded.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
