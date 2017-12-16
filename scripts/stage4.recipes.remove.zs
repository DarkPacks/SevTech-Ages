import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wanddiamond>,
	<pneumaticcraft:flux_compressor>,
	<pneumaticcraft:pneumatic_dynamo>,
	<prospectors:prospector_high>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
