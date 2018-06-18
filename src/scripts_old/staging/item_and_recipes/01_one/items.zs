#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

var stage1Items as IIngredient[] = [
	//Oredict
	<ore:dustSulfur>,


	<prospectors:prospector_lowest>,
	<teslacorelib:gear_stone>,

	/*
		Items by "type"
	*/
	//Fences and Doors
	<tallgates:tall_gate:1>,
	<tallgates:tall_gate:2>,
	<tallgates:tall_gate:3>,
	<tallgates:tall_gate:4>,
	<tallgates:tall_gate:5>,
	<tallgates:tall_gate>,

	//Tools
	<cyclicmagic:sandstone_hoe>,

	//Torches
	<cyclicmagic:ender_torch>,

	//Beneath
	<beneath:teleporterbeneath>,
	<progressiontweaks:blank_teleporter>,

	/*
		Items by mod
	*/
	//Hunting Dimension
	<huntingdim:biome_changer:*>,
	<huntingdim:frame>,
	<huntingdim:portal>,

	//Iron Chests
	<ironchest:iron_chest:3>,
	<ironchest:iron_chest:7>,
	<ironchest:wood_copper_chest_upgrade>,

	//Chisel & Bits
	<chiselsandbits:bit_bag>,
	<chiselsandbits:bittank>,
	<chiselsandbits:chisel_iron>,
	<chiselsandbits:chisel_stone>,
	<chiselsandbits:mirrorprint>,
	<chiselsandbits:negativeprint>,
	<chiselsandbits:positiveprint>,
	<chiselsandbits:wrench_wood>,

	//Abyssalcraft
	<acintegration:moltenabyssalnite>,
	<acintegration:moltencoralium>,
	<acintegration:moltendreadium>,

	//Bibliocraft
	<bibliocraft:plumbline>,
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

	//Tinkers'
	<tcomplement:porcelain_casting:1>,

	//Content Tweaker
	<contenttweaker:bronze_chest>,
	<contenttweaker:bronze_feet>,
	<contenttweaker:bronze_head>,
	<contenttweaker:bronze_legs>,
	<contenttweaker:copper_chest>,
	<contenttweaker:copper_feet>,
	<contenttweaker:copper_head>,
	<contenttweaker:copper_legs>,
	<materialpart:aquamarine:ore_minecraft_stone>,

	//Geolosys
	<geolosys:cluster:2>,
	<geolosys:cluster:3>,
	<geolosys:field_manual>,
	<geolosys:ore:2>,
	<geolosys:ore:3>,
	<geolosys:ore:4>,
	<geolosys:ore:5>,
	<geolosys:ore_sample:2>,
	<geolosys:ore_sample:3>,
	<geolosys:ore_sample:4>,
	<geolosys:ore_sample:5>,
	<geolosys:ore_sample_vanilla>,
	<geolosys:ore_vanilla>,

	//Primal Tech
	<primal_tech:leaf_bed>,
	<primal_tech:stone_anvil>,
	<primal_tech:stone_mallet>,
	<primal_tech:wooden_basin>,

	//Dung Pipes
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,

	//Cyclic
	<cyclicmagic:apple>,
	<cyclicmagic:plate_launch_large>,
	<cyclicmagic:plate_launch_small>,
	<cyclicmagic:sandstone_axe>,
	<cyclicmagic:sandstone_pickaxe>,
	<cyclicmagic:sandstone_spade>,
	<cyclicmagic:tool_harvest_leaves>,
	<cyclicmagic:tool_harvest_weeds>,
	<guideapi:cyclicmagic-guide>,

	//Spartan Shields
	<spartanshields:shield_basic_bronze>,
	<spartanshields:shield_basic_copper>,
	<spartanshields:shield_basic_tin>,

	//Blood Magic
	<guideapi:bloodmagic-guide>,

	<cyclicmagic:food_step>,

	//Farming for Blockheads
	<farmingforblockheads:market>,

	<betterbuilderswands:wandstone>
];

for item in stage1Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
