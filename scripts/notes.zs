//
//Tinkers Stages
//
//GENERAL RESTRICTIONS
//Prevents all tools unless the stage is unlocked.
//mods.TinkerStages.addGeneralCraftingStage("one");

//Prevents all tool swapping unless the stage is unlcoked.
//mods.TinkerStages.addGeneralPartReplacingStage("one");

//Prvents all part building unless the stage is unlocked.
//mods.TinkerStages.addGeneralPartBuildingStage("one");

//Prevents applying any tool modifiers unless the stage is unlocked.
//mods.TinkerStages.addGeneralModifierStage("one");

//SPECIFIC RESTRICTIONS
//Prevents crafting pickaxes unless the stage is unlocked.
//mods.TinkerStages.addToolTypeStage("two", "tconstruct:pickaxe");

//Prevents the material from being used.
//mods.TinkerStages.addMaterialStage("two", "stone");

//Prevents the modifier from being applied.
//mods.TinkerStages.addModifierStage("two", "mending_moss");




//
//BASE
//
//import mods.contenttweaker.VanillaFactory;
//import mods.contenttweaker.Block;
//
//var antiIceBlock = VanillaFactory.createBlock("anti_ice", <blockmaterial:ice>);
//antiIceBlock.setLightOpacity(3);
//antiIceBlock.setBlockLayer("TRANSLUCENT");
//antiIceBlock.setLightValue(0);
//antiIceBlock.setBlockHardness(5.0);
//antiIceBlock.setBlockResistance(5.0);
//antiIceBlock.setToolClass("pickaxe");
//antiIceBlock.setToolLevel(0);
//antiIceBlock.setBlockSoundType(<soundtype:snow>);
//antiIceBlock.setSlipperiness(0.1);
//antiIceBlock.setOnBlockBreak(function(world, blockPos, blockState) {
//    world.setBlockState(<block:minecraft:lava>, blockPos);
//	}
//);
//
//antiIceBlock.register();//////////
//
//
//
////////////
//// Calls
////////////
//import mods.contenttweaker.MaterialSystem;
//import mods.contenttweaker.Material;
//
////////////////
//// Variables
////////////////
//var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build();
//var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build();
//var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build();
//var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build();
//var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build();
//
//var material_list = [copper, tin, silver, lead, cobalt] as Material[];
//var part_names = ["dust", "nugget", "ingot", "gear", "plate", "dense_plate", "beam", "bolt", "rod"] as string[];
//var ore_types = ["poor_ore", "ore", "dense_ore"] as string[];
//
/////////////////////////////
//// Material registration
/////////////////////////////
//
//for i, material in material_list {
//    material.registerParts(part_names);
//
//    var ores = material.registerParts(ore_types);
//    for i, ore in ores {
//        var oreData = ore.getData();
//        oreData.addDataValue("variants", "minecraft:stone,minecraft:end_stone,minecraft:netherrack");
//        oreData.addDataValue("hardness", "3,3,3");
//        oreData.addDataValue("resistance", "15,15,15");
//        oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
//        oreData.addDataValue("harvestLevel", "1,1,1");
//    }
//
//    var blockData = material.registerPart("block").getData();
//    blockData.addDataValue("hardness", "5");
//    blockData.addDataValue("resistance", "30");
//    blockData.addDataValue("harvestTool", "pickaxe");
//    blockData.addDataValue("harvestLevel", "1");
//}


//Block Hardness change
//<minecraft:dirt>.hardness = 5




//Extended Crafting Brought to you by BlakeCo.
// Extended Crafting CraftTweaker syntax
// Combination crafting
// rfPerTick is pretty much used to say how many ticks it should take to craft (rfCost/rfPerTick), might make it optional and add a configurable default for C O N V E N I E N C E
// inputStack is the item you put on the Crafting Core
// pedestalStack is one of the items you place on a pedestal to be combined with the input; you can have up to 48 of these, not sure why anyone would want that (and you probably wouldnt be able to see the ingredients in jei)
//mods.extendedcrafting.CombinationCrafting.addRecipe(<outputStack>, rfCost, rfPerTick, <inputStack>, [<pedestalStack>, <pedestalStack>]);
//
// Table Crafting
// Shapeless - this is the same for all of them, with the size of the input deciding which table it's for, max is 81 stacks
// I most likely will make it so you can optionally set a recipe to a specific tier
//mods.extendedcrafting.TableCrafting.addShapeless(<outputStack>, [<inputStack>, <inputStack>]);
//
// Shaped - same syntax for all of them, also note that the recipes will work in all the tables with enough slots
// Probably gonna add the ability to set a tier for these as well
//mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);
//mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);
//mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);
//
// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
//mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);


//removing all chest loot:

//Use string array for loot table names, then use a "for loop" to get them and call
//LootTable.clear()


//for item in loadedMods["primal"].items {
//recipes.remove(item);
//mods.jei.JEI.hideAndRemove(item);
//mods.jei.JEI.hide(item);
//}



//backgrounds are : adventure, end, husbandry, nether and stone

/*
95 JSON files discovered.
C: \ Temp \ structures \ aurora_boss \ aurora_boss.json
C: \ Temp \ structures \ aurora_cache \ aurora_cache.json

C: \ Temp \ structures \ aurora_cache \ common.json
minecraft: stick
minecraft: coal
minecraft arrow
twilight forest: maze_wafer
minecraft: ice
minecraft: packed_ice
twilight forest: ironwood_ingot

C: \ Temp \ structures \ aurora_cache \ rare.json
twilight forest: arctic_fur
twilight forest: ice_bow
twilight forest: ender_bow
twilight forest: ice_sword

C: \ Temp \ structures \ aurora_cache \ ultrarare.json
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book

C: \ Temp \ structures \ aurora_cache \ uncommon.json
twilight forest: aurora_block
twilight forest: ironwood_ingot
twilight forest: firefly
twilight forest: charm_of_keeping_1
twilight forest: arctic_fur

C: \ Temp \ structures \ aurora_room \ aurora_room.json

C: \ Temp \ structures \ aurora_room \ common.json
minecraft: ice
minecraft: packed_ice
twilight forest: maze_wafer
twilight forest: ice_bomb
twilight forest: firefly

C: \ Temp \ structures \ aurora_room \ rare.json
twilight forest: ice_bow
twilight forest: ender_bow
twilight forest: ice_sword
twilight forest: glass_sword

C: \ Temp \ structures \ aurora_room \ uncommon.json
twilight forest: arctic_fur
twilight forest: arctic_leggings
twilight forest: arctic_chestplate
twilight forest: arctic_helmet
twilight forest: arctic_boots
twilight forest: knightmetal_chestplate
twilight forest: knightmetal_sword
twilight forest: charm_of_life_1

C: \ Temp \ structures \ basement \ basement.json

C: \ Temp \ structures \ basement \ common.json
minecraft: potion
minecraft: rotten_flesh
minecraft: poisonous_potato
minecraft: wheat
minecraft: potato
minecraft: carrot
minecraft: melon
minecraft: water_bucket
minecraft: torch
minecraft: mushroom_stew
minecraft: milk_bucket
minecraft: melon_seeds

C: \ Temp \ structures \ basement \ rare.json
minecraft: speckled_melon
minecraft: apple
minecraft: map
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ basement \ ultrarare.json
minecraft: golden_apple
minecraft: golden_carrot
minecraft: cake
minecraft: boat
twilight forest: twilight_sapling

C: \ Temp \ structures \ basement \ uncommon.json
minecraft: bread
minecraft: cooked_beef
minecraft: cooked_porkchop
minecraft: baked_potato
minecraft: cooked_chicken
minecraft: cooked_fish

C: \ Temp \ structures \ darktower_boss \ common.json
twilight forest: carminite

C: \ Temp \ structures \ darktower_boss \ darktower_boss.json

C: \ Temp \ structures \ darktower_boss \ rare.json
twilight forest: trophy

C: \ Temp \ structures \ darktower_boss \ uncommon.json
twilight forest: fiery_tears

C: \ Temp \ structures \ darktower_cache \ common.json
minecraft: stick
minecraft: coal
minecraft arrow
twilight forest: experiment_115
minecraft: wool
minecraft: redstone

C: \ Temp \ structures \ darktower_cache \ darktower_cache.json

C: \ Temp \ structures \ darktower_cache \ rare.json
twilight forest: steeleaf_ingot
minecraft: diamond

C: \ Temp \ structures \ darktower_cache \ uncommon.json
minecraft: redstone_lamp
minecraft: iron_ingot
twilight forest: ironwood_ingot
twilight forest: firefly
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ darktower_key \ common.json
minecraft: iron_ingot
twilight forest: experiment_115
minecraft: gunpowder
twilight forest: ironwood_ingot
twilight forest: firefly
minecraft: redstone
minecraft: glowstone_dust

C: \ Temp \ structures \ darktower_key \ darktower_key.json
twilight forest: tower_key

C: \ Temp \ structures \ darktower_key \ rare.json
twilight forest: charm_of_life_1
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book

C: \ Temp \ structures \ darktower_key \ uncommon.json
twilight forest: steeleaf_ingot
twilight forest: steeleaf_leggings
twilight forest: steeleaf_chestplate
twilight forest: steeleaf_helmet
twilight forest: steeleaf_boots
twilight forest: steeleaf_pickaxe
twilight forest: ironwood_chestplate
twilight forest: ironwood_sword
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ hedge_maze \ common.json
minecraft: planks
minecraft: brown_mushroom
minecraft: red_mushroom
minecraft: wheat
minecraft: string
minecraft: stick

C: \ Temp \ structures \ hedge_maze \ hedge_maze.json

C: \ Temp \ structures \ hedge_maze \ rare.json
minecraft: web
minecraft: shears
minecraft: saddle
minecraft: bow
minecraft: apple

C: \ Temp \ structures \ hedge_maze \ ultrarare.json
minecraft: diamond_hoe
minecraft: diamond
minecraft: mushroom_stew
minecraft: golden_apple

C: \ Temp \ structures \ hedge_maze \ uncommon.json
minecraft: melon
minecraft: melon_seeds
minecraft: pumpkin_seeds
minecraft arrow
twilight forest: firefly

C: \ Temp \ structures \ hill_1 \ common.json
minecraft: iron_ingot
minecraft: wheat
minecraft: string
minecraft: bucket

C: \ Temp \ structures \ hill_1 \ hill_1.json

C: \ Temp \ structures \ hill_1 \ rare.json
minecraft: gold_ingot
minecraft: iron_pickaxe
twilight forest: liveroot

C: \ Temp \ structures \ hill_1 \ ultrarare.json
twilight forest: transformation_powder
minecraft: diamond
twilight forest: steeleaf_ingot

C: \ Temp \ structures \ hill_1 \ uncommon.json
minecraft: bread
twilight forest: ore_magnet
minecraft: gunpowder
minecraft arrow
minecraft: torch

C: \ Temp \ structures \ hill_2 \ common.json
minecraft: iron_ingot
minecraft: carrot
minecraft: ladder
minecraft: bucket

C: \ Temp \ structures \ hill_2 \ hill_2.json

C: \ Temp \ structures \ hill_2 \ rare.json
twilight forest: naga_scale
twilight forest: uncrafting_table
twilight forest: transformation_powder

C: \ Temp \ structures \ hill_2 \ ultrarare.json
twilight forest: peacock_fan
minecraft: emerald
minecraft: diamond
twilight forest: charm_of_life_1

C: \ Temp \ structures \ hill_2 \ uncommon.json
minecraft: baked_potato
twilight forest: ore_magnet
twilight forest: ironwood_ingot
minecraft arrow
minecraft: torch

C: \ Temp \ structures \ hill_3 \ common.json
minecraft: gold_nugget
minecraft: potato
minecraft: fish
twilight forest: berries torch

C: \ Temp \ structures \ hill_3 \ hill_3.json

C: \ Temp \ structures \ hill_3 \ rare.json
twilight forest: naga_scale
twilight forest: ironwood_pickaxe
twilight forest: transformation_powder

C: \ Temp \ structures \ hill_3 \ ultrarare.json
twilight forest: moonworm_queen
twilight forest: twilight_sapling
minecraft: diamond
twilight forest: charm_of_life_1
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ hill_3 \ uncommon.json
minecraft: pumpkin_pie
twilight forest: ore_magnet
minecraft: gunpowder
minecraft arrow
minecraft: torch
twilight forest: steeleaf_ingot

C: \ Temp \ structures \ labyrinth_dead_end \ common.json
minecraft: stick
minecraft: coal
minecraft arrow
twilight forest: maze_wafer
minecraft: paper
minecraft: leather
minecraft: mushroom_stew

C: \ Temp \ structures \ labyrinth_dead_end \ labyrinth_dead_end.json

C: \ Temp \ structures \ labyrinth_dead_end \ rare.json
twilight forest: steeleaf_ingot
minecraft: golden_apple
minecraft: blaze_rod

C: \ Temp \ structures \ labyrinth_dead_end \ uncommon.json
minecraft: milk_bucket
minecraft: paper
minecraft: iron_ingot
twilight forest: ironwood_ingot
twilight forest: firefly
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ labyrinth_room \ common.json
minecraft: iron_ingot
twilight forest: maze_wafer
minecraft: gunpowder
twilight forest: ironwood_ingot
twilight forest: firefly
minecraft: milk_bucket

C: \ Temp \ structures \ labyrinth_room \ labyrinth_room.json

C: \ Temp \ structures \ labyrinth_room \ rare.json
twilight forest: maze_map_focus
minecraft: tnt
minecraft: potion

C: \ Temp \ structures \ labyrinth_room \ uncommon.json
twilight forest: steeleaf_ingot
twilight forest: steeleaf_leggings
twilight forest: steeleaf_chestplate
twilight forest: steeleaf_helmet
twilight forest: steeleaf_boots
twilight forest: steeleaf_pickaxe
twilight forest: ironwood_chestplate
twilight forest: ironwood_sword
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ labyrinth_vault \ common.json
minecraft: iron_ingot
minecraft: emerald
twilight forest: maze_wafer
twilight forest: ironwood_ingot
minecraft: potion
minecraft: potion
minecraft: potion

C: \ Temp \ structures \ labyrinth_vault \ labyrinth_vault.json

C: \ Temp \ structures \ labyrinth_vault \ rare.json
minecraft: emerald_block
minecraft: ender_chest
twilight forest: steeleaf_pickaxe
twilight forest: steeleaf_sword
twilight forest: steeleaf_sword
twilight forest: mazebreaker_pickaxe

C: \ Temp \ structures \ labyrinth_vault \ uncommon.json
minecraft: bow
minecraft: bow
twilight forest: steeleaf_shovel
twilight forest: steeleaf_axe
twilight forest: steeleaf_ingot
twilight forest: steeleaf_chestplate
twilight forest: steeleaf_leggings
twilight forest: steeleaf_boots
twilight forest: steeleaf_helmet

C: \ Temp \ structures \ stronghold_boss \ common.json
twilight forest: knightmetal_sword
twilight forest: knightmetal_pickaxe
twilight forest: knightmetal_axe

C: \ Temp \ structures \ stronghold_boss \ rare.json
twilight forest: phantom_helmet
twilight forest: phantom_chestplate

C: \ Temp \ structures \ stronghold_boss \ stronghold_boss.json

C: \ Temp \ structures \ stronghold_boss \ uncommon.json
twilight forest: phantom_helmet
twilight forest: phantom_chestplate

C: \ Temp \ structures \ stronghold_cache \ common.json
minecraft: stick
minecraft: coal
minecraft arrow
twilight forest: maze_wafer
minecraft: wool
minecraft: iron_ingot

C: \ Temp \ structures \ stronghold_cache \ rare.json
twilight forest: knightmetal_ingot
minecraft: bow
minecraft: iron_sword
twilight forest: ironwood_sword
twilight forest: steeleaf_sword

C: \ Temp \ structures \ stronghold_cache \ stronghold_cache.json

C: \ Temp \ structures \ stronghold_cache \ ultrarare.json
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book
minecraft: enchanted_book

C: \ Temp \ structures \ stronghold_cache \ uncommon.json
minecraft: bucket
minecraft: iron_ingot
twilight forest: ironwood_ingot
twilight forest: firefly
twilight forest: charm_of_keeping_1
twilight forest: armor_shard

C: \ Temp \ structures \ stronghold_room \ common.json
minecraft: iron_ingot
twilight forest: maze_wafer
minecraft: gunpowder
twilight forest: ironwood_ingot
twilight forest: firefly
minecraft: milk_bucket

C: \ Temp \ structures \ stronghold_room \ rare.json
twilight forest: maze_map_focus
minecraft: bow
minecraft: iron_sword
twilight forest: ironwood_sword
twilight forest: steeleaf_sword
minecraft: diamond_sword

C: \ Temp \ structures \ stronghold_room \ stronghold_room.json

C: \ Temp \ structures \ stronghold_room \ uncommon.json
twilight forest: steeleaf_ingot
twilight forest: steeleaf_leggings
twilight forest: steeleaf_chestplate
twilight forest: steeleaf_helmet
twilight forest: steeleaf_boots
twilight forest: steeleaf_pickaxe
twilight forest: ironwood_chestplate
twilight forest: ironwood_sword
twilight forest: charm_of_life_1

C: \ Temp \ structures \ tower_library \ common.json
minecraft: glass_bottle
minecraft: potion
minecraft: ladder
minecraft: paper
minecraft: bone
minecraft: gold_nugget
minecraft: clay_ball

C: \ Temp \ structures \ tower_library \ rare.json
minecraft: bow
minecraft: stone_sword
minecraft: wooden_sword
minecraft: splash_potion
minecraft: potion
minecraft: potion
minecraft: potion

C: \ Temp \ structures \ tower_library \ tower_library.json

C: \ Temp \ structures \ tower_library \ ultrarare.json
minecraft: golden_pickaxe
minecraft: iron_sword
minecraft: bow
minecraft: bookshelf
minecraft: ender_pearl
minecraft: experience_bottle

C: \ Temp \ structures \ tower_library \ uncommon.json
minecraft: iron_leggings
minecraft: fire_charge
minecraft: book
minecraft: map
minecraft: potion
minecraft: potion
minecraft: potion

C: \ Temp \ structures \ tower_room \ common.json
minecraft: glass_bottle
minecraft: potion
minecraft: sugar
minecraft: spider_eye
minecraft: ghast_tear
minecraft: magma_cream
minecraft: fermented_spider_eye
minecraft: speckled_melon
minecraft: blaze_powder
minecraft: paper

C: \ Temp \ structures \ tower_room \ rare.json
minecraft: golden_helmet
minecraft: potion
minecraft: potion
minecraft: splash_potion
minecraft: splash_potion
twilight forest: transformation_powder
twilight forest: charm_of_life_1
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ tower_room \ tower_room.json

C: \ Temp \ structures \ tower_room \ ultrarare.json
minecraft: golden_axe
minecraft: ender_pearl
minecraft: obsidian
minecraft: diamond
twilight forest: moonworm_queen
twilight forest: peacock_fan

C: \ Temp \ structures \ tower_room \ uncommon.json
minecraft: golden_sword
minecraft: golden_sword
minecraft: potion
minecraft: potion
minecraft: potion
minecraft: potion

C: \ Temp \ structures \ tree_cache \ common.json
minecraft: poisonous_potato
minecraft: wheat
minecraft: potato
minecraft: carrot
minecraft: melon
minecraft: water_bucket
minecraft: milk_bucket
minecraft: melon_seeds

C: \ Temp \ structures \ tree_cache \ rare.json
minecraft: pumpkin_pie
minecraft: apple
twilight forest: charm_of_life_1
twilight forest: charm_of_keeping_1

C: \ Temp \ structures \ tree_cache \ tree_cache.json

C: \ Temp \ structures \ tree_cache \ ultrarare.json
twilight forest: twilight_sapling
twilight forest: twilight_sapling
twilight forest: twilight_sapling
twilight forest: twilight_sapling
twilight forest: twilight_sapling

C: \ Temp \ structures \ tree_cache \ uncommon.json
twilight forest: firefly
twilight forest: twilight_sapling
twilight forest: twilight_sapling
twilight forest: twilight_sapling
twilight forest: twilight_sapling

C: \ Temp \ structures \ troll_garden \ common.json
minecraft: red_mushroom
minecraft: brown_mushroom
minecraft: wheat_seeds
minecraft: carrot
minecraft: potato
minecraft: melon_seeds
minecraft: dye

C: \ Temp \ structures \ troll_garden \ rare.json
twilight forest: magic_beans

C: \ Temp \ structures \ troll_garden \ troll_garden.json

C: \ Temp \ structures \ troll_garden \ uncommon.json
twilight forest: uberous_soil

C: \ Temp \ structures \ troll_vault \ common.json
minecraft: coal
twilight forest: berries torch
minecraft: emerald

C: \ Temp \ structures \ troll_vault \ rare.json
twilight forest: lamp_of_cinders

C: \ Temp \ structures \ troll_vault \ troll_vault.json

C: \ Temp \ structures \ troll_vault \ uncommon.json
twilight forest troll Steinn
minecraft: obsidian

95 files run through
*/



/*
// Extended Crafting CraftTweaker syntax
// Combination crafting
// rfPerTick is pretty much used to say how many ticks it should take to craft (rfCost/rfPerTick), might make it optional and add a configurable default for C O N V E N I E N C E
// inputStack is the item you put on the Crafting Core
// pedestalStack is one of the items you place on a pedestal to be combined with the input; you can have up to 48 of these, not sure why anyone would want that (and you probably wouldnt be able to see the ingredients in jei)
mods.extendedcrafting.CombinationCrafting.addRecipe(<outputStack>, rfCost, rfPerTick, <inputStack>, [<pedestalStack>, <pedestalStack>]);

// Table Crafting
// Shapeless - this is the same for all of them, with the size of the input deciding which table it's for, max is 81 stacks
// I most likely will make it so you can optionally set a recipe to a specific tier
mods.extendedcrafting.TableCrafting.addShapeless(<outputStack>, [<inputStack>, <inputStack>]);

// Shaped - same syntax for all of them, also note that the recipes will work in all the tables with enough slots
// Probably gonna add the ability to set a tier for these as well
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);

// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);
*/




//if you want a list of files in a folder just open a cmd window in the folder and go dir > " filename.txt "
