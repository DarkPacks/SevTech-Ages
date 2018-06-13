#priority 720

import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;

/*
	Block Drops Mapping

	This needs to be a string name of the block to change
	the drop for. MUST include the meta at the end if needed.

	Then you can fill the array with the IItemStacks you want to drop.
*/
static blockHarvestDrops as IItemStack[][string] = {
    "galacticraftplanets:asteroids_block:4": [
        <geolosys:cluster>,
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
