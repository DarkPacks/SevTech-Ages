import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<pickletweaks:coal_piece:1>,
		<pickletweaks:dye_powder:1>,
		<pickletweaks:dye_powder:2>,
		<pickletweaks:dye_powder:3>,
		<pickletweaks:dye_powder:4>,
		<pickletweaks:dye_powder:5>,
		<pickletweaks:dye_powder:6>,
		<pickletweaks:dye_powder:7>,
		<pickletweaks:dye_powder:8>,
		<pickletweaks:dye_powder:9>,
		<pickletweaks:dye_powder:10>,
		<pickletweaks:dye_powder:11>,
		<pickletweaks:dye_powder:12>,
		<pickletweaks:dye_powder:13>,
		<pickletweaks:dye_powder:14>,
		<pickletweaks:dye_powder:15>,
		<pickletweaks:dye_powder>
	],

	stageOne.stage: [
		<pickletweaks:bronze_axe>,
		<pickletweaks:bronze_hoe>,
		<pickletweaks:bronze_pickaxe>,
		<pickletweaks:bronze_shovel>,
		<pickletweaks:bronze_sword>,
		<pickletweaks:coal_piece>,
		<pickletweaks:copper_axe>,
		<pickletweaks:copper_hoe>,
		<pickletweaks:copper_pickaxe>,
		<pickletweaks:copper_shovel>,
		<pickletweaks:copper_sword>,
		<pickletweaks:repair_kit:1>,
		<pickletweaks:repair_kit:5>,
		<pickletweaks:repair_kit:13>,
		<pickletweaks:repair_kit:14>,
		<pickletweaks:repair_kit:15>,
		<pickletweaks:repair_kit>
	],

	stageTwo.stage: [
		<pickletweaks:repair_kit:2>,
		<pickletweaks:repair_kit:3>,
		<pickletweaks:repair_kit:17>,
		<pickletweaks:watering_can>
	],

	stageThree.stage: [
		<pickletweaks:ppm4:2>,
		<pickletweaks:repair_kit:12>,
		<pickletweaks:repair_kit:16>,
		<pickletweaks:repair_kit:18>,
		<pickletweaks:repair_kit:19>,
		<pickletweaks:repair_kit:20>,
		<pickletweaks:repair_kit:21>,
		<pickletweaks:repair_kit:22>,
		<pickletweaks:repair_kit:23>
	],

	stageFour.stage: [
		<pickletweaks:magnet>,
		<pickletweaks:nightvision_goggles_c>,
		<pickletweaks:nightvision_goggles>
	],

	stageFive.stage: [
		<pickletweaks:diamond_apple>,
		<pickletweaks:emerald_apple>,
		<pickletweaks:repair_kit:4> // Diamond Repair Kit
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.pickletweaks.stagedItems {
		Stager.getStage(stageName).addIngredients(items);
	}
}
