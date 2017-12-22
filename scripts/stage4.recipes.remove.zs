import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wanddiamond>,
	<pneumaticcraft:flux_compressor>,
	<pneumaticcraft:pneumatic_dynamo>,
	<prospectors:prospector_high>,
	<teslacorelib:machine_case>,
	<pneumaticcraft:printed_circuit_board>,
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_oil_generator>,
	<actuallyadditions:block_feeder>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_furnace_double>,
	<actuallyadditions:block_farmer>,
	<stevescarts:cartmodule:45>,
	<stevescarts:modulecomponents:58>,
	<stevescarts:upgrade:19>,
	<modularrouters:module:13>,
	<modularrouters:filter>,
	<modularrouters:augment_core>,
	<modularrouters:blank_upgrade>,
	<modularrouters:blank_module>,
	<modularrouters:item_router>,
	<storagenetwork:master>,
	<storagenetwork:kabel>,
	<storagenetwork:request>,
	<storagenetwork:im_kabel>,
	<storagenetwork:ex_kabel>,
	<storagenetwork:storage_kabel>,
	<storagenetwork:upgrade:1>,
	<storagenetwork:upgrade>,
	<storagenetwork:upgrade:2>,
	<storagenetwork:upgrade:3>,
	<minecraft:ender_chest>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}