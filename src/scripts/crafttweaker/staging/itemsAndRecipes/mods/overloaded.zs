import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<overloaded:compressed_cobblestone:*>,
		<overloaded:compressed_obsidian:*>,
		<overloaded:energy_extractor:0>,
		<overloaded:hyper_energy_receiver:0>,
		<overloaded:hyper_energy_sender:0>,
		<overloaded:hyper_fluid_receiver:0>,
		<overloaded:hyper_fluid_sender:0>,
		<overloaded:hyper_item_receiver:0>,
		<overloaded:hyper_item_sender:0>,
		<overloaded:infinite_barrel:0>,
		<overloaded:infinite_capacitor:0>,
		<overloaded:infinite_tank:0>,
		<overloaded:infinite_water_source:0>,
		<overloaded:item_interface:0>,
		<overloaded:linking_card:0>,
		<overloaded:multi_tool:0>,
		<overloaded:player_interface:0>
	]
};

static hiddenItems as IIngredient[] = [
	<overloaded:creative_generator:0>,
	<overloaded:railgun:0>,
	<overloaded:settings_editor:0>
];

static hiddenRemove as IIngredient[] = [
	<overloaded:energy_core>,
	<overloaded:fluid_core>,
	<overloaded:item_core>,
	<overloaded:multi_boots>,
	<overloaded:multi_chestplate>,
	<overloaded:multi_helmet>,
	<overloaded:multi_leggings>,
	<overloaded:nether_star_block>,
	<overloaded:ray_gun>
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
