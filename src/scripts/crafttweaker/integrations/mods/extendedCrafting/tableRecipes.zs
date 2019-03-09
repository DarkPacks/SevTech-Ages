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
	<vc:item_airship_ignition:0>: [
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod:0>, metals.iron.plate, metals.iron.plate],
		[metals.iron.plate, <minecraft:quartz:0>, metals.platinum.gear, <minecraft:quartz:0>, metals.iron.plate],
		[metals.iron.rod, metals.platinum.gear, <stevescarts:cartmodule:0>, metals.platinum.gear, metals.iron.rod],
		[metals.iron.plate, <minecraft:quartz:0>, metals.platinum.gear, <minecraft:quartz:0>, metals.iron.plate],
		[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod:0>, metals.iron.plate, metals.iron.plate]
	],
	// Viescraft Ship Engine
	<vc:item_airship_engine:0>: [
		[metals.steel.plate, <minecraft:piston:0>, <minecraft:piston:0>, <minecraft:piston:0>, metals.steel.plate],
		[metals.iron.plate, metals.fiery.rod, metals.fiery.rod, metals.fiery.rod, metals.iron.plate],
		[metals.iron.plate, metals.steeleaf.gear, <stevescarts:cartmodule:44>, metals.steeleaf.gear, metals.iron.plate],
		[metals.iron.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.iron.plate],
		[metals.steel.plate, metals.steel.plate, <minecraft:redstone_block:0>, metals.steel.plate, metals.steel.plate]
	],
	// Viescraft Ship Balloon
	<vc:item_airship_balloon:0>: [
		[<betterwithmods:rope:0>, <minecraft:string:0>, <betterwithmods:material:4>, <minecraft:string:0>, <betterwithmods:rope:0>],
		[<minecraft:string:0>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string:0>],
		[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],
		[<minecraft:string:0>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string:0>],
		[<betterwithmods:rope:0>, <minecraft:string:0>, <betterwithmods:material:4>, <minecraft:string:0>, <betterwithmods:rope:0>]
	],
	// Advanced mapping stage unlock recipe
	<extraplanets:apple_iron:0>: [
		[<twilightforest:magic_map_focus:0>, <thebetweenlands:ring_of_flight:0>, <twilightforest:alpha_fur:0>],
		[<twilightforest:magic_map_empty:0>, <twilightforest:maze_map_focus:0>, <minecraft:map:0>],
		[<twilightforest:charm_of_keeping_3:0>, <twilightforest:lamp_of_cinders:0>, <twilightforest:charm_of_keeping_3:0>]
	],
	// Stage 4 Machine Frame
	<teslacorelib:machine_case:0>: [
		[metals.compressedIron.plate, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, metals.compressedIron.plate],
		[<industrialforegoing:plastic:0>, <stevescarts:modulecomponents:21>, <pneumaticcraft:printed_circuit_board:0>, <stevescarts:modulecomponents:21>, <industrialforegoing:plastic:0>],
		[metals.compressedIron.plate, <appliedenergistics2:material:0>, <extendedcrafting:frame:0>, <appliedenergistics2:material:0>, metals.compressedIron.plate],
		[<industrialforegoing:plastic:0>, metals.cobalt.plate, <appliedenergistics2:material:0>, metals.cobalt.plate, <industrialforegoing:plastic:0>],
		[metals.compressedIron.plate, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, <industrialforegoing:plastic:0>, metals.compressedIron.plate]
	],
	// Atomic Reconstructor
	<actuallyadditions:block_atomic_reconstructor:0>: [
		[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
		[metals.compressedIron.plate, <quark:biotite:0>, <minecraft:obsidian:0>, <appliedenergistics2:material:18>, <minecraft:obsidian:0>, <quark:biotite:0>, metals.compressedIron.plate],
		[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice:0>, metals.compressedIron.plate],
		[<actuallyadditions:item_battery_triple:0>, <minecraft:lapis_block:0>, <appliedenergistics2:material:16>, <teslacorelib:machine_case:0>, <appliedenergistics2:material:1>, <environmentaltech:laser_core:0>, <minecraft:emerald:0>],
		[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice:0>, metals.compressedIron.plate],
		[metals.compressedIron.plate, <quark:biotite:0>, <minecraft:obsidian:0>, <appliedenergistics2:material:17>, <minecraft:obsidian:0>, <quark:biotite:0>, metals.compressedIron.plate],
		[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
	],
	// Building Gadgets #SorryDire
	<buildinggadgets:buildingtool>: [
		[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, null, null, <minecraft:torch:0>, null, null, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, null, <betterbuilderswands:wanddiamond:0>, <galacticraftcore:battery:0>, <betterbuilderswands:wanddiamond:0>, null, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, <minecraft:torch:0>, <galacticraftcore:battery:0>, <primal:pelt_wolf:0>, <galacticraftcore:battery:0>, <minecraft:torch:0>, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, null, <betterbuilderswands:wanddiamond:0>, <galacticraftcore:battery:0>, <betterbuilderswands:wanddiamond:0>, null, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, null, null, <minecraft:torch:0>, null, null, <minecraft:cobblestone:0>],
		[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]
	],
	<buildinggadgets:exchangertool>: [
		[null, null, null, null, null, null, null, null, null],
		[null, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, null, null, <minecraft:torch:0>, null, null, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, null, null, <galacticraftcore:battery:0>, null, null, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, <minecraft:torch:0>, <galacticraftcore:battery:0>, <astralsorcery:itemexchangewand:0>, <galacticraftcore:battery:0>, <minecraft:torch:0>, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, null, null, <galacticraftcore:battery:0>, null, null, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, null, null, <minecraft:torch>, null, null, <overloaded:compressed_cobblestone:0>, null],
		[null, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, <overloaded:compressed_cobblestone:0>, null],
		[null, null, null, null, null, null, null, null, null]
	],
	<buildinggadgets:copypastetool>: [
		[null, null, null, null, null, null, null, null, null],
		[null, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <buildinggadgets:constructionpaste:0>, <ore:slimeball>, <buildinggadgets:constructionpaste:0>, <ore:slimeball>, <buildinggadgets:constructionpaste:0>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <ore:slimeball>, null, <minecraft:paper:0>, null, <ore:slimeball>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <buildinggadgets:constructionpaste:0>, <minecraft:paper:0>, <buildinggadgets:buildingtool:*>, <minecraft:paper:0>, <buildinggadgets:constructionpaste>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <ore:slimeball>, null, <minecraft:paper:0>, null, <ore:slimeball>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <buildinggadgets:constructionpaste:0>, <ore:slimeball>, <buildinggadgets:constructionpaste:0>, <ore:slimeball>, <buildinggadgets:constructionpaste:0>, <overloaded:compressed_cobblestone:1>, null],
		[null, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone:1>, null],
		[null, null, null, null, null, null, null, null, null]
	],

	// ==================================
	// Creative Items
	<tconstruct:materials:50>: [
		[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>],
		[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
		[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity:3>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:2>, <tconstruct:fancy_frame:4>, <ore:cast>],
		[<ore:cast>, <abyssalcraft:oblivionshard:0>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard:0>, <ore:cast>],
		[<ore:slimecrystal>, <mob_grinding_utils:saw_upgrade:1>, <mob_grinding_utils:saw_upgrade:5>, <ore:compressedDesh>, <trumpetskeleton:trumpet:0>, <ore:compressedDesh>, <mob_grinding_utils:saw_upgrade:5>, <mob_grinding_utils:saw_upgrade:1>, <ore:slimecrystal>],
		[<ore:cast>, <abyssalcraft:oblivionshard:0>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard:0>, <ore:cast>],
		[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity:0>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:4>, <tconstruct:fancy_frame:4>, <ore:cast>],
		[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
		[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>]
	],
	<ironjetpacks:creative_jetpack:0>: [
		[<thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <minecraft:skull:5>, <mekanism:armoredjetpack:0>, <minecraft:skull:5>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>],
		[<thebetweenlands:chiromaw_wing:0>, <thebetweenlands:chiromaw_wing:0>, <thebetweenlands:chiromaw_wing:0>, <galacticraftcore:basic_item:14>, <extendedcrafting:singularity:34>, <galacticraftcore:basic_item:14>, <thebetweenlands:chiromaw_wing:0>, <thebetweenlands:chiromaw_wing:0>, <thebetweenlands:chiromaw_wing:0>],
		[null, <minecraft:elytra:0>, <mysticalagriculture:supremium_chestplate:0>, <extendedcrafting:material:13>, <extendedcrafting:singularity:24>, <extendedcrafting:material:13>, <mysticalagriculture:supremium_chestplate:0>, <minecraft:elytra:0>, null],
		[null, <ore:jetpackTier2>, <mysticalagriculture:supremium_chestplate:0>, <galacticraftcore:basic_item:14>, <extendedcrafting:singularity:18>, <galacticraftcore:basic_item:14>, <mysticalagriculture:supremium_chestplate:0>, <ore:jetpackTier2>, null],
		[<ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship:1>, null, <ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>],
		[<ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell:0>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship:2>, null, <ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell:0>, <ore:ingotAstralStarmetal>],
		[<actuallyadditions:item_leaf_blower_advanced:0>, <ironjetpacks:creative_cell:0>, <actuallyadditions:item_leaf_blower_advanced:0>, null, <vc:airships/item_airship:3>, null, <actuallyadditions:item_leaf_blower_advanced:0>, <ironjetpacks:creative_cell:0>, <actuallyadditions:item_leaf_blower_advanced:0>],
		[<actuallyadditions:item_leaf_blower_advanced:0>, <ironjetpacks:creative_cell:0>, <actuallyadditions:item_leaf_blower_advanced:0>, null, <vc:airships/item_airship:4>, null, <actuallyadditions:item_leaf_blower_advanced:0>, <ironjetpacks:creative_cell:0>, <actuallyadditions:item_leaf_blower_advanced:0>],
		[null, <ironjetpacks:creative_thruster:0>, null, null, null, null, null, <ironjetpacks:creative_thruster:0>, null]
	],
	<ironjetpacks:creative_thruster:0>: [
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor:0>, <ironjetpacks:creative_cell:0>, <ironjetpacks:emerald_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor:0>, <ironjetpacks:creative_cell:0>, <ironjetpacks:emerald_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor:0>, <ironjetpacks:emerald_cell:0>, <ironjetpacks:electrum_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor:0>, <ironjetpacks:diamond_cell:0>, <ironjetpacks:diamond_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor:0>, <ironjetpacks:diamond_cell:0>, <ironjetpacks:diamond_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor:0>, <ironjetpacks:emerald_cell:0>, <ironjetpacks:diamond_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor:0>, <ironjetpacks:creative_cell:0>, <ironjetpacks:electrum_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor:0>, <ironjetpacks:creative_cell:0>, <ironjetpacks:emerald_capacitor:0>, <mekanism:transmitter:1>, null, null],
		[null, <pneumaticcraft:vortex_tube:0>, <extraplanets:tier8_items:0>, <pneumaticcraft:vortex_tube:0>, null, <pneumaticcraft:vortex_tube:0>, <extraplanets:tier8_items:0>, <pneumaticcraft:vortex_tube:0>, null]
	],
	<ironjetpacks:creative_cell:0>: [
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null],
		[null, <appliedenergistics2:energy_cell:0>, <rftools:powercell_advanced:0>, <immersiveengineering:metal_device0:2>, <mekanism:energycube:0>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced:0>, <appliedenergistics2:energy_cell:0>, null]
	],
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}): [
		[<industrialforegoing:black_hole_tank:0>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank:0>],
		[<integrateddynamics:part_fluid_reader_item:0>, <minecraft:sponge:0>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge:0>, <integrateddynamics:part_fluid_reader_item:0>],
		[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava:0>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava:0>, <ore:ingotEnhancedGalgadorian>],
		[<ore:ingotInsanium>, <enderutilities:enderbucket:0>, <overloaded:infinite_water_source:0>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source:0>, <enderutilities:enderbucket:0>, <ore:ingotInsanium>],
		[<extendedcrafting:singularity_custom:1>, <mob_grinding_utils:tank>, <mekanism:machineblock2:11>, <bloodmagic:blood_tank:9>, <extendedcrafting:singularity_custom:2>, <bloodmagic:blood_tank:9>, <mekanism:machineblock2:11>, <mob_grinding_utils:tank>, <extendedcrafting:singularity_custom:1>],
		[<ore:ingotInsanium>, <enderutilities:enderbucket:0>, <overloaded:infinite_water_source:0>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source:0>, <enderutilities:enderbucket:0>, <ore:ingotInsanium>],
		[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava:0>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava:0>, <ore:ingotEnhancedGalgadorian>],
		[<integrateddynamics:part_fluid_reader_item:0>, <minecraft:sponge:0>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge:0>, <integrateddynamics:part_fluid_reader_item:0>],
		[<industrialforegoing:black_hole_tank:0>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank:0>]
	]
};
