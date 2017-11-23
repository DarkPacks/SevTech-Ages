import crafttweaker.item.IItemStack;

//recipes.removeAll();

////////
//////
////
// These arrays work because of the Amazing IcedReaper!! Thank you for your help!
////
//////
////////

//Hide and Remove Items/Recipes
var modIDs = [
	"autoverse",
	"rebornstorage",
	"refinedrelocation"
] as string[];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.jei.JEI.removeAndHide(item);
    }
}

//Remove Recipes Only
var modIDs2 = [
	"antiqueatlas",
	"astikoor",
	"dungpipe",
	"horsepower",
	"improvedbackpacks",
	"ironchest",
	"natura",
	"overloaded",
	"primal",
	"primal_tech",
	"progressiontweaks",
	"spartanshields",
	"totemic",
	"prospectors",
	"wopper"
] as string[];

for id in modIDs2 {
    for item in loadedMods[id].items {
        recipes.remove(item);
    }
}

//Place item in the needed array:
//removeItems, hideItems, or removeAndHideItems
//does not support ore dict

var removeItems = [
	<betterwithmods:aesthetic:8>,
	<carryon:tile_item>,
	<ceramics:unfired_clay>,
	<charcoalblock:charcoal_block>,
	<embers:plate_aluminum>,
	<embers:plate_bronze>,
	<embers:plate_copper>,
	<embers:plate_dawnstone>,
	<embers:plate_dawnstone>,
	<embers:plate_gold>,
	<embers:plate_iron>,
	<embers:plate_lead>,
	<embers:plate_nickel>,
	<embers:plate_silver>,
	<embers:plate_tin>,
	<extendedcrafting:material:2>,
	<extendedcrafting:material:3>,
	<extendedcrafting:material>,
	<immersiveengineering:metal:10>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:11>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:12>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:13>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:14>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:15>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:16>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:18>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:19>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:30>,
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:35>,
	<immersiveengineering:metal:36>,
	<immersiveengineering:metal:37>,
	<immersiveengineering:metal:38>,
	<immersiveengineering:metal:39>,
	<immersiveengineering:metal:40>,
	<immersiveengineering:metal:9>, //IE grit no longer made with a hammer
	<minecraft:bed:*>,
	<minecraft:book>,
	<minecraft:bucket>,
	<minecraft:coal:1>,
	<minecraft:coal>,
	<minecraft:coal_block>,
	<minecraft:diamond>,
	<minecraft:glass>,
	<minecraft:glass_pane>,
	<minecraft:leather>,
	<minecraft:stick>,
	<minecraft:water_bucket>,
	<roots:herblore_book>,
	<roots:spellcraft_book>,
	<rustic:fertile_soil>,
	<tconstruct:soil>

	//<minecraft:bookshelf>,
] as IItemStack[];

var hideItems = [
	<abyssalcraft:abyssalniteu>,
	<abyssalcraft:cobbleu>,
	<abyssalcraft:coraliumu>,
	<abyssalcraft:diamondu>,
	<abyssalcraft:dreadiumu>,
	<abyssalcraft:ethaxiumu>,
	<abyssalcraft:goldu>,
	<abyssalcraft:ironu>,
	<actuallyadditions:block_treasure_chest>,
	<actuallyadditions:gold_paxel>,
	<actuallyadditions:gold_paxel>,
	<actuallyadditions:iron_paxel>,
	<actuallyadditions:iron_paxel>,
	<actuallyadditions:item_dust:1>,
	<actuallyadditions:item_jam:*>, //No
	<actuallyadditions:item_misc:4>,
	<actuallyadditions:item_water_bowl>,
	<actuallyadditions:stone_paxel>,
	<actuallyadditions:stone_paxel>,
	<actuallyadditions:wooden_paxel>,
	<actuallyadditions:wooden_paxel>,
	<betterwithaddons:boots_samurai>,
	<betterwithaddons:chest_samurai>,
	<betterwithaddons:decomat:3>,
	<betterwithaddons:food_clownfish_cooked>,
	<betterwithaddons:food_pufferfish_baked>,
	<betterwithaddons:helmet_samurai>,
	<betterwithaddons:japanmat:31>,
	<betterwithaddons:japanmat:32>,
	<betterwithaddons:japanmat:33>,
	<betterwithaddons:japanmat:34>,
	<betterwithaddons:legs_samurai>,
	<betterwithmods:fertile_farmland>,
	<betterwithmods:material:30>,
	<betterwithmods:material:5>,
	<betterwithmods:wood_table:1>,
	<betterwithmods:wood_table:2>,
	<betterwithmods:wood_table:3>,
	<betterwithmods:wood_table:4>,
	<betterwithmods:wood_table:5>,
	<betterwithmods:wood_table>,
	<chisel:ironpane:10>,
	<chisel:ironpane:1>,
	<chisel:ironpane:2>,
	<chisel:ironpane:3>,
	<chisel:ironpane:4>,
	<chisel:ironpane:5>,
	<chisel:ironpane:6>,
	<chisel:ironpane:7>,
	<chisel:ironpane:8>,
	<chisel:ironpane:9>,
	<chisel:ironpane>,
	<cyclicmagic:block_miner>,
	<cyclicmagic:block_miner_smart>,
	<cyclicmagic:builder_block>,
	<cyclicmagic:crafting_food>,
	<cyclicmagic:end_coal_ore>,
	<cyclicmagic:end_emerald_ore>,
	<cyclicmagic:end_gold_ore>,
	<cyclicmagic:end_iron_ore>,
	<cyclicmagic:end_lapis_ore>,
	<cyclicmagic:end_redstone_ore>,
	<cyclicmagic:harvester_block>,
	<cyclicmagic:nether_coal_ore>,
	<cyclicmagic:nether_diamond_ore>,
	<cyclicmagic:nether_emerald_ore>,
	<cyclicmagic:nether_gold_ore>,
	<cyclicmagic:nether_iron_ore>,
	<cyclicmagic:nether_lapis_ore>,
	<cyclicmagic:nether_redstone_ore>,
	<cyclicmagic:placer_block>,
	<cyclicmagic:sack_ender>,
	<cyclicmagic:storage_bag>,
	<cyclicmagic:uncrafting_block>,
	<darkutils:sneaky_bedrock>,
	<embers:block_furnace>,
	<embers:nugget_aluminum>,
	<embers:nugget_copper>,
	<embers:nugget_iron>,
	<embers:nugget_lead>,
	<embers:nugget_mithril>,
	<embers:nugget_nickel>,
	<embers:nugget_silver>,
	<embers:ore_aluminum>,
	<embers:ore_copper>,
	<embers:ore_lead>,
	<embers:ore_silver>,
	<extendedcrafting:crafting_table>,
	<factorytech:ore:1>,
	<factorytech:ore>,
	<factorytech:ore_dust:4>,
	<factorytech:ore_dust:5>,
	<factorytech:ore_dust:6>,
	<factorytech:ore_dust:7>,
	<factorytech:ore_dust:8>,
	<factorytech:ore_dust:9>,
	<factorytech:oreblock:1>,
	<factorytech:oreblock>,
	<gardenstuff:material>,
	<immcraft:dummybook>,
	<immcraft:in_world_placer>,
	<immcraft:in_world_vertical_placer>,
	<immcraft:workbench>,
	<immcraft:workbench_sec>,
	<immersiveengineering:metal:29>,
	<improvedbackpacks:bound_leather>,
	<improvedbackpacks:tanned_leather>,
	<libvulpes:productdust:1>,
	<libvulpes:productdust:2>,
	<libvulpes:productdust:4>,
	<libvulpes:productdust:5>,
	<libvulpes:productdust:6>,
	<libvulpes:productdust:9>,
	<libvulpes:productplate:1>,
	<libvulpes:productplate:2>,
	<libvulpes:productplate:4>,
	<libvulpes:productplate:5>,
	<libvulpes:productplate:6>,
	<libvulpes:productplate:9>,
	<minecraft:barrier>,
	<minecraft:chain_command_block>,
	<minecraft:command_block>,
	<minecraft:monster_egg:2>,
	<minecraft:monster_egg:3>,
	<minecraft:monster_egg:4>,
	<minecraft:monster_egg:5>,
	<minecraft:repeating_command_block>,
	<minecraft:structure_block>,
	<minecraft:structure_void>,
	<mob_grinding_utils:gm_chicken_feed>,
	<mob_grinding_utils:mob_swab>,
	<mob_grinding_utils:null_sword>,
	<natura:empty_bowls:1>,
	<natura:empty_bowls:2>,
	<natura:empty_bowls:3>,
	<natura:empty_bowls>,
	<natura:materials:2>, //every mod has its own flour and it's totally awesome -_-
	<natura:materials:8>,
	<natura:nether_lever>,
	<natura:nether_workbenches:1>,
	<natura:nether_workbenches:2>,
	<natura:nether_workbenches:3>,
	<natura:nether_workbenches>,
	<natura:overworld_workbenches:1>,
	<natura:overworld_workbenches:2>,
	<natura:overworld_workbenches:3>,
	<natura:overworld_workbenches:4>,
	<natura:overworld_workbenches:5>,
	<natura:overworld_workbenches:6>,
	<natura:overworld_workbenches:7>,
	<natura:overworld_workbenches:8>,
	<natura:overworld_workbenches>,
	<natura:sticks:10>, //Natura Sticks Gone
	<natura:sticks:11>, //Natura Sticks Gone
	<natura:sticks:12>, //Natura Sticks Gone
	<natura:sticks:1>, //Natura Sticks Gone
	<natura:sticks:2>, //Natura Sticks Gone
	<natura:sticks:3>, //Natura Sticks Gone
	<natura:sticks:4>, //Natura Sticks Gone
	<natura:sticks:5>, //Natura Sticks Gone
	<natura:sticks:6>, //Natura Sticks Gone
	<natura:sticks:7>, //Natura Sticks Gone
	<natura:sticks:8>, //Natura Sticks Gone
	<natura:sticks:9>, //Natura Sticks Gone
	<natura:sticks>, //Natura Sticks Gone
	<pickletweaks:mesh>,
	<primal:arrow_torch_wood>,
	<primal:bear_meat_rotten>,
	<primal:brass_dust>,
	<primal:brass_ingot>,
	<primal:brass_nugget>,
	<primal:brass_plate>,
	<primal:bronze_dust>,
	<primal:bronze_ingot>,
	<primal:bronze_nugget>,
	<primal:bronze_plate>,
	<primal:carbonate_slack>, //Duplicate
	<primal:carbonate_slack>, //Duplicate
	<primal:carbonate_stone>, //Duplicate
	<primal:copper_dust>,
	<primal:copper_ingot>,
	<primal:copper_nugget>,
	<primal:copper_plate>,
	<primal:drying_rack:*>,
	<primal:firepit>,
	<primal:fish_clown_rotten>,
	<primal:fish_cod_rotten>,
	<primal:fish_lava_worm_rotten>,
	<primal:fish_puffer_rotten>,
	<primal:fish_salmon_rotten>,
	<primal:gator_meat_rotten>,
	<primal:gold_plate>,
	<primal:hide_spoiled>,
	<primal:horse_meat_rotten>,
	<primal:iron_plate>,
	<primal:ladder_acacia>,
	<primal:ladder_bigoak>,
	<primal:ladder_birch>,
	<primal:ladder_corypha>,
	<primal:ladder_ironwood>,
	<primal:ladder_jungle>,
	<primal:ladder_lacquer>,
	<primal:ladder_oak>,
	<primal:ladder_spruce>,
	<primal:lead_dust>,
	<primal:lead_ingot>,
	<primal:lead_nugget>,
	<primal:lead_plate>,
	<primal:lever_nether>,
	<primal:lever_wood>,
	<primal:llama_meat_rotten>,
	<primal:ore_iron>,
	<primal:ovis_meat_rotten>,
	<primal:pigiron_dust>,
	<primal:pigiron_ingot>,
	<primal:pigiron_nugget>,
	<primal:pigiron_plate>,
	<primal:pigman_meat_rotten>,
	<primal:rock_andesite>,
	<primal:rock_diorite>,
	<primal:rock_granite>,
	<primal:rock_netherrack>,
	<primal:rock_sarsen>,
	<primal:rock_stone>,
	<primal:rock_vitrified>,
	<primal:shark_meat_rotten>,
	<primal:silk_cordage>,
	<primal:silk_cordage_coiled>,
	<primal:silver_dust>,
	<primal:silver_ingot>,
	<primal:silver_nugget>,
	<primal:silver_plate>,
	<primal:slab_carbonate_flag>, //Duplicate
	<primal:slab_carbonate_flag>, //Duplicate
	<primal:stairs_carbonate_flag>, //Duplicate
	<primal:stairs_carbonate_flag>, //Duplicate
	<primal:steel_ingot>,
	<primal:tamahagane_ingot>,
	<primal:thin_slab_carbonate_flag>, //Duplicate
	<primal:thin_slab_carbonate_flag>, //Duplicate
	<primal:tin_dust>,
	<primal:tin_ingot>,
	<primal:tin_nugget>,
	<primal:tin_plate>,
	<primal:torch_nether_lit>,
	<primal:torch_wood>,
	<primal:torch_wood_lit>,
	<primal:torch_wood_lit>,
	<primal:vanadium_dust>,
	<primal:vanadium_ingot>,
	<primal:vanadium_nugget>,
	<primal:wolf_meat_rotten>,
	<primal:wootz_dust>,
	<primal:wootz_ingot>,
	<primal:wootz_nugget>,
	<primal:worktable_shelf:*>,
	<primal:worktable_slab:*>,
	<primal:zinc_dust>,
	<primal:zinc_ingot>,
	<primal:zinc_nugget>,
	<primal:zinc_plate>,
	<primal_tech:plant_fibres>,
	<quantumstorage:chest_diamond>, //Quantum Storage Metal Chests
	<quantumstorage:chest_gold>, //Quantum Storage Metal Chests
	<quantumstorage:chest_iron>, //Quantum Storage Metal Chests
	<quark:arrow_torch>,
	<rftools:invisible_shield_block>,
	<rftools:notick_invisible_shield_block>,
	<rftools:notick_solid_shield_block>,
	<rftools:solid_shield_block>,
	<roots:aubergine>,
	<roots:diamond_hammer>,
	<roots:gold_hammer>,
	<roots:iron_hammer>,
	<roots:moonglow>,
	<roots:pereskia>,
	<roots:spirit_herb>,
	<roots:stone_hammer>,
	<roots:structure_marker>,
	<roots:terra_moss>,
	<roots:wildroot>,
	<roots:wood_hammer>,
	<stevescarts:cartmodule:102>,
	<tconstruct:throwball:1>

	//<buildcraftcore:spring:1>,
	//<buildcraftcore:spring>,
	//<minecraft:monster_egg:1>,
	//<minecraft:monster_egg:2>,
	//<minecraft:monster_egg:3>,
	//<minecraft:monster_egg:4>,
	//<minecraft:monster_egg:5>,
	//<minecraft:monster_egg>,
	//<openmodularturrets:addon_meta:2>,
	//<primal:arrow_torch_nether>,
	//<primal:spawn_egg_blackbear>,
	//<primal:spawn_egg_brownbear>,
	//<primal:spawn_egg_canis>,
	//<primal:spawn_egg_creeper>,
	//<primal:spawn_egg_gator>,
	//<primal:spawn_egg_hammerhead>,
	//<primal:spawn_egg_ovis>,
	//<primal:torch_nether_lit>,
	//<progressiontweaks:fire_pit_lit>,
	//<roots:aubergine>,
	//<roots:moonglow>,
	//<roots:pereskia>,
	//<roots:spirit_herb>,
	//<roots:terra_moss>,
	//<roots:wildroot>,
	//<stevescarts:modularcart>,
	//<stevescarts:upgrade:14>,
	//<survivalist:chopping_block:1>,
	//<survivalist:chopping_block:2>,
] as IItemStack[];

var removeAndHideItems = [
	<actuallyadditions:block_misc:5>,
	<actuallyadditions:item_misc:10>,
	<actuallyadditions:item_misc:11>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:4>,
	<betterwithaddons:bolt:5>,
	<betterwithmods:material:31>,
	<betterwithmods:material:32>,
	<betterwithmods:material:33>,
	<betterwithmods:material:6>,
	<betterwithmods:material:7>,
	<betterwithmods:material:8>,
	<betterwithmods:stump:*>,
	<cyclicmagic:block_workbench>,
	<cyclicmagic:tool_prospector>,
	<cyclicmagic:tool_randomize>,
	<factorytech:ingot:1>,
	<factorytech:ingot>,
	<gardenstuff:stone_block>,
	<immcraft:furnace>,
	<libvulpes:metal0:4>,
	<libvulpes:metal0:5>,
	<libvulpes:metal0:6>,
	<libvulpes:metal0:9>,
	<libvulpes:productrod:1>,
	<libvulpes:productrod:4>,
	<libvulpes:productrod:6>,
	<natura:amaranth_button>,
	<natura:amaranth_pressure_plate>,
	<natura:amaranth_trap_door>,
	<natura:blaze_hopper>,
	<natura:blaze_rail>,
	<natura:blaze_rail_activator>,
	<natura:blaze_rail_detector>,
	<natura:blaze_rail_golden>,
	<natura:bloodwood_button>,
	<natura:bloodwood_pressure_plate>,
	<natura:bloodwood_trap_door>,
	<natura:darkwood_button>,
	<natura:darkwood_pressure_plate>,
	<natura:darkwood_trap_door>,
	<natura:eucalyptus_button>,
	<natura:eucalyptus_pressure_plate>,
	<natura:eucalyptus_trap_door>,
	<natura:fusewood_button>,
	<natura:fusewood_pressure_plate>,
	<natura:fusewood_trap_door>,
	<natura:ghostwood_button>,
	<natura:ghostwood_pressure_plate>,
	<natura:ghostwood_trap_door>,
	<natura:hopseed_button>,
	<natura:hopseed_pressure_plate>,
	<natura:hopseed_trap_door>,
	<natura:maple_button>,
	<natura:maple_pressure_plate>,
	<natura:maple_trap_door>,
	<natura:nether_button>,
	<natura:nether_doors:1>,
	<natura:nether_doors>,
	<natura:nether_pressure_plate>,
	<natura:overworld_doors:1>,
	<natura:overworld_doors:2>,
	<natura:overworld_doors:3>,
	<natura:overworld_doors:4>,
	<natura:redwood_button>,
	<natura:redwood_pressure_plate>,
	<natura:redwood_trap_door>,
	<natura:sakura_button>,
	<natura:sakura_pressure_plate>,
	<natura:sakura_trap_door>,
	<natura:silverbell_button>,
	<natura:silverbell_pressure_plate>,
	<natura:silverbell_trap_door>,
	<natura:tiger_button>,
	<natura:tiger_pressure_plate>,
	<natura:tiger_trap_door>,
	<natura:willow_button>,
	<natura:willow_pressure_plate>,
	<natura:willow_trap_door>,
	<quark:obsidian_pressure_plate>,
	<rustic:fertile_soil>,
	<storagedrawers:basicdrawers:*>,
	<teslacorelib:gear_iron>,
	<totemic:medicine_bag>,
  
	//Nuggets 
	<betterwithmods:material:46>,
	<embers:nugget_bronze>,
	<embers:nugget_dawnstone>,
	<embers:nugget_tin>,
	<extendedcrafting:material:1>,
	<immersiveengineering:metal:20>,
	<immersiveengineering:metal:21>,
	<immersiveengineering:metal:25>,
	<mysticalagradditions:insanium:3>,
	<mysticalagriculture:crafting:45>,
	<tconstruct:nuggets:3>,
	<tconstruct:nuggets:4>

	//<actuallyadditions:block_miner>,
	//<adchimneys:bedrock>,
	//<hardcorequesting:hqm_invalid_item>,
	//<immcraft:bundle>,
	//<immcraft:in_world_placer>,
	//<immcraft:in_world_vertical_placer>,
	//<minecraft:barrier>,
	//<minecraft:bedrock>,
	//<minecraft:chain_command_block>,
	//<minecraft:command_block>,
	//<minecraft:command_block_minecart>,
	//<minecraft:end_portal_frame>,
	//<minecraft:ender_chest>,
	//<minecraft:repeating_command_block>,
	//<minecraft:structure_block>,
	//<minecraft:structure_void>,
	//<omlib:debug_tool>,
	//<primal:drying_rack_acacia>,
	//<primal:drying_rack_bigoak>,
	//<primal:drying_rack_birch>,
	//<primal:drying_rack_corypha>,
	//<primal:drying_rack_ironwood>,
	//<primal:drying_rack_jungle>,
	//<primal:drying_rack_lacquer>,
	//<primal:drying_rack_oak>,
	//<primal:drying_rack_spruce>,
	//<primal:worktable_acacia_slab>,
	//<primal:worktable_bigoak_slab>,
	//<primal:worktable_birch_slab>,
	//<primal:worktable_ironwood_slab>,
	//<primal:worktable_jungle_slab>,
	//<primal:worktable_lacquer_slab>,
	//<primal:worktable_oak_slab>,
	//<primal:worktable_spruce_slab>,
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}

for item in hideItems {
	mods.jei.JEI.hide(item);
}

for item in removeAndHideItems {
	mods.jei.JEI.removeAndHide(item);
}

recipes.remove(<ore:plankWood>);
recipes.remove(<ore:stickWood>);

//Compressed
recipes.removeShapeless(<minecraft:cobblestone>, [<overloaded:compressed_cobblestone>]);
recipes.removeShapeless(<minecraft:obsidian>, [<overloaded:compressed_obsidian>]);
recipes.removeShapeless(<minecraft:dirt>, [<overloaded:compressed_dirt>]);
recipes.removeShapeless(<minecraft:gravel>, [<overloaded:compressed_gravel>]);
recipes.removeShapeless(<minecraft:stone>, [<overloaded:compressed_stone>]);
recipes.removeShapeless(<minecraft:sand>, [<overloaded:compressed_sand>]);
recipes.removeShapeless(<minecraft:netherrack>, [<overloaded:compressed_netherrack>]);
recipes.remove(<overloaded:compressed_cobblestone:*>);
recipes.remove(<overloaded:compressed_sand:*>);
recipes.remove(<overloaded:compressed_dirt:*>);
recipes.remove(<overloaded:compressed_gravel:*>);

//Industrial Foregoing TBD
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens_inverted:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_base>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_drill>);
