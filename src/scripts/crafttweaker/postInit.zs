#priority -100

/*
	SevTech: Ages Run (postInit) Script

	This script is the main runner for the pack. This file should ONLY be
	modified if you know what you are doing. Changing anything in here could cause
	potential script failures and game breaking issues.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stager;

// ==================================
// Staging Specific Scripts
scripts.crafttweaker.staging.dimensions.init();
scripts.crafttweaker.staging.journeymap.init();
scripts.crafttweaker.staging.mobs.init();
scripts.crafttweaker.staging.tinkers.init();

// ==================================
// Item Modifiers
scripts.crafttweaker.item_modifiers.burnTime.init();
scripts.crafttweaker.item_modifiers.descriptions.init();
scripts.crafttweaker.item_modifiers.durability.init();
scripts.crafttweaker.item_modifiers.hardness.init();
scripts.crafttweaker.item_modifiers.harvestLevel.init();
scripts.crafttweaker.item_modifiers.rename.init();
scripts.crafttweaker.item_modifiers.tooltips.init();

// ==================================
// Build the Stages
Stager.buildAll();
