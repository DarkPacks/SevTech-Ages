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
	tinkers.addDrying(<minecraft:paper>, <primal:plant_fiber_pulp>, 2400);

	// Dried Fish
	tinkers.addDrying(<primal:fish_salmon_dried>, <minecraft:fish:1>, 1600);
	tinkers.addDrying(<primal:shark_meat_dried>, <primal:shark_meat_raw>, 1600);

	// Leather Recipes
	tinkers.removeDrying(<minecraft:leather>);
	tinkers.addDrying(<minecraft:leather>, <primal:hide_tanned>, 2400);
	tinkers.addDrying(<primal:hide_dried>, <primal:hide_salted>, 2400);
}
