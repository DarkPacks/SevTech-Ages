import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<industrialforegoing:conveyor_upgrade:*>,
		<industrialforegoing:conveyor:*>,
		<industrialforegoing:plastic:0>
	],

	stageFour.stage: [
		<industrialforegoing:adult_filter:0>,
		<industrialforegoing:animal_byproduct_recolector:0>,
		<industrialforegoing:animal_growth_increaser:0>,
		<industrialforegoing:animal_independence_selector:0>,
		<industrialforegoing:animal_resource_harvester:0>,
		<industrialforegoing:animal_stock_increaser:0>,
		<industrialforegoing:biofuel_generator:0>,
		<industrialforegoing:bioreactor:0>,
		<industrialforegoing:block_destroyer:0>,
		<industrialforegoing:block_placer:0>,
		<industrialforegoing:book_manual:0>,
		<industrialforegoing:crop_enrich_material_injector:0>,
		<industrialforegoing:crop_recolector:0>,
		<industrialforegoing:crop_sower:0>,
		<industrialforegoing:dryrubber:0>,
		<industrialforegoing:enchantment_aplicator:0>,
		<industrialforegoing:enchantment_extractor:0>,
		<industrialforegoing:enchantment_invoker:0>,
		<industrialforegoing:enchantment_refiner:0>,
		<industrialforegoing:energy_field_addon:0>,
		<industrialforegoing:energy_field_provider:0>,
		<industrialforegoing:fertilizer:0>,
		<industrialforegoing:fluid_crafter:0>,
		<industrialforegoing:fluid_pump:0>,
		<industrialforegoing:fluid_transfer_addon_pull:0>,
		<industrialforegoing:fluid_transfer_addon_push:0>,
		<industrialforegoing:fluiddictionary_converter:0>,
		<industrialforegoing:froster:0>,
		<industrialforegoing:hydrator:0>,
		<industrialforegoing:item_splitter:0>,
		<industrialforegoing:itemstack_transfer_addon_pull:0>,
		<industrialforegoing:itemstack_transfer_addon_push:0>,
		<industrialforegoing:lava_fabricator:0>,
		<industrialforegoing:leaf_shearing:0>,
		<industrialforegoing:material_stonework_factory:0>,
		<industrialforegoing:meat_feeder:0>,
		<industrialforegoing:mob_detector:0>,
		<industrialforegoing:mob_duplicator:0>,
		<industrialforegoing:mob_imprisonment_tool:0>,
		<industrialforegoing:mob_relocator:0>,
		<industrialforegoing:mob_slaughter_factory:0>,
		<industrialforegoing:ore_processor:0>,
		<industrialforegoing:petrified_fuel_generator:0>,
		<industrialforegoing:pink_slime:0>,
		<industrialforegoing:pink_slime_ingot:0>,
		<industrialforegoing:plant_interactor:0>,
		<industrialforegoing:potion_enervator:0>,
		<industrialforegoing:protein_generator:0>,
		<industrialforegoing:protein_reactor:0>,
		<industrialforegoing:range_addon:1>,
		<industrialforegoing:range_addon:2>,
		<industrialforegoing:range_addon:3>,
		<industrialforegoing:range_addon:4>,
		<industrialforegoing:range_addon:5>,
		<industrialforegoing:range_addon:6>,
		<industrialforegoing:range_addon:7>,
		<industrialforegoing:range_addon:8>,
		<industrialforegoing:range_addon:9>,
		<industrialforegoing:range_addon:10>,
		<industrialforegoing:range_addon:11>,
		<industrialforegoing:range_addon:0>,
		<industrialforegoing:resourceful_furnace:0>,
		<industrialforegoing:sewage_composter_solidifier:0>,
		<industrialforegoing:sludge_refiner:0>,
		<industrialforegoing:spores_recreator:0>,
		<industrialforegoing:straw:0>,
		<industrialforegoing:tinydryrubber:0>,
		<industrialforegoing:villager_trade_exchanger:0>,
		<industrialforegoing:water_condensator:0>,
		<industrialforegoing:wither_builder:0>
	],

	stageFive.stage: [
		<industrialforegoing:black_hole_controller:0>,
		<industrialforegoing:black_hole_controller_reworked:0>,
		<industrialforegoing:black_hole_label:0>,
		<industrialforegoing:black_hole_tank:0>,
		<industrialforegoing:black_hole_unit:0>,
		<industrialforegoing:fortune_addon:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<industrialforegoing:infinity_drill:*>,
	<industrialforegoing:laser_base:0>,
	<industrialforegoing:laser_drill:0>,
	<industrialforegoing:laser_lens:*>,
	<industrialforegoing:laser_lens_inverted:*>
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
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
