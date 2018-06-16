/*
	SevTech: Ages Hardness Modification Script

	This script allows for the modification of an ItemStack's hardness.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

// Set block pickaxe harvest level
static pickaxeLevelPairs as IItemStack[][int] = {
	1: [
		<abyssalcraft:coraliumore>,
		<bloodmagic:blood_rune>,
		<poweradapters:mj>
	],

	3: [
		<nex:ore_quartz:1>,
		<nex:ore_quartz:2>,
		<nex:ore_quartz:3>,
		<nex:ore_quartz>
	]
};

function init() {
	for pickaxeLevel, items in scripts.crafttweaker.item_modifiers.harvestLevel.pickaxeLevelPairs {
		for item in items {
			var blockDefinition as IBlockDefinition = item.asBlock().definition;
			blockDefinition.setHarvestLevel("pickaxe", pickaxeLevel);
		}
	}
}
