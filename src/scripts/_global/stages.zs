#priority 3000

/*
	SevTech: Ages Stages (Global) Script

	Stages should be created using the Stager class.

	Once created this allows you to stage pretty much most of the via the Stage itself.
	Also contained are helper methods on the Stage and the Stager to allow more refined
	control with events and/or internal code.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;

global STAGES as Stage[string] = {
	// Core Stages
	tutorial: Stager.initStage("tutorial"),
	zero: Stager.initStage("zero"),
	one: Stager.initStage("one"),
	two: Stager.initStage("two"),
	three: Stager.initStage("three"),
	four: Stager.initStage("four"),
	five: Stager.initStage("five"),
	creative: Stager.initStage("creative"),

	// Mob Stages
	zeroMob: Stager.initStage("zero_mob"),
	oneMob: Stager.initStage("one_mob"),
	twoMob: Stager.initStage("two_mob"),
	threeMob: Stager.initStage("three_mob"),
	fourMob: Stager.initStage("four_mob"),
	fiveMob: Stager.initStage("five_mob"),

	// Unique Stages
	baykok: Stager.initStage("baykok"),
	mapping: Stager.initStage("mapping"),

	// Unique stage intended to disable existing items/etc
	disabled: Stager.initStage("disabled"),

	// Stage for unused creative items
	creativeUnused: Stager.initStage("creative_unused")
};
