#priority -3

import crafttweaker.item.IIngredient;

import mods.sevtweaks.stager.Stage;

/*
	Stage from killing Baykok
*/
var stageBaykok as Stage = STAGES.baykok;

var stageBaykokItems as IIngredient[] = [
	<natura:materials:5>,
	<simplyarrows:arrow_bone>,
	<simplyarrows:arrow_flint>,
	<totemic:baykok_bow>
];

stageBaykok.addIngredients(stageBaykokItems); // TODO: Should recipes be staged as well? They were not before
