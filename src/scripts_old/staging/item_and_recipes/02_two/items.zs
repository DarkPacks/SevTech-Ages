#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

var modIDs as string[] = [
	"thebetweenlands",
	"twilightforest",
	"uppers"
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(STAGE, item);
    }
}

var stage2Items as IIngredient[] = [
	<appliedenergistics2:crank>,
	<appliedenergistics2:grindstone>,
	<appliedenergistics2:material:46>, //Ender dust
	<extendedcrafting:handheld_table>,
	<materialpart:stone:nugget>,
	<pneumaticcraft:liquid_hopper>,
	<prospectors:prospector_low>,
	<stevescarts:cartmodule>, //Steves Carts Stage 3 Trigger Item
	<twilightforest:spiral_bricks>,
	<weirdinggadget:weirding_gadget>,
	<yoyos:book>,

	/*
		Items by "type"
	*/
	//Iron Stuff
	<betterbuilderswands:wandiron>,

	//Gold Stuff
	<chiselsandbits:chisel_gold>,
	<nex:tool_axe_bone>,
	<nex:tool_hammer_bone>,
	<nex:tool_hoe_bone>,
	<nex:tool_pickaxe_bone>,
	<nex:tool_shovel_bone>,
	<nex:tool_sword_bone>,

	/*
		Items by mod
	*/
	//Extended Crafting
	<extendedcrafting:guide>,
	<extendedcrafting:material:8>,
	<extendedcrafting:material:14>,
	<extendedcrafting:table_basic>,

	//Geolosys
	<geolosys:cluster:1>,
	<geolosys:cluster>,
	<geolosys:ore>,
	<geolosys:ore_sample>,
	<geolosys:ore_sample_vanilla:2>,
	<geolosys:ore_sample_vanilla:3>,
	<geolosys:ore_vanilla:2>,
	<geolosys:ore_vanilla:3>,

	//Super Sound Muffler
	<supersoundmuffler:sound_muffler>,
	<supersoundmuffler:sound_muffler_bauble>,

	//Jaff
	<jaff:fish_bucket_clownfish>,
	<jaff:fish_bucket_cod>,
	<jaff:fish_bucket_pufferfish>,
	<jaff:fish_bucket_salmon>,
	<jaff:tank>,

	//Betweenlands
	<thebetweenlands:aspectrus_fruit>,
	<thebetweenlands:bl_bucket_infusion>,
	<thebetweenlands:bog_bean_stalk>,
	<thebetweenlands:golden_club_stalk>,
	<thebetweenlands:marsh_marigold_stalk>,
	<thebetweenlands:present>,
	<thebetweenlands:syrmorite_bucket_solid_rubber>,

	//Storage Drawers
	<storagedrawers:customdrawers:1>,
	<storagedrawers:customdrawers:2>,
	<storagedrawers:customdrawers:3>,
	<storagedrawers:customdrawers:4>,
	<storagedrawers:customdrawers>,
	<storagedrawers:customtrim>,
	<storagedrawers:drawer_key>,
	<storagedrawers:framingtable>,
	<storagedrawers:personal_key>,
	<storagedrawers:quantify_key>,
	<storagedrawers:shroud_key>,
	<storagedrawers:tape>,
	<storagedrawers:trim:1>,
	<storagedrawers:trim:2>,
	<storagedrawers:trim:3>,
	<storagedrawers:trim:4>,
	<storagedrawers:trim:5>,
	<storagedrawers:trim>,
	<storagedrawers:upgrade_conversion>,
	<storagedrawers:upgrade_one_stack>,
	<storagedrawers:upgrade_storage:1>,
	<storagedrawers:upgrade_storage>,
	<storagedrawers:upgrade_template>,

	//Bibliocraft
	<bibliocraft:armorstand:1>,
	<bibliocraft:armorstand:2>,
	<bibliocraft:armorstand:3>,
	<bibliocraft:armorstand:4>,
	<bibliocraft:armorstand:5>,
	<bibliocraft:armorstand:6>,
	<bibliocraft:armorstand>,
	<bibliocraft:atlasbook>,
	<bibliocraft:bigbook>,
	<bibliocraft:bookcase:*>,
	<bibliocraft:bookcasecreative:*>,
	<bibliocraft:case:*>,
	<bibliocraft:compass>,
	<bibliocraft:desk:*>,
	<bibliocraft:fancysign:*>,
	<bibliocraft:fancyworkbench:*>,
	<bibliocraft:framedchest:*>,
	<bibliocraft:framingboard>,
	<bibliocraft:framingsaw>,
	<bibliocraft:framingsheet>,
	<bibliocraft:furniturepaneler:*>,
	<bibliocraft:handdrill>,
	<bibliocraft:label:*>,
	<bibliocraft:lampgold:*>,
	<bibliocraft:lampiron:*>,
	<bibliocraft:lanterngold:*>,
	<bibliocraft:lanterniron:*>,
	<bibliocraft:mapframe:*>,
	<bibliocraft:maptool>,
	<bibliocraft:paintingcanvas>,
	<bibliocraft:paintingframeborderless:*>,
	<bibliocraft:paintingframefancy:*>,
	<bibliocraft:paintingframeflat:*>,
	<bibliocraft:paintingframemiddle:*>,
	<bibliocraft:paintingframesimple:*>,
	<bibliocraft:recipebook>,
	<bibliocraft:seat:*>,
	<bibliocraft:seatback1:*>,
	<bibliocraft:seatback2:*>,
	<bibliocraft:seatback3:*>,
	<bibliocraft:seatback4:*>,
	<bibliocraft:seatback5:*>,
	<bibliocraft:slottedbook>.withTag({authorName: "by Sir Hidington"}),
	<bibliocraft:stockroomcatalog>,
	<bibliocraft:swordpedestal:*>,
	<bibliocraft:table:*>,

	//Chisel & Bits
	<chiselsandbits:chisel_iron>,
	<chiselsandbits:tape_measure>,

	//Tinkers' Construct
	<tcomplement:cast>,
	<tcomplement:materials>,
	<tcomplement:porcelain_casting>,
	<tcomplement:porcelain_tank:1>,
	<tcomplement:porcelain_tank:2>,
	<tcomplement:porcelain_tank>,

	//Dark Utils
	<darkutils:charm_null>,
	<darkutils:charm_portal>,
	<darkutils:focus_sash>,
	<darkutils:lore_tag:*>,
	<darkutils:sneaky>,
	<darkutils:sneaky_ghost>,
	<darkutils:sneaky_lever>,
	<darkutils:sneaky_obsidian>,
	<darkutils:sneaky_plate>,
	<darkutils:sneaky_torch>,
	<darkutils:trap_move>,

	//Cyclic
	<cyclicmagic:apple_lapis>,
	<cyclicmagic:block_fragile>,
	<cyclicmagic:block_fragile_auto>,
	<cyclicmagic:block_fragile_weak>,
	<cyclicmagic:block_soundproofing>,
	<cyclicmagic:glove_climb>,
	<cyclicmagic:horse_upgrade_variant>,
	<cyclicmagic:plate_launch_med>,
	<cyclicmagic:spikes_iron>,
	<cyclicmagic:tool_mount>,
	<cyclicmagic:tool_rotate>,
	<cyclicmagic:tool_spawn_inspect>,
	<cyclicmagic:tool_spelunker>,
	<cyclicmagic:tool_torch_launcher>,
	<cyclicmagic:tool_trade>,
	<cyclicmagic:trash>,
	<cyclicmagic:water_freezer>,

	//Spartan Shields
	<spartanshields:shield_basic_gold>,
	<spartanshields:shield_basic_iron>,

	//Iron Chests
	<ironchest:copper_iron_chest_upgrade>,
	<ironchest:copper_silver_chest_upgrade>,
	<ironchest:iron_chest:1>,
	<ironchest:iron_chest:4>,
	<ironchest:iron_chest>,
	<ironchest:iron_gold_chest_upgrade>,
	<ironchest:silver_gold_chest_upgrade>,
	<ironchest:wood_iron_chest_upgrade>,

	//Iron Backpacks
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}),
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}),

	//Info Accesories
	<infoaccessories:info_accessory:1>,
	<infoaccessories:info_accessory:2>,
	<infoaccessories:info_accessory:4>,
	<infoaccessories:info_accessory:5>,
	<infoaccessories:info_accessory:6>,
	<infoaccessories:info_accessory>,

	//Farming for Blockheads
	<farmingforblockheads:chicken_nest>,
	<farmingforblockheads:feeding_trough>,
	<farmingforblockheads:fertilizer:1>,
	<farmingforblockheads:fertilizer:2>,
	<farmingforblockheads:fertilizer>
];

for item in stage2Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
