/*
	SevTech: Ages Block Harvest Drops Event Script

	This script allows us to change the drops from a block using the drops
	mapping. We can add as many drops as we want and define the amount of
	said drops to "drop".

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.block.IBlock;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

/*
	Block Drops Mapping

	This needs to be a string name of the block to change
	the drop for. MUST include the meta at the end if needed.

	Then you can fill the array with the IItemStacks you want to drop.
*/
static blockHarvestDrops as IItemStack[][string] = {
    "galacticraftplanets:asteroids_block:4": [
        <geolosys:cluster:0>,
        <materialpart:titanium:cluster>
    ],
	"twilightforest:castle_door:0": [
		<twilightforest:castle_door:0>
	],
	"twilightforest:castle_door:1": [
		<twilightforest:castle_door:1>
	],
	"twilightforest:castle_door:2": [
		<twilightforest:castle_door:2>
	],
	"twilightforest:castle_door:3": [
		<twilightforest:castle_door:3>
	]
};

/*
	Add event listener
*/
function init() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockHarvestDrops = scripts.crafttweaker.events.blockBreak.blockHarvestDrops;

		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}

		// Skip overrides if the block is silk touched
		if (event.silkTouch) {
			return;
		}

		var hasOverride = !isNull(blockHarvestDrops[blockId]);
		if (hasOverride) {
			for i, block in blockHarvestDrops[blockId] {
				if (i == 0) {
					event.drops = block.items;
				} else {
					event.drops += block;
				}
			}
		}
	});
}
