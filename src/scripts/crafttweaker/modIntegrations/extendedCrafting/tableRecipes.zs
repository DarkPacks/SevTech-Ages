/*
	SevTech: Ages Table Extended Crafting Table Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static recipes as IIngredient[][][IItemStack] = {
	// Viescraft Airship Ignition
	<vc:airship_ignition>: [
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate],
		[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
		[metals.iron.rod, metals.platinum.gear, <stevescarts:cartmodule:0>, metals.platinum.gear, metals.iron.rod],
		[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate]
	],
	// Viescraft Ship Engine
	<vc:airship_engine>: [
		[metals.steel.plate, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, metals.steel.plate],
		[metals.iron.plate, metals.fiery.rod, metals.fiery.rod, metals.fiery.rod, metals.iron.plate],
		[metals.iron.plate, metals.steeleaf.gear, <stevescarts:cartmodule:44>, metals.steeleaf.gear, metals.iron.plate],
		[metals.iron.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.iron.plate],
		[metals.steel.plate, metals.steel.plate, <minecraft:redstone_block>, metals.steel.plate, metals.steel.plate]
	],
	// Viescraft Ship Balloon
	<vc:airship_balloon>: [
		[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>],
		[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
		[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],
		[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
		[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>]
	],
	// Advanced mapping stage unlock recipe
	<extraplanets:apple_iron>: [
		[<twilightforest:magic_map_focus>, <thebetweenlands:ring_of_flight>, <twilightforest:alpha_fur>],
		[<twilightforest:magic_map_empty>, <twilightforest:maze_map_focus>, <minecraft:map>],
		[<twilightforest:charm_of_keeping_3>, <twilightforest:lamp_of_cinders>, <twilightforest:charm_of_keeping_3>]
	],
	// Stage 4 Machine Frame
	<teslacorelib:machine_case>: [
		[metals.compressedIron.plate, <industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>, metals.compressedIron.plate],
		[<industrialforegoing:plastic>, <stevescarts:modulecomponents:21>, <pneumaticcraft:printed_circuit_board>, <stevescarts:modulecomponents:21>, <industrialforegoing:plastic>],
		[metals.compressedIron.plate, <appliedenergistics2:material>, <extendedcrafting:frame>, <appliedenergistics2:material>, metals.compressedIron.plate],
		[<industrialforegoing:plastic>, metals.cobalt.plate, <appliedenergistics2:material>, metals.cobalt.plate, <industrialforegoing:plastic>],
		[metals.compressedIron.plate, <industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>, metals.compressedIron.plate]
	],
	// Atomic Reconstructor
	<actuallyadditions:block_atomic_reconstructor>: [
		[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
		[metals.compressedIron.plate, <quark:biotite>, <minecraft:obsidian>, <appliedenergistics2:material:18>, <minecraft:obsidian>, <quark:biotite>, metals.compressedIron.plate],
		[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice>, metals.compressedIron.plate],
		[<actuallyadditions:item_battery_triple>, <minecraft:lapis_block>, <appliedenergistics2:material:16>, <teslacorelib:machine_case>, <appliedenergistics2:material:1>, <environmentaltech:laser_core>, <minecraft:emerald>],
		[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice>, metals.compressedIron.plate],
		[metals.compressedIron.plate, <quark:biotite>, <minecraft:obsidian>, <appliedenergistics2:material:17>, <minecraft:obsidian>, <quark:biotite>, metals.compressedIron.plate],
		[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
	],

	// ==================================
	// Creative Items
	<tconstruct:materials:50>: [
		[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>],
		[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
		[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity:3>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:2>, <tconstruct:fancy_frame:4>, <ore:cast>],
		[<ore:cast>, <abyssalcraft:oblivionshard>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard>, <ore:cast>],
		[<ore:slimecrystal>, <mob_grinding_utils:saw_upgrade:1>, <mob_grinding_utils:saw_upgrade:5>, <ore:compressedDesh>, <trumpetskeleton:trumpet>, <ore:compressedDesh>, <mob_grinding_utils:saw_upgrade:5>, <mob_grinding_utils:saw_upgrade:1>, <ore:slimecrystal>],
		[<ore:cast>, <abyssalcraft:oblivionshard>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard>, <ore:cast>],
		[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:4>, <tconstruct:fancy_frame:4>, <ore:cast>],
		[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
		[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>]
	],
	<ironjetpacks:creative_jetpack>: [
		[<thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <minecraft:skull:5>, <mekanism:armoredjetpack>, <minecraft:skull:5>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>],
		[<thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <extraplanets:wafer:1>, <extendedcrafting:singularity:34>, <extraplanets:wafer:1>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>],
		[null, <minecraft:elytra>, <mysticalagriculture:supremium_chestplate>, <extendedcrafting:material:13>, <extendedcrafting:singularity:24>, <extendedcrafting:material:13>, <mysticalagriculture:supremium_chestplate>, <minecraft:elytra>, null],
		[null, <ore:jetpackTier2>, <mysticalagriculture:supremium_chestplate>, <extraplanets:wafer:1>, <extendedcrafting:singularity:18>, <extraplanets:wafer:1>, <mysticalagriculture:supremium_chestplate>, <ore:jetpackTier2>, null],
		[<ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship_v1>, null, <ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>],
		[<ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship_v2>, null, <ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell>, <ore:ingotAstralStarmetal>],
		[<actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>, null, <vc:airships/item_airship_v3>, null, <actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>],
		[<actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>, null, <vc:airships/item_airship_v4>, null, <actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>],
		[null, <ironjetpacks:creative_thruster>, null, null, null, null, null, <ironjetpacks:creative_thruster>, null]
	],
	<ironjetpacks:creative_thruster>: [
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor>, <ironjetpacks:emerald_cell>, <ironjetpacks:electrum_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:diamond_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:diamond_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:emerald_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:electrum_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
		[null, <pneumaticcraft:vortex_tube>, <extraplanets:tier8_items>, <pneumaticcraft:vortex_tube>, null, <pneumaticcraft:vortex_tube>, <extraplanets:tier8_items>, <pneumaticcraft:vortex_tube>, null]
	],
	<ironjetpacks:creative_cell>: [
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
		[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null]
	],
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}): [
		[<industrialforegoing:black_hole_tank>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank>],
		[<integrateddynamics:part_fluid_reader_item>, <minecraft:sponge>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge>, <integrateddynamics:part_fluid_reader_item>],
		[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava>, <ore:ingotEnhancedGalgadorian>],
		[<ore:ingotInsanium>, <enderutilities:enderbucket>, <overloaded:infinite_water_source>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source>, <enderutilities:enderbucket>, <ore:ingotInsanium>],
		[<extendedcrafting:singularity_custom:1>, <mob_grinding_utils:tank>, <mekanism:machineblock2:11>, <bloodmagic:blood_tank:9>, <extendedcrafting:singularity_custom:2>, <bloodmagic:blood_tank:9>, <mekanism:machineblock2:11>, <mob_grinding_utils:tank>, <extendedcrafting:singularity_custom:1>],
		[<ore:ingotInsanium>, <enderutilities:enderbucket>, <overloaded:infinite_water_source>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source>, <enderutilities:enderbucket>, <ore:ingotInsanium>],
		[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava>, <ore:ingotEnhancedGalgadorian>],
		[<integrateddynamics:part_fluid_reader_item>, <minecraft:sponge>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge>, <integrateddynamics:part_fluid_reader_item>],
		[<industrialforegoing:black_hole_tank>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank>]
	]
};
