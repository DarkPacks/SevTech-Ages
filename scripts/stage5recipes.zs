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



//Entire Mods into Stage five
var modIDs = [
"appliedenergistics2",
"mysticalagriculture",
"compactmachines3",
"mysticalagradditions",
"refinedstorage",
"enderutilities",
"quantumstorage",
"refinedstorageaddons",
"scannable",
"environmentaltech"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage("five", item);
    }
}






mods.recipestages.Recipes.setRecipeStage("five", <factorytech:autocrafter>);

//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);

//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);

mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_hoe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_hoe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:obsidian_hoe>);

//Prospector
recipes.remove(<prospectors:prospector_low>);
mods.recipestages.Recipes.addShaped("five", <prospectors:prospector_best>, [[null, <minecraft:diamond>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:diamond>], [<minecraft:blaze_rod>, null, null]]);

//Builder Wand
recipes.remove(<betterbuilderswands:wandunbreakable>);
mods.recipestages.Recipes.addShaped("five", <betterbuilderswands:wandunbreakable>, [[null, null, <minecraft:nether_star>], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]);

//Emerald
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:emerald_ore>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:emerald_block>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:trimmed:3>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:129>);
mods.recipestages.Recipes.setRecipeStage("five", <pickletweaks:emerald_apple>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_shovel>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_hoe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_hatchet>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_axe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:emerald_workblade>);

mods.recipestages.Recipes.setRecipeStage("five", <minecraft:diamond_helmet>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:diamond_chestplate>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:diamond_leggings>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:diamond_boots>);

mods.recipestages.Recipes.setRecipeStage("five", <chisel:chisel_diamond>);
mods.recipestages.Recipes.setRecipeStage("five", <chisel:chisel_hitech>);

//Iron Chest
mods.recipestages.Recipes.setRecipeStage("five", <ironchest:iron_chest:5>);
mods.recipestages.Recipes.setRecipeStage("five", <ironchest:iron_chest:2>);
mods.recipestages.Recipes.setRecipeStage("five", <ironchest:gold_diamond_chest_upgrade>);
mods.recipestages.Recipes.setRecipeStage("five", <ironchest:diamond_crystal_chest_upgrade>);

//<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}})
//<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}})

mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:table_elite>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:table_ultimate>);

//Actually Additions
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_empowerer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_display_stand>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_atomic_reconstructor>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal:1>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal:3>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal:4>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal:5>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered:1>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered:3>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered:4>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_crystal_empowered:5>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay_advanced>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay_extreme>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay_fluids>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay_item>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_laser_relay_item_whitelist>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_ranged_collector>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantomface>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_placer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_liquiface>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_energyface>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_redstoneface>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_breaker>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_item_repairer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard:1>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard:3>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard:4>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_shard:5>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_engineer_goggles_advanced>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_engineer_goggles>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_laser_upgrade_range>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_laser_upgrade_invisibility>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_filling_wand>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_filling_wand>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_color_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_explosion_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_damage_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_more_damage_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_disenchanting_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_mining_lens>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal:1>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal:3>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal:4>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal:5>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered:1>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered:3>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered:4>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_crystal_empowered:5>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_red>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_light_blue>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_black>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_green>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_paxel_crystal_white>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_xp_solidifier>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_green_wall>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_white_wall>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_green_stairs>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_white_stairs>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_green_slab>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_white_slab>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_green_fence>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_testifi_bucks_white_fence>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_helm_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_misc:23>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_misc:24>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_misc:19>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_misc:18>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_phantom_booster>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_spawner_changer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_colored_lamp:*>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_player_probe>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_fluid_collector>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_fluid_placer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_dropper>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_placer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_breaker>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_inputter_advanced>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_inputter>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_lava_factory_controller>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_enervator>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_energizer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_lamp_powerer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_shock_suppressor>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_player_interface>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_item_viewer>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_firework_box>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_miner>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_leaf_generator>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_dust:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:diamond_paxel>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_shovel_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_axe_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pickaxe_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_leaf_blower_advanced>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_phantom_connector>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_tele_staff>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_boots_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_pants_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_chest_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:emerald_paxel>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_hoe_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_sword_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_potion_ring_advanced:*>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:block_colored_lamp:2>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_suction_ring>);
mods.recipestages.Recipes.setRecipeStage("five", <actuallyadditions:item_water_removal_ring>);

//Storage Drawers
mods.recipestages.Recipes.setRecipeStage("five", <storagedrawers:upgrade_storage:3>);
mods.recipestages.Recipes.setRecipeStage("five", <storagedrawers:upgrade_storage:4>);


//Diamond Stuff
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:diamond_horse_armor>);

mods.recipestages.Recipes.setRecipeStage("five", <betterbuilderswands:wanddiamond>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithmods:material:45>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithmods:material:46>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_spade>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_matchpick>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_machete>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_kukri>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_carpentersaw>);
mods.recipestages.Recipes.setRecipeStage("five", <betterwithaddons:diamond_masonpick>);
mods.recipestages.Recipes.setRecipeStage("five", <chiselsandbits:chisel_diamond>);
mods.recipestages.Recipes.setRecipeStage("five", <chiselsandbits:bitsaw_diamond>);
mods.recipestages.Recipes.setRecipeStage("five", <ironbackpacks:backpack>);
mods.recipestages.Recipes.setRecipeStage("five", <ironbackpacks:backpack>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:horse_upgrade_health>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:spikes_diamond>);
mods.recipestages.Recipes.setRecipeStage("five", <jaff:diamond_fishing_rod>);
mods.recipestages.Recipes.setRecipeStage("five", <pickletweaks:diamond_apple>);
mods.recipestages.Recipes.setRecipeStage("five", <pickletweaks:repair_kit:4>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_shovel>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_hoe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_hatchet>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_axe>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_workblade>);
mods.recipestages.Recipes.setRecipeStage("five", <primal:diamond_saw>);
mods.recipestages.Recipes.setRecipeStage("five", <roots:diamond_knife>);
mods.recipestages.Recipes.setRecipeStage("five", <roots:diamond_hammer>);

//NEEDS RECIPES
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:128>);

mods.recipestages.Recipes.setRecipeStage("five", <bedrockores:bedrock_miner>);

//Ender Storage
mods.recipestages.Recipes.setRecipeStage("five", <enderstorage:ender_storage>);
mods.recipestages.Recipes.setRecipeStage("five", <enderstorage:ender_storage:1>);
mods.recipestages.Recipes.setRecipeStage("five", <enderstorage:ender_pouch>);

//Shulker
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:purple_shulker_box>);

//Extended Crafting 
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:13>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:12>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:11>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:table_ultimate>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:table_elite>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:compressor>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:17>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:19>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:18>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:16>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:24>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:25>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:32>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:33>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:140>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:storage:2>);
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:storage:3>);

mods.recipestages.Recipes.setRecipeStage("five", <teslacorelib:gear_diamond>);

mods.recipestages.Recipes.setRecipeStage("five", <mysticalagradditions:tinkering_table>);

//End
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:end_rod>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:chorus_fruit>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:end_crystal>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:chorus_flower>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:elytra>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:chorus_plant>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:chorus_fruit_popped>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:dragon_breath>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:dragon_egg>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:purpur_block>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:purpur_pillar>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:purpur_slab>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:end_bricks>);
mods.recipestages.Recipes.setRecipeStage("five", <minecraft:end_stone>);
mods.recipestages.Recipes.setRecipeStage("five", <quark:end_bricks_wall>);
mods.recipestages.Recipes.setRecipeStage("five", <quark:end_bricks_slab>);
mods.recipestages.Recipes.setRecipeStage("five", <quark:end_bricks_stairs>);

////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:horse_upgrade_type>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_swap_match>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:book_ender>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:beacon_potion>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:password_remote>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:water_spreader>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_slowness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_weakness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_home>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:inventory_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:heart_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:apple_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:glowing_chorus>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:builder_pattern>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:charm_boat>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_spawn>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:magic_net>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:ender_wool>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_elevate>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_ender>);
