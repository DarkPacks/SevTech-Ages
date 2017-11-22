// Removes any loot table entry added by the mod with the modid
//mods.ltt.LootTable.removeModEntry("modid");

// Removes any loot table entry where the item is owned by this modid
//mods.ltt.LootTable.removeModItem("modid");

// Removes all tables with this modid
//mods.ltt.LootTable.removeModTable("modid");

// Removes a specific item from every table
//mods.ltt.LootTable.removeGlobalItem("itemid");

//mods.ltt.LootTable.removeTable("minecraft:chests/simple_dungeon");

/*
mods.ltt.LootTable.removeTable("table");
mods.ltt.LootTable.removePool("table", "pool");
mods.ltt.LootTable.removeEntry("table", "pool", "entry");
mods.ltt.LootTable.removeItem("table", "pool", "itemid");
mods.ltt.LootTable.removeModEntry("modid");
mods.ltt.LootTable.removeModItem("modid");
mods.ltt.LootTable.removeModTable("modtable");
mods.ltt.LootTable.removeGlobalItem("itemid");
*/

/*
//Loot Table Tweaker

//Removes a specific table
mods.ltt.LootTable.removeTable("minecraft:chests/stronghold_corridor");

//Removes a specific pool
mods.ltt.LootTable.removePool("minecraft:chests/simple_dungeon", "main");

//Removes a specific entry
mods.ltt.LootTable.removeEntry("minecraft:chests/simple_dungeon", "pool1", "minecraft:bread");

//Removes a specific item entry, does the same as the above.
mods.ltt.LootTable.removeItem("minecraft:chests/simple_dungeon", "pool1", "minecraft:redstone");

//Removes all tables with the modid
//mods.ltt.LootTable.removeModTable(String modid);

//Removes all entries with the modid
//mods.ltt.LootTable.removeModEntry(String modid);

//Removes all entries with an item with the modid
//mods.ltt.LootTable.removeModItem(String modid);

//Removes all entries with the item result
mods.ltt.LootTable.removeGlobalItem("minecraft:pumpkin_seeds");
*/

var tables = [
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
	"minecraft:gameplay/fishing"
	"minecraft:gameplay/fishing/fish",
	"minecraft:gameplay/fishing/junk",
	"minecraft:gameplay/fishing/treasure",
] as string[];

for table in tables {
	mods.ltt.LootTable.removeTable(table);
}

var globalItems = [
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
	"twilightforest:ore_magnet",
	"twilightforest:uncrafting_table"
] as string[];

for globalItem in globalItems {
	mods.ltt.LootTable.removeGlobalItem(globalItem);
}

mods.ltt.LootTable.removeEntry("twilightforest:structures/tower_room", "pool1", "minecraft:ghast_tear");
