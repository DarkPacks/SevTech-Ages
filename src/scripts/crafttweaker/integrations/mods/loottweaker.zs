/*
	SevTech: Ages Loot Tweaker Craft Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.ltt.LootTable;

/*
	Support:

	Loot Table Tweaker: http://crafttweaker.readthedocs.io/en/latest/#Mods/LootTableTweaker/LootTableTweaker/
*/
function init() {
	// Loot Tables
	var tables as string[] = [
		"astralsorcery:chest_shrine",
		"minecraft:chests/abandoned_mineshaft",
		"minecraft:chests/desert_pyramid",
		"minecraft:chests/end_city_treasure",
		"minecraft:chests/igloo_chest",
		"minecraft:chests/jungle_temple",
		"minecraft:chests/jungle_temple_dispenser",
		"minecraft:chests/nether_bridge",
		"minecraft:chests/simple_dungeon",
		"minecraft:chests/spawn_bonus_chest",
		"minecraft:chests/stronghold_corridor",
		"minecraft:chests/stronghold_crossing",
		"minecraft:chests/stronghold_library",
		"minecraft:chests/village_blacksmith",
		"minecraft:chests/woodland_mansion",
		"minecraft:gameplay/fishing",
		"minecraft:gameplay/fishing/fish",
		"minecraft:gameplay/fishing/junk",
		"minecraft:gameplay/fishing/treasure"
	];

	for table in tables {
		LootTable.removeTable(table);
	}

	// Global Items Removal
	var globalItems as string[] = [
		"abyssalcraft:mre",
		"minecraft:blaze_powder",
		"minecraft:blaze_rod",
		"minecraft:bucket",
		"minecraft:diamond",
		"minecraft:diamond_block",
		"minecraft:diamond_hoe",
		"minecraft:diamond_sword",
		"minecraft:emerald",
		"minecraft:emerald_block",
		"minecraft:ender_chest",
		"minecraft:ender_pearl",
		"minecraft:glowstone",
		"minecraft:gold_nugget",
		"minecraft:golden_apple",
		"minecraft:golden_helmet",
		"minecraft:golden_pickaxe",
		"minecraft:iron_ingot",
		"minecraft:iron_leggings",
		"minecraft:iron_pickaxe",
		"minecraft:magma_cream",
		"minecraft:milk_bucket",
		"minecraft:obsidian",
		"minecraft:redstone",
		"minecraft:redstone_block",
		"minecraft:water_bucket",
		"primal:animal_fat",
		"primal:animal_fat_nether",
		"primal:salo",
		"twilightforest:ore_magnet",
		"twilightforest:uncrafting_table"
	];

	for globalItem in globalItems {
		LootTable.removeGlobalItem(globalItem);
	}

	// Single Entry Removals
	LootTable.removeEntry("twilightforest:structures/tower_room", "pool1", "minecraft:ghast_tear");
}
