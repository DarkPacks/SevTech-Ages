/*
	SevTech: Ages Tooltips Modification Script

	This script allows modification of tooltips.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

var prospectingRodRange as int = 48;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	// ==================================
	// Prospecting Rods
	<prospectors:prospector_lowest:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 1 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ prospectingRodRange ~ " block straight line")
	],
	<prospectors:prospector_low:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 2 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ prospectingRodRange ~ " block straight line")
	],
	<prospectors:prospector_med:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for Age 3 and below ore"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ prospectingRodRange ~ " block straight line")
	],
	<prospectors:prospector_high:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 4 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ prospectingRodRange ~ " block straight line")
	],
	<prospectors:prospector_best:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 5 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ prospectingRodRange ~ " block straight line")
	],

	// ==================================
	// Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
	<geolosys:ore>: [
		format.red("Iron Ore")
	],
	<geolosys:ore:1>: [
		format.red("Iron and Nickel Ore")
	],
	<geolosys:ore:2>: [
		format.red("Copper Ore")
	],
	<geolosys:ore:3>: [
		format.red("Copper Ore")
	],
	<geolosys:ore:4>: [
		format.red("Tin Ore")
	],
	<geolosys:ore:5>: [
		format.red("Tin Ore")
	],
	<geolosys:ore:6>: [
		format.red("Silver and Lead Ore")
	],
	<geolosys:ore:7>: [
		format.red("Aluminum Ore")
	],
	<geolosys:ore:8>: [
		format.red("Platinum Ore")
	],
	<geolosys:ore:9>: [
		format.red("Uranium Ore")
	],
	<geolosys:ore:10>: [
		format.red("Zinc Ore")
	],
	<geolosys:ore_vanilla:1>: [
		format.red("Redstone Ore")
	],
	<geolosys:ore_vanilla:5>: [
		format.red("Diamond Ore")
	],
	<geolosys:ore_vanilla:6>: [
		format.red("Emerald Ore")
	],

	// ==================================
	// Someone had to do it! xD
	<chisel:antiblock:15>: [
		format.gold("Craftable")
	],
	<chisel:brownstone>: [
		format.gold("Craftable")
	],
	<chisel:factory>: [
		format.gold("Craftable")
	],
	<chisel:futura>: [
		format.gold("Craftable")
	],
	<chisel:laboratory>: [
		format.gold("Craftable")
	],
	<chisel:lavastone>: [
		format.gold("Craftable")
	],
	<chisel:temple>: [
		format.gold("Craftable")
	],
	<chisel:tyrian>: [
		format.gold("Craftable")
	],
	<chisel:voidstone>: [
		format.gold("Craftable")
	],
	<chisel:waterstone>: [
		format.gold("Craftable")
	],

	// ==================================
	// Environmental Tech Structures
	// Lightning
	<environmentaltech:lightning_cont_1>: [
		format.aqua("Structure Size: 3x7x3")
	],
	<environmentaltech:lightning_cont_2>: [
		format.aqua("Structure Size: 3x9x3")
	],
	<environmentaltech:lightning_cont_3>: [
		format.aqua("Structure Size: 3x11x3")
	],
	<environmentaltech:lightning_cont_4>: [
		format.aqua("Structure Size: 3x13x3")
	],
	<environmentaltech:lightning_cont_5>: [
		format.aqua("Structure Size: 3x18x3")
	],
	<environmentaltech:lightning_cont_6>: [
		format.aqua("Structure Size: 3x23x3")
	],

	// Nano
	<environmentaltech:nano_cont_personal_1>: [
		format.aqua("Structure Size: 5x3x5")
	],
	<environmentaltech:nano_cont_personal_2>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:nano_cont_personal_3>: [
		format.aqua("Structure Size: 9x5x9")
	],
	<environmentaltech:nano_cont_personal_4>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:nano_cont_personal_5>: [
		format.aqua("Structure Size: 13x7x13")
	],
	<environmentaltech:nano_cont_personal_6>: [
		format.aqua("Structure Size: 15x8x15")
	],

	// Solar
	<environmentaltech:solar_cont_1>: [
		format.aqua("Structure Size: 5x2x5")
	],
	<environmentaltech:solar_cont_2>: [
		format.aqua("Structure Size: 7x2x7")
	],
	<environmentaltech:solar_cont_3>: [
		format.aqua("Structure Size: 9x2x9")
	],
	<environmentaltech:solar_cont_4>: [
		format.aqua("Structure Size: 11x2x11")
	],
	<environmentaltech:solar_cont_5>: [
		format.aqua("Structure Size: 13x2x13")
	],
	<environmentaltech:solar_cont_6>: [
		format.aqua("Structure Size: 15x2x15")
	],

	// Void Botanic Miner
	<environmentaltech:void_botanic_miner_cont_1>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_botanic_miner_cont_2>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_botanic_miner_cont_3>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_botanic_miner_cont_4>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_botanic_miner_cont_5>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_botanic_miner_cont_6>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// Void Ore Miner
	<environmentaltech:void_ore_miner_cont_1>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_ore_miner_cont_2>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_ore_miner_cont_3>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_ore_miner_cont_4>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_ore_miner_cont_5>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_ore_miner_cont_6>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// Void Res Miner
	<environmentaltech:void_res_miner_cont_1>: [
		format.aqua("Structure Size: 7x4x7")
	],
	<environmentaltech:void_res_miner_cont_2>: [
		format.aqua("Structure Size: 7x5x7")
	],
	<environmentaltech:void_res_miner_cont_3>: [
		format.aqua("Structure Size: 11x6x11")
	],
	<environmentaltech:void_res_miner_cont_4>: [
		format.aqua("Structure Size: 11x7x11")
	],
	<environmentaltech:void_res_miner_cont_5>: [
		format.aqua("Structure Size: 11x8x11")
	],
	<environmentaltech:void_res_miner_cont_6>: [
		format.aqua("Structure Size: 13x8x13")
	],

	// ==================================
	// Galacticraft Schematic Helpful Hints
	<galacticraftcore:schematic>: [
		format.gray("Tier 1 treasure chests, found after completing tier 1 dungeons on the moon")
	],
	<galacticraftcore:schematic:1>: [
		format.gray("The Tier 2 Rocket Schematic can be found in Tier 1 treasure chests, found after completing the Moon Dungeon")
	],

	<galacticraftplanets:schematic>: [
		format.gray("The Tier 3 Rocket Schematic can be found in Tier 2 Treasure Chests which can sometimes be found after completing Mars Dungeons")
	],
	<galacticraftplanets:schematic:1>: [
		format.gray("The schematic can be found in Tier 2 treasure chests, found after completing tier 2 dungeons")
	],
	<galacticraftplanets:schematic:2>: [
		format.gray("Treasure item in a Tier 2 Treasure Chest after defeating the Creeper Boss")
	],

	<extraplanets:schematic_tier4>: [
		format.gray("The schematic can be found in a Tier 4 Treasure Chest on Mercury")
	],
	<extraplanets:schematic_tier5>: [
		format.gray("The schematic can be found in a Tier 5 Treasure Chest on Jupiter")
	],
	<extraplanets:schematic_tier6>: [
		format.gray("The schematic can be found in a Tier 6 Treasure Chest on Saturn")
	],
	<extraplanets:schematic_tier7>: [
		format.gray("The schematic can be found in a Tier 7 Treasure Chest on Uranus")
	],
	<extraplanets:schematic_tier8>: [
		format.gray("The schematic can be found in a Tier 8 Treasure Chest on Neptune")
	],
	<extraplanets:schematic_tier9>: [
		format.gray("The schematic can be found in a Tier 9 Treasure Chest on Pluto")
	],
	<extraplanets:schematic_tier10>: [
		format.gray("The schematic can be found in a Tier 10 Treasure Chest on Eris")
	],

	<extraplanets:schematic_mars_rover>: [
		format.gray("The schematic can be found in a Treasure Chest")
	],
	<extraplanets:schematic_venus_rover>: [
		format.gray("The schematic can be found in a Tier 4 Treasure Chest on Venus")
	],

	// ==================================
	// Misc
	<animalium:rat_meat>: [
		format.red("Loved by Wild Bears!")
	],

	<primal_tech:wooden_hopper>: [
		format.red("An advanced Wooden Hopper")
	],
	<primal_tech:charcoal_hopper>: [
		format.red("An advanced Wooden Hopper")
	],

	<jarm:oak_raft>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:spruce_raft>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:birch_raft>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:jungle_raft>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:acacia_raft>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:dark_oak_raft>: [
		format.red("A Tom Hanks Style Boat")
	],

	<minecraft:mob_spawner>: [
		format.red("Only has 400 total spawns!")
	],

	<totemic:tipi>: [
		format.red("It's like a fancy bed!")
	],

	<primal_tech:clay_kiln>: [
		format.red("Needs heat source below")
	],

	<dungpipe:sewer_pipe>: [
		format.red("Pipes items through a solid block")
	],

	<ceramics:clay_bucket>: [
		format.red("Will literally melt away after transporting HOT liquid")
	],

	<progressiontweaks:spear>: [
		format.red("Hold Mouse Button To Charge"),
		format.red("Release to throw")
	],

	<primal_tech:fibre_torch>: [
		format.red("Right Click on fire source"),
		format.red("or lit torch to light")
	],

	<primal_tech:rock>: [
		format.red("Used with the Work Stump"),
		format.red("Right Click on Table to craft recipe")
	],

	<tconstruct:sharpening_kit>: [
		format.red("Only used to repair tools")
	],

	<betterwithaddons:japanmat:36>: [
		format.red("Mulberry Trees rarely spawn in most biomes")
	],

	<primal_tech:work_stump>: [
		format.red("Needs a Crafting Rock"),
		format.red("to craft recipes")
	],
	<primal_tech:work_stump_upgraded>: [
		format.red("Needs a Crafting Rock"),
		format.red("to craft recipes")
	],

	<primal:flint_hatchet:*>: [
		format.red("Can not be repaired")
	],
	<primal:sharp_bone:*>: [
		format.red("Can not be repaired")
	],

	<teslacorelib:energy_tier1>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:energy_tier2>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier1>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],
	<teslacorelib:speed_tier2>: [
		format.yellow("Upgrade for Industrial Foregoing Machines")
	],

	<astikoor:plowcart>: [
		format.yellow("Use the Astikoor Action"),
		format.yellow("Key to attach to Horses")
	],
	<astikoor:cargocart>: [
		format.yellow("Use the Astikoor Action"),
		format.yellow("Key to attach to Horses")
	],

	<primal:flint_workblade:*>: [
		format.red("Can not be repaired")
	],
	<primal:quartz_workblade:*>: [
		format.red("Can not be repaired")
	],
	<primal:iron_workblade:*>: [
		format.red("Can not be repaired")
	],
	<primal:emerald_workblade:*>: [
		format.red("Can not be repaired")
	],
	<primal:diamond_workblade:*>: [
		format.red("Can not be repaired")
	],
	<primal:flint_axe:*>: [
		format.red("Can not be repaired")
	],

	<waterstrainer:garden_trowel>: [
		format.red("Repaired with Flint")
	],

	<betterwithmods:wooden_broken_gearbox>: [
		format.red("Right click with two"),
		format.red("Wooden Gears in hand to Repair"),
		format.red("Or craft back into a repaired block")
	],

	<extraplanets:apple_iron>: [
		format.red("Eating this item will"),
		format.red("unlock Advanced Mapping")
	],

	<thebetweenlands:ring_of_flight>: [
		format.red("Can be found as Loot from chests in"),
		format.red("Shrines, Cragrock Towers"),
		format.red("and the Wight Fortress"),
		format.red("or looted from bosses"),
		format.red("and a rare drop chance"),
		format.red("from certain Betweenlands enemies")
	],

	<indlog:auto_craft>: [
		format.red("Only able to craft Age 4 items and below")
	],
	<indlog:portable_craft>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<buildcraftfactory:autoworkbench_item>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<rftools:crafter1>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter2>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter3>: [
		format.red("Able to craft Age 5 items and below")
	],

	<cyclicmagic:auto_crafter>: [
		format.red("Able to craft Age 5 items and below")
	],

	<betterwithmods:hand_crank>: [
		format.red("Needed to power early machines"),
		format.red("like the Mill Stone")
	],

	<abyssalcraft:statue>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:1>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:2>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:3>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:4>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:5>: [
		format.red("Requires open sky above to function")
	],
	<abyssalcraft:statue:6>: [
		format.red("Requires open sky above to function")
	],

	<totemic:cedar_log>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:stripped_cedar_log>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_plank>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_sapling>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_leaves>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],

	// Add tooltips to explain how to find eagles / obtain the eagle drops
	<totemic:eagle_drops:0>: [
		format.red("Not found in the world"),
		format.red("Eagles are spawned via a Totemic Ceremony")
	],
	<totemic:eagle_drops:1>: [
		format.red("Not found in the world"),
		format.red("Eagles are spawned via a Totemic Ceremony")
	],

	// Make sure people know about the recipe needs to match the one in JEI to actually work.
	<ceramics:unfired_clay:4>: [
		format.red("For the MillStone recipe to work you need to match the slots to the one shown on JEI. Otherwise it will not work correctly")
	],

	// Death Releated
	<death_compass:death_compass>: [
		format.red("Sneak on your grave to retrieve your items")
	],

	// Space!
	<buildcraftbuilders:quarry>: [
		format.red("This machine will only work in space! But watch out for a flying car however")
	],

	// Creeping Moss
	<huntingdim:biome_changer>: [
		format.red("To change the Biome Type Shift-Click inside the biome you want the moss to be")
	],

	<betterwithmods:hibachi>: [
		format.red("Needs a Redstone signal to light")
	],

	// Extra Planets space suit
	<extraplanets:tier1_space_suit_helmet:*>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_chest:*>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_legings:*>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	],
	<extraplanets:tier1_space_suit_boots:*>: [
		format.red("Only requires power when modules are installed"),
		format.red("can only be charged with an Energy Storage Module")
	]
};

function init() {
	for item, tooltips in scripts.crafttweaker.item_modifiers.tooltips.itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}