/*
	SevTech: Ages Item Renaming Script

	This script allows for the renaming of an item.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static renameMap as string[IItemStack] = {
	<primal:hide_tanned:0>: "Wet Tanned Hide",

	<betterwithaddons:japanmat:4>: "Rice Flour",

	<primal_tech:flint_edged_disc>: "Flint Saw Blade",

	<totemic:sub_items:1>: "Jingles",

	<primal:plant_fiber_pulp:0>: "Pulp",

	<primal:golden_stick:0>: "Golden Rod",

	<betterbuilderswands:wanddiamond:0>: "Platinum Wand",

	//Space Platinum
	<extraplanets:kepler22b:14>: "Block of Space Platinum",
	<extraplanets:tier11_items:5>: "§9Space Platinum Ingot",
	<extraplanets:tier11_items:6>: "§9Compressed Space Platinum",

	//Chisel & Bits
	<chiselsandbits:chisel_iron:0>: "Bit Chisel",

	<extraplanets:apple_iron:0>: "JourneyMap Token",

	//Fixing Localization
	<primal:wolf_head_item>: "Wolf Head"
};

function init() {
	for item, displayName in renameMap {
		item.displayName = displayName;
	}
}
