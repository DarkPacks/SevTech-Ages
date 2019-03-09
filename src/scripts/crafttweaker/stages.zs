#priority 3999

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
static stageTutorial as Stage = ZenStager.initStage("tutorial");
static stageZero as Stage = ZenStager.initStage("zero");
static stageOne as Stage = ZenStager.initStage("one");
static stageTwo as Stage = ZenStager.initStage("two");
static stageThree as Stage = ZenStager.initStage("three");
static stageFour as Stage = ZenStager.initStage("four");
static stageFive as Stage = ZenStager.initStage("five");
static stageCreative as Stage = ZenStager.initStage("creative");

// Mob Stages
static stageZeroMob as Stage = ZenStager.initStage("zero_mob");
static stageOneMob as Stage = ZenStager.initStage("one_mob");
static stageTwoMob as Stage = ZenStager.initStage("two_mob");
static stageThreeMob as Stage = ZenStager.initStage("three_mob");
static stageFourMob as Stage = ZenStager.initStage("four_mob");
static stageFiveMob as Stage = ZenStager.initStage("five_mob");

// Unique Stages
static stageBaykok as Stage = ZenStager.initStage("baykok");
static stageMapping as Stage = ZenStager.initStage("mapping");

// Unique stage intended to disable existing items/etc
static stageDisabled as Stage = ZenStager.initStage("disabled");

// Stage for unused creative items
static stageCreativeUnused as Stage = ZenStager.initStage("creative_unused");

// ==================================
// Metal Stages
static metalStages as string[string] = {
	abyssalnite: "two",
	aluminum: "three",
	aluminumBrass: "three",
	ardite: "four",
	blackIron: "two",
	bronze: "one",
	cobalt: "three",
	compressedIron: "four",
	constantan: "three",
	copper: "one",
	dreadium: "two",
	electrum: "three",
	enhancedGalgadorian: "three",
	ethaxium: "two",
	fiery: "two",
	galgadorian: "three",
	gold: "two",
	invar: "three",
	iron: "two",
	knightslime: "four",
	lead: "three",
	manyullyn: "four",
	meteoricIron: "five",
	modularium: "three",
	nickel: "three",
	osmium: "five",
	pigiron: "three",
	platinum: "three",
	redstoneAlloy: "three",
	refinedCoralium: "one",
	reinforcedMetal: "three",
	silver: "three",
	spacePlatinum: "five",
	steel: "three",
	steeleaf: "two",
	tin: "one",
	titanium: "five",
	uranium: "four",
	zinc: "five"
};
