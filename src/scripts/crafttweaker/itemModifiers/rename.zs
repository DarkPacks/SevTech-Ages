/*
	SevTech: Ages Item Renaming Script

	This script allows for the renaming of an item.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<primal:hide_tanned>: "Wet Tanned Hide",

	<betterwithaddons:japanmat:4>: "Rice Flour",

	<primal_tech:flint_edged_disc>: "Flint Saw Blade",

	<totemic:sub_items:1>: "Jingles",

	<primal:plant_fiber_pulp>: "Pulp",

	<primal:golden_stick>: "Golden Rod",

	<betterbuilderswands:wanddiamond>: "Platinum Wand",

	//Space Platinum
	<extraplanets:kepler22b:14>: "Block of Space Platinum",
	<extraplanets:tier11_items:5>: "§9Space Platinum Ingot",
	<extraplanets:tier11_items:6>: "§9Compressed Space Platinum",

	//Chisel & Bits
	<chiselsandbits:chisel_iron>: "Bit Chisel",

	<extraplanets:apple_iron>: "JourneyMap Token"
};

function init() {
	for item, displayName in scripts.crafttweaker.itemModifiers.rename.renameMap {
		item.displayName = displayName;
	}
}
