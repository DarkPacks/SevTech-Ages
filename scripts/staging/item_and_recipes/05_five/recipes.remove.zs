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

	//Mekanism
	<mekanism:basicblock:7>,

	//RFTools
	<rftools:machine_frame>,
	<rftools:machine_frame>,
	<rftools:matter_receiver>,
	<rftools:matter_transmitter>,

	//Xnet
	<xnet:controller>,
	<xnet:router>,

	//Iron Chests
	<ironchest:diamond_crystal_chest_upgrade>,
	<ironchest:diamond_obsidian_chest_upgrade>,
	<ironchest:gold_diamond_chest_upgrade>
];

for item in removeItems {
	recipes.remove(item);
}
