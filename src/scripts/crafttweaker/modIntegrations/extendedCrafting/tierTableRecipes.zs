/*
	SevTech: Ages Table Extended Crafting Tier Table Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Shaped Recipes Tagged by Tier.
static shapedRecipes as IIngredient[][][IItemStack][int] = {
	// Tier 0
	0:{
		// Mekanism Energy Cube
		<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}): [
			[<appliedenergistics2:dense_energy_cell>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <overloaded:hyper_energy_sender>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <appliedenergistics2:dense_energy_cell>],
			[<ore:itemCompressedObsidian>, <rftools:powercell_advanced>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <overloaded:hyper_energy_sender>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <rftools:powercell_advanced>, <ore:itemCompressedObsidian>],
			[<ore:itemCompressedObsidian>, <pickletweaks:ppm4:2>, <integrateddynamics:energy_battery>, <environmentaltech:solar_cont_6>, <mekanism:energycube>, <environmentaltech:solar_cont_6>, <integrateddynamics:energy_battery>, <pickletweaks:ppm4:2>, <ore:itemCompressedObsidian>],
			[<actuallyadditions:block_laser_relay_extreme>, <mysticalagriculture:ultimate_furnace>, <mekanism:basicblock2:3>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity:3>, <mekanism:controlcircuit:3>, <mekanism:basicblock2:3>, <mysticalagriculture:ultimate_furnace>, <actuallyadditions:block_laser_relay_extreme>],
			[<extendedcrafting:material:13>, <extendedcrafting:material:13>, <mekanism:energycube>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:3>, <mekanism:energycube>, <extendedcrafting:material:13>, <extendedcrafting:material:13>],
			[<actuallyadditions:block_laser_relay_extreme>, <mysticalagriculture:ultimate_furnace>, <mekanism:basicblock2:3>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity:3>, <mekanism:controlcircuit:3>, <mekanism:basicblock2:3>, <mysticalagriculture:ultimate_furnace>, <actuallyadditions:block_laser_relay_extreme>],
			[<ore:itemCompressedObsidian>, <pickletweaks:ppm4:2>, <integrateddynamics:energy_battery>, <environmentaltech:solar_cont_6>, <mekanism:energycube>, <environmentaltech:solar_cont_6>, <integrateddynamics:energy_battery>, <pickletweaks:ppm4:2>, <ore:itemCompressedObsidian>],
			[<ore:itemCompressedObsidian>, <rftools:powercell_advanced>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <overloaded:hyper_energy_sender>, <pickletweaks:ppm4:2>, <pickletweaks:ppm4:2>, <rftools:powercell_advanced>, <ore:itemCompressedObsidian>],
			[<appliedenergistics2:dense_energy_cell>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <overloaded:hyper_energy_sender>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <ore:itemCompressedObsidian>, <appliedenergistics2:dense_energy_cell>]
		],
		// Pneumaticraft Creative Compressor
		<pneumaticcraft:creative_compressor>: [
			[<ore:compressedTitanium>, <ore:compressedMeteoricIron>, <ore:compressedDesh>, <ore:compressedDesh>, <extendedcrafting:material:13>, <ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedMeteoricIron>, <ore:compressedTitanium>],
			[<ore:compressedMeteoricIron>, <ore:itemCompressedObsidian>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <pneumaticcraft:liquid_compressor>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <ore:itemCompressedObsidian>, <ore:compressedMeteoricIron>],
			[<ore:compressedDesh>, <actuallyadditions:item_crystal_empowered:2>, <ore:itemCompressedDiamond>, <pneumaticcraft:flux_compressor>, <mekanism:machineblock:7>, <pneumaticcraft:flux_compressor>, <ore:itemCompressedDiamond>, <actuallyadditions:item_crystal_empowered:2>, <ore:compressedDesh>],
			[<pneumaticcraft:pressure_chamber_valve>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:advanced_liquid_compressor>, <extendedcrafting:compressor>, <extendedcrafting:singularity_custom:3>, <extendedcrafting:compressor>, <pneumaticcraft:advanced_liquid_compressor>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:pressure_chamber_valve>],
			[<overloaded:compressed_obsidian:3>, <pneumaticcraft:liquid_compressor>, <mekanism:machineblock:7>, <extendedcrafting:singularity_custom:3>, <overloaded:compressed_cobblestone:7>, <extendedcrafting:singularity_custom:3>, <mekanism:machineblock:7>, <pneumaticcraft:liquid_compressor>, <overloaded:compressed_obsidian:3>],
			[<pneumaticcraft:pressure_chamber_valve>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:advanced_liquid_compressor>, <extendedcrafting:compressor>, <extendedcrafting:singularity_custom:3>, <extendedcrafting:compressor>, <pneumaticcraft:advanced_liquid_compressor>, <actuallyadditions:item_crystal_empowered:2>, <pneumaticcraft:pressure_chamber_valve>],
			[<ore:compressedDesh>, <actuallyadditions:item_crystal_empowered:2>, <ore:itemCompressedDiamond>, <pneumaticcraft:flux_compressor>, <mekanism:machineblock:7>, <pneumaticcraft:flux_compressor>, <ore:itemCompressedDiamond>, <actuallyadditions:item_crystal_empowered:2>, <ore:compressedDesh>],
			[<ore:compressedMeteoricIron>, <ore:itemCompressedObsidian>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <pneumaticcraft:liquid_compressor>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <ore:itemCompressedObsidian>, <ore:compressedMeteoricIron>],
			[<ore:compressedTitanium>, <ore:compressedMeteoricIron>, <ore:compressedDesh>, <ore:compressedDesh>, <extendedcrafting:material:13>, <ore:compressedDesh>, <ore:compressedDesh>, <ore:compressedMeteoricIron>, <ore:compressedTitanium>]
		],
		// Environmental Tech Creative Flight Modifier
		<environmentaltech:modifier_creative_flight>: [
			[<environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}), <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>, <environmentaltech:mica>],
			[<environmentaltech:mica>, <rftools:syringe>.withTag({mobName: "Ender Dragon", level: 10, mobId: "minecraft:ender_dragon"}), <enderutilities:enderpearlreusable:1>, <totemic:eagle_drops:1>, <bloodmagic:sigil_phantom_bridge>, <totemic:eagle_drops:1>, <enderutilities:enderpearlreusable:1>, <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"}), <environmentaltech:mica>],
			[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <nex:food_meat_ghast_cooked>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <mekanism:controlcircuit:3>, <environmentaltech:mica>],
			[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <bloodmagic:sigil_air>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <mekanism:controlcircuit:3>, <environmentaltech:mica>],
			[<actuallyadditions:block_player_interface>, <bloodmagic:sigil_phantom_bridge>, <nex:food_meat_ghast_cooked>, <bloodmagic:sigil_air>, <rftools:flight_module>, <bloodmagic:sigil_air>, <nex:food_meat_ghast_cooked>, <bloodmagic:sigil_phantom_bridge>, <actuallyadditions:block_player_interface>],
			[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <bloodmagic:sigil_air>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <mekanism:controlcircuit:3>, <environmentaltech:mica>],
			[<environmentaltech:mica>, <mekanism:controlcircuit:3>, <extendedcrafting:singularity_custom:2>, <minecraft:dye>, <nex:food_meat_ghast_cooked>, <minecraft:dye>, <extendedcrafting:singularity_custom:2>, <mekanism:controlcircuit:3>, <environmentaltech:mica>],
			[<thebetweenlands:items_misc:3>, <thebetweenlands:chiromaw_wing>, <appliedenergistics2:material:41>, <cyclicmagic:charm_wing>, <bloodmagic:sigil_phantom_bridge>, <cyclicmagic:charm_wing>, <appliedenergistics2:material:41>, <thebetweenlands:chiromaw_wing>, <thebetweenlands:items_misc:3>],
			[<twilightforest:fire_jet:3>, <tconstruct:slimesling>, <twilightforest:fire_jet:3>, <tconstruct:slime_boots:2>, <mysticalagriculture:supremium_chestplate>, <tconstruct:slime_boots:2>, <twilightforest:fire_jet:3>, <tconstruct:slimesling>, <twilightforest:fire_jet:3>]
		]
	}
};

// Shapeless Recipes Tagged by Tier.
static shapelessRecipes as IIngredient[][IItemStack][int] = {
	// Tier 0
	0: {
		<extendedcrafting:material:32>: [
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
		]
	}
};
