import crafttweaker.item.IItemStack;

//For Future Ref. Coffee maker custom recipes
//Actually mods.actuallyadditions.Coffee.remove(input);

//Removing items from Balls of Fur
var ballOfFurRemovalItems = [
	<minecraft:diamond>,
	<minecraft:ender_pearl>,
	<minecraft:leather>,
	<minecraft:gold_ingot>,
	<minecraft:iron_ingot>
] as IItemStack[];

for item in ballOfFurRemovalItems {
	mods.actuallyadditions.BallOfFur.removeReturn(item);
}
