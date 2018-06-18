import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<industrialforegoing:conveyor_upgrade:*>,
		<industrialforegoing:conveyor:*>,
		<industrialforegoing:plastic>
	],

	stageFour.stage: [
		<industrialforegoing:adult_filter>,
		<industrialforegoing:animal_byproduct_recolector>,
		<industrialforegoing:animal_growth_increaser>,
		<industrialforegoing:animal_independence_selector>,
		<industrialforegoing:animal_resource_harvester>,
		<industrialforegoing:animal_stock_increaser>,
		<industrialforegoing:biofuel_generator>,
		<industrialforegoing:bioreactor>,
		<industrialforegoing:block_destroyer>,
		<industrialforegoing:block_placer>,
		<industrialforegoing:book_manual>,
		<industrialforegoing:crop_enrich_material_injector>,
		<industrialforegoing:crop_recolector>,
		<industrialforegoing:crop_sower>,
		<industrialforegoing:dryrubber>,
		<industrialforegoing:enchantment_aplicator>,
		<industrialforegoing:enchantment_extractor>,
		<industrialforegoing:enchantment_invoker>,
		<industrialforegoing:enchantment_refiner>,
		<industrialforegoing:energy_field_addon>,
		<industrialforegoing:energy_field_provider>,
		<industrialforegoing:fertilizer>,
		<industrialforegoing:fluid_crafter>,
		<industrialforegoing:fluid_pump>,
		<industrialforegoing:fluid_transfer_addon_pull>,
		<industrialforegoing:fluid_transfer_addon_push>,
		<industrialforegoing:fluiddictionary_converter>,
		<industrialforegoing:hydrator>,
		<industrialforegoing:item_splitter>,
		<industrialforegoing:itemstack_transfer_addon_pull>,
		<industrialforegoing:itemstack_transfer_addon_push>,
		<industrialforegoing:lava_fabricator>,
		<industrialforegoing:leaf_shearing>,
		<industrialforegoing:material_stonework_factory>,
		<industrialforegoing:meat_feeder>,
		<industrialforegoing:mob_detector>,
		<industrialforegoing:mob_duplicator>,
		<industrialforegoing:mob_imprisonment_tool>,
		<industrialforegoing:mob_relocator>,
		<industrialforegoing:mob_slaughter_factory>,
		<industrialforegoing:ore_processor>,
		<industrialforegoing:oredictionary_converter>,
		<industrialforegoing:petrified_fuel_generator>,
		<industrialforegoing:pink_slime>,
		<industrialforegoing:plant_interactor>,
		<industrialforegoing:potion_enervator>,
		<industrialforegoing:protein_generator>,
		<industrialforegoing:protein_reactor>,
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
		<industrialforegoing:range_addon>,
		<industrialforegoing:resourceful_furnace>,
		<industrialforegoing:sewage_composter_solidifier>,
		<industrialforegoing:sludge_refiner>,
		<industrialforegoing:spores_recreator>,
		<industrialforegoing:straw>,
		<industrialforegoing:tinydryrubber>,
		<industrialforegoing:villager_trade_exchanger>,
		<industrialforegoing:water_condensator>,
		<industrialforegoing:wither_builder>
	],

	stageFive.stage: [
		<industrialforegoing:black_hole_controller>,
		<industrialforegoing:black_hole_tank>,
		<industrialforegoing:black_hole_unit>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.industrialforegoing.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
