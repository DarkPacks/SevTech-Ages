import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wanddiamond>,
	<prospectors:prospector_high>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
