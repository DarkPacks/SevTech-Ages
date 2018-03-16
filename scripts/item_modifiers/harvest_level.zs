import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

//Set block pickaxe harvest level
var pickaxeLevelPairs as IItemStack[][int] = {
	1: [
		<abyssalcraft:coraliumore>,
		<bloodmagic:blood_rune>,
		<bloodmagic:blood_rune:4>,
		<bloodmagic:blood_rune:3>,
		<bloodmagic:blood_rune:1>,
		<bloodmagic:blood_rune:2>,
		<bloodmagic:blood_rune:6>,
		<bloodmagic:blood_rune:9>,
		<bloodmagic:blood_rune:8>,
		<bloodmagic:blood_rune:5>,
		<bloodmagic:blood_rune:10>,
		<bloodmagic:blood_rune:7>

	]
};

for pickaxeLevel, items in pickaxeLevelPairs {
	for item in items {
		var blockDefinition as IBlockDefinition = item.asBlock().definition;
		blockDefinition.setHarvestLevel("pickaxe", pickaxeLevel);
	}
}
