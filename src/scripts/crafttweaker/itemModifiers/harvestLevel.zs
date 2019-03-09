/*
	SevTech: Ages Harvest Level Modification Script

	This script allows for the modification of an ItemStack's Harvest Level.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

// Set block pickaxe harvest level
static pickaxeLevelPairs as IItemStack[][int] = {
	1: [
		<abyssalcraft:coraliumore:0>,
		<bloodmagic:blood_rune:0>,
		<geolosys:ore:3>,
		<geolosys:ore:5>,
		<poweradapters:mj:0>
	],

	3: [
		<nex:quartz_ore:1>,
		<nex:quartz_ore:2>,
		<nex:quartz_ore:3>,
		<nex:quartz_ore:0>
	]
};

function init() {
	for pickaxeLevel, items in pickaxeLevelPairs {
		for item in items {
			var blockDefinition as IBlockDefinition = item.asBlock().definition;
			blockDefinition.setHarvestLevel("pickaxe", pickaxeLevel);
		}
	}
}
