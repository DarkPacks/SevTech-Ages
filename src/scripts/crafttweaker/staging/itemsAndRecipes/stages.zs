/*
	SevTech: Ages Items and Recipes Stages Staging Script

	This script handles the staging of items that involve multiple stages.
	Anything specific to an individual stage should not be here!

	THIS SCRIPT CURRENTLY RUNS AFTER ZENSTAGES IS BUILT. PLEASE BE AWARE!
	SEE https://github.com/DarkPacks/SevTech-Ages/commit/2a0098fcf52681e1f65e358f009a670f1ae523ff

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.recipestages.Recipes;
import mods.zenstages.Stage;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageBaykok;
import scripts.crafttweaker.stages.stageMapping;

// Contains all "useful" stages
static ALL_STAGES as Stage[] = [
	// Core stages
	stageTutorial,
	stageZero,
	stageOne,
	stageTwo,
	stageThree,
	stageFour,
	stageFive,
	stageCreative,

	// Unique stages
	stageBaykok,
	stageMapping
];

function init() {
	var allStages as Stage[] = scripts.crafttweaker.staging.itemsAndRecipes.stages.ALL_STAGES;

	for stage in allStages {
		Recipes.setRecipeStageByRegex(stage.stage, stage.recipeRegex);
	}
}
