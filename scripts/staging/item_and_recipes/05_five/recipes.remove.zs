#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wandunbreakable>,
	<prospectors:prospector_low>,

	//Storage Drawers
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,

	//Iron Jetpacks
	<ironjetpacks:advanced_coil>,
	<ironjetpacks:basic_coil>,
	<ironjetpacks:electrum_capacitor>,

	//Cyclic
	<cyclicmagic:block_forester>,
	<cyclicmagic:harvester_block>,

	//Actually Additions
	<actuallyadditions:block_atomic_reconstructor>,

	//RFTools
	<rftools:machine_frame>
];

for item in removeItems {
	recipes.remove(item);
}
