/*
	SevTech: Ages Resources Primal Stone Script

	As Primal Core does not seem to have any recipes for the Primal Stones. We'll add our own recipes.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.chisel.Carving;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

static primalStones as IItemStack[string] = {
	"common_stone": <primal:common_stone>,
	"sarsen_stone": <primal:sarsen_stone>,
	"blue_stone": <primal:blue_stone>,
	"ortho_stone": <primal:ortho_stone>,
	"schist_green_stone": <primal:schist_green_stone>,
	"schist_blue_stone": <primal:schist_blue_stone>,
	"scoria_stone": <primal:scoria_stone>,
	"purpurite_stone": <primal:purpurite_stone>,
	"ferro_stone": <primal:ferro_stone>,
	"carbonate_stone": <primal:carbonate_stone>,
	"nether_stone": <primal:nether_stone>,
	"eroded_end_stone": <primal:eroded_end_stone>,
	"soul_stone": <primal:soul_stone>,
	"terracotta_block": <primal:terracotta_block>,

	// These stones don't have walls.
	"ciniscotta_block": <primal:ciniscotta_block>,
	"desiccated_stone": <primal:desiccated_stone>,
	"mud_dried": <primal:mud_dried>,
	"nether_earth": <primal:nether_earth>,
	"night_stone": <primal:night_stone>,
	"porphyry_stone": <primal:porphyry_stone>,
};

static primalWalls as IItemStack[string] = {
	"common_stone": <primal:wall>,
	"sarsen_stone": <primal:wall:1>,
	"blue_stone": <primal:wall:2>,
	"ortho_stone": <primal:wall:3>,
	"schist_green_stone": <primal:wall:4>,
	"schist_blue_stone": <primal:wall:5>,
	"scoria_stone": <primal:wall:6>,
	"purpurite_stone": <primal:wall:7>,
	"ferro_stone": <primal:wall:8>,
	"carbonate_stone": <primal:wall:9>,
	"nether_stone": <primal:wall:10>,
	"eroded_end_stone": <primal:wall:11>,
	"soul_stone": <primal:wall:12>,
	"terracotta_block": <primal:wall:14>
};

static primalClays	as IItemStack[][string] = {
		"ciniscotta" : [
		<primal:cinis_block:0>,
		<primal:cinis_clump:0>,
		<primal:cinis_brick_wet:0>,
		<primal:cinis_brick_dry:0>,
		<primal:ciniscotta_block>
	],
	"terracotta" : [
		<primal:terra_block:0>,
		<primal:terra_clump:0>,
		<primal:terra_brick_wet:0>,
		<primal:terra_brick_dry:0>,
		<primal:terracotta_block>
	]
};

/*
	Primal Stones have 8 sub-blocks they are all the same for all stone "types". So that in mind this script will
	create recipes for all the types and assign the processing recipes also. So they are all be crafted/smelted etc...
*/
function init() {
	for name, stone in primalStones {
		// Smelting Recipe
		furnace.addRecipe(stone, stone.definition.makeStack(4));
		// Smooth Stone
		furnace.addRecipe(stone.definition.makeStack(1), stone);
		// Stacked Recipe
		recipes.addShaped(stone.definition.makeStack(2).name, stone.definition.makeStack(2), [[stone], [stone]]);
		// Brick Recipe
		recipes.addShaped(stone.definition.makeStack(3).name, stone.definition.makeStack(3), [[stone, stone], [stone, stone]]);
		// Chisel Handling.
		Carving.addGroup(name);
		Carving.addVariation(name, stone.definition.makeStack(1)); // Smooth (Once you have smooth you can convert between the three listed)
		Carving.addVariation(name, stone.definition.makeStack(5)); // Chiseled
		Carving.addVariation(name, stone.definition.makeStack(6)); // Mysterious
		// Pillar
		recipes.addShaped(stone.definition.makeStack(7).name, stone.definition.makeStack(7) * 6, [
			[stone, null, stone],
			[stone, null, stone],
			[stone, null, stone]
		]);
		// Wall (Only for certain stones)
		if (!isNull(primalWalls[name])) {
			recipes.addShaped(primalWalls[name].name, primalWalls[name] * 6, [
				[stone, stone, stone],
				[stone, stone, stone]
			]);
		}
	}

	for name, items in primalClays {
		furnace.remove(items[3]);

		// Clay balls back to blocks
		recipes.addShaped(items[0].name, items[0], [
			[items[1], items[1]],
			[items[1], items[1]]
		]);

		// Ball to wet brick
		recipes.addShapeless(items[2].name, items[2], [items[1]]);

		// Wet brick to dry brick
		tinkers.addDrying(items[3], items[2], 400);
		// DryingBasin.addRecipe(items[2], null, items[3], null, 80);
		// MechanicalDryingBasin.addRecipe(items[2], null, items[3], null, 20);
		dryingUnit.addAllTiers(items[2], items[3]);

		// Brick to block
		recipes.addShaped(items[4].name, items[4], [
			[items[3], items[3]],
			[items[3], items[3]]
		]);
	}
}
