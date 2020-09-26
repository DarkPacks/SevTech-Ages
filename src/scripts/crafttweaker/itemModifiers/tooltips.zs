/*
	SevTech: Ages Tooltips Modification Script

	This script allows modification of tooltips.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	// ==================================
	// Prospecting Rods
	<prospectors:prospector_lowest:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 1 and below"),
		format.green("Will detect unlocked Ores"),
		format.green("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_low:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 2 and below"),
		format.green("Will detect unlocked Ores"),
		format.green("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_med:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for Age 3 and below ore"),
		format.green("Will detect unlocked Ores"),
		format.green("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_high:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 4 and below"),
		format.green("Will detect unlocked Ores"),
		format.green("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_best:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 5 and below"),
		format.green("Will detect unlocked Ores"),
		format.green("in a " ~ 48 ~ " block straight line")
	],

	// ==================================
	// Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
	<geolosys:ore:0>: [
		format.green("Iron Ore")
	],
	<geolosys:ore:1>: [
		format.green("Iron and Nickel Ore")
	],
	<geolosys:ore:2>: [
		format.green("Copper Ore")
	],
	<geolosys:ore:3>: [
		format.green("Copper Ore")
	],
	<geolosys:ore:4>: [
		format.green("Tin Ore")
	],
	<geolosys:ore:5>: [
		format.green("Tin Ore")
	],
	<geolosys:ore:6>: [
		format.green("Silver and Lead Ore")
	],
	<geolosys:ore:7>: [
		format.green("Aluminum Ore")
	],
	<geolosys:ore:8>: [
		format.green("Platinum Ore")
	],
	<geolosys:ore:9>: [
		format.green("Uranium Ore")
	],
	<geolosys:ore:10>: [
		format.green("Zinc Ore")
	],
	<geolosys:ore_vanilla:1>: [
		format.green("Redstone Ore")
	],
	<geolosys:ore_vanilla:5>: [
		format.green("Diamond Ore")
	],
	<geolosys:ore_vanilla:6>: [
		format.green("Emerald Ore")
	],

	// ==================================
	// Someone had to do it! xD
	<chisel:antiblock:15>: [
		format.gold("Craftable")
	],
	<chisel:brownstone:0>: [
		format.gold("Craftable")
	],
	<chisel:factory:0>: [
		format.gold("Craftable")
	],
	<chisel:futura:0>: [
		format.gold("Craftable")
	],
	<chisel:laboratory:0>: [
		format.gold("Craftable")
	],
	<chisel:lavastone:0>: [
		format.gold("Craftable")
	],
	<chisel:temple:0>: [
		format.gold("Craftable")
	],
	<chisel:tyrian:0>: [
		format.gold("Craftable")
	],
	<chisel:voidstone:0>: [
		format.gold("Craftable")
	],
	<chisel:waterstone:0>: [
		format.gold("Craftable")
	],

	// ==================================
	// Environmental Tech Structures
	// Lightning
	<environmentaltech:lightning_cont_1:0>: [
		format.aqua("Structure Size: 3x7x3")
	],
	<environmentaltech:lightning_cont_2:0>: [
		format.aqua("Structure Size: 3x9x3")
	],
	<environmentaltech:lightning_cont_3:0>: [
		format.aqua("Structure Size: 3x11x3")
	],
	<environmentaltech:lightning_cont_4:0>: [
		format.aqua("Structure Size: 3x13x3")
	],
	<environmentaltech:lightning_cont_5:0>: [
		format.aqua("Structure Size: 3x18x3")
	],
	<environmentaltech:lightning_cont_6:0>: [
		format.aqua("Structure Size: 3x23x3")
	],

	// Nano
	<environmentaltech:nano_cont_personal_1:0>: [
		format.aqua("Structure Size: 5x3x5")
	],
	<environmentaltech:nano_cont_personal_2:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:nano_cont_personal_3:0>: [
		format.aqua("Structure Size: 9x5x9")
	],
	<environmentaltech:nano_cont_personal_4:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:nano_cont_personal_5:0>: [
		format.aqua("Structure Size: 13x7x13")
	],
	<environmentaltech:nano_cont_personal_6:0>: [
		format.aqua("Structure Size: 15x8x15")
	],

	// Solar
	<environmentaltech:solar_cont_1:0>: [
		format.aqua("Structure Size: 5x2x5")
	],
	<environmentaltech:solar_cont_2:0>: [
		format.aqua("Structure Size: 7x2x7")
	],
	<environmentaltech:solar_cont_3:0>: [
		format.aqua("Structure Size: 9x2x9")
	],
	<environmentaltech:solar_cont_4:0>: [
		format.aqua("Structure Size: 11x2x11")
	],
	<environmentaltech:solar_cont_5:0>: [
		format.aqua("Structure Size: 13x2x13")
	],
	<environmentaltech:solar_cont_6:0>: [
		format.aqua("Structure Size: 15x2x15")
	],

	// Void Botanic Miner
	<environmentaltech:void_botanic_miner_cont_1:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_botanic_miner_cont_2:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_botanic_miner_cont_3:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_botanic_miner_cont_4:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_botanic_miner_cont_5:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_botanic_miner_cont_6:0>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// Void Ore Miner
	<environmentaltech:void_ore_miner_cont_1:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_ore_miner_cont_2:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_ore_miner_cont_3:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_ore_miner_cont_4:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_ore_miner_cont_5:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_ore_miner_cont_6:0>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// Void Res Miner
	<environmentaltech:void_res_miner_cont_1:0>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_res_miner_cont_2:0>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_res_miner_cont_3:0>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_res_miner_cont_4:0>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_res_miner_cont_5:0>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_res_miner_cont_6:0>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// ==================================
	// Galacticraft Schematic Helpful Hints
	<galacticraftcore:schematic:0>: [
		format.gray("Tier 1 treasure chests, found after completing tier 1 dungeons on the moon")
	],
	<galacticraftcore:schematic:1>: [
		format.gray("The Tier 2 Rocket Schematic can be found in Tier 1 treasure chests, found after completing the Moon Dungeon")
	],

	<galacticraftplanets:schematic:0>: [
		format.gray("The Tier 3 Rocket Schematic can be found in Tier 2 Treasure Chests which can sometimes be found after completing Mars Dungeons")
	],
	<galacticraftplanets:schematic:1>: [
		format.gray("The schematic can be found in Tier 2 treasure chests, found after completing tier 2 dungeons")
	],
	<galacticraftplanets:schematic:2>: [
		format.gray("Treasure item in a Tier 2 Treasure Chest after defeating the Creeper Boss")
	],

	<extraplanets:schematic_tier4:0>: [
		format.gray("The schematic can be found in a Tier 4 Treasure Chest on Mercury")
	],
	<extraplanets:schematic_tier5:0>: [
		format.gray("The schematic can be found in a Tier 5 Treasure Chest on Jupiter")
	],
	<extraplanets:schematic_tier6:0>: [
		format.gray("The schematic can be found in a Tier 6 Treasure Chest on Saturn")
	],
	<extraplanets:schematic_tier7:0>: [
		format.gray("The schematic can be found in a Tier 7 Treasure Chest on Uranus")
	],
	<extraplanets:schematic_tier8:0>: [
		format.gray("The schematic can be found in a Tier 8 Treasure Chest on Neptune")
	],
	<extraplanets:schematic_tier9:0>: [
		format.gray("The schematic can be found in a Tier 9 Treasure Chest on Pluto")
	],
	<extraplanets:schematic_tier10:0>: [
		format.gray("The schematic can be found in a Tier 10 Treasure Chest on Eris")
	],

	<extraplanets:schematic_mars_rover:0>: [
		format.gray("The schematic can be found in a Treasure Chest")
	],
	<extraplanets:schematic_venus_rover:0>: [
		format.gray("The schematic can be found in a Tier 4 Treasure Chest on Venus")
	],

	// ==================================
	// Misc
	<animalium:rat_meat:0>: [
		format.green("Loved by Wild Bears!")
	],

	<car:key:0>: [
		format.yellow("Comes with your car!"),
		format.yellow("Press I in your car to obtain"),
		format.yellow("Clone by crafting with iron")
	],

	<primal_tech:wooden_hopper>: [
		format.green("An advanced Wooden Hopper")
	],
	<primal_tech:charcoal_hopper>: [
		format.green("An advanced Wooden Hopper")
	],

	<jarm:oak_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],
	<jarm:spruce_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],
	<jarm:birch_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],
	<jarm:jungle_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],
	<jarm:acacia_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],
	<jarm:dark_oak_raft:0>: [
		format.green("A Tom Hanks Style Boat")
	],

	<minecraft:mob_spawner:0>: [
		format.green("Only has 400 total spawns!")
	],

	<totemic:tipi:0>: [
		format.green("It's like a fancy bed!")
	],

	<primal_tech:clay_kiln>: [
		format.green("Needs heat source below")
	],

	<dungpipe:sewer_pipe:0>: [
		format.green("Pipes items through a solid block")
	],

	<ceramics:clay_bucket:0>: [
		format.green("Will literally melt away after"),
		format.green("transporting HOT liquid")
	],

	<progressiontweaks:spear:0>: [
		format.green("Hold Mouse Button To Charge"),
		format.green("Release to throw")
	],

	<primal_tech:fibre_torch>: [
		format.green("Right Click on fire source"),
		format.green("or lit torch to light")
	],

	<primal_tech:rock>: [
		format.green("Used with the Work Stump"),
		format.green("Right Click on Table to craft recipe")
	],

	<tconstruct:sharpening_kit:0>: [
		format.green("Only used to repair tools")
	],

	<betterwithaddons:japanmat:36>: [
		format.green("Mulberry Trees rarely spawn in most biomes")
	],

	<primal_tech:work_stump>: [
		format.green("Needs a Crafting Rock"),
		format.green("to craft recipes")
	],
	<primal_tech:work_stump_upgraded>: [
		format.green("Needs a Crafting Rock"),
		format.green("to craft recipes")
	],

	<primal:flint_hatchet:*>: [
		format.green("Can not be repaired")
	],
	<primal:sharp_bone:*>: [
		format.green("Can not be repaired")
	],

	<teslacorelib:energy_tier1:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:energy_tier2:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier1:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier2:0>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],

	<astikorcarts:plowcart:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],
	<astikorcarts:cargocart:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],
	<astikorcarts:mobcart:0>: [
		format.yellow("Use the AstikorCarts Action"),
		format.yellow("Key to attach to Horses")
	],

	<primal:flint_workblade:*>: [
		format.green("Can not be repaired")
	],
	<primal:quartz_workblade:*>: [
		format.green("Can not be repaired")
	],
	<primal:iron_workblade:*>: [
		format.green("Can not be repaired")
	],
	<primal:emerald_workblade:*>: [
		format.green("Can not be repaired")
	],
	<primal:diamond_workblade:*>: [
		format.green("Can not be repaired")
	],
	<primal:flint_axe:*>: [
		format.green("Can not be repaired")
	],

	<waterstrainer:garden_trowel:0>: [
		format.green("Repaired with Flint")
	],

	<betterwithmods:wooden_broken_gearbox:0>: [
		format.green("Right click with two"),
		format.green("Wooden Gears in hand to Repair"),
		format.green("Or craft back into a repaired block")
	],

	<extraplanets:apple_iron:0>: [
		format.green("Eating this item will"),
		format.green("unlock Advanced Mapping")
	],

	<thebetweenlands:ring_of_flight:0>: [
		format.green("Can be found as Loot from chests in"),
		format.green("Shrines, Cragrock Towers"),
		format.green("and the Wight Fortress"),
		format.green("or looted from bosses"),
		format.green("and a rare drop chance"),
		format.green("from certain Betweenlands enemies")
	],

	<indlog:auto_craft:0>: [
		format.green("Only able to craft Age 4 items and below")
	],
	<indlog:portable_craft:0>: [
		format.green("Only able to craft Age 4 items and below")
	],

	<buildcraftfactory:autoworkbench_item:0>: [
		format.green("Only able to craft Age 4 items and below")
	],

	<rftools:crafter1:0>: [
		format.green("Able to craft Age 5 items and below")
	],
	<rftools:crafter2:0>: [
		format.green("Able to craft Age 5 items and below")
	],
	<rftools:crafter3:0>: [
		format.green("Able to craft Age 5 items and below")
	],

	<cyclicmagic:auto_crafter:0>: [
		format.green("Able to craft Age 5 items and below")
	],

	<betterwithmods:hand_crank:0>: [
		format.green("Needed to power early machines"),
		format.green("like the Mill Stone")
	],

	<betterwithmods:single_machine:0>: [
		format.aqua("Use Hand Crank until kinetic"),
		format.aqua("power is available")
	],

	<abyssalcraft:statue:0>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:1>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:2>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:3>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:4>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:5>: [
		format.green("Requires open sky above to function")
	],
	<abyssalcraft:statue:6>: [
		format.green("Requires open sky above to function")
	],

	<totemic:cedar_log:0>: [
		format.green("Not found in the world"),
		format.green("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:stripped_cedar_log:0>: [
		format.green("Not found in the world"),
		format.green("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_plank:0>: [
		format.green("Not found in the world"),
		format.green("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_sapling:0>: [
		format.green("Not found in the world"),
		format.green("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_leaves:0>: [
		format.green("Not found in the world"),
		format.green("Red Cedar is acquired via a Totemic Ceremony")
	],

	// Add tooltips to explain how to find eagles / obtain the eagle drops
	<totemic:eagle_drops:0>: [
		format.green("Not found in the world"),
		format.green("Eagles are spawned via a Totemic Ceremony")
	],
	<totemic:eagle_drops:1>: [
		format.green("Not found in the world"),
		format.green("Eagles are spawned via a Totemic Ceremony")
	],

	// Death Releated
	<death_compass:death_compass>: [
		format.green("Sneak on your grave to retrieve your items")
	],
	<extendedcrafting:singularity_custom:8>: [
		format.aqua("Compasses obtained through player death or"),
		format.aqua("from Player Skin Mobs")
	],

	// Space!
	<buildcraftbuilders:quarry:0>: [
		format.green("This machine will only work in space!")
	],

	// Creeping Moss
	<huntingdim:biome_changer:0>: [
		format.green("To change the Biome Type Shift-Click inside the biome you want the moss to be")
	],

	<betterwithmods:hibachi:0>: [
		format.green("Needs a Redstone signal to light")
	],

	// Extra Planets space suit
	<extraplanets:tier1_space_suit_helmet:*>: [
		format.green("Only requires power when modules are installed"),
		format.green("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_chest:*>: [
		format.green("Only requires power when modules are installed"),
		format.green("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_legings:*>: [
		format.green("Only requires power when modules are installed"),
		format.green("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_boots:*>: [
		format.green("Only requires power when modules are installed"),
		format.green("can only be charged with an Energy Storage Module")
	],

	// Coralium
	<abyssalcraft:coraliumore:0>: [
		format.aqua("Consult Overworld Chapter in Forbidden Knowledge"),
		format.aqua("in the Necromonicon for more information."),
		format.aqua("Ore can be found underground in Ocean"),
		format.aqua("and Swamp Biomes")
	],
	<abyssalcraft:cpearl:0>: [
		format.aqua("Consult Overworld Chapter in Forbidden Knowledge"),
		format.aqua("in the Necromonicon for more information."),
		format.aqua("Ore can be found underground in Ocean"),
		format.aqua("and Swamp Biomes")
	],
	<thebetweenlands:volarkite>: [
		format.aqua("Glider"),
	],
	<twilightforest:raven_feather>: [
		format.green("Summon a Raven using an"),
		format.green("Abyssalcraft Ritual. Check"),
		format.green("the Necronomicon for information")
	],
	<rustic:apiary>: [
		format.green("When bees are inserted this will increase"),
		format.green("crop growth in a 4 block radius,"),
		format.green("breeds bees, and creates honeycomb")
	],
	<rustic:bee>: [
		format.green("Found in Rustic Beehives around the world"),
		format.green("Insert into Rustic Apiary")
	],

	/*
		Location Descriptions for Ore and Samples
	*/
    // Malachite
	<geolosys:ore:2>: [
		format.green("Found in"),
		format.green("Forest Biome Islands")
	],
	<geolosys:ore_sample:2>: [
		format.green("Found in"),
		format.green("Forest Biome Islands")
	],
    // Azurite
	<geolosys:ore:3> : [
		format.green("Found in"),
		format.green("Darklands Biome Islands")
	],
	<geolosys:ore_sample:3> : [
		format.green("Found in"),
		format.green("Darklands Biome Islands")
	],
    // Cassiterite
	<geolosys:ore:4>: [
		format.green("Found in"),
		format.green("Birch Forest & Plains Biome Islands")
	],
	<geolosys:ore_sample:4>: [
		format.green("Found in"),
		format.green("Birch Forest & Plains Biome Islands")
	],
    // Teallite
	<geolosys:ore:5>: [
		format.green("Found in"),
		format.green("Roofed Forest & Savannah Biome Islands")
	],
	<geolosys:ore_sample:5>: [
		format.green("Found in"),
		format.green("Roofed Forest & Savannah Biome Islands")
	],
    // Coal
	<geolosys:ore_vanilla:0>: [
		format.green("Found in"),
		format.green("Darklands, Forest, & Roofed Forest Biome Islands")
	],
	<geolosys:ore_sample_vanilla:0>: [
		format.green("Found in"),
		format.green("Darklands, Forest, & Roofed Forest Biome Islands")
	],
    // Hematite
	<geolosys:ore:0>: [
		format.green("Found in"),
		format.green("Meadow, Plains, Savannah, & Swampland Biome Islands")
	],
	<geolosys:ore_sample:0>: [
		format.green("Found in"),
		format.green("Meadow, Plains, Savannah, & Swampland Biome Islands")
	],
    // Rock Crystal
	<astralsorcery:blockcustomore>: [
		format.green("Found in"),
		format.green("Cold Taiga & Snowy Coniferous Forest Biome Islands")
	],
	<astralsorcery:blockgeolosyssamplecluster>: [
		format.green("Found in"),
		format.green("Cold Taiga & Snowy Coniferous Forest Biome Islands")
	],
    // Lapis
	<geolosys:ore_vanilla:3>: [
		format.green("Found in"),
		format.green("Green Swamp, Swampland, Temperate Rainforest,"),
		format.green("& Mushroom Biome Islands")
	],
	<geolosys:ore_sample_vanilla:3>: [
		format.green("Found in"),
		format.green("Green Swamp, Swampland, Temperate Rainforest,"),
		format.green("& Mushroom Biome Islands")
	],
    // Gold
	<geolosys:ore_vanilla:2>: [
		format.green("Found in"),
		format.green("Badlands & Mesa Biome Islands")
	],
	<geolosys:ore_sample_vanilla:2>: [
		format.green("Found in"),
		format.green("Badlands & Mesa Biome Islands")
	],
    // Platinum
	<geolosys:ore:8>: [
		format.green("Found in"),
		format.green("Rocky Plateau Biome Islands")
	],
	<geolosys:ore_sample:8>: [
		format.green("Found in"),
		format.green("Rocky Plateau Biome Islands")
	],
    // Limonite
	<geolosys:ore:1>  : [
		format.green("Found in"),
		format.green("Autumnal Woods & Jungle Biome Islands")
	],
	<geolosys:ore_sample:1>: [
		format.green("Found in"),
		format.green("Autumnal Woods & Jungle Biome Islands")
	],
    // Galena
	<geolosys:ore:6>: [
		format.green("Found in"),
		format.green("Darklands Forest & Glacier Biome Islands")
	],
	<geolosys:ore_sample:6>: [
		format.green("Found in"),
		format.green("Darklands Forest & Glacier Biome Islands")
	],
    // Redstone / Cinnabar
	<geolosys:ore_vanilla:1>: [
		format.green("Found in"),
		format.green("Desert & Redwood Taiga Hills Biome Islands")
    ],
	<mundaneredstone:redstone_ore>: [
		format.green("Found in"),
		format.green("Taiga Biome Islands")
	],
	<geolosys:ore_sample_vanilla:1>: [
		format.green("Found in"),
		format.green("Desert, Redwood Taiga Hills,"),
		format.green("& Taiga Biome Islands")
	],
    // Bauxite
	<geolosys:ore:7>: [
		format.green("Found in"),
		format.green("Mini Jungle, Mutated Birch Forest,"),
		format.green("& Woodlansd Biome Islands")
	],
	<geolosys:ore_sample:7>: [
		format.green("Found in"),
		format.green("Mini Jungle, Mutated Birch Forest,"),
		format.green("& Woodlansd Biome Islands")
	],
    // Quartz
	<geolosys:ore_vanilla:4>: [
		format.green("Found in"),
		format.green("meneglin & Lush Hills Biome Islands")
	],
	<geolosys:ore_sample_vanilla:4>: [
		format.green("Found in"),
		format.green("meneglin & Lush Hills Biome Islands")
	],
    // Silicon
	<galacticraftcore:basic_block_core:8>: [
		format.green("Found in"),
		format.green("Jungle & Mutated Plains Biome Islands")
	],
	<contenttweaker:sub_block_holder_0:5>: [
		format.green("Found in"),
		format.green("Jungle & Mutated Plains Biome Islands")
	],
    // Diamond
	<geolosys:ore_vanilla:5>: [
		format.green("Found in"),
		format.green("Glacier Spikes Biome Islands")
	],
	<geolosys:ore_sample_vanilla:5>: [
		format.green("Found in"),
		format.green("Glacier Spikes Biome Islands")
	],
    // Osmium
	<contenttweaker:sub_block_holder_0:4>: [
		format.green("Found in"),
		format.green("Mutated Forest & Ice Flats Biome Islands")
	],
	<contenttweaker:sub_block_holder_0:6>: [
		format.green("Found in"),
		format.green("Mutated Forest & Ice Flats Biome Islands")
	],
    // Emerald
	<geolosys:ore_vanilla:6>: [
		format.green("Found in"),
		format.green("Extreme Hills Biome Islands")
	],
	<geolosys:ore_sample_vanilla:6>: [
		format.green("Found in"),
		format.green("Extreme Hills Biome Islands")
	],
    // Uranium
	<geolosys:ore:9>: [
		format.green("Found in"),
		format.green("Coralium Infested Swamp Biome Islands")
	],
	<geolosys:ore_sample:9>: [
		format.green("Found in"),
		format.green("Coralium Infested Swamp Biome Islands")
	],

	<twilightforest:liveroot>: [
		format.green("Found in Twilight Forest Loot Chests"),
		format.green("or via Bonsai Trees")
	],
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
