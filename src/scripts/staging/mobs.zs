/*
	SevTech: Ages Mobs Script

	This script handles the staging of mobs to set stages for them to appear.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;

var stageOne as Stage = STAGES.one;
var stageTwo as Stage = STAGES.two;
var stageThree as Stage = STAGES.three;
var stageFour as Stage = STAGES.four;

stageOne.addMob([
	"emberroot:rainbowslime",
	"emberroot:slime",
	"minecraft:skeleton",
	"minecraft:skeleton_horse"
]);

stageTwo.addMob([
	"emberroot:enderminy",
	"emberroot:fallenmount",
	"emberroot:hero",
	"emberroot:knight_fallen",
	"emberroot:skeleton_frozen",
	"emberroot:withercat",
	"emberroot:witherwitch",
	"minecraft:enderman"
]);

stageThree.addMob([
	"fat_cat:fat_cat"
]);

stageFour.addMob([
	"playerskins:playermob"
]);
