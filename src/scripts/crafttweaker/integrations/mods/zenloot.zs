import crafttweaker.item.IItemStack;
import mods.zenloot.LootTable;
import mods.zenloot.LootEntry;

static lootTables as int[IItemStack][string][string] = {
	"minecraft:chests/simple_dungeon": {
		"main": {
			<abyssalcraft:abyingot>: 3,
			<abyssalcraft:copperingot>: 7,
			<abyssalcraft:coralium>: 8,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:mre>: 5,
			<abyssalcraft:shadowfragment>: 8,
			<abyssalcraft:shadowgem>: 3,
			<abyssalcraft:shadowshard>: 5,
			<abyssalcraft:tiningot>: 7,
			<minecraft:book>: 10,
			<minecraft:diamond_horse_armor>: 5,
			<minecraft:golden_apple>: 15,
			<minecraft:golden_horse_armor>: 10,
			<minecraft:iron_horse_armor>: 15,
			<minecraft:name_tag>: 20,
			<minecraft:record_13>: 15,
			<minecraft:record_cat>: 15,
			<minecraft:saddle>: 20
		},
		"pool1": {
			<minecraft:beetroot_seeds>: 10,
			<minecraft:bread>: 20,
			<minecraft:bucket>: 10,
			<minecraft:coal>: 15,
			<minecraft:gold_ingot>: 5,
			<minecraft:iron_ingot>: 10,
			<minecraft:melon_seeds>: 10,
			<minecraft:pumpkin_seeds>: 10,
			<minecraft:redstone>: 15,
			<minecraft:wheat>: 20
		},
		"pool2": {
			<minecraft:bone>: 10,
			<minecraft:gunpowder>: 10,
			<minecraft:rotten_flesh>: 10,
			<minecraft:string>: 10
		}
	},
	"pneumaticcraft:inject/simple_dungeon_loot": {
		"main": {
			<pneumaticcraft:nuke_virus>: 15,
			<pneumaticcraft:spawner_agitator>: 3,
			<pneumaticcraft:stop_worm>: 15
		}
	},
	"minecraft:chests/abandoned_mineshaft": {
		"main": {
			<minecraft:golden_apple>: 20,
			<minecraft:name_tag>: 30,
			<minecraft:book>: 10,
			<minecraft:iron_pickaxe>: 5,
			<abyssalcraft:abyingot>: 3,
			<abyssalcraft:copperingot>: 7,
			<abyssalcraft:tiningot>: 7,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:shadowfragment>: 8,
			<abyssalcraft:shadowshard>: 5,
			<abyssalcraft:shadowgem>: 3,
			<astralsorcery:itemconstellationpaper>: 10
		},
		"pool1": {
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 5,
			<minecraft:redstone>: 5,
			<minecraft:dye>: 5,
			<minecraft:diamond>: 3,
			<minecraft:coal>: 10,
			<minecraft:bread>: 15,
			<minecraft:melon_seeds>: 10,
			<minecraft:pumpkin_seeds>: 10,
			<minecraft:beetroot_seeds>: 10
		},
		"pool2": {
			<minecraft:rail>: 20,
			<minecraft:golden_rail>: 5,
			<minecraft:detector_rail>: 5,
			<minecraft:activator_rail>: 5,
			<minecraft:torch>: 15
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"abyssalcraft:chests/mineshaft": {
		"main": {
			<abyssalcraft:abyingot>: 10,
			<minecraft:diamond>: 5,
			<abyssalcraft:coralium>: 5,
			<abyssalcraft:shadowshard>: 5,
			<abyssalcraft:dreadshard>: 10,
			<abyssalcraft:corpick>: 1,
			<abyssalcraft:transmutationgem>: 1,
			<abyssalcraft:oc>: 1,
			<abyssalcraft:crystal>: 8
		},
		"pool1": {
			<abyssalcraft:abyingot>: 10,
			<abyssalcraft:cingot>: 5,
			<abyssalcraft:shadowshard>: 5,
			<minecraft:diamond>: 3,
			<abyssalcraft:coralium>: 10,
			<minecraft:bread>: 15,
			<abyssalcraft:abychunk>: 10,
			<abyssalcraft:dreadchunk>: 10
		},
		"pool2": {
			<minecraft:rail>: 20,
			<minecraft:golden_rail>: 5,
			<minecraft:detector_rail>: 5,
			<minecraft:activator_rail>: 5,
			<minecraft:torch>: 15
		}
	},
	"minecraft:chests/igloo_chest": {
		"main": {
			<minecraft:apple>: 15,
			<minecraft:coal>: 15,
			<minecraft:gold_nugget>: 10,
			<minecraft:stone_axe>: 2,
			<minecraft:rotten_flesh>: 10,
			<minecraft:emerald>: 1,
			<minecraft:wheat>: 10,
			<astralsorcery:itemconstellationpaper>: 10
		},
		"pool1": {
			<minecraft:golden_apple>: 1
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:chests/desert_pyramid": {
		"main": {
			<minecraft:diamond>: 5,
			<minecraft:iron_ingot>: 15,
			<minecraft:gold_ingot>: 15,
			<minecraft:emerald>: 15,
			<minecraft:bone>: 25,
			<minecraft:spider_eye>: 25,
			<minecraft:rotten_flesh>: 25,
			<minecraft:saddle>: 20,
			<minecraft:iron_horse_armor>: 15,
			<minecraft:golden_horse_armor>: 10,
			<minecraft:diamond_horse_armor>: 5,
			<minecraft:book>: 20,
			<minecraft:golden_apple>: 20,
			<abyssalcraft:abyingot>: 3,
			<abyssalcraft:copperingot>: 7,
			<abyssalcraft:tiningot>: 7,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:shadowfragment>: 8,
			<abyssalcraft:shadowshard>: 5,
			<abyssalcraft:shadowgem>: 3,
			<astralsorcery:itemconstellationpaper>: 10
		},
		"pool1": {
			<minecraft:bone>: 10,
			<minecraft:gunpowder>: 10,
			<minecraft:rotten_flesh>: 10,
			<minecraft:string>: 10,
			<minecraft:sand>: 10
		},
		"moms_spaghetti": {
			<tconstruct:spaghetti>: 1
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:chests/stronghold_library": {
		"main": {
			<minecraft:book>: 20,
			<minecraft:paper>: 20,
			<minecraft:map>: 1,
			<minecraft:compass>: 1,
			<immersiveengineering:blueprint>: 5,
			<astralsorcery:itemconstellationpaper>: 10
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:gameplay/fishing/treasure": {
		"main": {
			<minecraft:waterlily>: 1,
			<minecraft:name_tag>: 1,
			<minecraft:saddle>: 1,
			<minecraft:bow>: 1,
			<minecraft:fishing_rod>: 1,
			<minecraft:book>: 1
		}
	},
	"minecraft:chests/woodland_mansion": {
		"main": {
			<minecraft:lead>: 20,
			<minecraft:golden_apple>: 15,
			<minecraft:record_13>: 15,
			<minecraft:record_cat>: 15,
			<minecraft:name_tag>: 20,
			<minecraft:chainmail_chestplate>: 10,
			<minecraft:diamond_hoe>: 15,
			<minecraft:diamond_chestplate>: 5,
			<minecraft:book>: 10
		},
		"pool1": {
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 5,
			<minecraft:bread>: 20,
			<minecraft:wheat>: 20,
			<minecraft:bucket>: 10,
			<minecraft:redstone>: 15,
			<minecraft:coal>: 15,
			<minecraft:melon_seeds>: 10,
			<minecraft:pumpkin_seeds>: 10,
			<minecraft:beetroot_seeds>: 10
		},
		"pool2": {
			<minecraft:bone>: 10,
			<minecraft:gunpowder>: 10,
			<minecraft:rotten_flesh>: 10,
			<minecraft:string>: 10
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:chests/stronghold_corridor": {
		"main": {
			<minecraft:ender_pearl>: 10,
			<minecraft:diamond>: 3,
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 5,
			<minecraft:redstone>: 5,
			<minecraft:bread>: 15,
			<minecraft:apple>: 15,
			<minecraft:iron_pickaxe>: 5,
			<minecraft:iron_sword>: 5,
			<minecraft:iron_chestplate>: 5,
			<minecraft:iron_helmet>: 5,
			<minecraft:iron_leggings>: 5,
			<minecraft:iron_boots>: 5,
			<minecraft:golden_apple>: 1,
			<minecraft:saddle>: 1,
			<minecraft:iron_horse_armor>: 1,
			<minecraft:golden_horse_armor>: 1,
			<minecraft:diamond_horse_armor>: 1,
			<minecraft:book>: 1,
			<abyssalcraft:abyingot>: 3,
			<abyssalcraft:copperingot>: 7,
			<abyssalcraft:tiningot>: 7,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:shadowfragment>: 8,
			<abyssalcraft:shadowshard>: 5,
			<abyssalcraft:shadowgem>: 3
		}
	},
	"minecraft:chests/nether_bridge": {
		"main": {
			<minecraft:diamond>: 5,
			<minecraft:iron_ingot>: 5,
			<minecraft:gold_ingot>: 15,
			<minecraft:golden_sword>: 5,
			<minecraft:golden_chestplate>: 5,
			<minecraft:flint_and_steel>: 5,
			<minecraft:nether_wart>: 5,
			<minecraft:saddle>: 10,
			<minecraft:golden_horse_armor>: 8,
			<minecraft:iron_horse_armor>: 5,
			<minecraft:diamond_horse_armor>: 3,
			<minecraft:obsidian>: 2
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"abyssalcraft:chests/stronghold_corridor" : {
		"main": {
			<minecraft:ender_pearl>: 10,
			<abyssalcraft:transmutationgem>: 1,
			<abyssalcraft:abyingot>: 10,
			<abyssalcraft:cingot>: 5,
			<abyssalcraft:cpearl>: 5,
			<minecraft:bread>: 15,
			<minecraft:golden_apple>: 15,
			<abyssalcraft:apick>: 5,
			<abyssalcraft:aplate>: 5,
			<abyssalcraft:ahelmet>: 5,
			<abyssalcraft:alegs>: 5,
			<abyssalcraft:aboots>: 5,
			<abyssalcraft:oc>: 1,
			<abyssalcraft:crystal>: 8
		}
	},
	"minecraft:chests/village_blacksmith": {
		"main": {
			<minecraft:diamond>: 3,
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 5,
			<minecraft:bread>: 15,
			<minecraft:apple>: 15,
			<minecraft:iron_pickaxe>: 5,
			<minecraft:iron_sword>: 5,
			<minecraft:iron_chestplate>: 5,
			<minecraft:iron_helmet>: 5,
			<minecraft:iron_leggings>: 5,
			<minecraft:iron_boots>: 5,
			<minecraft:obsidian>: 5,
			<minecraft:sapling>: 5,
			<minecraft:saddle>: 3,
			<minecraft:iron_horse_armor>: 1,
			<minecraft:golden_horse_armor>: 1,
			<minecraft:diamond_horse_armor>: 1,
			<abyssalcraft:abyingot>: 3,
			<abyssalcraft:copperingot>: 7,
			<abyssalcraft:tiningot>: 7,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:cobbleu>: 10,
			<abyssalcraft:ironu>: 7,
			<abyssalcraft:goldu>: 4,
			<abyssalcraft:diamondu>: 1,
			<immersiveengineering:blueprint>: 1
		}
	},
	"galacticraftcore:crashed_probe": {
		"crashed_probe": {
			<galacticraftplanets:item_basic_mars>: 5,
			<galacticraftcore:heavy_plating>: 5,
			<minecraft:iron_ingot>: 5,
			<galacticraftplanets:item_basic_asteroids>: 10
		}
	},
	"minecraft:chests/spawn_bonus_chest": {
		"main": {
			<minecraft:stone_axe>: 1,
			<minecraft:wooden_axe>: 3,
			<abyssalcraft:daxe>: 3,
			<abyssalcraft:dpick>: 3,
			<abyssalcraft:dshovel>: 2,
			<abyssalcraft:dsword>: 2,
			<abyssalcraft:dltlog>: 10,
			<abyssalcraft:dltlog2>: 10,
			<abyssalcraft:cobbleu>: 2
		},
		"pool1": {
			<minecraft:stone_pickaxe>: 1,
			<minecraft:wooden_pickaxe>: 3
		},
		"pool2": {
			<minecraft:apple>: 5,
			<minecraft:bread>: 3,
			<minecraft:fish>: 3
		},
		"pool3": {
			<minecraft:stick>: 10,
			<minecraft:planks>: 10,
			<minecraft:log>: 10,
			<minecraft:log2>: 10
		}
	},
	"abyssalcraft:chests/stronghold_crossing": {
		"main": {
			<abyssalcraft:abyingot>: 10,
			<abyssalcraft:cingot>: 5,
			<abyssalcraft:cpearl>: 5,
			<abyssalcraft:coralium>: 10,
			<minecraft:golden_apple>: 15,
			<abyssalcraft:apick>: 1,
			<abyssalcraft:crystal>: 8,
			<abyssalcraft:mre>: 10
		}
	},
	"minecraft:gameplay/fishing/junk": {
		"main": {
			<minecraft:leather_boots>: 10,
			<minecraft:leather>: 10,
			<minecraft:bone>: 10,
			<minecraft:potion>: 10,
			<minecraft:string>: 5,
			<minecraft:fishing_rod>: 2,
			<minecraft:bowl>: 10,
			<minecraft:stick>: 5,
			<minecraft:dye>: 1,
			<minecraft:tripwire_hook>: 10,
			<minecraft:rotten_flesh>: 10
		},
		"lost_tablet": {
			<tombstone:lost_tablet>: 0,
			<tombstone:tablet_of_recall>: 1
		}
	},
	"minecraft:chests/jungle_temple": {
		"main": {
			<minecraft:diamond>: 3,
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 15,
			<minecraft:emerald>: 2,
			<minecraft:bone>: 20,
			<minecraft:rotten_flesh>: 16,
			<minecraft:saddle>: 3,
			<minecraft:iron_horse_armor>: 1,
			<minecraft:golden_horse_armor>: 1,
			<minecraft:diamond_horse_armor>: 1,
			<minecraft:book>: 1,
			<astralsorcery:itemconstellationpaper>: 10
		},
		"moms_spaghetti": {
			<tconstruct:spaghetti>: 1
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:chests/stronghold_crossing": {
		"main": {
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 5,
			<minecraft:redstone>: 5,
			<minecraft:coal>: 10,
			<minecraft:bread>: 15,
			<minecraft:apple>: 15,
			<minecraft:iron_pickaxe>: 1,
			<minecraft:book>: 1
		},
		"moms_spaghetti": {
			<tconstruct:spaghetti>: 1
		}
	},
	"minecraft:chests/end_city_treasure": {
		"main": {
			<minecraft:diamond>: 5,
			<minecraft:iron_ingot>: 10,
			<minecraft:gold_ingot>: 15,
			<minecraft:emerald>: 2,
			<minecraft:beetroot_seeds>: 5,
			<minecraft:saddle>: 3,
			<minecraft:iron_horse_armor>: 1,
			<minecraft:golden_horse_armor>: 1,
			<minecraft:diamond_horse_armor>: 1,
			<minecraft:diamond_sword>: 3,
			<minecraft:diamond_boots>: 3,
			<minecraft:diamond_chestplate>: 3,
			<minecraft:diamond_leggings>: 3,
			<minecraft:diamond_helmet>: 3,
			<minecraft:diamond_pickaxe>: 3,
			<minecraft:diamond_shovel>: 3,
			<minecraft:iron_sword>: 3,
			<minecraft:iron_boots>: 3,
			<minecraft:iron_chestplate>: 3,
			<minecraft:iron_leggings>: 3,
			<minecraft:iron_helmet>: 3,
			<minecraft:iron_pickaxe>: 3,
			<minecraft:iron_shovel>: 3
		},
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"actuallyadditions:lush_caves": {
		"main": {
			<minecraft:book>: 50,
			<minecraft:bone>: 100,
			<actuallyadditions:wooden_paxel>: 30,
			<actuallyadditions:stone_paxel>: 25,
			<actuallyadditions:quartz_paxel>: 20,
			<actuallyadditions:item_paxel_crystal_black>: 15,
			<actuallyadditions:item_paxel_crystal_white>: 10,
			<minecraft:leather_helmet>: 50,
			<minecraft:leather_chestplate>: 50,
			<minecraft:leather_leggings>: 50,
			<minecraft:leather_boots>: 50,
			<actuallyadditions:item_crystal>: 20,
			<actuallyadditions:block_crystal>: 3,
			<actuallyadditions:item_misc>: 20,
			<actuallyadditions:item_misc>: 5
		}
	},
	"twilightforest:structures/labyrinth_dead_end/labyrinth_dead_end": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/labyrinth_room/labyrinth_room": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/troll_garden/troll_garden": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/tree_cache/tree_cache": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/hill_2/hill_2": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/stronghold_boss/stronghold_boss": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/tower_library/tower_library": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/aurora_boss/aurora_boss": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/basement/basement": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/aurora_room/aurora_room": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/tower_room/tower_room": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/hill_1/hill_1": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/darktower_cache/darktower_cache": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/hill_3/hill_3": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/labyrinth_vault/labyrinth_vault": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/darktower_key/darktower_key": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/stronghold_room/stronghold_room": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/darktower_boss/darktower_boss": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/troll_vault/troll_vault": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"twilightforest:structures/stronghold_cache/stronghold_cache": {
		"liveroot": {
			<twilightforest:liveroot>: 1
		}
	},
	"minecraft:chests/jungle_temple_dispenser": {
		"main": {
			<minecraft:arrow>: 30
		}
	},
	"immersiveengineering:chests/stronghold_library": {
		"immersiveengineering_loot_inject": {
			<immersiveengineering:blueprint>: 5
		}
	},
	"twilightforest:structures/darktower_key/darktower_key": {
		"key": {
			<twilightforest:tower_key>: 1
		}
	},
	"tombstone:special": {
		"lost_tablet": {
			<tombstone:lost_tablet>: 0,
		}
	},
	"tombstone:special": {
		"lost_tablet": {
			<tombstone:tablet_of_recall>: 1,
		}
	},
	"tombstone:special": {
		"chest_treasure": {
			<tombstone:scroll_buff>: 7,
			<tombstone:tablet_of_cupidity>: 1,
			<tombstone:scroll_of_knowledge>: 1,
			<tombstone:lost_tablet>: 1
		}
	},
	"minecraft:entities/iron_golem": {
		"main": {
			<minecraft:red_flower>: 1
		}
	},
	"minecraft:entities/iron_golem": {
		"pool1": {
			<minecraft:iron_ingot>: 1
		}
	}
};

function init() {
	for tableId, pools in lootTables {
		var lootTable = LootTable.edit(tableId);

		for poolName, items in pools {
			var lootPool = lootTable.getExistingPool(poolName);
			lootPool.clear();

			for item, weight in items {
				var lootEntry = LootEntry.fromItemStack(item).setWeight(weight).setStage();
				lootPool.addEntry(lootEntry);
			}
		}
	}
}
