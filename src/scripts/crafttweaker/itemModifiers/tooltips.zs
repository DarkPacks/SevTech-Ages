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
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_low:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 2 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_med:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for Age 3 and below ore"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_high:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 4 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],
	<prospectors:prospector_best:*>: [
		format.yellow("This tool may only be used"),
		format.yellow("for ore in Age 5 and below"),
		format.red("Will detect unlocked Ores"),
		format.red("in a " ~ 48 ~ " block straight line")
	],

	// ==================================
	// Geolosys Ore Names for User Friendliness AKA I'm tired of using my brain to remember things
	<geolosys:ore:0>: [
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
		format.red("Loved by Wild Bears!")
	],

	<car:key:0>: [
		format.yellow("Comes with your car!"),
		format.yellow("Press I in your car to obtain"),
		format.yellow("Clone by crafting with iron")
	],

	<primal_tech:wooden_hopper>: [
		format.red("An advanced Wooden Hopper")
	],
	<primal_tech:charcoal_hopper>: [
		format.red("An advanced Wooden Hopper")
	],

	<jarm:oak_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:spruce_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:birch_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:jungle_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:acacia_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],
	<jarm:dark_oak_raft:0>: [
		format.red("A Tom Hanks Style Boat")
	],

	<minecraft:mob_spawner:0>: [
		format.red("Only has 400 total spawns!")
	],

	<totemic:tipi:0>: [
		format.red("It's like a fancy bed!")
	],

	<primal_tech:clay_kiln>: [
		format.red("Needs heat source below")
	],

	<dungpipe:sewer_pipe:0>: [
		format.red("Pipes items through a solid block")
	],

	<ceramics:clay_bucket:0>: [
		format.red("Will literally melt away after"),
		format.red("transporting HOT liquid")
	],

	<progressiontweaks:spear:0>: [
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

	<tconstruct:sharpening_kit:0>: [
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

	<waterstrainer:garden_trowel:0>: [
		format.red("Repaired with Flint")
	],

	<betterwithmods:wooden_broken_gearbox:0>: [
		format.red("Right click with two"),
		format.red("Wooden Gears in hand to Repair"),
		format.red("Or craft back into a repaired block")
	],

	<extraplanets:apple_iron:0>: [
		format.red("Eating this item will"),
		format.red("unlock Advanced Mapping")
	],

	<thebetweenlands:ring_of_flight:0>: [
		format.red("Can be found as Loot from chests in"),
		format.red("Shrines, Cragrock Towers"),
		format.red("and the Wight Fortress"),
		format.red("or looted from bosses"),
		format.red("and a rare drop chance"),
		format.red("from certain Betweenlands enemies")
	],

	<indlog:auto_craft:0>: [
		format.red("Only able to craft Age 4 items and below")
	],
	<indlog:portable_craft:0>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<buildcraftfactory:autoworkbench_item:0>: [
		format.red("Only able to craft Age 4 items and below")
	],

	<rftools:crafter1:0>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter2:0>: [
		format.red("Able to craft Age 5 items and below")
	],
	<rftools:crafter3:0>: [
		format.red("Able to craft Age 5 items and below")
	],

	<cyclicmagic:auto_crafter:0>: [
		format.red("Able to craft Age 5 items and below")
	],

	<betterwithmods:hand_crank:0>: [
		format.red("Needed to power early machines"),
		format.red("like the Mill Stone")
	],

	<betterwithmods:single_machine:0>: [
		format.aqua("Use Hand Crank until kinetic"),
		format.aqua("power is available")
	],

	<abyssalcraft:statue:0>: [
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

	<totemic:cedar_log:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:stripped_cedar_log:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_plank:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_sapling:0>: [
		format.red("Not found in the world"),
		format.red("Red Cedar is acquired via a Totemic Ceremony")
	],
	<totemic:cedar_leaves:0>: [
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

	// Death Releated
	<death_compass:death_compass>: [
		format.red("Sneak on your grave to retrieve your items")
	],
	<extendedcrafting:singularity_custom:8>: [
		format.aqua("Compasses obtained through player death or"),
		format.aqua("from Player Skin Mobs")
	],

	// Space!
	<buildcraftbuilders:quarry:0>: [
		format.red("This machine will only work in space!")
	],

	// Creeping Moss
	<huntingdim:biome_changer:0>: [
		format.red("To change the Biome Type Shift-Click inside the biome you want the moss to be")
	],

	<betterwithmods:hibachi:0>: [
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
	<rustic:apiary>: [
		format.red("When bees are inserted this will increase"),
		format.red("crop growth in a 4 block radius,"),
		format.red("breeds bees, and creates honeycomb")
	],
	<rustic:bee>: [
		format.red("Found in Rustic Beehives around the world"),
		format.red("Insert into Rustic Apiary")
	],
	<twilightforest:liveroot>: [
		format.red("Found in Twilight Forest Caves, Worldgen,"),
		format.red("Twilight Forest Loot Chests,"),
		format.red("or via Bonsai Trees")
	]
};

function init() {
	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
}
