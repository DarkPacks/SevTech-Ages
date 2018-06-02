import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

//Set block pickaxe harvest level
var pickaxeLevelPairs as IItemStack[][int] = {
	1: [
		<abyssalcraft:coraliumore>,
		<bloodmagic:blood_rune>,
		<poweradapters:mj>
	],
	3: [
		<nex:ore_quartz:3>,
		<nex:ore_quartz:2>,
		<nex:ore_quartz:1>,
		<nex:ore_quartz>
	]
};

for pickaxeLevel, items in pickaxeLevelPairs {
	for item in items {
		var blockDefinition as IBlockDefinition = item.asBlock().definition;
		blockDefinition.setHarvestLevel("pickaxe", pickaxeLevel);
	}
}
