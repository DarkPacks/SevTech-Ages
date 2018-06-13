/*
	Apply tooltips to items

	http://crafttweaker.readthedocs.io/en/latest/#Vanilla/Items/Tooltips/
*/
//==================================
//Prospecting Rods
var prospectingRodRange as int = 48;
<prospectors:prospector_lowest:*>.addTooltip(format.yellow("This tool may only be used"));
<prospectors:prospector_lowest:*>.addTooltip(format.yellow("for ore in Age 1 and below"));
<prospectors:prospector_lowest:*>.addTooltip(format.red("Will detect unlocked Ores"));
<prospectors:prospector_lowest:*>.addTooltip(format.red("in a " ~ prospectingRodRange ~ " block straight line"));

<prospectors:prospector_low:*>.addTooltip(format.yellow("This tool may only be used"));
<prospectors:prospector_low:*>.addTooltip(format.yellow("for ore in Age 2 and below"));
<prospectors:prospector_low:*>.addTooltip(format.red("Will detect unlocked Ores"));
<prospectors:prospector_low:*>.addTooltip(format.red("in a " ~ prospectingRodRange ~ " block straight line"));

<prospectors:prospector_med:*>.addTooltip(format.yellow("This tool may only be used"));
<prospectors:prospector_med:*>.addTooltip(format.yellow("for Age 3 and below ore"));
<prospectors:prospector_med:*>.addTooltip(format.red("Will detect unlocked Ores"));
<prospectors:prospector_med:*>.addTooltip(format.red("in a " ~ prospectingRodRange ~ " block straight line"));

<prospectors:prospector_high:*>.addTooltip(format.yellow("This tool may only be used"));
<prospectors:prospector_high:*>.addTooltip(format.yellow("for ore in Age 4 and below"));
<prospectors:prospector_high:*>.addTooltip(format.red("Will detect unlocked Ores"));
<prospectors:prospector_high:*>.addTooltip(format.red("in a " ~ prospectingRodRange ~ " block straight line"));

<prospectors:prospector_best:*>.addTooltip(format.yellow("This tool may only be used"));
<prospectors:prospector_best:*>.addTooltip(format.yellow("for ore in Age 5 and below"));
<prospectors:prospector_best:*>.addTooltip(format.red("Will detect unlocked Ores"));
<prospectors:prospector_best:*>.addTooltip(format.red("in a " ~ prospectingRodRange ~ " block straight line"));

//==================================
//Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
<geolosys:ore>.addTooltip(format.red("Iron Ore"));
<geolosys:ore:1>.addTooltip(format.red("Iron and Nickel Ore"));
<geolosys:ore:2>.addTooltip(format.red("Copper Ore"));
<geolosys:ore:3>.addTooltip(format.red("Copper Ore"));
<geolosys:ore:4>.addTooltip(format.red("Tin Ore"));
<geolosys:ore:5>.addTooltip(format.red("Tin Ore"));
<geolosys:ore:6>.addTooltip(format.red("Silver and Lead Ore"));
<geolosys:ore:7>.addTooltip(format.red("Aluminum Ore"));
<geolosys:ore:8>.addTooltip(format.red("Platinum Ore"));
<geolosys:ore:9>.addTooltip(format.red("Uranium Ore"));
<geolosys:ore:10>.addTooltip(format.red("Zinc Ore"));
<geolosys:ore_vanilla:1>.addTooltip(format.red("Redstone Ore"));
<geolosys:ore_vanilla:5>.addTooltip(format.red("Diamond Ore"));
<geolosys:ore_vanilla:6>.addTooltip(format.red("Emerald Ore"));

//==================================
//Someone had to do it! xD
<chisel:antiblock:15>.addTooltip(format.gold("Craftable"));
<chisel:brownstone>.addTooltip(format.gold("Craftable"));
<chisel:factory>.addTooltip(format.gold("Craftable"));
<chisel:futura>.addTooltip(format.gold("Craftable"));
<chisel:laboratory>.addTooltip(format.gold("Craftable"));
<chisel:lavastone>.addTooltip(format.gold("Craftable"));
<chisel:temple>.addTooltip(format.gold("Craftable"));
<chisel:tyrian>.addTooltip(format.gold("Craftable"));
<chisel:voidstone>.addTooltip(format.gold("Craftable"));
<chisel:waterstone>.addTooltip(format.gold("Craftable"));

//==================================
//Environmental Tech Structures
<environmentaltech:lightning_cont_1>.addTooltip(format.aqua("Structure Size: 3x7x3"));
<environmentaltech:lightning_cont_2>.addTooltip(format.aqua("Structure Size: 3x9x3"));
<environmentaltech:lightning_cont_3>.addTooltip(format.aqua("Structure Size: 3x11x3"));
<environmentaltech:lightning_cont_4>.addTooltip(format.aqua("Structure Size: 3x13x3"));
<environmentaltech:lightning_cont_5>.addTooltip(format.aqua("Structure Size: 3x18x3"));
<environmentaltech:lightning_cont_6>.addTooltip(format.aqua("Structure Size: 3x23x3"));

<environmentaltech:nano_cont_personal_1>.addTooltip(format.aqua("Structure Size: 5x3x5"));
<environmentaltech:nano_cont_personal_2>.addTooltip(format.aqua("Structure Size: 7x4x7"));
<environmentaltech:nano_cont_personal_3>.addTooltip(format.aqua("Structure Size: 9x5x9"));
<environmentaltech:nano_cont_personal_4>.addTooltip(format.aqua("Structure Size: 11x6x11"));
<environmentaltech:nano_cont_personal_5>.addTooltip(format.aqua("Structure Size: 13x7x13"));
<environmentaltech:nano_cont_personal_6>.addTooltip(format.aqua("Structure Size: 15x8x15"));

<environmentaltech:solar_cont_1>.addTooltip(format.aqua("Structure Size: 5x2x5"));
<environmentaltech:solar_cont_2>.addTooltip(format.aqua("Structure Size: 7x2x7"));
<environmentaltech:solar_cont_3>.addTooltip(format.aqua("Structure Size: 9x2x9"));
<environmentaltech:solar_cont_4>.addTooltip(format.aqua("Structure Size: 11x2x11"));
<environmentaltech:solar_cont_5>.addTooltip(format.aqua("Structure Size: 13x2x13"));
<environmentaltech:solar_cont_6>.addTooltip(format.aqua("Structure Size: 15x2x15"));

<environmentaltech:void_botanic_miner_cont_1>.addTooltip(format.aqua("Structure Size: 7x4x7"));
<environmentaltech:void_botanic_miner_cont_2>.addTooltip(format.aqua("Structure Size: 7x5x7"));
<environmentaltech:void_botanic_miner_cont_3>.addTooltip(format.aqua("Structure Size: 11x6x11"));
<environmentaltech:void_botanic_miner_cont_4>.addTooltip(format.aqua("Structure Size: 11x7x11"));
<environmentaltech:void_botanic_miner_cont_5>.addTooltip(format.aqua("Structure Size: 11x8x11"));
<environmentaltech:void_botanic_miner_cont_6>.addTooltip(format.aqua("Structure Size: 13x8x13"));

<environmentaltech:void_ore_miner_cont_1>.addTooltip(format.aqua("Structure Size: 7x4x7"));
<environmentaltech:void_ore_miner_cont_2>.addTooltip(format.aqua("Structure Size: 7x5x7"));
<environmentaltech:void_ore_miner_cont_3>.addTooltip(format.aqua("Structure Size: 11x6x11"));
<environmentaltech:void_ore_miner_cont_4>.addTooltip(format.aqua("Structure Size: 11x7x11"));
<environmentaltech:void_ore_miner_cont_5>.addTooltip(format.aqua("Structure Size: 11x8x11"));
<environmentaltech:void_ore_miner_cont_6>.addTooltip(format.aqua("Structure Size: 13x8x13"));

<environmentaltech:void_res_miner_cont_1>.addTooltip(format.aqua("Structure Size: 7x4x7"));
<environmentaltech:void_res_miner_cont_2>.addTooltip(format.aqua("Structure Size: 7x5x7"));
<environmentaltech:void_res_miner_cont_3>.addTooltip(format.aqua("Structure Size: 11x6x11"));
<environmentaltech:void_res_miner_cont_4>.addTooltip(format.aqua("Structure Size: 11x7x11"));
<environmentaltech:void_res_miner_cont_5>.addTooltip(format.aqua("Structure Size: 11x8x11"));
<environmentaltech:void_res_miner_cont_6>.addTooltip(format.aqua("Structure Size: 13x8x13"));

//==================================
//Misc
<animalium:rat_meat>.addTooltip(format.red("Loved by Wild Bears!"));

<primal_tech:wooden_hopper>.addTooltip(format.red("An advanced Wooden Hopper"));
<primal_tech:charcoal_hopper>.addTooltip(format.red("An advanced Wooden Hopper"));

<jarm:oak_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));
<jarm:spruce_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));
<jarm:birch_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));
<jarm:jungle_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));
<jarm:acacia_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));
<jarm:dark_oak_raft>.addTooltip(format.red("A Tom Hanks Style Boat"));

<minecraft:mob_spawner>.addTooltip(format.red("Only has 400 total spawns!"));

<totemic:tipi>.addTooltip(format.red("It's like a fancy bed!"));

<primal_tech:clay_kiln>.addTooltip(format.red("Needs heat source below"));

<dungpipe:sewer_pipe>.addTooltip(format.red("Pipes items through a solid block"));

<ceramics:clay_bucket>.addTooltip(format.red("Will literally melt away after transporting HOT liquid"));

<progressiontweaks:spear>.addTooltip(format.red("Hold Mouse Button To Charge"));
<progressiontweaks:spear>.addTooltip(format.red("Release to throw"));

<primal_tech:fibre_torch>.addTooltip(format.red("Right Click on fire source"));
<primal_tech:fibre_torch>.addTooltip(format.red("or lit torch to light"));

<primal_tech:rock>.addTooltip(format.red("Used with the Work Stump"));
<primal_tech:rock>.addTooltip(format.red("Right Click on Table to craft recipe"));

<tconstruct:sharpening_kit>.addTooltip(format.red("Only used to repair tools"));

<betterwithaddons:japanmat:36>.addTooltip(format.red("Mulberry Trees rarely spawn in most biomes"));

<primal_tech:work_stump>.addTooltip(format.red("Needs a Crafting Rock"));
<primal_tech:work_stump>.addTooltip(format.red("to craft recipes"));
<primal_tech:work_stump_upgraded>.addTooltip(format.red("Needs a Crafting Rock"));
<primal_tech:work_stump_upgraded>.addTooltip(format.red("to craft recipes"));

<primal:flint_hatchet:*>.addTooltip(format.red("Can not be repaired"));
<primal:sharp_bone:*>.addTooltip(format.red("Can not be repaired"));

<teslacorelib:energy_tier1>.addTooltip(format.yellow("Upgrade for Industrial Foregoing Machines"));
<teslacorelib:energy_tier2>.addTooltip(format.yellow("Upgrade for Industrial Foregoing Machines"));
<teslacorelib:speed_tier1>.addTooltip(format.yellow("Upgrade for Industrial Foregoing Machines"));
<teslacorelib:speed_tier2>.addTooltip(format.yellow("Upgrade for Industrial Foregoing Machines"));

<astikoor:plowcart>.addTooltip(format.yellow("Use the Astikoor Action"));
<astikoor:plowcart>.addTooltip(format.yellow("Key to attach to Horses"));
<astikoor:cargocart>.addTooltip(format.yellow("Use the Astikoor Action"));
<astikoor:cargocart>.addTooltip(format.yellow("Key to attach to Horses"));

<primal:flint_workblade:*>.addTooltip(format.red("Can not be repaired"));
<primal:quartz_workblade:*>.addTooltip(format.red("Can not be repaired"));
<primal:iron_workblade:*>.addTooltip(format.red("Can not be repaired"));
<primal:emerald_workblade:*>.addTooltip(format.red("Can not be repaired"));
<primal:diamond_workblade:*>.addTooltip(format.red("Can not be repaired"));
<primal:flint_axe:*>.addTooltip(format.red("Can not be repaired"));

<waterstrainer:garden_trowel>.addTooltip(format.red("Repaired with Flint"));

<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("Right click with two"));
<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("Wooden Gears in hand to Repair"));
<betterwithmods:wooden_broken_gearbox>.addTooltip(format.red("Or craft back into a repaired block"));

<extraplanets:apple_iron>.addTooltip(format.red("Eating this item will"));
<extraplanets:apple_iron>.addTooltip(format.red("unlock Advanced Mapping"));

<thebetweenlands:ring_of_flight>.addTooltip(format.red("Can be found as Loot from chests in"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("Shrines, Cragrock Towers"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("and the Wight Fortress"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("or looted from bosses"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("and a rare drop chance"));
<thebetweenlands:ring_of_flight>.addTooltip(format.red("from certain Betweenlands enemies"));

<indlog:auto_craft>.addTooltip(format.red("Only able to craft Age 4 items and below"));
<indlog:portable_craft>.addTooltip(format.red("Only able to craft Age 4 items and below"));

<buildcraftfactory:autoworkbench_item>.addTooltip(format.red("Only able to craft Age 4 items and below"));

<rftools:crafter1>.addTooltip(format.red("Able to craft Age 5 items and below"));
<rftools:crafter2>.addTooltip(format.red("Able to craft Age 5 items and below"));
<rftools:crafter3>.addTooltip(format.red("Able to craft Age 5 items and below"));

<cyclicmagic:auto_crafter>.addTooltip(format.red("Able to craft Age 5 items and below"));

<betterwithmods:hand_crank>.addTooltip(format.red("Needed to power early machines"));
<betterwithmods:hand_crank>.addTooltip(format.red("like the Mill Stone"));

<abyssalcraft:statue>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:1>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:2>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:3>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:4>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:5>.addTooltip(format.red("Requires open sky above to function"));
<abyssalcraft:statue:6>.addTooltip(format.red("Requires open sky above to function"));

<totemic:cedar_log>.addTooltip(format.red("Not found in the world"));
<totemic:cedar_log>.addTooltip(format.red("Red Cedar is acquired via a Totemic Ceremony"));
<totemic:stripped_cedar_log>.addTooltip(format.red("Not found in the world"));
<totemic:stripped_cedar_log>.addTooltip(format.red("Red Cedar is acquired via a Totemic Ceremony"));
<totemic:cedar_plank>.addTooltip(format.red("Not found in the world"));
<totemic:cedar_plank>.addTooltip(format.red("Red Cedar is acquired via a Totemic Ceremony"));
<totemic:cedar_sapling>.addTooltip(format.red("Not found in the world"));
<totemic:cedar_sapling>.addTooltip(format.red("Red Cedar is acquired via a Totemic Ceremony"));
<totemic:cedar_leaves>.addTooltip(format.red("Not found in the world"));
<totemic:cedar_leaves>.addTooltip(format.red("Red Cedar is acquired via a Totemic Ceremony"));

// Add tooltips to explain how to find eagles / obtain the eagle drops
<totemic:eagle_drops:0>.addTooltip(format.red("Not found in the world"));
<totemic:eagle_drops:0>.addTooltip(format.red("Eagles are spawned via a Totemic Ceremony"));
<totemic:eagle_drops:1>.addTooltip(format.red("Not found in the world"));
<totemic:eagle_drops:1>.addTooltip(format.red("Eagles are spawned via a Totemic Ceremony"));

// Make sure people know about the recipe needs to match the one in JEI to actually work.
<ceramics:unfired_clay:4>.addTooltip(format.red("For the MillStone recipe to work you need to match the slots to the one shown on JEI. Otherwise it will not work correctly"));

// Death Releated
<death_compass:death_compass>.addTooltip(format.red("Sneak on your grave to retrieve your items"));

// Space!
<buildcraftbuilders:quarry>.addTooltip(format.red("This machine will only work in space! But watch out for a flying car however"));

// Creeping Moss
<huntingdim:biome_changer>.addTooltip(format.red("To change the Biome Type Shift-Click inside the biome you want the moss to be"));

// Galacticraft Helpful Hints
<galacticraftcore:schematic>.addTooltip(format.gray("Tier 1 treasure chests, found after completing tier 1 dungeons on the moon"));
<galacticraftcore:schematic:1>.addTooltip(format.gray("The Tier 2 Rocket Schematic can be found in Tier 1 treasure chests, found after completing the Moon Dungeon"));

<galacticraftplanets:schematic>.addTooltip(format.gray("The Tier 3 Rocket Schematic can be found in Tier 2 Treasure Chests which can sometimes be found after completing Mars Dungeons"));
<galacticraftplanets:schematic:1>.addTooltip(format.gray("The schematic can be found in Tier 2 treasure chests, found after completing tier 2 dungeons"));
<galacticraftplanets:schematic:2>.addTooltip(format.gray("Treasure item in a Tier 2 Treasure Chest after defeating the Creeper Boss"));

<extraplanets:schematic_tier4>.addTooltip(format.gray("The schematic can be found in a Tier 4 Treasure Chest on Mercury"));
<extraplanets:schematic_tier5>.addTooltip(format.gray("The schematic can be found in a Tier 5 Treasure Chest on Jupiter"));
<extraplanets:schematic_tier6>.addTooltip(format.gray("The schematic can be found in a Tier 6 Treasure Chest on Saturn"));
<extraplanets:schematic_tier7>.addTooltip(format.gray("The schematic can be found in a Tier 7 Treasure Chest on Uranus"));
<extraplanets:schematic_tier8>.addTooltip(format.gray("The schematic can be found in a Tier 8 Treasure Chest on Neptune"));
<extraplanets:schematic_tier9>.addTooltip(format.gray("The schematic can be found in a Tier 9 Treasure Chest on Pluto"));
<extraplanets:schematic_tier10>.addTooltip(format.gray("The schematic can be found in a Tier 10 Treasure Chest on Eris"));

<extraplanets:schematic_mars_rover>.addTooltip(format.gray("The schematic can be found in a Treasure Chest"));
<extraplanets:schematic_venus_rover>.addTooltip(format.gray("The schematic can be found in a Tier 4 Treasure Chest on Venus"));

<betterwithmods:hibachi>.addTooltip(format.red("Needs a Redstone signal to light"));

<extraplanets:tier1_space_suit_helmet:*>.addTooltip(format.red("Only requires power when modules are installed"));
<extraplanets:tier1_space_suit_helmet:*>.addTooltip(format.red("can only be charged with an Energy Storage Module"));
<extraplanets:tier1_space_suit_chest:*>.addTooltip(format.red("Only requires power when modules are installed"));
<extraplanets:tier1_space_suit_chest:*>.addTooltip(format.red("can only be charged with an Energy Storage Module"));
<extraplanets:tier1_space_suit_legings:*>.addTooltip(format.red("Only requires power when modules are installed"));
<extraplanets:tier1_space_suit_legings:*>.addTooltip(format.red("can only be charged with an Energy Storage Module"));
<extraplanets:tier1_space_suit_boots:*>.addTooltip(format.red("Only requires power when modules are installed"));
<extraplanets:tier1_space_suit_boots:*>.addTooltip(format.red("can only be charged with an Energy Storage Module"));