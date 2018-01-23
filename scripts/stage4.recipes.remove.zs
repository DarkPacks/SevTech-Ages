import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wanddiamond>,
	<cyclicmagic:clock>,
	<immersiveengineering:metal_device0:5>,
	<minecraft:ender_chest>,
	<mob_grinding_utils:tank_sink>,
	<prospectors:prospector_high>,
	<teslacorelib:machine_case>,

	//Actually Additions
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_farmer>,
	<actuallyadditions:block_feeder>,
	<actuallyadditions:block_furnace_double>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_oil_generator>,

	//Cooking for Blockheads
	<cookingforblockheads:oven>,
	<cookingforblockheads:recipe_book:2>,
	<cookingforblockheads:sink>,
	<cookingforblockheads:toaster>,
	<cookingforblockheads:tool_rack>,

	//Ender Utilities
	<enderutilities:endercapacitor:1>,
	<enderutilities:endercapacitor:2>,
	<enderutilities:enderpart:1>,
	<enderutilities:enderpart:2>,
	<enderutilities:enderpart:11>,
	<enderutilities:enderpart:12>,
	<enderutilities:enderpart:20>,
	<enderutilities:enderpart>,

	//Extended Crafting
	<extendedcrafting:material:10>,
	<extendedcrafting:material:16>,
	<extendedcrafting:table_elite>,

	//Inductive Logistics
	<indlog:buffer:1>,
	<indlog:buffer:2>,
	<indlog:buffer:3>,
	<indlog:buffer:4>,
	<indlog:buffer:5>,
	<indlog:buffer:6>,
	<indlog:buffer:7>,
	<indlog:buffer:8>,
	<indlog:buffer:9>,
	<indlog:buffer:10>,
	<indlog:buffer:11>,
	<indlog:buffer:12>,
	<indlog:buffer:13>,
	<indlog:buffer:14>,
	<indlog:buffer:15>,
	<indlog:buffer>,
	<indlog:fluid_pipe:1>,
	<indlog:fluid_pipe:2>,
	<indlog:fluid_pipe>,
	<indlog:inv_connector>,
	<indlog:item_pipe:1>,
	<indlog:item_pipe:2>,
	<indlog:item_pipe>,
	<indlog:remote_inv>,
	<indlog:tank:1>,
	<indlog:tank:2>,
	<indlog:tank:3>,
	<indlog:tank:4>,
	<indlog:tank:5>,
	<indlog:tank:6>,
	<indlog:tank:7>,
	<indlog:tank>,
	<indlog:warp_pipe>,

	//Industrial Foregoing
	<industrialforegoing:animal_independence_selector>,
	<industrialforegoing:black_hole_controller>,
	<industrialforegoing:enchantment_extractor>,
	<industrialforegoing:enchantment_invoker>,
	<industrialforegoing:enchantment_refiner>,
	<industrialforegoing:energy_field_provider>,
	<industrialforegoing:mob_duplicator>,
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:range_addon:9>,
	<industrialforegoing:range_addon:10>,
	<industrialforegoing:range_addon:11>,
	<industrialforegoing:villager_trade_exchanger>,

	//Modular Routers
	<modularrouters:augment_core>,
	<modularrouters:blank_module>,
	<modularrouters:blank_upgrade>,
	<modularrouters:filter>,
	<modularrouters:item_router>,
	<modularrouters:module:13>,
	<modularrouters:upgrade:4>,
	<modularrouters:upgrade:5>,

	//PneumaticCraft
	<pneumaticcraft:flux_compressor>,
	<pneumaticcraft:gps_tool:0>,
	<pneumaticcraft:gps_tool:30000>,
	<pneumaticcraft:pneumatic_dynamo>,
	<pneumaticcraft:pressure_chamber_glass>,
	<pneumaticcraft:pressure_chamber_wall>,
	<pneumaticcraft:printed_circuit_board>,
	<pneumaticcraft:programming_puzzle:1>,
	<pneumaticcraft:programming_puzzle:2>,
	<pneumaticcraft:programming_puzzle:3>,
	<pneumaticcraft:programming_puzzle:4>,
	<pneumaticcraft:programming_puzzle:5>,
	<pneumaticcraft:programming_puzzle:6>,
	<pneumaticcraft:programming_puzzle:8>,
	<pneumaticcraft:programming_puzzle:9>,
	<pneumaticcraft:programming_puzzle:10>,
	<pneumaticcraft:programming_puzzle:11>,
	<pneumaticcraft:programming_puzzle:12>,
	<pneumaticcraft:programming_puzzle:14>,
	<pneumaticcraft:programming_puzzle:15>,

	//Steves Carts
	<stevescarts:cartmodule:45>,
	<stevescarts:modulecomponents:58>,
	<stevescarts:upgrade:19>,

	//Storage Network
	<storagenetwork:ex_kabel>,
	<storagenetwork:im_kabel>,
	<storagenetwork:kabel>,
	<storagenetwork:master>,
	<storagenetwork:request>,
	<storagenetwork:storage_kabel>,
	<storagenetwork:upgrade:1>,
	<storagenetwork:upgrade:2>,
	<storagenetwork:upgrade:3>,
	<storagenetwork:upgrade>,

	//Applied Energistics
	<appliedenergistics2:interface>,
	<appliedenergistics2:part:180>,
	<appliedenergistics2:part:360>,
	<appliedenergistics2:part:380>,

	//Refined Storage
	<refinedstorage:cable>,
	<refinedstorage:controller>,
	<refinedstorage:exporter>,
	<refinedstorage:external_storage>,
	<refinedstorage:grid:1>,
	<refinedstorage:grid>,
	<refinedstorage:importer>,
	<refinedstorage:interface>,
	<refinedstorage:quartz_enriched_iron>
];

for item in removeItems {
	recipes.remove(item);
}
