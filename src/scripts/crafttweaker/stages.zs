#priority 3000

/*
	SevTech: Ages Stages Stages Script

	Creates the statics to import the Stages to other scripts.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

// Core Stages
static stageTutorial as Stage = ZenStager.getStage("tutorial");
static stageZero as Stage = ZenStager.getStage("zero");
static stageOne as Stage = ZenStager.getStage("one");
static stageTwo as Stage = ZenStager.getStage("two");
static stageThree as Stage = ZenStager.getStage("three");
static stageFour as Stage = ZenStager.getStage("four");
static stageFive as Stage = ZenStager.getStage("five");
static stageCreative as Stage = ZenStager.getStage("creative");

// Mob Stages
static stageZeroMob as Stage = ZenStager.getStage("zero_mob");
static stageOneMob as Stage = ZenStager.getStage("one_mob");
static stageTwoMob as Stage = ZenStager.getStage("two_mob");
static stageThreeMob as Stage = ZenStager.getStage("three_mob");
static stageFourMob as Stage = ZenStager.getStage("four_mob");
static stageFiveMob as Stage = ZenStager.getStage("five_mob");

// Unique Stages
static stageBaykok as Stage = ZenStager.getStage("baykok");
static stageMapping as Stage = ZenStager.getStage("mapping");

// Unique stage intended to disable existing items/etc
static stageDisabled as Stage = ZenStager.getStage("disabled");

// Stage for unused creative items
static stageCreativeUnused as Stage = ZenStager.getStage("creative_unused");
