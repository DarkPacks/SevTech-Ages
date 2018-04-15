import crafttweaker.item.IItemStack;

import mods.extendedcrafting.CompressionCrafting;
import mods.extendedcrafting.EnderCrafting;
import mods.extendedcrafting.TableCrafting;

/*
	Table Crafting

	https://github.com/BlakeBr0/ExtendedCrafting/wiki/Table-Crafting
*/
//Viescraft Airship Ignition
recipes.remove(<vc:airship_ignition>);
TableCrafting.addShaped(<vc:airship_ignition>, [
	[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate],
	[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
	[metals.iron.rod, metals.platinum.gear, <stevescarts:cartmodule:0>, metals.platinum.gear, metals.iron.rod],
	[metals.iron.plate, <minecraft:quartz>, metals.platinum.gear, <minecraft:quartz>, metals.iron.plate],
	[metals.iron.plate, metals.iron.plate, <minecraft:blaze_rod>, metals.iron.plate, metals.iron.plate]
]);

//Viescraft Ship Engine
recipes.remove(<vc:airship_engine>);
TableCrafting.addShaped(<vc:airship_engine>, [
	[metals.steel.plate, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, metals.steel.plate],
	[metals.iron.plate, metals.fiery.rod, metals.fiery.rod, metals.fiery.rod, metals.iron.plate],
	[metals.iron.plate, metals.steeleaf.gear, <stevescarts:cartmodule:44>, metals.steeleaf.gear, metals.iron.plate],
	[metals.iron.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.redstoneAlloy.plate, metals.iron.plate],
	[metals.steel.plate, metals.steel.plate, <minecraft:redstone_block>, metals.steel.plate, metals.steel.plate]
]);

//Viescraft Ship Balloon
recipes.remove(<vc:airship_balloon>);
TableCrafting.addShaped(<vc:airship_balloon>, [
	[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>],
	[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
	[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],
	[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
	[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>]
]);

//Advanced mapping stage unlock recipe
TableCrafting.addShaped(<extraplanets:apple_iron>, [
	[<twilightforest:magic_map_focus>, <thebetweenlands:ring_of_flight>, <twilightforest:alpha_fur>],
	[<twilightforest:magic_map_empty>, <twilightforest:maze_map_focus>, <minecraft:map>],
	[<twilightforest:charm_of_keeping_3>, <twilightforest:lamp_of_cinders>, <twilightforest:charm_of_keeping_3>]
]);

//Stage 4 Machine Frame
TableCrafting.addShaped(<teslacorelib:machine_case>, [
	[metals.compressedIron.plate, plastic, plastic, plastic, metals.compressedIron.plate],
	[plastic, <stevescarts:modulecomponents:21>, <pneumaticcraft:printed_circuit_board>, <stevescarts:modulecomponents:21>, plastic],
	[metals.compressedIron.plate, <appliedenergistics2:material>, <extendedcrafting:frame>, <appliedenergistics2:material>, metals.compressedIron.plate],
	[plastic, metals.cobalt.plate, <appliedenergistics2:material>, metals.cobalt.plate, plastic],
	[metals.compressedIron.plate, plastic, plastic, plastic, metals.compressedIron.plate]
]);

//Atomic Reconstructor
TableCrafting.addShaped(<actuallyadditions:block_atomic_reconstructor>, [
	[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate],
	[metals.compressedIron.plate, <quark:biotite>, <minecraft:obsidian>, <appliedenergistics2:material:18>, <minecraft:obsidian>, <quark:biotite>, metals.compressedIron.plate],
	[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice>, metals.compressedIron.plate],
	[<actuallyadditions:item_battery_triple>, <minecraft:lapis_block>, <appliedenergistics2:material:16>, <teslacorelib:machine_case>, <appliedenergistics2:material:1>, <environmentaltech:laser_core>, <minecraft:emerald>],
	[metals.compressedIron.plate, <minecraft:dye:4>, metals.redstoneAlloy.plate, <galacticraftplanets:item_basic_mars:5>, metals.redstoneAlloy.plate, <minecraft:ice>, metals.compressedIron.plate],
	[metals.compressedIron.plate, <quark:biotite>, <minecraft:obsidian>, <appliedenergistics2:material:17>, <minecraft:obsidian>, <quark:biotite>, metals.compressedIron.plate],
	[metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate, <mekanism:basicblock:8>, metals.compressedIron.plate, metals.compressedIron.plate, metals.compressedIron.plate]
]);

//==================================
//Creative Items
TableCrafting.addShaped(<tconstruct:materials:50>, [
	[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>],
	[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
	[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity:3>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:2>, <tconstruct:fancy_frame:4>, <ore:cast>],
	[<ore:cast>, <abyssalcraft:oblivionshard>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard>, <ore:cast>],
	[<ore:slimecrystal>, <mob_grinding_utils:saw_upgrade:1>, <mob_grinding_utils:saw_upgrade:5>, <ore:compressedDesh>, <trumpetskeleton:trumpet>, <ore:compressedDesh>, <mob_grinding_utils:saw_upgrade:5>, <mob_grinding_utils:saw_upgrade:1>, <ore:slimecrystal>],
	[<ore:cast>, <abyssalcraft:oblivionshard>, <tconstruct:materials:19>, <tconstruct:materials:16>, <ore:compressedDesh>, <tconstruct:materials:16>, <tconstruct:materials:19>, <abyssalcraft:oblivionshard>, <ore:cast>],
	[<ore:cast>, <tconstruct:fancy_frame:4>, <extendedcrafting:singularity>, <ore:boneWithered>, <mob_grinding_utils:saw_upgrade:5>, <ore:boneWithered>, <extendedcrafting:singularity:4>, <tconstruct:fancy_frame:4>, <ore:cast>],
	[<ore:cast>, <ore:slimecrystal>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <mob_grinding_utils:saw_upgrade:1>, <stevescarts:modulecomponents:59>, <stevescarts:modulecomponents:59>, <ore:slimecrystal>, <ore:cast>],
	[<ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>, <ore:cast>, <ore:cast>, <ore:cast>, <ore:slimecrystal>]
]);

TableCrafting.addShaped(<ironjetpacks:creative_jetpack>, [
	[<thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <minecraft:skull:5>, <mekanism:armoredjetpack>, <minecraft:skull:5>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>],
	[<thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <extraplanets:wafer:1>, <extendedcrafting:singularity:34>, <extraplanets:wafer:1>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:chiromaw_wing>],
	[null, <minecraft:elytra>, <mysticalagriculture:supremium_chestplate>, <extendedcrafting:material:13>, <extendedcrafting:singularity:24>, <extendedcrafting:material:13>, <mysticalagriculture:supremium_chestplate>, <minecraft:elytra>, null],
	[null, <ore:jetpackTier2>, <mysticalagriculture:supremium_chestplate>, <extraplanets:wafer:1>, <extendedcrafting:singularity:18>, <extraplanets:wafer:1>, <mysticalagriculture:supremium_chestplate>, <ore:jetpackTier2>, null],
	[<ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship_v1>, null, <ore:ingotAstralStarmetal>, <ore:jetpackTier2>, <ore:ingotAstralStarmetal>],
	[<ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell>, <ore:ingotAstralStarmetal>, null, <vc:airships/item_airship_v2>, null, <ore:ingotAstralStarmetal>, <ironjetpacks:creative_cell>, <ore:ingotAstralStarmetal>],
	[<actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>, null, <vc:airships/item_airship_v3>, null, <actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>],
	[<actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>, null, <vc:airships/item_airship_v4>, null, <actuallyadditions:item_leaf_blower_advanced>, <ironjetpacks:creative_cell>, <actuallyadditions:item_leaf_blower_advanced>],
	[null, <ironjetpacks:creative_thruster>, null, null, null, null, null, <ironjetpacks:creative_thruster>, null]
]);

TableCrafting.addShaped(<ironjetpacks:creative_thruster>, [
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor>, <ironjetpacks:emerald_cell>, <ironjetpacks:electrum_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:diamond_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:diamond_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:diamond_capacitor>, <ironjetpacks:emerald_cell>, <ironjetpacks:diamond_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:electrum_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:electrum_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, null, <mekanism:transmitter:1>, <ironjetpacks:emerald_capacitor>, <ironjetpacks:creative_cell>, <ironjetpacks:emerald_capacitor>, <mekanism:transmitter:1>, null, null],
	[null, <pneumaticcraft:vortex_tube>, <extraplanets:tier8_items>, <pneumaticcraft:vortex_tube>, null, <pneumaticcraft:vortex_tube>, <extraplanets:tier8_items>, <pneumaticcraft:vortex_tube>, null]
]);

TableCrafting.addShaped(<ironjetpacks:creative_cell>, [
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null],
	[null, <appliedenergistics2:energy_cell>, <rftools:powercell_advanced>, <immersiveengineering:metal_device0:2>, <mekanism:energycube>, <immersiveengineering:metal_device0:2>, <rftools:powercell_advanced>, <appliedenergistics2:energy_cell>, null]
]);

TableCrafting.addShaped(<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}), [
	[<industrialforegoing:black_hole_tank>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank>],
	[<integrateddynamics:part_fluid_reader_item>, <minecraft:sponge>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge>, <integrateddynamics:part_fluid_reader_item>],
	[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava>, <ore:ingotEnhancedGalgadorian>],
	[<ore:ingotInsanium>, <enderutilities:enderbucket>, <overloaded:infinite_water_source>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source>, <enderutilities:enderbucket>, <ore:ingotInsanium>],
	[<extendedcrafting:singularity_custom:1>, <mob_grinding_utils:tank>, <mekanism:machineblock2:11>, <bloodmagic:blood_tank:9>, <extendedcrafting:singularity_custom:2>, <bloodmagic:blood_tank:9>, <mekanism:machineblock2:11>, <mob_grinding_utils:tank>, <extendedcrafting:singularity_custom:1>],
	[<ore:ingotInsanium>, <enderutilities:enderbucket>, <overloaded:infinite_water_source>, <mob_grinding_utils:tank_sink>, <bloodmagic:blood_tank:9>, <mob_grinding_utils:tank_sink>, <overloaded:infinite_water_source>, <enderutilities:enderbucket>, <ore:ingotInsanium>],
	[<ore:ingotEnhancedGalgadorian>, <abyssalcraft:solidlava>, <mysticalagriculture:crafting:48>, <refinedstorage:fluid_storage_disk:3>, <mekanism:machineblock2:11>, <refinedstorage:fluid_storage_disk:3>, <mysticalagriculture:crafting:48>, <abyssalcraft:solidlava>, <ore:ingotEnhancedGalgadorian>],
	[<integrateddynamics:part_fluid_reader_item>, <minecraft:sponge>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <mob_grinding_utils:tank>, <extendedcrafting:material:13>, <extendedcrafting:material:13>, <minecraft:sponge>, <integrateddynamics:part_fluid_reader_item>],
	[<industrialforegoing:black_hole_tank>, <bloodmagic:blood_rune:7>, <mekanism:basicblock:11>, <ore:ingotInsanium>, <extendedcrafting:singularity_custom:1>, <ore:ingotInsanium>, <mekanism:basicblock:11>, <bloodmagic:blood_rune:7>, <industrialforegoing:black_hole_tank>]
]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <extendedcrafting:material:32>, [
	<ore:ingotIron>, <ore:ingotGold>, <ore:ingotAstralStarmetal>, <ore:ingotSoulforgedSteel>,
	<ore:listAllExplosives>, <ore:ingotPlatinum>, <ore:ingotRedstoneAlloy>, <ore:ingotInvar>,
	<ore:ingotBlackIron>, <ore:ingotHOPGraphite>, <ore:ingotCopper>, <ore:ingotAluminum>,
	<ore:ingotLead>, <ore:ingotSilver>, <ore:ingotNickel>, <ore:ingotConstantan>,
	<ore:ingotElectrum>, <ore:ingotSteel>, <ore:ingotRefinedObsidian>, <ore:ingotOsmium>,
	<ore:ingotBronze>, <ore:ingotRefinedGlowstone>, <ore:ingotTin>, <ore:ingotModularium>,
	<ore:ingotInsanium>, <ore:ingotBaseEssence>, <ore:ingotInferium>, <ore:ingotPrudentium>,
	<ore:ingotIntermedium>, <ore:ingotSuperium>, <ore:ingotSupremium>, <ore:ingotSoulium>,
	<ore:ingotSyrmorite>, <ore:ingotOctine>, <ore:ingotCobalt>, <ore:ingotArdite>,
	<ore:ingotManyullyn>, <ore:ingotReinforcedMetal>, <ore:ingotEnhancedGalgadorian>, <ore:ingotGalgadorian>,
	<ore:ingotSteeleaf>, <ore:ingotKnightslime>, <ore:ingotPigiron>, <enderutilities:enderpart>,
	<enderutilities:enderpart:1>, <enderutilities:enderpart:2>
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}), [
	[<appliedenergistics2:dense_energy_cell>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <overloaded:hyper_energy_sender>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <appliedenergistics2:dense_energy_cell>],
	[<ore:itemCompressedObsidian>, <rftools:powercell_advanced>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <overloaded:hyper_energy_sender>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <rftools:powercell_advanced>, <ore:itemCompressedObsidian>],
	[<ore:itemCompressedObsidian>, <pickletweaks:ppm4:2>, <integrateddynamics:energy_battery>, <environmentaltech:solar_cont_6>, <mekanism:energycube>, <environmentaltech:solar_cont_6>, <integrateddynamics:energy_battery>, <pickletweaks:ppm4:2>, <ore:itemCompressedObsidian>],
	[<actuallyadditions:block_laser_relay_extreme>, <mysticalagriculture:ultimate_furnace>, <mekanism:basicblock2:3>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity:3>, <mekanism:controlcircuit:3>, <mekanism:basicblock2:3>, <mysticalagriculture:ultimate_furnace>, <actuallyadditions:block_laser_relay_extreme>],
	[<extendedcrafting:material:13>, <extendedcrafting:material:13>, <mekanism:energycube>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:3>, <mekanism:energycube>, <extendedcrafting:material:13>, <extendedcrafting:material:13>],
	[<actuallyadditions:block_laser_relay_extreme>, <mysticalagriculture:ultimate_furnace>, <mekanism:basicblock2:3>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity:3>, <mekanism:controlcircuit:3>, <mekanism:basicblock2:3>, <mysticalagriculture:ultimate_furnace>, <actuallyadditions:block_laser_relay_extreme>],
	[<ore:itemCompressedObsidian>, <pickletweaks:ppm4:2>, <integrateddynamics:energy_battery>, <environmentaltech:solar_cont_6>, <mekanism:energycube>, <environmentaltech:solar_cont_6>, <integrateddynamics:energy_battery>, <pickletweaks:ppm4:2>, <ore:itemCompressedObsidian>],
	[<ore:itemCompressedObsidian>, <rftools:powercell_advanced>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <overloaded:hyper_energy_sender>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <rftools:powercell_advanced>, <ore:itemCompressedObsidian>],
	[<appliedenergistics2:dense_energy_cell>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <overloaded:hyper_energy_sender>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <appliedenergistics2:dense_energy_cell>]
]);

//Pneumaticraft Creative Compressor
mods.extendedcrafting.TableCrafting.addShaped(0, <pneumaticcraft:creative_compressor>, [
	[<ore:compressedTitanium>, <ore:compressedMeteoricIron>, <ore:compressedDesh>, <ore:compressedDesh>, <extendedcrafting:material:13>, <ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedMeteoricIron>, <ore:compressedTitanium>],
	[<ore:compressedMeteoricIron>, <ore:itemCompressedObsidian>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <pneumaticcraft:liquid_compressor>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <ore:itemCompressedObsidian>, <ore:compressedMeteoricIron>],
	[<ore:compressedDesh>, <actuallyadditions:item_crystal_empowered:2>, <ore:itemCompressedDiamond>, <pneumaticcraft:flux_compressor>, <mekanism:machineblock:7>, <pneumaticcraft:flux_compressor>, <ore:itemCompressedDiamond>, <actuallyadditions:item_crystal_empowered:2>, <ore:compressedDesh>],
	[<pneumaticcraft:pressure_chamber_valve>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:advanced_liquid_compressor>, <extendedcrafting:compressor>, <extendedcrafting:singularity_custom:3>, <extendedcrafting:compressor>, <pneumaticcraft:advanced_liquid_compressor>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:pressure_chamber_valve>],
	[<overloaded:compressed_obsidian:3>, <pneumaticcraft:liquid_compressor>, <mekanism:machineblock:7>, <extendedcrafting:singularity_custom:3>, <overloaded:compressed_cobblestone:7>, <extendedcrafting:singularity_custom:3>, <mekanism:machineblock:7>, <pneumaticcraft:liquid_compressor>, <overloaded:compressed_obsidian:3>],
	[<pneumaticcraft:pressure_chamber_valve>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:advanced_liquid_compressor>, <extendedcrafting:compressor>, <extendedcrafting:singularity_custom:3>, <extendedcrafting:compressor>, <pneumaticcraft:advanced_liquid_compressor>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:pressure_chamber_valve>],
	[<ore:compressedDesh>, <actuallyadditions:item_crystal_empowered:2>, <ore:itemCompressedDiamond>, <pneumaticcraft:flux_compressor>, <mekanism:machineblock:7>, <pneumaticcraft:flux_compressor>, <ore:itemCompressedDiamond>, <actuallyadditions:item_crystal_empowered:2>, <ore:compressedDesh>],
	[<ore:compressedMeteoricIron>, <ore:itemCompressedObsidian>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <pneumaticcraft:liquid_compressor>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <ore:itemCompressedObsidian>, <ore:compressedMeteoricIron>],
	[<ore:compressedTitanium>, <ore:compressedMeteoricIron>, <ore:compressedDesh>, <ore:compressedDesh>, <extendedcrafting:material:13>, <ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedMeteoricIron>, <ore:compressedTitanium>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <environmentaltech:modifier_creative_flight>, [
	[<environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}), <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>], 
	[<environmentaltech:mica>, <rftools:syringe>.withTag({mobName: "Ender Dragon", level: 10, mobId: "minecraft:ender_dragon"}), <enderutilities:enderpearlreusable:1>, <totemic:eagle_drops:1>, <bloodmagic:sigil_phantom_bridge>, <totemic:eagle_drops:1>, <enderutilities:enderpearlreusable:1>, <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"}), <environmentaltech:mica>], 
	[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <nex:food_meat_ghast_cooked>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <mekanism:controlcircuit:3>, <environmentaltech:mica>], 
	[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <bloodmagic:sigil_air>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <mekanism:controlcircuit:3>, <environmentaltech:mica>], 
	[<actuallyadditions:block_player_interface>, <bloodmagic:sigil_phantom_bridge>, <nex:food_meat_ghast_cooked>, <bloodmagic:sigil_air>, <rftools:flight_module>, <bloodmagic:sigil_air>, <nex:food_meat_ghast_cooked>, <bloodmagic:sigil_phantom_bridge>, <actuallyadditions:block_player_interface>], 
	[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <bloodmagic:sigil_air>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <mekanism:controlcircuit:3>, <environmentaltech:mica>], 
	[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <nex:food_meat_ghast_cooked>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <mekanism:controlcircuit:3>, <environmentaltech:mica>], 
	[<thebetweenlands:items_misc:3>, <thebetweenlands:chiromaw_wing>, <appliedenergistics2:material:41>, <cyclicmagic:charm_wing>, <bloodmagic:sigil_phantom_bridge>, <cyclicmagic:charm_wing>, <appliedenergistics2:material:41>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:items_misc:3>], 
	[<twilightforest:fire_jet:3>, <tconstruct:slimesling>, <twilightforest:fire_jet:3>, <tconstruct:slime_boots:2>, <mysticalagriculture:supremium_chestplate>, <tconstruct:slime_boots:2>, <twilightforest:fire_jet:3>, <tconstruct:slimesling>, <twilightforest:fire_jet:3>]
]);


/*
	Ender Crafting

	https://github.com/BlakeBr0/ExtendedCrafting/wiki/Ender-Crafting
*/
//NASA Workbench
EnderCrafting.addShaped(<galacticraftcore:rocket_workbench>, [
	[<galacticraftcore:basic_item:9>, <pneumaticcraft:assembly_io_unit>, <galacticraftcore:basic_item:9>],
	[<appliedenergistics2:material:22>, <extendedcrafting:table_basic>, <appliedenergistics2:material:24>],
	[<galacticraftcore:basic_item:9>, <pneumaticcraft:printed_circuit_board>, <galacticraftcore:basic_item:9>]
]);

/*
	Compression Crafting

	https://github.com/BlakeBr0/ExtendedCrafting/wiki/Compression-Crafting
*/
//[<firstOutput>, <firstInput>]
var compressionCraftingPairs = [
	[<overloaded:compressed_cobblestone>, <minecraft:cobblestone>],
	[<overloaded:compressed_obsidian>, <minecraft:obsidian>]
] as IItemStack[][];

var rfRates = [
	200,
	250,
	300,
	400,
	500,
	600,
	700,
	800,
	1000,
	1200,
	1400,
	1600,
	1750,
	1850,
	2000,
	2500
] as int[];

for pair in compressionCraftingPairs {
	//Check at the start of every pair loop to see if it is one of the unique types
	var isObsidian = pair[1].matches(<minecraft:obsidian>);
	var isNetherrack = pair[1].matches(<minecraft:netherrack>);

	//Loop i = 0 through 15 (doesnt do 16)
	for i in 0 to 16 {
		var output = pair[0].definition.makeStack(i);
		var input = pair[1];

		//Calculate RF Cost
		var baseCost = (pow(2, i) * 1000) as int;

		if (i != 0) {
			//If not the initial/standard block to 1x
			input = pair[0].definition.makeStack(i - 1);
		}

		//Default catalyst
		var catalystMeta = 8;

		//Set catalystMeta based on criteria
		if (i <= 7) {
			if (isObsidian | isNetherrack) {
				catalystMeta = 11;
			}
		} else if (i <= 11) {
			catalystMeta = isObsidian | isNetherrack ? 12 : 11;
		} else {
			catalystMeta = 13;
		}

		//Now that we have the meta wanted for the catalyst, create the item
		var catalyst = <extendedcrafting:material>.definition.makeStack(catalystMeta);

		//Add compression crafting recipe to compress
		CompressionCrafting.addRecipe(output, input, 9, catalyst, baseCost, rfRates[i]);

		//Add standard crafting recipe to decompress
		recipes.addShapeless(input * 9, [output]);
	}
}

