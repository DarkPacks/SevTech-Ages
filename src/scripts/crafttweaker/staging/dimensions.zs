/*
	SevTech: Ages Dimension Staging Script

	This script handles the staging of dimensions - making them inaccessible until
	the player reaches the stage.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
	Init method to perform the logic for the script.
*/
function init() {
	// Beneath
	stageOne.addDimension(10);

	// Twilight Forest
	stageTwo.addDimension(7);

	// Betweenlands
	stageTwo.addDimension(20);

	// Nether
	stageThree.addDimension(-1);

	// End
	stageFour.addDimension(1);

	// AE2 Spatial Storage
	stageFive.addDimension(2);

	// Abyssalcraft
	stageOne.addDimension(50);
	stageOne.addDimension(52);
	stageOne.addDimension(53);
	stageTwo.addDimension(51);

	// Hunting Dimension
	stageOne.addDimension(28885);
}
