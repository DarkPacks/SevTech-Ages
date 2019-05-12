/*
	SevTech: Ages Immersive Engineering Metal Press Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	immersiveEngineering.addPress(<minecraft:blaze_rod:0>, <minecraft:blaze_powder:0>, <immersiveengineering:mold:2>, 4);
	immersiveEngineering.addPress(metals.compressedIron.ingot.firstItem * 4, metals.iron.block.firstItem, <immersiveengineering:mold:5>, 2000, 1);
	immersiveEngineering.addPress(<pickletweaks:ppm4:2> * 4, <galacticraftcore:item_basic_moon:0>, <immersiveengineering:mold:4>, 1);

	// Coal and Charcoal Blocks / Pieces
	immersiveEngineering.addPress(<minecraft:coal_block:0> * 1, <minecraft:coal:0>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<charcoalblock:charcoal_block:0> * 1, <minecraft:coal:1>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:coal:0> * 9, <minecraft:coal_block:0>, <immersiveengineering:mold:7>, 1);
	immersiveEngineering.addPress(<minecraft:coal:1> * 9, <charcoalblock:charcoal_block:0>, <immersiveengineering:mold:7>, 1);

	// Clay Balls -> Clay Block
	immersiveEngineering.addPress(<minecraft:clay:0> * 1, <minecraft:clay_ball:0>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<minecraft:clay_ball:0> * 4, <minecraft:clay:0>, <immersiveengineering:mold:7>, 1);

	// Shadowfragment -> Shadowshard
	immersiveEngineering.addPress(<abyssalcraft:shadowshard:0> * 1, <abyssalcraft:shadowfragment:0>, <immersiveengineering:mold:6>, 9);
	// Shadowshard -> Shadowgem
	immersiveEngineering.addPress(<abyssalcraft:shadowgem:0> * 1, <abyssalcraft:shadowshard:0>, <immersiveengineering:mold:6>, 9);
	// Shadowshard -> Shadowfragment
	immersiveEngineering.addPress(<abyssalcraft:shadowfragment:0> * 9, <abyssalcraft:shadowshard:0>, <immersiveengineering:mold:7>, 1);
	// Shadowgem -> Shadowshard
	immersiveEngineering.addPress(<abyssalcraft:shadowshard:0> * 9, <abyssalcraft:shadowgem:0>, <immersiveengineering:mold:7>, 1);
	// Salt Dust -> Salt Block
	immersiveEngineering.addPress(<primal:salt_netjry_block:0> * 1, <primal:salt_dust_netjry:0>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<primal:ore_salt:1> * 1, <primal:salt_dust_fire:0>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<primal:ore_salt:0> * 1, <primal:salt_dust_rock:0>, <immersiveengineering:mold:5>, 4);
	immersiveEngineering.addPress(<mekanism:saltblock:0> * 1, <mekanism:salt:0>, <immersiveengineering:mold:5>, 4);

	// Diamond Block
	immersiveEngineering.addPress(<minecraft:diamond_block:0> * 1, <minecraft:diamond:0>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:diamond:0> * 9, <minecraft:diamond_block:0>, <immersiveengineering:mold:7>, 1);

	// Lapis Block
	immersiveEngineering.addPress(<minecraft:lapis_block:0> * 1, <minecraft:dye:4>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:dye:4> * 9, <minecraft:lapis_block:0>, <immersiveengineering:mold:7>, 1);

	// Redstone Block
	immersiveEngineering.addPress(<minecraft:redstone_block:0> * 1, <minecraft:redstone:0>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:redstone:0> * 9, <minecraft:redstone_block:0>, <immersiveengineering:mold:7>, 1);

	// Emerald Block
	immersiveEngineering.addPress(<minecraft:emerald_block:0> * 1, <minecraft:emerald:0>, <immersiveengineering:mold:6>, 9);
	immersiveEngineering.addPress(<minecraft:emerald:0> * 9, <minecraft:emerald_block:0>, <immersiveengineering:mold:7>, 1);
}
