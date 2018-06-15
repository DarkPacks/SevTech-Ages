#priority 3000

/*
	SevTech: Ages Stages Stages Script

	Creates the statics to import the Stages to other scripts.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stager;
import mods.sevtweaks.stager.Stage;

// Core Stages
static stageTutorial as Stage = Stager.getStage("tutorial");
static stageZero as Stage = Stager.getStage("zero");
static stageOne as Stage = Stager.getStage("one");
static stageTwo as Stage = Stager.getStage("two");
static stageThree as Stage = Stager.getStage("three");
static stageFour as Stage = Stager.getStage("four");
static stageFive as Stage = Stager.getStage("five");
static stageCreative as Stage = Stager.getStage("creative");

// Mob Stages
static stageZeroMob as Stage = Stager.getStage("zero_mob");
static stageOneMob as Stage = Stager.getStage("one_mob");
static stageTwoMob as Stage = Stager.getStage("two_mob");
static stageThreeMob as Stage = Stager.getStage("three_mob");
static stageFourMob as Stage = Stager.getStage("four_mob");
static stageFiveMob as Stage = Stager.getStage("five_mob");

// Unique Stages
static stageBaykok as Stage = Stager.getStage("baykok");
static stageMapping as Stage = Stager.getStage("mapping");

// Unique stage intended to disable existing items/etc
static stageDisabled as Stage = Stager.getStage("disabled");

// Stage for unused creative items
static stageCreativeUnused as Stage = Stager.getStage("creative_unused");
