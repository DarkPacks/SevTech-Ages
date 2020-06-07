import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<pickletweaks:grass_mesh:*>
	],

	stageZero.stage: [
		<pickletweaks:coal_piece:1>,
		<pickletweaks:colored_cobblestone:*>,
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
		<pickletweaks:dye_powder:0>
	],

	stageOne.stage: [
		<pickletweaks:bronze_axe:*>,
		<pickletweaks:bronze_hoe:*>,
		<pickletweaks:bronze_pickaxe:*>,
		<pickletweaks:bronze_shovel:*>,
		<pickletweaks:bronze_sword:*>,
		<pickletweaks:coal_piece:0>,
		<pickletweaks:copper_axe:*>,
		<pickletweaks:copper_hoe:*>,
		<pickletweaks:copper_pickaxe:*>,
		<pickletweaks:copper_shovel:*>,
		<pickletweaks:copper_sword:*>,
		<pickletweaks:repair_kit:1>,
		<pickletweaks:repair_kit:5>,
		<pickletweaks:repair_kit:13>,
		<pickletweaks:repair_kit:14>,
		<pickletweaks:repair_kit:15>,
		<pickletweaks:repair_kit:0>
	],

	stageTwo.stage: [
		<pickletweaks:dark_glass:0>,
		<pickletweaks:repair_kit:2>,
		<pickletweaks:repair_kit:3>,
		<pickletweaks:repair_kit:17>,
		<pickletweaks:watering_can:0>
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
		<pickletweaks:magnet:0>,
		<pickletweaks:nightvision_goggles_c:0>,
		<pickletweaks:nightvision_goggles:0>
	],

	stageFive.stage: [
		<pickletweaks:diamond_apple:0>,
		<pickletweaks:emerald_apple:0>,
		<pickletweaks:repair_kit:4> // Diamond Repair Kit
	]
};

static hiddenItems as IIngredient[] = [
	<pickletweaks:mesh:*>,
	<pickletweaks:ppm4:1>,
	<pickletweaks:ppm4:0>,
	<pickletweaks:repair_kit_custom:0>

];

static hiddenRemove as IIngredient[] = [
	<pickletweaks:grass_fiber:0>,
	<pickletweaks:reinforced_mesh:*>
];

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
