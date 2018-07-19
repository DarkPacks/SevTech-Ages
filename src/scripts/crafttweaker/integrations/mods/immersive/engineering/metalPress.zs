/*
	SevTech: Ages Immersive Engineering Metal Press Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	immersiveEngineering.addPress(<minecraft:blaze_rod>, <minecraft:blaze_powder>, <immersiveengineering:mold:2>, 4);
	immersiveEngineering.addPress(metals.compressedIron.ingot.firstItem * 4, metals.iron.block.firstItem, <immersiveengineering:mold:5>, 2000, 1);
	immersiveEngineering.addPress(<pickletweaks:ppm4:2> * 4, <galacticraftcore:item_basic_moon>, <immersiveengineering:mold:4>, 1);

	// Coal and Charcoal Blocks / Pieces
	immersiveEngineering.addPress(<minecraft:coal_block> * 1, <minecraft:coal>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<charcoalblock:charcoal_block> * 1, <minecraft:coal:1>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:coal> * 9, <minecraft:coal_block>, <immersiveengineering:mold:7>, 1);
	immersiveEngineering.addPress(<minecraft:coal:1> * 9, <charcoalblock:charcoal_block>, <immersiveengineering:mold:7>, 1);

	// Clay Balls -> Clay Block
	immersiveEngineering.addPress(<minecraft:clay> * 1, <minecraft:clay_ball>, <immersiveengineering:mold:5>, 4);

	// Shadowfragment -> Shadowshard
	immersiveEngineering.addPress(<abyssalcraft:shadowshard> * 1, <abyssalcraft:shadowfragment>, <immersiveengineering:mold:6>, 9);
	// Shadowshard -> Shadowgem
	immersiveEngineering.addPress(<abyssalcraft:shadowgem> * 1, <abyssalcraft:shadowshard>, <immersiveengineering:mold:6>, 9);
	// Shadowshard -> Shadowfragment
	immersiveEngineering.addPress(<abyssalcraft:shadowfragment> * 9, <abyssalcraft:shadowshard>, <immersiveengineering:mold:7>, 1);
	// Shadowgem -> Shadowshard
	immersiveEngineering.addPress(<abyssalcraft:shadowshard> * 9, <abyssalcraft:shadowgem>, <immersiveengineering:mold:7>, 1);
	// Salt Dust -> Salt Block
	immersiveEngineering.addPress(<primal:salt_netjry_block> * 1, <primal:salt_dust_netjry>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<primal:ore_salt:1> * 1, <primal:salt_dust_fire>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<primal:ore_salt> * 1, <primal:salt_dust_rock>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<mekanism:saltblock> * 1, <mekanism:salt>, <immersiveengineering:mold:5>, 4);

	// Diamond Block
	immersiveEngineering.addPress(<minecraft:diamond_block> * 1, <minecraft:diamond>, <immersiveengineering:mold:6>, 9);

	// Lapis Block
	immersiveEngineering.addPress(<minecraft:lapis_block> * 1, <minecraft:dye:4>, <immersiveengineering:mold:6>, 9);

	// Redstone Block
	immersiveEngineering.addPress(<minecraft:redstone_block> * 1, <minecraft:redstone>, <immersiveengineering:mold:6>, 9);

	// Emerald Block
	immersiveEngineering.addPress(<minecraft:emerald_block> * 1, <minecraft:emerald>, <immersiveengineering:mold:6>, 9);
}
