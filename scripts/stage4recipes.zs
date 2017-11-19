//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;
val bp = <ore:plateBronze>;
val cgear = <ore:gearCopper>;
val tgear = <ore:gearTin>;
val bgear = <ore:gearBronze>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;
val emerald = <minecraft:emerald>;
val redstone = <minecraft:redstone>;
val coal = <minecraft:coal>;
val charcoal = <minecraft:coal:1>;
val shears = <ore:shears>;
val clayball = <minecraft:clay_ball>;
val log = <ore:logWood>;
val flint = <minecraft:flint>;
val plank = <ore:plankWood>;
val stick = <minecraft:stick>;
val stone = <minecraft:stone>;
val bone = <minecraft:bone>;
val leather = <minecraft:leather>;
val cobblestone = <minecraft:cobblestone>;
val cordage = <ore:cordageGeneral>;
val cane = <minecraft:reeds>;
val wool = <ore:wool>;
val str = <minecraft:string>;

//Entire Mods into Stage four
var modIDs = [
"car",
"cookingforblockheads",
"elevatorid",
"environmentaltech",
"factorytech",
"jp.crafterkina.pipes",
"modularmachinery",
"modularrouters",
"quantumstorage",
"nuclearphysics",
"refinedstorage",
"rftools",
"rftoolscontrol",
"storagenetwork"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage("four", item);
    }
}



//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);

//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);


//Prospector
recipes.remove(<prospectors:prospector_high>);
mods.recipestages.Recipes.addShaped("four", <prospectors:prospector_high>, [[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:redstone>], [<minecraft:blaze_rod>, null, null]]);

//Builder Wand
recipes.remove(<betterbuilderswands:wanddiamond>);
mods.recipestages.Recipes.addShaped("four", <betterbuilderswands:wanddiamond>, [[null, null, <minecraft:diamond>], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]);


//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_tank>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_barrel>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:crater>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantum_storage_unit>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:quantumcrafter>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:trashcan>);
//mods.recipestages.Recipes.setRecipeStage("four", <quantumstorage:trashcanfluid>);



mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:password_block>);


mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:password_remote>);

//Actually Additions
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:magnet_ring_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:potion_ring_advanced_bauble:*>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_growth_ring>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill:*>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_bio_reactor>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_item_viewer_hopping>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_farmer>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_battery_box>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:battery_quintuple_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:battery_quadruple_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:battery_triple_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:battery_double_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:battery_bauble>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_quartz_stair>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_pillar_quartz_wall>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_chiseled_quartz_wall>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_quartz_wall>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_coffee_machine>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_pillar_quartz_slab>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_furnace_solar>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_greenhouse_glass>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_heat_collector>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_coal_generator>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_canola_press>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_oil_generator>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_fermenting_barrel>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_misc:4>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_misc:6>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_misc:7>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_misc:8>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_misc:9>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_feeder>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_giant_chest>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_giant_chest_medium>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_giant_chest_large>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_grinder>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_grinder_double>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_furnace_double>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_smiley_cloud>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_directional_breaker>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_misc:7>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_leaf_blower>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_filter>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_void_bag>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_bag>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_chiseled_quartz_slab>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_quartz_slab>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_pillar_quartz_stair>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:block_chiseled_quartz_stair>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_resonant_rice>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_coffee>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_five_by_five>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_block_placing>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_three_by_three>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_fortune_ii>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_fortune>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_silk_touch>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_speed_iii>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_speed_ii>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_drill_upgrade_speed>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_booklet>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_medium_to_large_crate_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_small_to_medium_crate_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_chest_to_crate_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_crate_keeper>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_misc:16>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_misc:14>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_misc:8>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_battery>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_battery_double>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_battery_triple>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_battery_quadruple>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_battery_quintuple>);
mods.recipestages.Recipes.setRecipeStage("four", <actuallyadditions:item_potion_ring:*>);

//Mob Grinding Utils
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:fan_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:fan_upgrade:1>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:fan_upgrade:2>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade:1>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade:2>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade:3>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade:4>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw_upgrade:5>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:absorption_upgrade>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:spikes>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:fan>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:absorption_hopper>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:tank>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:tank_sink>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:xp_tap>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:wither_muffler>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:dragon_muffler>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:saw>);
mods.recipestages.Recipes.setRecipeStage("four", <mob_grinding_utils:dark_oak_stone>);

//Industrial Foregoing
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:petrified_fuel_generator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:enchantment_refiner>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:enchantment_extractor>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:enchantment_aplicator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:mob_relocator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:potion_enervator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:animal_independence_selector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:animal_stock_increaser>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:crop_sower>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:crop_enrich_material_injector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:crop_recolector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:black_hole_unit>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:water_condensator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:water_resources_collector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:animal_resource_harvester>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:mob_slaughter_factory>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:mob_duplicator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:block_destroyer>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:block_placer>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:tree_fluid_extractor>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:latex_processing_unit>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:sewage_composter_solidifier>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:animal_byproduct_recolector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:sludge_refiner>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:mob_detector>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:lava_fabricator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:bioreactor>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:biofuel_generator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:ore_processor>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:black_hole_controller>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:dye_mixer>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:enchantment_invoker>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:spores_recreator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:animal_growth_increaser>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:material_stonework_factory>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:black_hole_tank>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:resourceful_furnace>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:villager_trade_exchanger>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:energy_field_provider>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:oredictionary_converter>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:protein_reactor>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:protein_generator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:hydrator>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:item_splitter>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:tinydryrubber>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:dryrubber>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:plastic>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:fertilizer>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:meat_feeder>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:mob_imprisonment_tool>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:adult_filter>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:1>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:2>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:3>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:4>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:5>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:6>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:7>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:8>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:9>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:10>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:range_addon:11>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:straw>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:pink_slime>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:book_manual>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:energy_field_addon>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:wither_builder>);
mods.recipestages.Recipes.setRecipeStage("four", <industrialforegoing:leaf_shearing>);

//Tesla
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:base_addon>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:energy_tier1>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:energy_tier2>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:machine_case>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:speed_tier1>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:speed_tier2>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:wrench>);
mods.recipestages.Recipes.setRecipeStage("four", <teslacorelib:gear_gold>);


////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_shears>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:exp_pylon>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_user>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:tool_mount_inverse>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_disenchanter>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:charm_void>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:block_vacuum>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:ender_pearl_reuse>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:ender_pearl_mounted>);
mods.recipestages.Recipes.setRecipeStage("four", <cyclicmagic:plate_vector>);

//Embers
mods.recipestages.Recipes.setRecipeStage("four", <embers:pipe>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:pump>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:item_pump>);
mods.recipestages.Recipes.setRecipeStage("four", <embers:item_pipe>);