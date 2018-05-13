#priority 500

import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;

import scripts.unique_scripts.block_drops.blockHarvestDrops;

/*
	Block Harvest Drops Event

	This method allows us to change the drops from a block using the drops
	mapping. We can add as many drops as we want and define the amount of
	said drops to "drop".

	It's all about dem droppings ;)
*/
events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
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
