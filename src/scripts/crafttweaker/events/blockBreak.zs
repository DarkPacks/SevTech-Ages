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
	],

	// Primal Stones (When broken should drop the cobble not the stone)
	"primal:blue_stone" : [
		<primal:blue_stone:4>
	],
	"primal:common_stone": [
		<primal:common_stone:4>
	],
	"primal:sarsen_stone": [
		<primal:sarsen_stone:4>
	],
	"primal:scoria_stone": [
		<primal:scoria_stone:4>
	],
	"primal:porphyry_stone": [
		<primal:porphyry_stone:4>
	],
	"primal:purpurite_stone": [
		<primal:purpurite_stone:4>
	],
	"primal:ferro_stone": [
		<primal:ferro_stone:4>
	],
	"primal:carbonate_stone": [
		<primal:carbonate_stone:4>
	],
	"primal:terracotta_block": [
		<primal:terracotta_block:4>
	],
	"primal:mud_dried": [
		<primal:mud_dried:4>
	],
	"primal:nether_earth": [
		<primal:nether_earth:4>
	],
	"primal:nether_stone": [
		<primal:nether_stone:4>
	],
	"primal:eroded_end_stone": [
		<primal:eroded_end_stone:4>
	],
	"primal:desiccated_stone": [
		<primal:desiccated_stone:4>
	],
	"primal:soul_stone": [
		<primal:soul_stone:4>
	],
	"primal:night_stone": [
		<primal:night_stone:4>
	],
	"primal:ciniscotta_block": [
		<primal:ciniscotta_block:4>
	],
	"primal:ortho_stone": [
		<primal:ortho_stone:4>
	],
	"primal:schist_green_stone": [
		<primal:schist_green_stone:4>
	],
	"primal:schist_blue_stone": [
		<primal:schist_blue_stone:4>
	]
};

/*
	Add event listener
*/
function init() {
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
}
