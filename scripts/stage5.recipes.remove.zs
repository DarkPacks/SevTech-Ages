import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wandunbreakable>,
	<prospectors:prospector_low>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
