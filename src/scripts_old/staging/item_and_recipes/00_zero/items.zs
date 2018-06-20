#priority -2

import crafttweaker.item.IIngredient;

import mods.sevtweaks.stager.Stage;

var stageZero as Stage = STAGES.zero;

var stageZeroItems as IIngredient[] = [
	<ore:blockCharcoal>,
	<ore:foodSalt>,
	<ore:blockSalt>,

	<emberroot:owl_egg>,
	<trumpetskeleton:trumpet>,
	<wopper:wopper>,

	//Mortars
	<advancedmortars:mortar:1>,
	<advancedmortars:mortar>,

	//Nature's Compass
	<naturescompass:naturescompass>
];

stageZero.addIngredients(stageZeroItems, false);
