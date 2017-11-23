//recipes.removeAll();


////////
//////
////
// These arrays work because of the Amazing IcedReaper!! Thank you for your help!
////
//////
////////

////Hide and Remove Items/Recipes
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


recipes.remove(<ore:plankWood>);
recipes.remove(<ore:stickWood>);
recipes.remove(<minecraft:diamond>);
recipes.remove(<minecraft:leather>);
recipes.remove(<minecraft:bed:*>);
recipes.remove(<minecraft:coal>);
recipes.remove(<minecraft:coal:1>);
recipes.remove(<minecraft:coal_block>);
recipes.remove(<minecraft:book>);
recipes.remove(<tconstruct:soil>);
recipes.remove(<ceramics:unfired_clay>);
recipes.remove(<carryon:tile_item>);
recipes.remove(<rustic:fertile_soil>);

recipes.remove(<roots:spellcraft_book>);
recipes.remove(<roots:herblore_book>);
recipes.remove(<charcoalblock:charcoal_block>);
recipes.remove(<betterwithmods:aesthetic:8>);


//recipes.remove(<minecraft:bookshelf>);
recipes.remove(<minecraft:stick>);

recipes.remove(<minecraft:glass>);
recipes.remove(<minecraft:glass_pane>);

//Duplicates
mods.jei.JEI.hide(<primal:stairs_carbonate_flag>);
mods.jei.JEI.hide(<primal:slab_carbonate_flag>);
mods.jei.JEI.hide(<primal:thin_slab_carbonate_flag>);
mods.jei.JEI.hide(<primal:carbonate_slack>);
mods.jei.JEI.hide(<primal:carbonate_stone>);
mods.jei.JEI.hide(<primal:stairs_carbonate_flag>);
mods.jei.JEI.hide(<primal:slab_carbonate_flag>);
mods.jei.JEI.hide(<primal:thin_slab_carbonate_flag>);
mods.jei.JEI.hide(<primal:carbonate_slack>);


//No
mods.jei.JEI.hide(<actuallyadditions:item_jam:*>);

mods.jei.JEI.hide(<mob_grinding_utils:mob_swab>);
mods.jei.JEI.hide(<mob_grinding_utils:gm_chicken_feed>);
mods.jei.JEI.hide(<mob_grinding_utils:null_sword>);
mods.jei.JEI.hide(<tconstruct:throwball:1>);
mods.jei.JEI.hide(<primal:arrow_torch_wood>);
mods.jei.JEI.hide(<quark:arrow_torch>);
mods.jei.JEI.hide(<minecraft:command_block>);
mods.jei.JEI.hide(<minecraft:barrier>);
mods.jei.JEI.hide(<minecraft:repeating_command_block>);
mods.jei.JEI.hide(<minecraft:chain_command_block>);
mods.jei.JEI.hide(<minecraft:structure_void>);
mods.jei.JEI.hide(<minecraft:structure_block>);
mods.jei.JEI.hide(<primal:hide_spoiled>);
mods.jei.JEI.hide(<betterwithmods:material:5>);
mods.jei.JEI.hide(<betterwithmods:material:30>);
mods.jei.JEI.hide(<embers:nugget_iron>);
mods.jei.JEI.hide(<abyssalcraft:cobbleu>);
mods.jei.JEI.hide(<abyssalcraft:ironu>);
mods.jei.JEI.hide(<abyssalcraft:goldu>);
mods.jei.JEI.hide(<abyssalcraft:diamondu>);
mods.jei.JEI.hide(<abyssalcraft:abyssalniteu>);
mods.jei.JEI.hide(<abyssalcraft:coraliumu>);
mods.jei.JEI.hide(<abyssalcraft:dreadiumu>);
mods.jei.JEI.hide(<abyssalcraft:ethaxiumu>);
mods.jei.JEI.hide(<embers:ore_aluminum>);
mods.jei.JEI.hide(<embers:ore_copper>);
mods.jei.JEI.hide(<embers:ore_lead>);
mods.jei.JEI.hide(<embers:ore_silver>);
//mods.jei.JEI.removeAndHide(<adchimneys:bedrock>);
mods.jei.JEI.removeAndHide(<totemic:medicine_bag>);
recipes.remove(<embers:plate_dawnstone>);
mods.jei.JEI.removeAndHide(<teslacorelib:gear_iron>);

mods.jei.JEI.hide(<embers:block_furnace>);

recipes.remove(<minecraft:bucket>);
recipes.remove(<minecraft:water_bucket>);

mods.jei.JEI.removeAndHide(<natura:nether_button>);
mods.jei.JEI.removeAndHide(<natura:maple_button>);
mods.jei.JEI.removeAndHide(<natura:silverbell_button>);
mods.jei.JEI.removeAndHide(<natura:amaranth_button>);
mods.jei.JEI.removeAndHide(<natura:tiger_button>);
mods.jei.JEI.removeAndHide(<natura:willow_button>);
mods.jei.JEI.removeAndHide(<natura:eucalyptus_button>);
mods.jei.JEI.removeAndHide(<natura:hopseed_button>);
mods.jei.JEI.removeAndHide(<natura:sakura_button>);
mods.jei.JEI.removeAndHide(<natura:redwood_button>);
mods.jei.JEI.removeAndHide(<natura:ghostwood_button>);
mods.jei.JEI.removeAndHide(<natura:bloodwood_button>);
mods.jei.JEI.removeAndHide(<natura:darkwood_button>);
mods.jei.JEI.removeAndHide(<natura:fusewood_button>);
mods.jei.JEI.removeAndHide(<natura:nether_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:maple_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:silverbell_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:amaranth_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:tiger_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:willow_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:eucalyptus_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:hopseed_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:sakura_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:redwood_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:ghostwood_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:bloodwood_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:fusewood_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:darkwood_pressure_plate>);
mods.jei.JEI.removeAndHide(<quark:obsidian_pressure_plate>);
mods.jei.JEI.removeAndHide(<natura:maple_trap_door>);
mods.jei.JEI.removeAndHide(<natura:silverbell_trap_door>);
mods.jei.JEI.removeAndHide(<natura:amaranth_trap_door>);
mods.jei.JEI.removeAndHide(<natura:tiger_trap_door>);
mods.jei.JEI.removeAndHide(<natura:willow_trap_door>);
mods.jei.JEI.removeAndHide(<natura:eucalyptus_trap_door>);
mods.jei.JEI.removeAndHide(<natura:hopseed_trap_door>);
mods.jei.JEI.removeAndHide(<natura:sakura_trap_door>);
mods.jei.JEI.removeAndHide(<natura:redwood_trap_door>);
mods.jei.JEI.removeAndHide(<natura:ghostwood_trap_door>);
mods.jei.JEI.removeAndHide(<natura:bloodwood_trap_door>);
mods.jei.JEI.removeAndHide(<natura:fusewood_trap_door>);
mods.jei.JEI.removeAndHide(<natura:darkwood_trap_door>);

mods.jei.JEI.removeAndHide(<natura:overworld_doors:1>);
mods.jei.JEI.removeAndHide(<natura:overworld_doors:2>);
mods.jei.JEI.removeAndHide(<natura:overworld_doors:3>);
mods.jei.JEI.removeAndHide(<natura:overworld_doors:4>);
mods.jei.JEI.removeAndHide(<natura:nether_doors>);
mods.jei.JEI.removeAndHide(<natura:nether_doors:1>);
mods.jei.JEI.removeAndHide(<rustic:fertile_soil>);

mods.jei.JEI.hide(<chisel:ironpane>);
mods.jei.JEI.hide(<chisel:ironpane:1>);
mods.jei.JEI.hide(<chisel:ironpane:2>);
mods.jei.JEI.hide(<chisel:ironpane:3>);
mods.jei.JEI.hide(<chisel:ironpane:4>);
mods.jei.JEI.hide(<chisel:ironpane:5>);
mods.jei.JEI.hide(<chisel:ironpane:6>);
mods.jei.JEI.hide(<chisel:ironpane:7>);
mods.jei.JEI.hide(<chisel:ironpane:8>);
mods.jei.JEI.hide(<chisel:ironpane:9>);
mods.jei.JEI.hide(<chisel:ironpane:10>);

mods.jei.JEI.hide(<immcraft:workbench>);
mods.jei.JEI.hide(<immcraft:workbench_sec>);
mods.jei.JEI.hide(<immcraft:in_world_placer>);
mods.jei.JEI.hide(<immcraft:in_world_vertical_placer>);

mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:5>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:11>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:10>);

mods.jei.JEI.hide(<roots:moonglow>);
mods.jei.JEI.hide(<roots:terra_moss>);
mods.jei.JEI.hide(<roots:wildroot>);
mods.jei.JEI.hide(<roots:aubergine>);
mods.jei.JEI.hide(<roots:pereskia>);
mods.jei.JEI.hide(<roots:spirit_herb>);
mods.jei.JEI.hide(<roots:structure_marker>);

mods.jei.JEI.hide(<roots:wood_hammer>);
mods.jei.JEI.hide(<roots:stone_hammer>);
mods.jei.JEI.hide(<roots:iron_hammer>);
mods.jei.JEI.hide(<roots:gold_hammer>);
mods.jei.JEI.hide(<roots:diamond_hammer>);

mods.jei.JEI.hide(<minecraft:monster_egg:2>);
mods.jei.JEI.hide(<minecraft:monster_egg:3>);
mods.jei.JEI.hide(<minecraft:monster_egg:4>);
mods.jei.JEI.hide(<minecraft:monster_egg:5>);

mods.jei.JEI.hide(<primal:drying_rack:*>);

mods.jei.JEI.hide(<cyclicmagic:crafting_food>);

////
//
//Superfluous
//
////

mods.jei.JEI.hide(<primal:ladder_acacia>);
mods.jei.JEI.hide(<primal:ladder_bigoak>);
mods.jei.JEI.hide(<primal:ladder_birch>);
mods.jei.JEI.hide(<primal:ladder_jungle>);
mods.jei.JEI.hide(<primal:ladder_oak>);
mods.jei.JEI.hide(<primal:ladder_spruce>);
mods.jei.JEI.hide(<primal:ladder_ironwood>);
mods.jei.JEI.hide(<primal:ladder_corypha>);
mods.jei.JEI.hide(<primal:ladder_lacquer>);

mods.jei.JEI.hide(<extendedcrafting:crafting_table>);
mods.jei.JEI.removeAndHide(<cyclicmagic:tool_randomize>);
mods.jei.JEI.removeAndHide(<cyclicmagic:block_workbench>);
mods.jei.JEI.removeAndHide(<cyclicmagic:tool_prospector>);

mods.jei.JEI.hide(<natura:empty_bowls>);
mods.jei.JEI.hide(<natura:empty_bowls:1>);
mods.jei.JEI.hide(<natura:empty_bowls:2>);
mods.jei.JEI.hide(<natura:empty_bowls:3>);
mods.jei.JEI.hide(<natura:nether_lever>);
mods.jei.JEI.hide(<immcraft:dummybook>);

mods.jei.JEI.hide(<primal:worktable_shelf:*>);

mods.jei.JEI.hide(<primal:torch_wood_lit>);
mods.jei.JEI.hide(<primal:torch_nether_lit>);

mods.jei.JEI.removeAndHide(<natura:blaze_rail>);
mods.jei.JEI.removeAndHide(<natura:blaze_rail_golden>);
mods.jei.JEI.removeAndHide(<natura:blaze_rail_activator>);
mods.jei.JEI.removeAndHide(<natura:blaze_rail_detector>);
mods.jei.JEI.removeAndHide(<natura:blaze_hopper>);

mods.jei.JEI.hide(<stevescarts:cartmodule:102>);

mods.jei.JEI.hide(<primal:silk_cordage>);
mods.jei.JEI.hide(<primal:silk_cordage_coiled>);


mods.jei.JEI.hide(<betterwithaddons:japanmat:31>);
mods.jei.JEI.hide(<betterwithaddons:japanmat:32>);
mods.jei.JEI.hide(<betterwithaddons:japanmat:33>);
mods.jei.JEI.hide(<betterwithaddons:japanmat:34>);
mods.jei.JEI.hide(<betterwithaddons:helmet_samurai>);
mods.jei.JEI.hide(<betterwithaddons:chest_samurai>);
mods.jei.JEI.hide(<betterwithaddons:legs_samurai>);
mods.jei.JEI.hide(<betterwithaddons:boots_samurai>);

mods.jei.JEI.hide(<primal:fish_clown_rotten>);
mods.jei.JEI.hide(<primal:fish_puffer_rotten>);
mods.jei.JEI.hide(<betterwithaddons:food_clownfish_cooked>);
mods.jei.JEI.hide(<betterwithaddons:food_pufferfish_baked>);
mods.jei.JEI.hide(<primal:shark_meat_rotten>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:6>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:7>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:8>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:31>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:32>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:33>);
mods.jei.JEI.removeAndHide(<betterwithaddons:bolt:3>);
mods.jei.JEI.removeAndHide(<betterwithaddons:bolt:4>);
mods.jei.JEI.removeAndHide(<betterwithaddons:bolt:5>);

mods.jei.JEI.hide(<primal:worktable_slab:*>);

mods.jei.JEI.hide(<primal:ore_iron>);
mods.jei.JEI.hide(<primal:iron_plate>);
mods.jei.JEI.hide(<primal:gold_plate>);
mods.jei.JEI.hide(<primal:pigiron_plate>);
mods.jei.JEI.hide(<primal:lead_plate>);
mods.jei.JEI.hide(<primal:silver_plate>);
mods.jei.JEI.hide(<primal:zinc_plate>);
mods.jei.JEI.hide(<primal:tin_plate>);
mods.jei.JEI.hide(<primal:copper_plate>);
mods.jei.JEI.hide(<primal:brass_plate>);
mods.jei.JEI.hide(<primal:bronze_plate>);
mods.jei.JEI.hide(<natura:materials:8>);
mods.jei.JEI.removeAndHide(<immcraft:furnace>);
mods.jei.JEI.removeAndHide(<betterwithmods:stump:*>);
mods.jei.JEI.hide(<cyclicmagic:end_emerald_ore>);
mods.jei.JEI.hide(<cyclicmagic:end_iron_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_redstone_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_diamond_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_lapis_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_emerald_ore>);
mods.jei.JEI.hide(<cyclicmagic:end_redstone_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_coal_ore>);
mods.jei.JEI.hide(<cyclicmagic:end_lapis_ore>);
mods.jei.JEI.hide(<cyclicmagic:end_gold_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_iron_ore>);
mods.jei.JEI.hide(<cyclicmagic:end_coal_ore>);
mods.jei.JEI.hide(<cyclicmagic:nether_gold_ore>);

recipes.remove(<embers:plate_copper>);
recipes.remove(<embers:plate_lead>);
recipes.remove(<embers:plate_silver>);
recipes.remove(<embers:plate_dawnstone>);
recipes.remove(<embers:plate_iron>);
recipes.remove(<embers:plate_gold>);
recipes.remove(<embers:plate_aluminum>);
recipes.remove(<embers:plate_bronze>);
recipes.remove(<embers:plate_nickel>);
recipes.remove(<embers:plate_tin>);
recipes.remove(<immersiveengineering:metal:30>);
recipes.remove(<immersiveengineering:metal:31>);
recipes.remove(<immersiveengineering:metal:32>);
recipes.remove(<immersiveengineering:metal:33>);
recipes.remove(<immersiveengineering:metal:34>);
recipes.remove(<immersiveengineering:metal:35>);
recipes.remove(<immersiveengineering:metal:36>);
recipes.remove(<immersiveengineering:metal:37>);
recipes.remove(<immersiveengineering:metal:38>);
recipes.remove(<immersiveengineering:metal:39>);
recipes.remove(<immersiveengineering:metal:40>);

mods.jei.JEI.hide(<libvulpes:productdust:1>);
mods.jei.JEI.hide(<libvulpes:productdust:2>);
mods.jei.JEI.hide(<libvulpes:productdust:4>);
mods.jei.JEI.hide(<libvulpes:productdust:5>);
mods.jei.JEI.hide(<libvulpes:productdust:6>);
mods.jei.JEI.hide(<libvulpes:productdust:9>);
mods.jei.JEI.hide(<libvulpes:productplate:1>);
mods.jei.JEI.hide(<libvulpes:productplate:2>);
mods.jei.JEI.hide(<libvulpes:productplate:4>);
mods.jei.JEI.hide(<libvulpes:productplate:5>);
mods.jei.JEI.hide(<libvulpes:productplate:6>);
mods.jei.JEI.hide(<libvulpes:productplate:9>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:1>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:4>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:6>);
mods.jei.JEI.removeAndHide(<libvulpes:metal0:4>);
mods.jei.JEI.removeAndHide(<libvulpes:metal0:5>);
mods.jei.JEI.removeAndHide(<libvulpes:metal0:6>);
mods.jei.JEI.removeAndHide(<libvulpes:metal0:9>);

mods.jei.JEI.removeAndHide(<factorytech:ingot>);
mods.jei.JEI.removeAndHide(<factorytech:ingot:1>);
mods.jei.JEI.hide(<factorytech:ore:1>);
mods.jei.JEI.hide(<factorytech:ore>);
mods.jei.JEI.hide(<factorytech:oreblock:1>);
mods.jei.JEI.hide(<factorytech:oreblock>);
mods.jei.JEI.hide(<factorytech:ore_dust:8>);
mods.jei.JEI.hide(<factorytech:ore_dust:7>);
mods.jei.JEI.hide(<factorytech:ore_dust:4>);
mods.jei.JEI.hide(<factorytech:ore_dust:5>);
mods.jei.JEI.hide(<factorytech:ore_dust:9>);
mods.jei.JEI.hide(<factorytech:ore_dust:6>);


//mods.jei.JEI.removeAndHide(<primal:drying_rack_acacia>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_bigoak>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_birch>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_jungle>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_oak>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_spruce>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_ironwood>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_corypha>);
//mods.jei.JEI.removeAndHide(<primal:drying_rack_lacquer>);

mods.jei.JEI.hide(<primal:rock_stone>);
mods.jei.JEI.hide(<primal:rock_andesite>);
mods.jei.JEI.hide(<primal:rock_diorite>);
mods.jei.JEI.hide(<primal:rock_granite>);
mods.jei.JEI.hide(<primal:rock_netherrack>);
mods.jei.JEI.hide(<primal:rock_sarsen>);
mods.jei.JEI.hide(<primal:rock_vitrified>);

mods.jei.JEI.hide(<cyclicmagic:storage_bag>);
mods.jei.JEI.hide(<cyclicmagic:sack_ender>);

mods.jei.JEI.hide(<cyclicmagic:builder_block>);
mods.jei.JEI.hide(<cyclicmagic:harvester_block>);
mods.jei.JEI.hide(<cyclicmagic:uncrafting_block>);
mods.jei.JEI.hide(<cyclicmagic:block_miner>);
mods.jei.JEI.hide(<cyclicmagic:block_miner_smart>);
mods.jei.JEI.hide(<cyclicmagic:placer_block>);
mods.jei.JEI.hide(<rftools:invisible_shield_block>);
mods.jei.JEI.hide(<rftools:notick_invisible_shield_block>);
mods.jei.JEI.hide(<primal:firepit>);
mods.jei.JEI.hide(<primal:lever_wood>);
mods.jei.JEI.hide(<primal:lever_nether>);

mods.jei.JEI.hide(<natura:overworld_workbenches>);
mods.jei.JEI.hide(<natura:overworld_workbenches:1>);
mods.jei.JEI.hide(<natura:overworld_workbenches:2>);
mods.jei.JEI.hide(<natura:overworld_workbenches:3>);
mods.jei.JEI.hide(<natura:overworld_workbenches:4>);
mods.jei.JEI.hide(<natura:overworld_workbenches:5>);
mods.jei.JEI.hide(<natura:overworld_workbenches:6>);
mods.jei.JEI.hide(<natura:overworld_workbenches:7>);
mods.jei.JEI.hide(<natura:overworld_workbenches:8>);
mods.jei.JEI.hide(<natura:nether_workbenches>);
mods.jei.JEI.hide(<natura:nether_workbenches:1>);
mods.jei.JEI.hide(<natura:nether_workbenches:2>);
mods.jei.JEI.hide(<natura:nether_workbenches:3>);

//mods.jei.JEI.hide(<minecraft:monster_egg:2>);
//mods.jei.JEI.hide(<minecraft:monster_egg:3>);
//mods.jei.JEI.hide(<minecraft:monster_egg:4>);
//mods.jei.JEI.hide(<minecraft:monster_egg:5>);
//mods.jei.JEI.hide(<minecraft:monster_egg>);
//mods.jei.JEI.hide(<minecraft:monster_egg:1>);

mods.jei.JEI.hide(<rftools:solid_shield_block>);
mods.jei.JEI.hide(<rftools:notick_solid_shield_block>);

//mods.jei.JEI.hide(<roots:moonglow>);
//mods.jei.JEI.hide(<roots:spirit_herb>);
//mods.jei.JEI.hide(<roots:pereskia>);
//mods.jei.JEI.hide(<roots:aubergine>);
//mods.jei.JEI.hide(<roots:wildroot>);
//mods.jei.JEI.hide(<roots:terra_moss>);
////mods.jei.JEI.hide(<survivalist:chopping_block:2>);

//mods.jei.JEI.hide(<survivalist:chopping_block:1>);
//mods.jei.JEI.hide(<openmodularturrets:addon_meta:2>);
mods.jei.JEI.hide(<actuallyadditions:block_treasure_chest>);


mods.jei.JEI.hide(<betterwithaddons:decomat:3>);


mods.jei.JEI.hide(<actuallyadditions:stone_paxel>);
mods.jei.JEI.hide(<actuallyadditions:wooden_paxel>);
mods.jei.JEI.hide(<actuallyadditions:iron_paxel>);
mods.jei.JEI.hide(<actuallyadditions:gold_paxel>);
mods.jei.JEI.hide(<actuallyadditions:stone_paxel>);
mods.jei.JEI.hide(<actuallyadditions:wooden_paxel>);
mods.jei.JEI.hide(<actuallyadditions:iron_paxel>);
mods.jei.JEI.hide(<actuallyadditions:gold_paxel>);



//Quantum Storage Metal Chests
mods.jei.JEI.hide(<quantumstorage:chest_iron>);
mods.jei.JEI.hide(<quantumstorage:chest_gold>);
mods.jei.JEI.hide(<quantumstorage:chest_diamond>);

mods.jei.JEI.hide(<primal:torch_wood_lit>);
mods.jei.JEI.hide(<primal:torch_wood>);

//mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);
//mods.jei.JEI.removeAndHide(<minecraft:bedrock>);
//mods.jei.JEI.removeAndHide(<minecraft:end_portal_frame>);
//mods.jei.JEI.removeAndHide(<minecraft:command_block>);
//mods.jei.JEI.removeAndHide(<minecraft:structure_block>);
//mods.jei.JEI.removeAndHide(<minecraft:structure_void>);
//mods.jei.JEI.removeAndHide(<minecraft:chain_command_block>);
//mods.jei.JEI.removeAndHide(<minecraft:repeating_command_block>);
//mods.jei.JEI.removeAndHide(<minecraft:barrier>);
//mods.jei.JEI.removeAndHide(<minecraft:command_block_minecart>);

////mods.jei.JEI.removeAndHide(<hardcorequesting:hqm_invalid_item>);
//mods.jei.JEI.removeAndHide(<immcraft:in_world_placer>);
//mods.jei.JEI.removeAndHide(<immcraft:in_world_vertical_placer>);
//mods.jei.JEI.removeAndHide(<immcraft:bundle>);
//mods.jei.JEI.removeAndHide(<omlib:debug_tool>);

mods.jei.JEI.hide(<darkutils:sneaky_bedrock>);

//Natura Sticks Gone
mods.jei.JEI.hide(<natura:sticks>);
mods.jei.JEI.hide(<natura:sticks:1>);
mods.jei.JEI.hide(<natura:sticks:2>);
mods.jei.JEI.hide(<natura:sticks:3>);
mods.jei.JEI.hide(<natura:sticks:4>);
mods.jei.JEI.hide(<natura:sticks:5>);
mods.jei.JEI.hide(<natura:sticks:6>);
mods.jei.JEI.hide(<natura:sticks:7>);
mods.jei.JEI.hide(<natura:sticks:8>);
mods.jei.JEI.hide(<natura:sticks:9>);
mods.jei.JEI.hide(<natura:sticks:10>);
mods.jei.JEI.hide(<natura:sticks:11>);
mods.jei.JEI.hide(<natura:sticks:12>);


mods.jei.JEI.hide(<actuallyadditions:item_misc:4>);

//every mod has its own flour and it's totally awesome -_-
mods.jei.JEI.hide(<natura:materials:2>);



//mods.jei.JEI.hide(<primal:spawn_egg_brownbear>);
//mods.jei.JEI.hide(<primal:spawn_egg_blackbear>);
//mods.jei.JEI.hide(<primal:spawn_egg_hammerhead>);
//mods.jei.JEI.hide(<primal:spawn_egg_gator>);
//mods.jei.JEI.hide(<primal:spawn_egg_canis>);
//mods.jei.JEI.hide(<primal:spawn_egg_ovis>);
//mods.jei.JEI.hide(<primal:spawn_egg_creeper>);
//mods.jei.JEI.hide(<primal:torch_nether_lit>);
//mods.jei.JEI.hide(<primal:arrow_torch_nether>);



//mods.jei.JEI.hide(<stevescarts:modularcart>);
//mods.jei.JEI.hide(<progressiontweaks:fire_pit_lit>);
////mods.jei.JEI.hide(<buildcraftcore:spring>);
////mods.jei.JEI.hide(<buildcraftcore:spring:1>);
//mods.jei.JEI.hide(<stevescarts:upgrade:14>);

//mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);




//mods.jei.JEI.removeAndHide(<primal:worktable_birch_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_jungle_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_acacia_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_bigoak_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_oak_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_spruce_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_ironwood_slab>);
//mods.jei.JEI.removeAndHide(<primal:worktable_lacquer_slab>);

mods.jei.JEI.hide(<betterwithmods:wood_table>);
mods.jei.JEI.hide(<betterwithmods:wood_table:1>);
mods.jei.JEI.hide(<betterwithmods:wood_table:2>);
mods.jei.JEI.hide(<betterwithmods:wood_table:3>);
mods.jei.JEI.hide(<betterwithmods:wood_table:4>);
mods.jei.JEI.hide(<betterwithmods:wood_table:5>);

mods.jei.JEI.hide(<actuallyadditions:item_water_bowl>);

mods.jei.JEI.hide(<betterwithmods:fertile_farmland>);

mods.jei.JEI.hide(<primal:brass_dust>);
mods.jei.JEI.hide(<primal:brass_ingot>);
mods.jei.JEI.hide(<primal:brass_nugget>);
mods.jei.JEI.hide(<primal:bronze_dust>);
mods.jei.JEI.hide(<primal:bronze_ingot>);
mods.jei.JEI.hide(<primal:bronze_nugget>);
mods.jei.JEI.hide(<primal:copper_dust>);
mods.jei.JEI.hide(<primal:copper_ingot>);
mods.jei.JEI.hide(<primal:copper_nugget>);
mods.jei.JEI.hide(<primal:lead_dust>);
mods.jei.JEI.hide(<primal:lead_ingot>);
mods.jei.JEI.hide(<primal:lead_nugget>);
mods.jei.JEI.hide(<primal:pigiron_dust>);
mods.jei.JEI.hide(<primal:pigiron_ingot>);
mods.jei.JEI.hide(<primal:pigiron_nugget>);
mods.jei.JEI.hide(<primal:silver_dust>);
mods.jei.JEI.hide(<primal:silver_ingot>);
mods.jei.JEI.hide(<primal:silver_nugget>);
mods.jei.JEI.hide(<primal:tin_dust>);
mods.jei.JEI.hide(<primal:tin_ingot>);
mods.jei.JEI.hide(<primal:tin_nugget>);
mods.jei.JEI.hide(<primal:vanadium_dust>);
mods.jei.JEI.hide(<primal:vanadium_ingot>);
mods.jei.JEI.hide(<primal:vanadium_nugget>);
mods.jei.JEI.hide(<primal:wootz_dust>);
mods.jei.JEI.hide(<primal:wootz_ingot>);
mods.jei.JEI.hide(<primal:wootz_nugget>);
mods.jei.JEI.hide(<primal:zinc_dust>);
mods.jei.JEI.hide(<primal:zinc_ingot>);
mods.jei.JEI.hide(<primal:zinc_nugget>);
mods.jei.JEI.hide(<primal:steel_ingot>);
mods.jei.JEI.hide(<primal:tamahagane_ingot>);


mods.jei.JEI.hide(<primal:fish_cod_rotten>);
mods.jei.JEI.hide(<primal:fish_salmon_rotten>);
mods.jei.JEI.hide(<primal:fish_lava_worm_rotten>);
mods.jei.JEI.hide(<primal:gator_meat_rotten>);
mods.jei.JEI.hide(<primal:horse_meat_rotten>);
mods.jei.JEI.hide(<primal:wolf_meat_rotten>);
mods.jei.JEI.hide(<primal:ovis_meat_rotten>);
mods.jei.JEI.hide(<primal:pigman_meat_rotten>);
mods.jei.JEI.hide(<primal:bear_meat_rotten>);
mods.jei.JEI.hide(<primal:llama_meat_rotten>);

mods.jei.JEI.hide(<actuallyadditions:item_dust:1>);

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

mods.jei.JEI.hide(<improvedbackpacks:bound_leather>);
mods.jei.JEI.hide(<improvedbackpacks:tanned_leather>);

mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:*>);

//IE grit no longer made with a hammer
recipes.remove(<immersiveengineering:metal:9>);
recipes.remove(<immersiveengineering:metal:10>);
recipes.remove(<immersiveengineering:metal:11>);
recipes.remove(<immersiveengineering:metal:12>);
recipes.remove(<immersiveengineering:metal:13>);
recipes.remove(<immersiveengineering:metal:14>);
recipes.remove(<immersiveengineering:metal:15>);
recipes.remove(<immersiveengineering:metal:16>);
recipes.remove(<immersiveengineering:metal:18>);
recipes.remove(<immersiveengineering:metal:19>);

mods.jei.JEI.hide(<primal_tech:plant_fibres>);
mods.jei.JEI.hide(<pickletweaks:mesh>);

recipes.remove(<extendedcrafting:material>);
recipes.remove(<extendedcrafting:material:2>);
recipes.remove(<extendedcrafting:material:3>);

//Nuggets 
mods.jei.JEI.removeAndHide(<extendedcrafting:material:1>);
mods.jei.JEI.removeAndHide(<embers:nugget_tin>);
mods.jei.JEI.removeAndHide(<embers:nugget_bronze>);
mods.jei.JEI.removeAndHide(<embers:nugget_dawnstone>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);
mods.jei.JEI.removeAndHide(<tconstruct:nuggets:4>);
mods.jei.JEI.removeAndHide(<tconstruct:nuggets:3>);
mods.jei.JEI.removeAndHide(<mysticalagriculture:crafting:45>);
mods.jei.JEI.removeAndHide(<mysticalagradditions:insanium:3>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal:25>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal:21>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal:20>);

mods.jei.JEI.hide(<embers:nugget_nickel>);
mods.jei.JEI.hide(<embers:nugget_aluminum>);
mods.jei.JEI.hide(<embers:nugget_mithril>);
mods.jei.JEI.hide(<embers:nugget_copper>);
mods.jei.JEI.hide(<immersiveengineering:metal:29>);
mods.jei.JEI.hide(<embers:nugget_silver>);
mods.jei.JEI.hide(<embers:nugget_lead>);

//Industrial Foregoing TBD
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens_inverted:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_base>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_drill>);
