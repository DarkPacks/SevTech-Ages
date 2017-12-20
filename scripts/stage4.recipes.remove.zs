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
	<actuallyadditions:block_farmer>

] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
