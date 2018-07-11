import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

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

static hiddenItems as IIngredient[] = [
	<overloaded:energy_core>,
	<overloaded:fluid_core>,
	<overloaded:item_core>,
	<overloaded:multi_boots>,
	<overloaded:multi_chestplate>,
	<overloaded:multi_helmet>,
	<overloaded:multi_leggings>,
	<overloaded:nether_star_block>,
	<overloaded:ray_gun>,
	<overloaded:creative_generator>,
	<overloaded:railgun>,
	<overloaded:settings_editor>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.overloaded.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.overloaded.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
