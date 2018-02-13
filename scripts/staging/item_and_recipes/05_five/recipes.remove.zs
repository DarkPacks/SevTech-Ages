#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wandunbreakable>,
	<prospectors:prospector_low>,

	//Storage Drawers
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,

	//Iron Jetpacks
	<ironjetpacks:electrum_capacitor>,
	<ironjetpacks:basic_coil>,
	<ironjetpacks:advanced_coil>
];

for item in removeItems {
	recipes.remove(item);
}
