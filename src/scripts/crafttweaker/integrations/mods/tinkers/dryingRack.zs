/*
	SevTech: Ages Tinkers Drying Rack Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	// Paper Creation
	tinkers.addDrying(<betterwithaddons:japanmat:9>, <betterwithaddons:japanmat:8>, 2400);
	tinkers.addDrying(<minecraft:paper:0>, <primal:plant_fiber_pulp:0>, 2400);

	// Dried Fish
	tinkers.addDrying(<primal:fish_salmon_dried:0>, <minecraft:fish:1>, 1600);
	tinkers.addDrying(<primal:shark_meat_dried:0>, <primal:shark_meat_raw:0>, 1600);

	// Leather Recipes
	tinkers.removeDrying(<minecraft:leather:0>);
	tinkers.addDrying(<minecraft:leather:0>, <primal:hide_tanned:0>, 2400);
	tinkers.addDrying(<primal:hide_dried:0>, <primal:hide_salted:0>, 2400);
}
