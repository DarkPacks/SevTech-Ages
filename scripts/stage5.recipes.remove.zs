import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wandunbreakable>,
	<prospectors:prospector_low>,

	//Storage Drawers
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
