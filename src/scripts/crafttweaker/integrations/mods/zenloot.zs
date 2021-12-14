import crafttweaker.item.IItemStack;
import mods.zenloot.LootTable;
import mods.zenloot.LootEntry;
import mods.zenloot.LootFunction;

// The pools in this loot table are added to other tables - editing them here will edit them in all tables they are added to
static earlyLootTables as LootEntry[][string][string] = {};

static lootTables as LootEntry[][string][string] = {
	"minecraft:chests/simple_dungeon": {
		"main": [
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:coralium>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:mre>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowfragment>).setWeight(8).setCount(1, 10).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowgem>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(1, 6).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(10).addRandomEnchant().setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple:1>, "minecraft:golden_apple#0").setWeight(2).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:name_tag>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:record_13>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:record_cat>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(20).setStage()
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:beetroot_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:bucket>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:coal>).setWeight(15).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:melon_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:pumpkin_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:redstone>).setWeight(15).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:wheat>).setWeight(20).setCount(1, 4).setStage()
		],
		"pool2": [
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:gunpowder>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:string>).setWeight(10).setCount(1, 8).setStage()
		]
	},
	"pneumaticcraft:inject/simple_dungeon_loot": { // injected into many vanilla pools
		"main": [
			LootEntry.fromItemStack(<pneumaticcraft:nuke_virus>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<pneumaticcraft:spawner_agitator>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<pneumaticcraft:stop_worm>).setWeight(15).setStage(),
			LootEntry.empty(67)
		]
	},
	"minecraft:chests/abandoned_mineshaft": {
		"main": [
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple:1>, "minecraft:golden_apple#0").setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:name_tag>).setWeight(30).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(10).addRandomEnchant().setStage(),
			LootEntry.fromItemStack(<minecraft:iron_pickaxe>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowfragment>).setWeight(8).setCount(1, 10).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(1, 6).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowgem>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<astralsorcery:itemconstellationpaper>).setWeight(10).setQuality(2).setStage(),
			LootEntry.empty(5)
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:redstone>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<minecraft:dye:4>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(3).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<minecraft:coal>).setWeight(10).setCount(3, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:melon_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:pumpkin_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:beetroot_seeds>).setWeight(10).setCount(2, 4).setStage()
		],
		"pool2": [
			LootEntry.fromItemStack(<minecraft:rail>).setWeight(20).setCount(4, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:detector_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:activator_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:torch>).setWeight(15).setCount(1, 16).setStage()
		]
	},
	"abyssalcraft:chests/mineshaft": {
		"main": [
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:coralium>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dreadshard>).setWeight(10).setCount(3, 8).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:corpick>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:transmutationgem>).setWeight(1).setDamage(0.1, 0.3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:oc>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage()
		],
		"pool1": [
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(3).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:coralium>).setWeight(10).setCount(3, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abychunk>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dreadchunk>).setWeight(10).setCount(2, 4).setStage()
		],
		"pool2": [
			LootEntry.fromItemStack(<minecraft:rail>).setWeight(20).setCount(4, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:detector_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:activator_rail>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:torch>).setWeight(15).setCount(1, 16).setStage()
		]
	},
	"minecraft:chests/igloo_chest": {
		"main": [
			LootEntry.fromItemStack(<minecraft:apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:coal>).setWeight(15).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_nugget>).setWeight(10).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:stone_axe>).setWeight(2).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:emerald>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:wheat>).setWeight(10).setCount(2, 3).setStage(),
			LootEntry.fromItemStack(<astralsorcery:itemconstellationpaper>).setWeight(10).setQuality(2).setStage()
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(1).setStage()
		]
	},
	"minecraft:chests/desert_pyramid": {
		"main": [
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(15).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(15).setCount(2, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:emerald>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(25).setCount(4, 6).setStage(),
			LootEntry.fromItemStack(<minecraft:spider_eye>).setWeight(25).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(25).setCount(3, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(20).addRandomEnchant().setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple:1>, "minecraft:golden_apple#0").setWeight(2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowfragment>).setWeight(8).setCount(1, 10).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(1, 6).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowgem>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<astralsorcery:itemconstellationpaper>).setWeight(10).setQuality(2).setStage(),
			LootEntry.empty(15)
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:gunpowder>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:string>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:sand>).setWeight(10).setCount(1, 8).setStage()
		],
		"moms_spaghetti": [
			LootEntry.fromItemStack(<tconstruct:spaghetti>).setWeight(1).setChance(0.05).setStage()
		]
	},
	"minecraft:chests/stronghold_library": {
		"main": [
			LootEntry.fromItemStack(<minecraft:book>).setWeight(20).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:paper>).setWeight(20).setCount(2, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:map>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:book>, "minecraft:book#0").setWeight(10).addEnchantWithLevels(30, true).setStage(),
			LootEntry.fromItemStack(<minecraft:compass>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<astralsorcery:itemconstellationpaper>).setWeight(10).setQuality(2).setStage(),
			LootEntry.fromItemStack(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"})).setWeight(5).setStage().addFunction(LootFunction.parse("{\"function\":\"immersiveengineering:secret_bluprintz\",\"conditions\":[{\"chance\":0.125,\"condition\":\"minecraft:random_chance\"}]}"))
		]
	},
	"minecraft:gameplay/fishing/fish": {
		"main": [
			LootEntry.fromItemStack(<minecraft:fish>).setWeight(60).setStage(),
			LootEntry.fromItemStack(<minecraft:fish:1>, "minecraft:fish#0").setWeight(25).setStage(),
			LootEntry.fromItemStack(<minecraft:fish:2>, "minecraft:fish#1").setWeight(2).setStage(),
			LootEntry.fromItemStack(<minecraft:fish:3>, "minecraft:fish#2").setWeight(13).setStage()
		]
	},
	"minecraft:gameplay/fishing/treasure": {
		"main": [
			LootEntry.fromItemStack(<minecraft:waterlily>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:name_tag>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:bow>).setWeight(1).setDamage(0.0, 0.25).addEnchantWithLevels(30, true).setStage(),
			LootEntry.fromItemStack(<minecraft:fishing_rod>).setWeight(1).setDamage(0.0, 0.25).addEnchantWithLevels(30, true).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(1).addEnchantWithLevels(30, true).setStage()
		]
	},
	"minecraft:gameplay/fishing/junk": {
		"main": [
			LootEntry.fromItemStack(<minecraft:leather_boots>).setWeight(10).setDamage(0.0, 0.9).setStage(),
			LootEntry.fromItemStack(<minecraft:leather>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:potion>.withTag({Potion: "minecraft:water"})).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:string>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:fishing_rod>).setWeight(2).setDamage(0.0, 0.9).setStage(),
			LootEntry.fromItemStack(<minecraft:bowl>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:stick>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:dye> * 10).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:tripwire_hook>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(10).setStage()
		]
	},
	"minecraft:chests/woodland_mansion": {
		"main": [
			LootEntry.fromItemStack(<minecraft:lead>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple:1>, "minecraft:golden_apple#0").setWeight(2).setStage(),
			LootEntry.fromItemStack(<minecraft:record_13>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:record_cat>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:name_tag>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:chainmail_chestplate>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_hoe>).setWeight(15).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_chestplate>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(10).addRandomEnchant().setStage()
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(20).setStage(),
			LootEntry.fromItemStack(<minecraft:wheat>).setWeight(20).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:bucket>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:redstone>).setWeight(15).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:coal>).setWeight(15).setCount(1, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:melon_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:pumpkin_seeds>).setWeight(10).setCount(2, 4).setStage(),
			LootEntry.fromItemStack(<minecraft:beetroot_seeds>).setWeight(10).setCount(2, 4).setStage()
		],
		"pool2": [
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:gunpowder>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(10).setCount(1, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:string>).setWeight(10).setCount(1, 8).setStage()
		]
	},
	"minecraft:chests/stronghold_corridor": {
		"main": [
			LootEntry.fromItemStack(<minecraft:ender_pearl>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:redstone>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_pickaxe>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_sword>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_chestplate>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_helmet>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_leggings>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_boots>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(1).addEnchantWithLevels(30, true).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowfragment>).setWeight(8).setCount(1, 10).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowshard>).setWeight(5).setCount(1, 6).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:shadowgem>).setWeight(3).setCount(1, 3).setStage()
		]
	},
	"minecraft:chests/nether_bridge": {
		"main": [
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(5).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_sword>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_chestplate>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:flint_and_steel>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:nether_wart>).setWeight(5).setCount(3, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(8).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<minecraft:obsidian>).setWeight(2).setCount(2, 4).setStage()
		]
	},
	"abyssalcraft:chests/stronghold_corridor" : {
		"main": [
			LootEntry.fromItemStack(<minecraft:ender_pearl>).setWeight(10).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:transmutationgem>).setWeight(1).setDamage(0.1, 0.3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cpearl>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:apick>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:aplate>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:ahelmet>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:alegs>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:aboots>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:oc>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage()
		]
	},
	"minecraft:chests/village_blacksmith": {
		"main": [
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_pickaxe>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_sword>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_chestplate>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_helmet>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_leggings>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_boots>).setWeight(5).setStage(),
			LootEntry.fromItemStack(<minecraft:obsidian>).setWeight(5).setCount(3, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:sapling>).setWeight(5).setCount(3, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cobbleu>).setWeight(10).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:ironu>).setWeight(7).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:goldu>).setWeight(4).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:diamondu>).setWeight(1).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"})).setWeight(1).setStage().addFunction(LootFunction.parse("{\"function\":\"immersiveengineering:secret_bluprintz\",\"conditions\":[{\"chance\":0.125,\"condition\":\"minecraft:random_chance\"}]}"))

		]
	},
	"galacticraftcore:crashed_probe": {
		"crashed_probe": [
			LootEntry.fromItemStack(<galacticraftplanets:item_basic_mars:3>).setWeight(5).setCount(3, 6).setStage(),
			LootEntry.fromItemStack(<galacticraftcore:heavy_plating>).setWeight(5).setCount(3, 6).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(5).setCount(5, 9).setStage(),
			LootEntry.fromItemStack(<galacticraftplanets:item_basic_asteroids:5>).setWeight(5).setCount(3, 6).setStage(),
			LootEntry.fromItemStack(<galacticraftplanets:item_basic_asteroids:6>, "galacticraftplanets:item_basic_asteroid#0").setWeight(5).setCount(3, 6).setStage()
		]
	},
	"minecraft:chests/spawn_bonus_chest": {
		"main": [
			LootEntry.fromItemStack(<minecraft:stone_axe>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:wooden_axe>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:daxe>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dpick>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dshovel>).setWeight(2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dsword>).setWeight(2).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dltlog>).setWeight(10).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:dltlog2>).setWeight(10).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cobbleu>).setWeight(2).setCount(1, 2).setStage()
		],
		"pool1": [
			LootEntry.fromItemStack(<minecraft:stone_pickaxe>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:wooden_pickaxe>).setWeight(3).setStage()
		],
		"pool2": [
			LootEntry.fromItemStack(<minecraft:apple>).setWeight(5).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(3).setCount(1, 2).setStage(),
			LootEntry.fromItemStack(<minecraft:fish:1>).setWeight(3).setCount(1, 2).setStage()
		],
		"pool3": [
			LootEntry.fromItemStack(<minecraft:stick>).setWeight(10).setCount(1, 12).setStage(),
			LootEntry.fromItemStack(<minecraft:planks>).setWeight(10).setCount(1, 12).setStage(),
			LootEntry.fromItemStack(<minecraft:log>).setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:log:1>, "minecraft:log#0").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:log:2>, "minecraft:log#1").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:log:3>, "minecraft:log#2").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:log2>).setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:log2:1>, "minecraft:log2#0").setWeight(4).setCount(1, 3).setStage()
		]
	},
	"abyssalcraft:chests/stronghold_crossing": {
		"main": [
			LootEntry.fromItemStack(<abyssalcraft:abyingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:cpearl>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:coralium>).setWeight(10).setCount(3, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:apick>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:crystal:24>).setWeight(8).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<abyssalcraft:mre>).setWeight(10).setStage()
		]
	},
	"minecraft:chests/jungle_temple": {
		"main": [
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(3).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(15).setCount(2, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:emerald>).setWeight(2).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(20).setCount(4, 6).setStage(),
			LootEntry.fromItemStack(<minecraft:rotten_flesh>).setWeight(16).setCount(3, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(1).addEnchantWithLevels(30, true).setStage(),
			LootEntry.fromItemStack(<astralsorcery:itemconstellationpaper>).setWeight(10).setQuality(2).setStage()
		],
		"moms_spaghetti": [
			LootEntry.fromItemStack(<tconstruct:spaghetti>).setWeight(1).setChance(0.05).setStage()
		]
	},
	"minecraft:chests/stronghold_crossing": {
		"main": [
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(5).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:redstone>).setWeight(5).setCount(4, 9).setStage(),
			LootEntry.fromItemStack(<minecraft:coal>).setWeight(10).setCount(3, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:bread>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:apple>).setWeight(15).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_pickaxe>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:book>).setWeight(1).addEnchantWithLevels(30, true).setStage()
		],
		"moms_spaghetti": [
			LootEntry.fromItemStack(<tconstruct:spaghetti>).setWeight(1).setChance(0.05).setStage()
		]
	},
	"minecraft:chests/end_city_treasure": {
		"main": [
			LootEntry.fromItemStack(<minecraft:diamond>).setWeight(5).setCount(2, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_ingot>).setWeight(10).setCount(4, 8).setStage(),
			LootEntry.fromItemStack(<minecraft:gold_ingot>).setWeight(15).setCount(2, 7).setStage(),
			LootEntry.fromItemStack(<minecraft:emerald>).setWeight(2).setCount(2, 6).setStage(),
			LootEntry.fromItemStack(<minecraft:beetroot_seeds>).setWeight(5).setCount(1, 10).setStage(),
			LootEntry.fromItemStack(<minecraft:saddle>).setWeight(3).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:golden_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_horse_armor>).setWeight(1).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_sword>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_boots>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_chestplate>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_leggings>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_helmet>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_pickaxe>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:diamond_shovel>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_sword>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_boots>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_chestplate>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_leggings>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_helmet>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_pickaxe>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage(),
			LootEntry.fromItemStack(<minecraft:iron_shovel>).setWeight(3).addEnchantWithLevels(20, 39, true).setStage()
		]
	},
	"actuallyadditions:lush_caves": {
		"main": [
			LootEntry.fromItemStack(<minecraft:book>).setWeight(50).setStage(),
			LootEntry.fromItemStack(<minecraft:bone>).setWeight(100).setCount(1, 12).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:wooden_paxel>).setWeight(30).setDamage(0.0, 0.25).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:stone_paxel>).setWeight(25).setDamage(0.0, 0.25).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:quartz_paxel>).setWeight(20).setDamage(0.0, 0.25).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_paxel_crystal_black>).setWeight(15).setDamage(0.0, 0.25).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_paxel_crystal_white>).setWeight(10).setDamage(0.0, 0.25).setStage(),
			LootEntry.fromItemStack(<minecraft:leather_helmet>).setDamage(0.0, 0.75).setWeight(50).setStage(),
			LootEntry.fromItemStack(<minecraft:leather_chestplate>).setDamage(0.0, 0.75).setWeight(50).setStage(),
			LootEntry.fromItemStack(<minecraft:leather_leggings>).setDamage(0.0, 0.75).setWeight(50).setStage(),
			LootEntry.fromItemStack(<minecraft:leather_boots>).setDamage(0.0, 0.75).setWeight(50).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal>).setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal:1>, "actuallyadditions:item_crystal#0").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal:2>, "actuallyadditions:item_crystal#1").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal:3>, "actuallyadditions:item_crystal#2").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal:4>, "actuallyadditions:item_crystal#3").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_crystal:5>, "actuallyadditions:item_crystal#4").setWeight(4).setCount(1, 3).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal>).setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal:1>, "actuallyadditions:block_crystal#0").setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal:2>, "actuallyadditions:block_crystal#1").setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal:3>, "actuallyadditions:block_crystal#2").setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal:4>, "actuallyadditions:block_crystal#3").setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:block_crystal:5>, "actuallyadditions:block_crystal#4").setWeight(1).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_misc:5>).setWeight(20).setCount(1, 5).setStage(),
			LootEntry.fromItemStack(<actuallyadditions:item_misc:15>, "actuallyadditions:item_misc_2").setWeight(5).setCount(1, 2).setStage()
		]
	}
};

function init() {
	for tableId, pools in earlyLootTables {
		var lootTable = LootTable.editEarly(tableId);

		for poolName, entries in pools {
			var lootPool = lootTable.getExistingPool(poolName);
			lootPool.clear();

			for entry in entries {
				lootPool.addEntry(entry);
			}
		}
	}

	for tableId, pools in lootTables {
		var lootTable = LootTable.edit(tableId);

		for poolName, entries in pools {
			var lootPool = lootTable.getExistingPool(poolName);
			lootPool.clear();

            for entry in entries {
                lootPool.addEntry(entry);
            }
		}
	}

	// Add liveroot, torchberries, and trollber to TF structure chest loot tables
	var lootTable = LootTable.editAllMatching("^twilightforest:structures\\/(\\w+)\\/\\1")
		.addPool("skyblock_resources", 0, 2, 0, 0)
			.addEntry(LootEntry.fromItemStack(<twilightforest:liveroot>).setCount(1, 5))
			.addEntry(LootEntry.fromItemStack(<twilightforest:torchberries>).setCount(1, 5))
			.addEntry(LootEntry.fromItemStack(<twilightforest:trollber>).setCount(1, 5))
			.addEntry(LootEntry.empty(1));
}
