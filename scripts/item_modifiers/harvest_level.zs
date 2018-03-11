import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

//Set block pickaxe harvest level
var pickaxeLevelPairs as IItemStack[][int] = {
	1: [
		<abyssalcraft:coraliumore>
	]
};

for pickaxeLevel, items in pickaxeLevelPairs {
	for item in items {
		var blockDefinition as IBlockDefinition = item.asBlock().definition;
		blockDefinition.setHarvestLevel("pickaxe", pickaxeLevel);
	}
}
