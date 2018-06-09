#priority 2001

import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;

// Unique global to store stages
global STAGES as Stage[string] = {
	// Core Stages
	tutorial : Stager.initStage("tutorial"),
	zero : Stager.initStage("zero"),
	zeroMob : Stager.initStage("zero_mob"),
	one : Stager.initStage("one"),
	oneMob : Stager.initStage("one_mob"),
	two : Stager.initStage("two"),
	twoMob : Stager.initStage("two_mob"),
	three : Stager.initStage("three"),
	threeMob : Stager.initStage("three_mob"),
	four : Stager.initStage("four"),
	fourMob : Stager.initStage("four_mob"),
	five : Stager.initStage("five"),
	fiveMob : Stager.initStage("five_mob"),
	creative : Stager.initStage("creative"),

	// Unique Stages
	baykok : Stager.initStage("baykok"),
	mapping : Stager.initStage("mapping"),

	// Unique stage intended to disable existing items/etc
	disabled : Stager.initStage("disabled"),

	// Stage for unused creative items
	creativeUnused : Stager.initStage("creative_unused")
};
