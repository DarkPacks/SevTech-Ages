#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

var itemsForStage as IIngredient[] = [
	<huntingdim:biome_changer:*>,
	<huntingdim:frame>,
	<immersiveengineering:stone_decoration:10>,
	<immersiveengineering:stone_decoration_slab:10>,
	<immersiveengineering:storage_slab:5>,
	<tconstruct:stone_ladder>,
	<teslacorelib:gear_stone>,

	/*
		Items by "type"
	*/
	//Brick
	<betterwithaddons:bricks_stained:*>,
	<minecraft:brick_block>,
	<minecraft:stone_slab:4>,
	<quark:polished_netherrack:1>,
	<quark:polished_netherrack_bricks_slab>,
	<quark:polished_netherrack_bricks_stairs>,
	<quark:polished_netherrack_bricks_wall>,
	<quark:stone_andesite_bricks_slab>,
	<quark:stone_andesite_bricks_stairs>,
	<quark:stone_andesite_bricks_wall>,
	<quark:stone_diorite_bricks_slab>,
	<quark:stone_diorite_bricks_stairs>,
	<quark:stone_diorite_bricks_wall>,
	<quark:stone_granite_bricks_slab>,
	<quark:stone_granite_bricks_stairs>,
	<quark:stone_granite_bricks_wall>,
	<quark:world_stone_bricks:*>,
	<tconstruct:brownstone:3>,
	<tconstruct:brownstone_slab2:1>,
	<tconstruct:brownstone_slab2:2>,
	<tconstruct:brownstone_slab:3>,
	<tconstruct:brownstone_slab:4>,
	<tconstruct:brownstone_slab:5>,
	<tconstruct:brownstone_slab:6>,
	<tconstruct:brownstone_stairs_brick>,
	<tconstruct:brownstone_stairs_brick_cracked>,
	<tconstruct:brownstone_stairs_brick_fancy>,
	<tconstruct:brownstone_stairs_brick_small>,
	<tconstruct:brownstone_stairs_brick_square>,
	<tconstruct:brownstone_stairs_brick_triangle>,
	<tconstruct:deco_ground>,
	<tconstruct:deco_ground_slab>,
	<tconstruct:dried_brick_stairs>,
	<tconstruct:dried_clay:1>,
	<tconstruct:dried_clay_slab:1>,
	<tconstruct:mudbrick_stairs>,
	<traverse:blue_rock_bricks>,
	<traverse:blue_rock_bricks_chiseled>,
	<traverse:blue_rock_bricks_slab>,
	<traverse:blue_rock_bricks_stairs>,
	<traverse:red_rock_bricks>,
	<traverse:red_rock_bricks_chiseled>,
	<traverse:red_rock_bricks_slab>,
	<traverse:red_rock_bricks_stairs>,

	//Fences and Doors
	<abyssalcraft:abydreadbrickfence>,
	<abyssalcraft:abyfence>,
	<abyssalcraft:cstonebrickfence>,
	<abyssalcraft:darkethaxiumbrickfence>,
	<abyssalcraft:dltfence>,
	<abyssalcraft:dreadbrickfence>,
	<abyssalcraft:drtfence>,
	<abyssalcraft:dsbfence>,
	<abyssalcraft:ethaxiumfence>,
	<minecraft:acacia_door>,
	<minecraft:acacia_fence>,
	<minecraft:acacia_fence_gate>,
	<minecraft:birch_door>,
	<minecraft:birch_fence>,
	<minecraft:birch_fence_gate>,
	<minecraft:dark_oak_door>,
	<minecraft:dark_oak_fence>,
	<minecraft:dark_oak_fence_gate>,
	<minecraft:fence>,
	<minecraft:fence_gate>,
	<minecraft:jungle_door>,
	<minecraft:jungle_fence>,
	<minecraft:jungle_fence_gate>,
	<minecraft:nether_brick_fence>,
	<minecraft:spruce_door>,
	<minecraft:spruce_fence>,
	<minecraft:spruce_fence_gate>,
	<minecraft:trapdoor>,
	<minecraft:wooden_door>,
	<natura:amaranth_fence>,
	<natura:amaranth_fence_gate>,
	<natura:bloodwood_fence>,
	<natura:bloodwood_fence_gate>,
	<natura:darkwood_fence>,
	<natura:darkwood_fence_gate>,
	<natura:eucalyptus_fence>,
	<natura:eucalyptus_fence_gate>,
	<natura:fusewood_fence>,
	<natura:fusewood_fence_gate>,
	<natura:ghostwood_fence>,
	<natura:ghostwood_fence_gate>,
	<natura:hopseed_fence>,
	<natura:hopseed_fence_gate>,
	<natura:maple_fence>,
	<natura:maple_fence_gate>,
	<natura:redwood_fence>,
	<natura:redwood_fence_gate>,
	<natura:sakura_fence>,
	<natura:sakura_fence_gate>,
	<natura:silverbell_fence>,
	<natura:silverbell_fence_gate>,
	<natura:tiger_fence>,
	<natura:tiger_fence_gate>,
	<natura:willow_fence>,
	<natura:willow_fence_gate>,
	<primal:fence:1>,
	<primal:fence:2>,
	<primal:fence:3>,
	<primal:fence>,
	<primal:gate_yew>,
	<quark:nether_brick_fence_gate>,
	<rustic:clay_wall_cross>,
	<rustic:clay_wall_diag>,
	<rustic:clay_wall>,
	<rustic:fence_gate_ironwood>,
	<rustic:fence_gate_olive>,
	<rustic:fence_ironwood>,
	<rustic:fence_olive>,
	<rustic:ironwood_door>,
	<rustic:olive_door>,
	<tallgates:tall_gate:1>,
	<tallgates:tall_gate:2>,
	<tallgates:tall_gate:3>,
	<tallgates:tall_gate:4>,
	<tallgates:tall_gate:5>,
	<tallgates:tall_gate>,
	<traverse:fir_door>,
	<traverse:fir_fence>,
	<traverse:fir_fence_gate>,

	//Stairs
	<minecraft:acacia_stairs>,
	<minecraft:birch_stairs>,
	<minecraft:brick_stairs>,
	<minecraft:dark_oak_stairs>,
	<minecraft:jungle_stairs>,
	<minecraft:nether_brick_stairs>,
	<minecraft:oak_stairs>,
	<minecraft:purpur_stairs>,
	<minecraft:quartz_stairs>,
	<minecraft:red_sandstone_stairs>,
	<minecraft:sandstone_stairs>,
	<minecraft:spruce_stairs>,
	<minecraft:stone_stairs>,
	<quark:hardened_clay_tiles_stairs>,
	<quark:prismarine_bricks_stairs>,
	<quark:prismarine_dark_stairs>,
	<quark:stained_clay_tiles_black_stairs>,
	<quark:stained_clay_tiles_blue_stairs>,
	<quark:stained_clay_tiles_brown_stairs>,
	<quark:stained_clay_tiles_cyan_stairs>,
	<quark:stained_clay_tiles_gray_stairs>,
	<quark:stained_clay_tiles_green_stairs>,
	<quark:stained_clay_tiles_light_blue_stairs>,
	<quark:stained_clay_tiles_lime_stairs>,
	<quark:stained_clay_tiles_magenta_stairs>,
	<quark:stained_clay_tiles_orange_stairs>,
	<quark:stained_clay_tiles_pink_stairs>,
	<quark:stained_clay_tiles_purple_stairs>,
	<quark:stained_clay_tiles_red_stairs>,
	<quark:stained_clay_tiles_silver_stairs>,
	<quark:stained_clay_tiles_white_stairs>,
	<quark:stained_clay_tiles_yellow_stairs>,
	<quark:stone_andesite_stairs>,
	<quark:stone_diorite_stairs>,
	<quark:stone_granite_stairs>,
	<quark:stone_stairs>,
	<rustic:stairs_ironwood>,
	<rustic:stairs_olive>,
	<tconstruct:dried_clay_stairs>,
	<traverse:blue_rock_cobblestone_stairs>,
	<traverse:fir_stairs>,
	<traverse:red_rock_cobblestone_stairs>,

	//Hoes
	<abyssalcraft:dhoe>,
	<cyclicmagic:sandstone_hoe>,
	<minecraft:stone_hoe>,
	<primal:flint_hoe>,

	/*
		Items by mod
	*/
	//Minecraft
	<minecraft:chest>,
	<minecraft:concrete:*>,
	<minecraft:concrete_powder:*>,
	<minecraft:flower_pot>,
	<minecraft:furnace>,
	<minecraft:item_frame>,
	<minecraft:lit_pumpkin>,
	<minecraft:tnt>,

	//Cyclic
	<cyclicmagic:apple>,

	//Ferdinand's Flowers
	<ferdinandsflowers:block_cobble_light:*>,
	<ferdinandsflowers:block_dirt_light:*>,
	<ferdinandsflowers:block_gravel_light>,
	<ferdinandsflowers:block_log_light:*>,
	<ferdinandsflowers:block_plank_light:*>,
	<ferdinandsflowers:block_sand_light>,
	<ferdinandsflowers:block_stone_light:*>,

	//Quark
	<quark:acacia_trapdoor>,
	<quark:birch_trapdoor>,
	<quark:dark_oak_trapdoor>,
	<quark:hardened_clay_tiles>,
	<quark:hardened_clay_tiles_slab>,
	<quark:jungle_trapdoor>,
	<quark:midori_block>,
	<quark:midori_block_slab>,
	<quark:midori_block_wall>,
	<quark:midori_pillar>,
	<quark:polished_stone>,
	<quark:spruce_trapdoor>,
	<quark:stained_clay_tiles:*>,
	<quark:stained_clay_tiles_black_slab>,
	<quark:stained_clay_tiles_blue_slab>,
	<quark:stained_clay_tiles_brown_slab>,
	<quark:stained_clay_tiles_cyan_slab>,
	<quark:stained_clay_tiles_gray_slab>,
	<quark:stained_clay_tiles_green_slab>,
	<quark:stained_clay_tiles_light_blue_slab>,
	<quark:stained_clay_tiles_lime_slab>,
	<quark:stained_clay_tiles_magenta_slab>,
	<quark:stained_clay_tiles_orange_slab>,
	<quark:stained_clay_tiles_pink_slab>,
	<quark:stained_clay_tiles_purple_slab>,
	<quark:stained_clay_tiles_red_slab>,
	<quark:stained_clay_tiles_silver_slab>,
	<quark:stained_clay_tiles_white_slab>,
	<quark:stained_clay_tiles_yellow_slab>,
	<quark:sturdy_stone>,

	//Abyssalcraft
	<abyssalcraft:crate>,
	<abyssalcraft:energypedestal>,
	<abyssalcraft:monolithpillar>,
	<abyssalcraft:rendingpedestal>,
	<abyssalcraft:sacrificialaltar>,
	<abyssalcraft:aaxe>,
	<abyssalcraft:aboots>,
	<abyssalcraft:ahelmet>,
	<abyssalcraft:ahoe>,
	<abyssalcraft:alegs>,
	<abyssalcraft:apick>,
	<abyssalcraft:aplate>,
	<abyssalcraft:ashovel>,
	<abyssalcraft:asword>,

	//Tinkers'
	<tconstruct:channel>,
	<tconstruct:edible:3>,
	<tconstruct:faucet>,
	<tconstruct:slime:3>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots>,
	<tconstruct:slime_congealed:3>,

	//Iron Chest
	<ironchest:iron_chest:7>,

	//Rustic
	<rustic:andesite_pillar>,
	<rustic:barrel>,
	<rustic:cabinet>,
	<rustic:chair_acacia>,
	<rustic:chair_big_oak>,
	<rustic:chair_birch>,
	<rustic:chair_ironwood>,
	<rustic:chair_jungle>,
	<rustic:chair_oak>,
	<rustic:chair_olive>,
	<rustic:chair_spruce>,
	<rustic:crop_stake>,
	<rustic:crushing_tub>,
	<rustic:diorite_pillar>,
	<rustic:evaporating_basin>,
	<rustic:granite_pillar>,
	<rustic:painted_wood_black>,
	<rustic:painted_wood_blue>,
	<rustic:painted_wood_brown>,
	<rustic:painted_wood_cyan>,
	<rustic:painted_wood_gray>,
	<rustic:painted_wood_green>,
	<rustic:painted_wood_light_blue>,
	<rustic:painted_wood_lime>,
	<rustic:painted_wood_magenta>,
	<rustic:painted_wood_orange>,
	<rustic:painted_wood_pink>,
	<rustic:painted_wood_purple>,
	<rustic:painted_wood_red>,
	<rustic:painted_wood_silver>,
	<rustic:painted_wood_white>,
	<rustic:painted_wood_yellow>,
	<rustic:rope>,
	<rustic:slate_pillar>,
	<rustic:stone_pillar>,
	<rustic:table_acacia>,
	<rustic:table_big_oak>,
	<rustic:table_birch>,
	<rustic:table_ironwood>,
	<rustic:table_jungle>,
	<rustic:table_oak>,
	<rustic:table_olive>,
	<rustic:table_spruce>,
	<rustic:vase>,

	//Ceramics
	<ceramics:channel>,
	<ceramics:clay_barrel_stained:*>,
	<ceramics:clay_barrel_stained_extension:*>,
	<ceramics:clay_barrel_unfired:2>,
	<ceramics:clay_barrel_unfired:3>,
	<ceramics:clay_barrel_unfired>,
	<ceramics:clay_boots>,
	<ceramics:clay_chestplate>,
	<ceramics:clay_hard:1>,
	<ceramics:clay_hard:2>,
	<ceramics:clay_hard:4>,
	<ceramics:clay_hard:5>,
	<ceramics:clay_hard:6>,
	<ceramics:clay_hard>,
	<ceramics:clay_helmet>,
	<ceramics:clay_leggings>,
	<ceramics:clay_shears>,
	<ceramics:clay_slab:1>,
	<ceramics:clay_slab:2>,
	<ceramics:clay_slab:4>,
	<ceramics:clay_slab:5>,
	<ceramics:clay_slab:6>,
	<ceramics:clay_slab>,
	<ceramics:clay_wall:1>,
	<ceramics:clay_wall:2>,
	<ceramics:clay_wall:3>,
	<ceramics:clay_wall:5>,
	<ceramics:clay_wall:6>,
	<ceramics:clay_wall:7>,
	<ceramics:clay_wall>,
	<ceramics:dark_bricks_stairs>,
	<ceramics:dragon_bricks_stairs>,
	<ceramics:faucet>,
	<ceramics:lava_bricks_stairs>,
	<ceramics:marine_bricks_stairs>,
	<ceramics:porcelain:1>,
	<ceramics:porcelain:2>,
	<ceramics:porcelain:3>,
	<ceramics:porcelain:4>,
	<ceramics:porcelain:5>,
	<ceramics:porcelain:6>,
	<ceramics:porcelain:7>,
	<ceramics:porcelain:8>,
	<ceramics:porcelain:9>,
	<ceramics:porcelain:10>,
	<ceramics:porcelain:11>,
	<ceramics:porcelain:12>,
	<ceramics:porcelain:13>,
	<ceramics:porcelain:14>,
	<ceramics:porcelain:15>,
	<ceramics:porcelain>,
	<ceramics:porcelain_barrel:*>,
	<ceramics:porcelain_barrel_extension:*>,
	<ceramics:porcelain_bricks_stairs>,
	<ceramics:rainbow_bricks_stairs>,
	<ceramics:rainbow_clay:1>,
	<ceramics:rainbow_clay:2>,
	<ceramics:rainbow_clay:3>,
	<ceramics:rainbow_clay:4>,
	<ceramics:rainbow_clay:5>,
	<ceramics:rainbow_clay:6>,
	<ceramics:rainbow_clay:7>,
	<ceramics:rainbow_clay>,
	<ceramics:unfired_clay:1>,
	<ceramics:unfired_clay:8>,

	//Better With Mods
	<betterwithaddons:bag:1>,
	<betterwithaddons:bag:2>,
	<betterwithaddons:bag:3>,
	<betterwithaddons:bag:4>,
	<betterwithaddons:bag:5>,
	<betterwithaddons:bag:8>,
	<betterwithaddons:bag:9>,
	<betterwithaddons:bag:10>,
	<betterwithaddons:bag:13>,
	<betterwithaddons:bag:*>,
	<betterwithaddons:bag>,
	<betterwithaddons:bolt:1>,
	<betterwithaddons:bolt:6>,
	<betterwithaddons:bolt>,
	<betterwithaddons:chute>,
	<betterwithaddons:crate:1>,
	<betterwithaddons:crate:2>,
	<betterwithaddons:crate:3>,
	<betterwithaddons:crate:4>,
	<betterwithaddons:crate:5>,
	<betterwithaddons:crate:6>,
	<betterwithaddons:crate:7>,
	<betterwithaddons:crate:8>,
	<betterwithaddons:crate:9>,
	<betterwithaddons:crate:10>,
	<betterwithaddons:crate:11>,
	<betterwithaddons:crate:*>,
	<betterwithaddons:crate>,
	<betterwithaddons:elytra_magma>,
	<betterwithaddons:fusuma>,
	<betterwithaddons:inverted_gearbox>,
	<betterwithaddons:japanmat:10>,
	<betterwithaddons:laxative>,
	<betterwithaddons:loom>,
	<betterwithaddons:scaffold>,
	<betterwithaddons:shoji>,
	<betterwithaddons:weight_stone>,
	<betterwithaddons:weight_wood>,
	<betterwithmods:aesthetic:4>,
	<betterwithmods:aesthetic:5>,
	<betterwithmods:aesthetic:9>,
	<betterwithmods:anchor>,
	<betterwithmods:axle_generator:2>,
	<betterwithmods:axle_generator>,
	<betterwithmods:bamboo_chime:*>,
	<betterwithmods:candle:1>,
	<betterwithmods:candle:2>,
	<betterwithmods:candle:3>,
	<betterwithmods:candle:4>,
	<betterwithmods:candle:5>,
	<betterwithmods:candle:6>,
	<betterwithmods:candle:7>,
	<betterwithmods:candle:8>,
	<betterwithmods:candle:9>,
	<betterwithmods:candle:10>,
	<betterwithmods:candle:11>,
	<betterwithmods:candle:12>,
	<betterwithmods:candle:13>,
	<betterwithmods:candle:14>,
	<betterwithmods:candle:15>,
	<betterwithmods:candle>,
	<betterwithmods:grate:*>,
	<betterwithmods:hemp>,
	<betterwithmods:material:11>,
	<betterwithmods:material:21>,
	<betterwithmods:material:22>,
	<betterwithmods:material:41>,
	<betterwithmods:platform>,
	<betterwithmods:screw_pump>,
	<betterwithmods:single_machine:1>,
	<betterwithmods:slats:*>,
	<betterwithmods:vase:*>,

	//Bibliocraft
	<bibliocraft:shelf:1>,
	<bibliocraft:shelf:2>,
	<bibliocraft:shelf:3>,
	<bibliocraft:shelf:4>,
	<bibliocraft:shelf:5>,
	<bibliocraft:shelf:6>,
	<bibliocraft:shelf>,
	<bibliocraft:toolrack:*>,

	//Dark Utils
	<darkutils:charm_gluttony>,
	<darkutils:charm_sleep>,
	<darkutils:slime_dyed:*>,

	//Actually Additions
	<actuallyadditions:block_misc:1>,
	<actuallyadditions:block_misc:2>,
	<actuallyadditions:block_misc>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_boots_quartz>,
	<actuallyadditions:item_chest_quartz>,
	<actuallyadditions:item_helm_quartz>,
	<actuallyadditions:item_hoe_quartz>,
	<actuallyadditions:item_misc:5>,
	<actuallyadditions:item_pants_quartz>,
	<actuallyadditions:item_pickaxe_quartz>,
	<actuallyadditions:item_shovel_quartz>,
	<actuallyadditions:item_sword_quartz>,
	<actuallyadditions:quartz_paxel>,

	//Blood Magic
	<bloodmagic:blood_rune:1>,
	<bloodmagic:blood_rune>,
	<bloodmagic:incense_altar>,
	<bloodmagic:path:1>,
	<bloodmagic:path>,

	// Chisel
	<chisel:chisel_iron>
];

for item in itemsForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, item);
}

//Set stage by recipe name
var recipesForStage as string[] = [
	"betterwithaddons:uncompress_slime"
];

for recipeName in recipesForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, recipeName);
}

/////
//
//Off and still need recipes for this stage
//
////

//buttons
mods.recipestages.Recipes.setRecipeStage("one", <minecraft:stone_button>);
mods.recipestages.Recipes.setRecipeStage("one", <minecraft:wooden_button>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:dsbutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:dltbutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:abybutton>);
mods.recipestages.Recipes.setRecipeStage("one", <abyssalcraft:cstonebutton>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:nether_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:maple_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:silverbell_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:amaranth_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:tiger_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:willow_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:eucalyptus_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:hopseed_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:sakura_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:redwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:ghostwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:bloodwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:darkwood_button>);
mods.recipestages.Recipes.setRecipeStage("one", <natura:fusewood_button>);

mods.recipestages.Recipes.addShapeless("one", <minecraft:stone_button>, [<minecraft:stone>]);
mods.recipestages.Recipes.addShapeless("one", <minecraft:wooden_button>, [plank]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:dsbutton>, [<abyssalcraft:stone>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:dltbutton>, [<abyssalcraft:dltlog>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:abybutton>, [<abyssalcraft:stone:1>]);
mods.recipestages.Recipes.addShapeless("one", <abyssalcraft:cstonebutton>, [<abyssalcraft:stone:4>]);

////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_spade>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:plate_launch_large>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:tool_harvest_leaves>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:plate_launch_small>);
mods.recipestages.Recipes.setRecipeStage("one", <cyclicmagic:sandstone_axe>);
mods.recipestages.Recipes.setRecipeStage("one", <rustic:book>);
