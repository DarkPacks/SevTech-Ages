#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

/*
<item> : [
	[RECIPE1],
	[RECIPE2],
	[Recipe3],
	[etc...]
]

Put the normal recipe you make inside of the main array from the item (<betterwithaddons:bolt:1> : [])

<testmod:test_item> : [
	//You can do one recipe or as many recipes as you want
	[
		//IF LONG
		[<testmod:test_item1>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item2>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item3>, <testmod:test_item>, <testmod:test_item>]
	],
	//IF SHORT
	[[<testmod:test_item>, <testmod:test_item>, null], [<testmod:test_item>, <testmod:test_item>, null]]
]
*/
var shapedRecipes as IIngredient[][][][IItemStack] = {
	<prospectors:prospector_best> : [
		[[null, <minecraft:diamond>, <ore:blockGlass>], [null, <minecraft:blaze_rod>, <minecraft:diamond>], [<minecraft:blaze_rod>, null, null]]
	],

	// Primal Core
	<primal:diamond_workblade>: [
		[
			[<minecraft:diamond>, <minecraft:stick>, <minecraft:diamond>],
			[<minecraft:diamond>, <minecraft:stick>, <minecraft:diamond>],
			[null, <minecraft:stick>, null]
		]
	],
	<primal:emerald_workblade>: [
		[
			[<minecraft:emerald>, <minecraft:stick>, <minecraft:emerald>],
			[<minecraft:emerald>, <minecraft:stick>, <minecraft:emerald>],
			[null, <minecraft:stick>, null]
		]
	],

	//Improved Backpacks
	<improvedbackpacks:upgrade:4> : [
		[
			[null, leather, null],
			[<minecraft:diamond>, <improvedbackpacks:upgrade:3>, <minecraft:diamond>],
			[null, <minecraft:diamond>, null]
		]
	],

	//Spartan Shields
	<spartanshields:shield_basic_diamond> : [
		[[null, <minecraft:diamond>, null], [<minecraft:diamond>, <spartanshields:shield_basic_iron>, <minecraft:diamond>], [null, <minecraft:diamond>, null]]
	],
	<spartanshields:shield_riot_rftools> : [
		[[null, <actuallyadditions:item_battery_quadruple>, null], [<tconstruct:materials:14>, <spartanshields:shield_basic_copper>, <tconstruct:materials:14>], [null, <rftools:shield_block3>, null]]
	],

	//Storage Drawers
	<storagedrawers:upgrade_storage:3> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],
	<storagedrawers:upgrade_storage:4> : [
		[
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
			[<minecraft:emerald>, <storagedrawers:upgrade_template>, <minecraft:emerald>],
			[<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
		]
	],

	//Iron Jetpacks
	<ironjetpacks:electrum_capacitor>: [
		[
			[<galacticraftcore:basic_item:9>, <ironjetpacks:electrum_cell>, <galacticraftcore:basic_item:9>],
			[metals.electrum.plate, <ironjetpacks:electrum_cell>, metals.electrum.plate],
			[<mekanism:compressedobsidian>, metals.compressedIron.gear, <mekanism:compressedobsidian>]
		]
	],
	<ironjetpacks:basic_coil>: [
		[
			[null, <immersiveengineering:wirecoil:1>, metals.redstoneAlloy.rod],
			[<immersiveengineering:wirecoil:5>, metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:5>],
			[metals.redstoneAlloy.rod, <immersiveengineering:wirecoil:1>, null]
		]
	],
	<ironjetpacks:advanced_coil>: [
		[
			[null, <immersiveengineering:wirecoil:4>, metals.galgadorian.rod],
			[<immersiveengineering:wirecoil:5>, metals.galgadorian.rod, <immersiveengineering:wirecoil:5>],
			[metals.galgadorian.rod, <immersiveengineering:wirecoil:4>, null]
		]
	],

	//Cyclic
	<cyclicmagic:harvester_block>: [
		[
			[<minecraft:emerald>, <mekanism:compressedobsidian>, <minecraft:emerald>],
			[metals.compressedIron.plate, <minecraft:diamond>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<cyclicmagic:block_forester>: [
		[
			[<mekanism:compressedobsidian>, <minecraft:daylight_detector>, <mekanism:compressedobsidian>],
			[metals.compressedIron.plate, <cyclicmagic:placer_block>, metals.compressedIron.plate],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],

	//Xnet
	<xnet:controller>: [
		[
			[metals.nickel.plate, <mekanism:transmitter>, metals.nickel.plate],
			[metals.redstoneAlloy.plate, <teslacorelib:machine_case>, metals.redstoneAlloy.plate],
			[metals.nickel.plate, <galacticraftplanets:item_basic_mars:5>, metals.nickel.plate]
		]
	],
	<xnet:router>: [
		[
			[metals.aluminum.plate, <xnet:netcable>, metals.aluminum.plate],
			[<xnet:netcable>, <rftools:machine_frame>, <xnet:netcable>],
			[metals.aluminum.plate, <xnet:netcable>, metals.aluminum.plate]
		]
	],

	//Rftools
	<rftools:matter_transmitter>: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate]
		]
	],
	<rftools:matter_receiver>: [
		[
			[metals.platinum.plate, metals.platinum.plate, metals.platinum.plate],
			[<galacticraftcore:cheese_curd>, <rftools:machine_frame>, <galacticraftcore:cheese_curd>],
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:teleportationcore>, <galacticraftplanets:item_basic_mars:5>]
		]
	],
	<rftools:machine_frame>: [
		[
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod],
			[<pneumaticcraft:plastic:8>, null, <pneumaticcraft:plastic:8>],
			[metals.invar.rod, <pneumaticcraft:plastic:8>, metals.invar.rod]
		]
	],

	<rftools:machine_base>: [
		[
			[<pneumaticcraft:plastic:8>, metals.invar.plate, <pneumaticcraft:plastic:8>]
		]
	],

	//Mekanism
	<mekanism:basicblock:7> * 4: [
		[
			[<galacticraftplanets:item_basic_mars:5>, <mekanism:ingot>, <galacticraftplanets:item_basic_mars:5>],
			[<galacticraftcore:cheese_curd>, null, <galacticraftcore:cheese_curd>],
			[metals.platinum.plate, <mekanism:ingot:3>, metals.platinum.plate]
		]
	],

	//Iron Chest
	<ironchest:iron_chest:2>: [
		[
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <minecraft:chest>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>]
		]
	],
	<ironchest:iron_chest:5>: [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<mekanism:compresseddiamond>, <ironchest:iron_chest:1>, <mekanism:compresseddiamond>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],

	//Mystical Agriculture
	<mysticalagriculture:ultimate_furnace>: [
		[
			[<minecraft:skull:1>, <minecraft:nether_star>, <minecraft:skull:1>],
			[<mysticalagradditions:storage>, <mysticalagriculture:supremium_furnace>, <mysticalagradditions:storage>],
			[<minecraft:skull:1>, <mysticalagradditions:storage>, <minecraft:skull:1>]
		]
	],
	<mysticalagriculture:supremium_boots>: [
		[
			[<mysticalagriculture:crafting:37>, <environmentaltech:modifier_creative_flight>, <mysticalagriculture:gear:9>],
			[<mysticalagriculture:crafting:37>, null, <mysticalagriculture:crafting:37>]
		]
	],

	//Iron Chests
	<ironchest:diamond_obsidian_chest_upgrade>: [
		[
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>],
			[<mekanism:compressedobsidian>, <mekanism:compresseddiamond>, <mekanism:compressedobsidian>],
			[<mekanism:compressedobsidian>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>]
		]
	],
	<ironchest:diamond_crystal_chest_upgrade>: [
		[
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<ironchest:gold_diamond_chest_upgrade>: [
		[
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, metals.gold.plate, <mekanism:compresseddiamond>],
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>]
		]
	],

	// GalactiCraft
	<galacticraftcore:machine2:8>: [
		[
			[<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>],
			[<ore:tankOxygenHeavy>, <ore:tankOxygenHeavy>, <ore:tankOxygenHeavy>],
			[<ore:compressedSteel>, <ore:compressedSteel>, <ore:compressedSteel>]
		]
	],

	//Extra Planets
	<extraplanets:advanced_fuel_loader>: [
		[
			[metals.nickel.ingot, metals.nickel.ingot, metals.nickel.ingot],
			[metals.nickel.ingot, <galacticraftcore:fuel_loader>, metals.nickel.ingot],
			[<extraplanets:tier5_items:5>, <extraplanets:tier5_items:8>, <extraplanets:tier5_items:5>]
		]
	],
	<extraplanets:fire_bomb>: [
		[
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot],
			[<ore:sand>, <extraplanets:tier5_items:11>, <ore:sand>],
			[metals.uranium.ingot, <extraplanets:tier5_items:10>, metals.uranium.ingot]
		]
	],
	<extraplanets:nuclear_bomb>: [
		[
			[<minecraft:gunpowder>, <ore:sand>, <minecraft:gunpowder>],
			[<ore:sand>, metals.uranium.ingot, <ore:sand>],
			[<minecraft:gunpowder>, <ore:sand>, <minecraft:gunpowder>]
		]
	],
	<extraplanets:tier1_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier1_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier2_space_suit_helmet>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_helmet>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_chest>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_chest>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_legings>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_legings>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_boots>: [
		[
			[null, <extraplanets:tier2_armor_layer>, null],
			[<extraplanets:tier2_radiation_layer>, <extraplanets:tier2_un_prepared_space_suit_boots>, <extraplanets:tier2_pressure_layer>],
			[null, <extraplanets:tier2_armor_layer>, null]
		]
	],
	<extraplanets:tier2_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier2_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier3_space_suit_helmet>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_helmet>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_chest>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_chest>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_legings>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_legings>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_boots>: [
		[
			[null, <extraplanets:tier3_armor_layer>, null],
			[<extraplanets:tier3_radiation_layer>, <extraplanets:tier3_un_prepared_space_suit_boots>, <extraplanets:tier3_pressure_layer>],
			[null, <extraplanets:tier3_armor_layer>, null]
		]
	],
	<extraplanets:tier3_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier3_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],
	<extraplanets:tier4_space_suit_helmet>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_helmet>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_chest>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_chest>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_legings>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_legings>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_boots>: [
		[
			[null, <extraplanets:tier4_armor_layer>, null],
			[<extraplanets:tier4_radiation_layer>, <extraplanets:tier4_un_prepared_space_suit_boots>, <extraplanets:tier4_pressure_layer>],
			[null, <extraplanets:tier4_armor_layer>, null]
		]
	],
	<extraplanets:tier4_space_suit_gravity_boots>: [
		[
			[null, <extraplanets:gravity_controller>, null],
			[<extraplanets:gravity_controller>, <extraplanets:tier4_space_suit_boots>, <extraplanets:gravity_controller>],
			[null, <extraplanets:gravity_controller>, null]
		]
	],

	//Mystical Agriculture Dye Essence Recipes
	<ore:dyeBlack>.firstItem: [
		[
			[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>],
			[null, null, null],
			[null, null, null]
		]
	],
	<ore:dyeRed>.firstItem: [
		[
			[null, null, null],
			[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>],
			[null, null, null]
		]
	],
	<ore:dyePurple>.firstItem: [
		[
			[null, null, null],
			[null, null, null],
			[<mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>, <mysticalagriculture:dye_essence>]
		]
	],
	<ore:dyeCyan>.firstItem: [
		[
			[<mysticalagriculture:dye_essence>, null, null],
			[<mysticalagriculture:dye_essence>, null, null],
			[<mysticalagriculture:dye_essence>, null, null]
		]
	],
	<ore:dyeLightGray>.firstItem: [
		[
			[null, <mysticalagriculture:dye_essence>, null],
			[null, <mysticalagriculture:dye_essence>, null],
			[null, <mysticalagriculture:dye_essence>, null]
		]
	],
	<ore:dyeGray>.firstItem: [
		[
			[null, null, <mysticalagriculture:dye_essence>],
			[null, null, <mysticalagriculture:dye_essence>],
			[null, null, <mysticalagriculture:dye_essence>]
		]
	],
	<ore:dyePink>.firstItem: [
		[
			[<mysticalagriculture:dye_essence>, null, null],
			[null, <mysticalagriculture:dye_essence>, null],
			[null, null, <mysticalagriculture:dye_essence>]
		]
	],
	<ore:dyeLime>.firstItem: [
		[
			[null, null, <mysticalagriculture:dye_essence>],
			[null, <mysticalagriculture:dye_essence>, null],
			[<mysticalagriculture:dye_essence>, null, null]
		]
	],
	<ore:dyeYellow>.firstItem: [
		[
			[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
			[null, <mysticalagriculture:dye_essence>, null],
			[null, null, null]
		]
	],
	<ore:dyeLightBlue>.firstItem: [
		[
			[null, <mysticalagriculture:dye_essence>, null],
			[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
			[null, null, null]
		]
	],
	<ore:dyeMagenta>.firstItem: [
		[
			[null, null, null],
			[null, <mysticalagriculture:dye_essence>, null],
			[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>]
		]
	],
	<ore:dyeOrange>.firstItem: [
		[
			[null, null, null],
			[<mysticalagriculture:dye_essence>, null, <mysticalagriculture:dye_essence>],
			[null, <mysticalagriculture:dye_essence>, null]
		]
	],

	//Refined Storage
	<refinedstorage:crafting_monitor>: [
		[
			[<ore:processorLogic>, <refinedstorage:pattern>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<ore:processorLogic>, <refinedstorage:pattern>, <ore:blockGlass>]
		]
	],
	<refinedstorage:storage_monitor>: [
		[
			[<ore:processorCalculation>, aeCores.formation, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<ore:processorCalculation>, aeCores.annihilation, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter_manager>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:crafter>, <ore:blockGlass>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <ore:blockGlass>],
			[<appliedenergistics2:material:24>, <refinedstorage:crafter>, <ore:blockGlass>]
		]
	],
	<refinedstorage:crafter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, aeCores.formation, <refinedstorage:quartz_enriched_iron>],
			[<ore:processorEngineering>, <refinedstorage:machine_casing>, <ore:processorEngineering>],
			[<refinedstorage:quartz_enriched_iron>, aeCores.annihilation, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:disk_drive>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:chest>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:constructor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, aeCores.formation, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:destructor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, aeCores.annihilation, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:reader>: [
		[
			[<refinedstorage:quartz_enriched_iron>, aeCores.annihilation, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:writer>: [
		[
			[<refinedstorage:quartz_enriched_iron>, aeCores.formation, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:cable>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:detector>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:comparator>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:redstone>, <refinedstorage:machine_casing>, <minecraft:redstone>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_transmitter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:machine_casing>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:network_transmitter>: [
		[
			[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
			[aeCores.formation, <refinedstorage:machine_casing>, aeCores.annihilation],
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:network_receiver>: [
		[
			[<ore:processorEngineering>, <ore:processorEngineering>, <ore:processorEngineering>],
			[aeCores.formation, <refinedstorage:machine_casing>, aeCores.annihilation],
			[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>]
		]
	],
	<refinedstorage:disk_manipulator>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_housing>, <refinedstorage:quartz_enriched_iron>],
			[aeCores.formation, <refinedstorage:machine_casing>, aeCores.annihilation],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_housing>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>],
			[<refinedstorage:storage_part:2>, <minecraft:redstone>, <refinedstorage:storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>],
			[<refinedstorage:storage_part>, <minecraft:redstone>, <refinedstorage:storage_part>],
			[<ore:processorCalculation>, <refinedstorage:storage_part>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron>, <ore:processorLogic>],
			[<refinedstorage:storage_part:1>, <minecraft:redstone>, <refinedstorage:storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:fluid_storage_part:1>: [
		[
			[<ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>],
			[<refinedstorage:fluid_storage_part>, <minecraft:bucket>, <refinedstorage:fluid_storage_part>],
			[<ore:processorCalculation>, <refinedstorage:fluid_storage_part>, <ore:processorCalculation>]
		]
	],
	<refinedstorage:fluid_storage_part:3>: [
		[
			[<ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>],
			[<refinedstorage:fluid_storage_part:2>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:2>],
			[<ore:processorEngineering>, <refinedstorage:fluid_storage_part:2>, <ore:processorEngineering>]
		]
	],
	<refinedstorage:fluid_storage_part:2>: [
		[
			[<ore:processorLogic>, <refinedstorage:quartz_enriched_iron>, <ore:processorLogic>],
			[<refinedstorage:fluid_storage_part:1>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:1>],
			[<ore:processorLogic>, <refinedstorage:fluid_storage_part:1>, <ore:processorLogic>]
		]
	],
	<refinedstorage:wireless_grid>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_fluid_grid>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid:3>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wireless_crafting_monitor>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:crafting_monitor>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:upgrade>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:blockGlass>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorage:wrench>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <ore:processorCalculation>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>],
			[null, <refinedstorage:quartz_enriched_iron>, null]
		]
	],
	<refinedstorageaddons:wireless_crafting_grid>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:grid:1>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorEngineering>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorageaddons:network_picker>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:ender_pearl>, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, aeCores.formation, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<refinedstorageaddons:network_bag>: [
		[
			[<minecraft:chest>, <minecraft:ender_pearl>, <minecraft:chest>],
			[<refinedstorage:quartz_enriched_iron>, aeCores.annihilation, <refinedstorage:quartz_enriched_iron>],
			[<refinedstorage:quartz_enriched_iron>, <ore:processorLogic>, <refinedstorage:quartz_enriched_iron>]
		]
	],

	//Diamond Armor
	<minecraft:diamond_helmet>: [
		[
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_chestplate>: [
		[
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_leggings>: [
		[
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	],
	<minecraft:diamond_boots>: [
		[
			[<minecraft:diamond>, null, <minecraft:diamond>],
			[<minecraft:diamond>, null, <minecraft:diamond>]
		]
	],

	//Overloaded
	<overloaded:infinite_water_source>: [
		[
			[<actuallyadditions:block_crystal_empowered:1>, <bloodmagic:sigil_water>, <actuallyadditions:block_crystal_empowered:1>],
			[<mekanism:machineblock:12>, <mysticalagriculture:crafting:48>, <mekanism:machineblock:12>],
			[<actuallyadditions:block_crystal_empowered:1>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_crystal_empowered:1>]
		]
	],
	<overloaded:infinite_barrel>: [
		[
			[<quantumstorage:quantum_storage_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_storage_unit>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <industrialforegoing:black_hole_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<quantumstorage:quantum_storage_unit>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_storage_unit>]
		]
	],
	<overloaded:infinite_tank>: [
		[
			[<quantumstorage:quantum_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_tank>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <industrialforegoing:black_hole_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<quantumstorage:quantum_tank>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <quantumstorage:quantum_tank>]
		]
	],
	<overloaded:infinite_capacitor>: [
		[
			[<extraplanets:ultimate_battery>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <actuallyadditions:item_battery_quintuple>],
			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <integrateddynamics:energy_battery>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]})],
			[<actuallyadditions:item_battery_quintuple>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}), <extraplanets:ultimate_battery>]
		]
	],
	<overloaded:hyper_item_receiver>: [
		[
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage>, <mekanism:transmitter:3>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_item_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:3>, <mekanism:teleportationcore>],
			[<mekanism:transmitter:3>, <enderstorage:ender_storage>, <mekanism:transmitter:3>],
			[<mekanism:transmitter:3>, <mekanism:transmitter:3>, <mekanism:transmitter:3>]
		]
	],
	<overloaded:hyper_fluid_receiver>: [
		[
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_fluid_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>],
			[<mekanism:transmitter:1>, <enderstorage:ender_storage:1>, <mekanism:transmitter:1>],
			[<mekanism:transmitter:1>, <mekanism:transmitter:1>, <mekanism:transmitter:1>]
		]
	],
	<overloaded:hyper_energy_receiver>: [
		[
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<ore:universalCable>, <rftools:powercell_advanced>, <ore:universalCable>],
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>]
		]
	],
	<overloaded:hyper_energy_sender>: [
		[
			[<mekanism:teleportationcore>, <bloodmagic:teleposition_focus:2>, <mekanism:teleportationcore>],
			[<ore:universalCable>, <rftools:powercell_advanced>, <ore:universalCable>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>]
		]
	],
	<overloaded:linking_card>: [
		[
			[<refinedstorage:wrench>, <rftools:powercell_card>, <enderutilities:linkcrystal:1>],
			[<mekanism:teleportationcore>, <astralsorcery:itemlinkingtool>, <mekanism:teleportationcore>],
			[<enderutilities:linkcrystal>, <rftools:powercell_card>, <integrateddynamics:wrench>]
		]
	],
	<overloaded:energy_extractor>: [
		[
			[<refinedstorage:interface>, null, <appliedenergistics2:interface>],
			[<ore:universalCable>, <ore:universalCable>, <ore:universalCable>],
			[<appliedenergistics2:interface>, null, <refinedstorage:interface>]
		]
	],
	<overloaded:multi_tool>: [
		[
			[<actuallyadditions:block_placer>, <mysticalagriculture:supremium_shovel>, <betterwithmods:buddy_block>],
			[<actuallyadditions:item_battery_quintuple>, <mysticalagriculture:supremium_axe>, <actuallyadditions:item_battery_quintuple>],
			[<betterwithmods:buddy_block>, <mysticalagriculture:supremium_pickaxe>, <actuallyadditions:block_placer>]
		]
	],
	<overloaded:player_interface>: [
		[
			[null, <appliedenergistics2:interface>, null],
			[null, <modularrouters:module:13>, null],
			[null, <refinedstorage:interface>, null]
		]
	],
	<overloaded:item_interface>: [
		[
			[null, <appliedenergistics2:interface>, null],
			[null, <actuallyadditions:block_item_viewer>, null],
			[null, <refinedstorage:interface>, null]
		]
	],

	//Reborn Storage
	<rebornstorage:multicrafter>: [
		[
			[<refinedstorage:quartz_enriched_iron>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron>],
			[metals.gold.ingot, <appliedenergistics2:material:22>, metals.gold.ingot],
			[<refinedstorage:quartz_enriched_iron>, metals.gold.ingot, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:1>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:iron_bars>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:iron_bars>, <appliedenergistics2:material:22>, <minecraft:iron_bars>],
			[<refinedstorage:quartz_enriched_iron>, <minecraft:iron_bars>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:2>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <minecraft:quartz>, <refinedstorage:quartz_enriched_iron>],
			[<minecraft:glowstone_dust>, <appliedenergistics2:material:22>, <minecraft:glowstone_dust>],
			[<refinedstorage:quartz_enriched_iron>, <minecraft:quartz>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:multicrafter:3>: [
		[
			[<refinedstorage:quartz_enriched_iron>, <tconstruct:tooltables>, <refinedstorage:quartz_enriched_iron>],
			[<appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>],
			[<refinedstorage:quartz_enriched_iron>, <refinedstorage:storage_part>, <refinedstorage:quartz_enriched_iron>]
		]
	],
	<rebornstorage:storagepart>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<refinedstorage:storage_part:3>, <minecraft:redstone>, <refinedstorage:storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:1>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart>, <minecraft:redstone>, <rebornstorage:storagepart>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:2>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:1>, <minecraft:redstone>, <rebornstorage:storagepart:1>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:1>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:3>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:2>, <minecraft:redstone>, <rebornstorage:storagepart:2>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:2>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:4>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<refinedstorage:fluid_storage_part:3>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:3>],
			[<appliedenergistics2:material:24>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:5>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:4>, <minecraft:bucket>, <rebornstorage:storagepart:4>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:4>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:6>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:5>, <minecraft:bucket>, <rebornstorage:storagepart:5>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:5>, <appliedenergistics2:material:24>]
		]
	],
	<rebornstorage:storagepart:7>: [
		[
			[<appliedenergistics2:material:24>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:material:24>],
			[<rebornstorage:storagepart:6>, <minecraft:bucket>, <rebornstorage:storagepart:6>],
			[<appliedenergistics2:material:24>, <rebornstorage:storagepart:6>, <appliedenergistics2:material:24>]
		]
	],

	//Quantum Storage
	<quantumstorage:quantum_bag>: [
		[
			[<ore:wool>, <betterwithmods:rope>, <ore:wool>],
			[<ore:wool>, <ironchest:iron_chest:2>, <ore:wool>],
			[<ore:wool>, <ore:wool>, <ore:wool>]
		]
	],
	<quantumstorage:quantum_storage_unit>: [
		[
			[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
			[metals.iron.ingot, <ironchest:iron_chest:2>, metals.iron.ingot],
			[metals.iron.ingot, metals.iron.ingot, metals.iron.ingot]
		]
	]

};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}


////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:horse_upgrade_type>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_swap_match>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:book_ender>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:beacon_potion>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:password_remote>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:water_spreader>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_slowness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_weakness>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_home>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:inventory_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:heart_food>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:apple_emerald>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:builder_pattern>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:charm_boat>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_warp_spawn>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:magic_net>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:ender_wool>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:tool_elevate>);
mods.recipestages.Recipes.setRecipeStage("five", <cyclicmagic:sword_ender>);


//NEEDS RECIPES
mods.recipestages.Recipes.setRecipeStage("five", <extendedcrafting:material:128>);
