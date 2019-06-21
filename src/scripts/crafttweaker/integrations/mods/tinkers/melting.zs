/*
	SevTech: Ages Tinkers Melting Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

/*
	Melting

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Melting/
*/
function init() {
	tinkers.addMelting(<liquid:ender_pearl> * 250, <appliedenergistics2:material:46>);

	// Platinum Ore
	//TODO: Loop over oredict instead (and ensure ore is unified)
	tinkers.addMelting(metalItems.platinum.liquid.liquids[0] * 144, <geolosys:cluster:8>);

	// New seared stone mechanic
	tinkers.removeMelting(<liquid:stone>);
	tinkers.addMelting(<liquid:stone> * 72, <tconstruct:soil:0>);
	tinkers.addMelting(<liquid:stone> * 72, <tconstruct:materials:0>);

	var searedBlock = <tconstruct:seared:0>.definition;
	for i in 0 .. 10{
		if (i != 1){
			tinkers.addMelting(<liquid:stone> * 288, searedBlock.makeStack(i));
		}
	}
	tinkers.addMelting(<liquid:stone> * 216, <tconstruct:seared:1>);

	// Steves Carts' Metals
	tinkers.addMelting(metalItems.enhancedGalgadorian.liquid.liquids[0] * 144, <stevescarts:modulecomponents:48>);
	tinkers.addMelting(metalItems.galgadorian.liquid.liquids[0] * 144, <stevescarts:modulecomponents:46>);
	tinkers.addMelting(metalItems.reinforcedMetal.liquid.liquids[0] * 144, <stevescarts:modulecomponents:21>);

	/*
		Fixes so all glass is same melting temp.
		I'm doing this against my better judgement because I don't want to hear players complaining about how it's impossible to make glass in stage 2 even though it's 100% possible already.
	*/
	tinkers.removeMelting(<liquid:glass>);
	tinkers.addMelting(<liquid:glass> * 250, <ore:pileSand>, 493);
	tinkers.addMelting(<liquid:glass> * 250, <ore:shardGlass>, 493);
	tinkers.addMelting(<liquid:glass> * 375, <ore:paneGlass>, 493);
	tinkers.addMelting(<liquid:glass> * 1000, <ore:blockGlass>, 493);
	tinkers.addMelting(<liquid:glass> * 1000, <ore:sand>, 493);

	// Remove Villager from giving emeralds or blood
	tinkers.addMeltingEntity(<entity:minecraft:villager>, <liquid:water> * 0); // Setting to 0 gives nothing when the entity is "melted"

	// Stops an exploit by removing the merchants melting.
	tinkers.addMeltingEntity(<entity:farmingforblockheads:merchant>, <liquid:water> * 0); // Setting to 0 gives nothing when the entity is "melted"

	/*
		Combined stuff
	*/

	// Liquid Glowstone
	tinkers.addMelting(<liquid:glowstone> * 100, <minecraft:glowstone_dust:0>);
	tinkers.addMelting(<liquid:glowstone> * 400, <minecraft:glowstone:0>);

	// Liquid Redstone
	tinkers.addMelting(<liquid:redstone> * 100, <minecraft:redstone:0>);
	tinkers.addMelting(<liquid:redstone> * 900, <minecraft:redstone_block:0>);

	// Cheese
	tinkers.addMelting(<liquid:cheese> * 100, <galacticraftcore:cheese:0>);
	tinkers.addMelting(<liquid:cheese> * 10, <galacticraftcore:cheese_curd:0>);
}
