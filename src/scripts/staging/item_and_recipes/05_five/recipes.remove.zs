#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wandunbreakable>,
	<prospectors:prospector_low>,

	// Minecraft
	<minecraft:diamond_block>,
	<minecraft:emerald_block>,

	//Storage Drawers
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>,

	//Iron Jetpacks
	<ironjetpacks:advanced_coil>,
	<ironjetpacks:basic_coil>,
	<ironjetpacks:electrum_capacitor>,

	//Cyclic
	<cyclicmagic:block_forester>,
	<cyclicmagic:harvester_block>,

	//Actually Additions
	<actuallyadditions:block_atomic_reconstructor>,

	//Mekanism
	<mekanism:basicblock:7>,

	//RFTools
	<rftools:machine_frame>,
	<rftools:matter_receiver>,
	<rftools:matter_transmitter>,
	<rftools:machine_base>,

	//Mystical Agriculture
	<mysticalagriculture:ultimate_furnace>,
	<mysticalagriculture:supremium_boots>,

	//Xnet
	<xnet:controller>,
	<xnet:router>,

	//Iron Chests
	<ironchest:diamond_crystal_chest_upgrade>,
	<ironchest:diamond_obsidian_chest_upgrade>,
	<ironchest:gold_diamond_chest_upgrade>,

	//Refined Storage
	<refinedstorage:constructor>,
	<refinedstorage:crafter_manager>,
	<refinedstorage:crafter>,
	<refinedstorage:crafting_monitor>,
	<refinedstorage:destructor>,
	<refinedstorage:detector>,
	<refinedstorage:disk_drive>,
	<refinedstorage:disk_manipulator>,
	<refinedstorage:fluid_storage_part:1>,
	<refinedstorage:fluid_storage_part:2>,
	<refinedstorage:fluid_storage_part:3>,
	<refinedstorage:network_receiver>,
	<refinedstorage:network_transmitter>,
	<refinedstorage:reader>,
	<refinedstorage:storage_monitor>,
	<refinedstorage:storage_part:1>,
	<refinedstorage:storage_part:2>,
	<refinedstorage:storage_part:3>,
	<refinedstorage:upgrade>,
	<refinedstorage:wireless_crafting_monitor>,
	<refinedstorage:wireless_fluid_grid>,
	<refinedstorage:wireless_grid>,
	<refinedstorage:wireless_transmitter>,
	<refinedstorage:wrench>,
	<refinedstorage:writer>,
	<refinedstorageaddons:network_bag>,
	<refinedstorageaddons:network_picker>,
	<refinedstorageaddons:wireless_crafting_grid>,

	//Reborn Storage
	<rebornstorage:multicrafter:1>,
	<rebornstorage:multicrafter:2>,
	<rebornstorage:multicrafter:3>,
	<rebornstorage:multicrafter>,
	<rebornstorage:storagepart:1>,
	<rebornstorage:storagepart:2>,
	<rebornstorage:storagepart:3>,
	<rebornstorage:storagepart:4>,
	<rebornstorage:storagepart:5>,
	<rebornstorage:storagepart:6>,
	<rebornstorage:storagepart:7>,
	<rebornstorage:storagepart>,

	//Quantum Storage
	<quantumstorage:quantum_storage_unit>,

	// GalactiCraft
	<galacticraftcore:machine2:8>,

	//Extra Planets
	<extraplanets:advanced_fuel_loader>,
	<extraplanets:fire_bomb>,
	<extraplanets:nuclear_bomb>,
	<extraplanets:tier1_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_boots>,
	<extraplanets:tier2_space_suit_chest>,
	<extraplanets:tier2_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_helmet>,
	<extraplanets:tier2_space_suit_legings>,
	<extraplanets:tier3_space_suit_boots>,
	<extraplanets:tier3_space_suit_chest>,
	<extraplanets:tier3_space_suit_gravity_boots>,
	<extraplanets:tier3_space_suit_helmet>,
	<extraplanets:tier3_space_suit_legings>,
	<extraplanets:tier4_space_suit_boots>,
	<extraplanets:tier4_space_suit_chest>,
	<extraplanets:tier4_space_suit_gravity_boots>,
	<extraplanets:tier4_space_suit_helmet>,
	<extraplanets:tier4_space_suit_legings>,

	//Environmental
	<environmentaltech:modifier_creative_flight>,

	// Valkyrie Lib
	<valkyrielib:guide>
];

for item in removeItems {
	recipes.remove(item);
}

var removeRecipeNames as string[] = [
	"primal:diamond_boots",
	"primal:diamond_chestplate",
	"primal:diamond_helmet",
	"primal:diamond_leggings"
];

for recipeName in removeRecipeNames {
	recipes.removeByRecipeName(recipeName);
}
