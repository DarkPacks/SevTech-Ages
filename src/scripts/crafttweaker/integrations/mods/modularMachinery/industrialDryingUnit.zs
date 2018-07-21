/*
	SevTech: Ages Table Industrial Drying Unit Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	dryingUnit.addAllTiers(<ore:hideSalted>, 4, <ore:hideDry>, 4);
	dryingUnit.addAllTiers(<ore:hideTanned>, 4, <minecraft:leather:0> * 4);
	dryingUnit.addAllTiers(<primal:plant_fiber_pulp:0> * 4, <minecraft:paper:0> * 4);

	// Taken from the TiC Drying Rack.
	dryingUnit.addAllTiers(<betterwithaddons:japanmat:8>, <betterwithaddons:japanmat:9>);
	dryingUnit.addAllTiers(<minecraft:beef:0>, <tconstruct:edible:11>);
	dryingUnit.addAllTiers(<minecraft:chicken:0>, <tconstruct:edible:12>);
	dryingUnit.addAllTiers(<minecraft:clay:0>, <tconstruct:dried_clay:0>);
	dryingUnit.addAllTiers(<minecraft:clay_ball:0>, <tconstruct:materials:2>);
	dryingUnit.addAllTiers(<minecraft:fish:1>, <tconstruct:edible:21>);
	dryingUnit.addAllTiers(<minecraft:fish:2>, <tconstruct:edible:22>);
	dryingUnit.addAllTiers(<minecraft:fish:3>, <tconstruct:edible:23>);
	dryingUnit.addAllTiers(<minecraft:fish:0>, <tconstruct:edible:20>);
	dryingUnit.addAllTiers(<minecraft:mutton:0>, <tconstruct:edible:14>);
	dryingUnit.addAllTiers(<minecraft:porkchop:0>, <tconstruct:edible:13>);
	dryingUnit.addAllTiers(<minecraft:rabbit:0>, <tconstruct:edible:15>);
	dryingUnit.addAllTiers(<minecraft:rotten_flesh:0>, <tconstruct:edible:10>);
	dryingUnit.addAllTiers(<minecraft:slime_ball:0>, <tconstruct:edible:30>);
	dryingUnit.addAllTiers(<minecraft:sponge:1>, <minecraft:sponge:0>);
	dryingUnit.addAllTiers(<ore:treeSapling>, 1, <minecraft:deadbush:0>);
	dryingUnit.addAllTiers(<primal:shark_meat_raw:0>, <primal:shark_meat_dried:0>);
	dryingUnit.addAllTiers(<tconstruct:edible:1>, <tconstruct:edible:31>);
	dryingUnit.addAllTiers(<tconstruct:edible:2>, <tconstruct:edible:32>);
	dryingUnit.addAllTiers(<tconstruct:edible:3>, <tconstruct:edible:33>);
	dryingUnit.addAllTiers(<tconstruct:edible:4>, <tconstruct:edible:34>);
}
