import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<ironchest:iron_chest:3>,
		<ironchest:iron_chest:7>,
		<ironchest:wood_copper_chest_upgrade:0>
	],

	stageTwo.stage: [
		<ironchest:copper_iron_chest_upgrade:0>,
		<ironchest:copper_silver_chest_upgrade:0>,
		<ironchest:iron_chest:1>,
		<ironchest:iron_chest:4>,
		<ironchest:iron_chest:0>,
		<ironchest:iron_gold_chest_upgrade:0>,
		<ironchest:silver_gold_chest_upgrade:0>,
		<ironchest:wood_iron_chest_upgrade:0>
	],

	stageThree.stage: [
		<ironchest:iron_chest:6>
	],

	stageFive.stage: [
		<ironchest:diamond_crystal_chest_upgrade:0>,
		<ironchest:diamond_obsidian_chest_upgrade:0>,
		<ironchest:gold_diamond_chest_upgrade:0>,
		<ironchest:iron_chest:2>,
		<ironchest:iron_chest:5>
	]
};

static hiddenItems as IIngredient[] = [
	<ironchest:copper_iron_shulker_upgrade:0>,
	<ironchest:copper_silver_shulker_upgrade:0>,
	<ironchest:diamond_crystal_shulker_upgrade:0>,
	<ironchest:diamond_obsidian_shulker_upgrade:0>,
	<ironchest:gold_diamond_shulker_upgrade:0>,
	<ironchest:iron_gold_shulker_upgrade:0>,
	<ironchest:iron_shulker_box_black:6>,
	<ironchest:iron_shulker_box_black:5>,
	<ironchest:iron_shulker_box_black:4>,
	<ironchest:iron_shulker_box_black:3>,
	<ironchest:iron_shulker_box_black:2>,
	<ironchest:iron_shulker_box_black:1>,
	<ironchest:iron_shulker_box_black:0>,
	<ironchest:iron_shulker_box_blue:6>,
	<ironchest:iron_shulker_box_blue:5>,
	<ironchest:iron_shulker_box_blue:4>,
	<ironchest:iron_shulker_box_blue:3>,
	<ironchest:iron_shulker_box_blue:2>,
	<ironchest:iron_shulker_box_blue:1>,
	<ironchest:iron_shulker_box_blue:0>,
	<ironchest:iron_shulker_box_brown:6>,
	<ironchest:iron_shulker_box_brown:5>,
	<ironchest:iron_shulker_box_brown:4>,
	<ironchest:iron_shulker_box_brown:3>,
	<ironchest:iron_shulker_box_brown:2>,
	<ironchest:iron_shulker_box_brown:1>,
	<ironchest:iron_shulker_box_brown:0>,
	<ironchest:iron_shulker_box_cyan:6>,
	<ironchest:iron_shulker_box_cyan:5>,
	<ironchest:iron_shulker_box_cyan:4>,
	<ironchest:iron_shulker_box_cyan:3>,
	<ironchest:iron_shulker_box_cyan:2>,
	<ironchest:iron_shulker_box_cyan:1>,
	<ironchest:iron_shulker_box_cyan:0>,
	<ironchest:iron_shulker_box_gray:6>,
	<ironchest:iron_shulker_box_gray:5>,
	<ironchest:iron_shulker_box_gray:4>,
	<ironchest:iron_shulker_box_gray:3>,
	<ironchest:iron_shulker_box_gray:2>,
	<ironchest:iron_shulker_box_gray:1>,
	<ironchest:iron_shulker_box_gray:0>,
	<ironchest:iron_shulker_box_green:6>,
	<ironchest:iron_shulker_box_green:5>,
	<ironchest:iron_shulker_box_green:4>,
	<ironchest:iron_shulker_box_green:3>,
	<ironchest:iron_shulker_box_green:2>,
	<ironchest:iron_shulker_box_green:1>,
	<ironchest:iron_shulker_box_green:0>,
	<ironchest:iron_shulker_box_light_blue:6>,
	<ironchest:iron_shulker_box_light_blue:5>,
	<ironchest:iron_shulker_box_light_blue:4>,
	<ironchest:iron_shulker_box_light_blue:3>,
	<ironchest:iron_shulker_box_light_blue:2>,
	<ironchest:iron_shulker_box_light_blue:1>,
	<ironchest:iron_shulker_box_light_blue:0>,
	<ironchest:iron_shulker_box_lime:6>,
	<ironchest:iron_shulker_box_lime:5>,
	<ironchest:iron_shulker_box_lime:4>,
	<ironchest:iron_shulker_box_lime:3>,
	<ironchest:iron_shulker_box_lime:2>,
	<ironchest:iron_shulker_box_lime:1>,
	<ironchest:iron_shulker_box_lime:0>,
	<ironchest:iron_shulker_box_magenta:6>,
	<ironchest:iron_shulker_box_magenta:5>,
	<ironchest:iron_shulker_box_magenta:4>,
	<ironchest:iron_shulker_box_magenta:3>,
	<ironchest:iron_shulker_box_magenta:2>,
	<ironchest:iron_shulker_box_magenta:1>,
	<ironchest:iron_shulker_box_magenta:0>,
	<ironchest:iron_shulker_box_magenta:0>,
	<ironchest:iron_shulker_box_orange:6>,
	<ironchest:iron_shulker_box_orange:5>,
	<ironchest:iron_shulker_box_orange:4>,
	<ironchest:iron_shulker_box_orange:3>,
	<ironchest:iron_shulker_box_orange:2>,
	<ironchest:iron_shulker_box_orange:1>,
	<ironchest:iron_shulker_box_orange:0>,
	<ironchest:iron_shulker_box_pink:6>,
	<ironchest:iron_shulker_box_pink:5>,
	<ironchest:iron_shulker_box_pink:4>,
	<ironchest:iron_shulker_box_pink:3>,
	<ironchest:iron_shulker_box_pink:2>,
	<ironchest:iron_shulker_box_pink:1>,
	<ironchest:iron_shulker_box_pink:0>,
	<ironchest:iron_shulker_box_purple:6>,
	<ironchest:iron_shulker_box_purple:5>,
	<ironchest:iron_shulker_box_purple:4>,
	<ironchest:iron_shulker_box_purple:3>,
	<ironchest:iron_shulker_box_purple:2>,
	<ironchest:iron_shulker_box_purple:1>,
	<ironchest:iron_shulker_box_purple:0>,
	<ironchest:iron_shulker_box_red:6>,
	<ironchest:iron_shulker_box_red:5>,
	<ironchest:iron_shulker_box_red:4>,
	<ironchest:iron_shulker_box_red:3>,
	<ironchest:iron_shulker_box_red:2>,
	<ironchest:iron_shulker_box_red:1>,
	<ironchest:iron_shulker_box_red:0>,
	<ironchest:iron_shulker_box_silver:6>,
	<ironchest:iron_shulker_box_silver:5>,
	<ironchest:iron_shulker_box_silver:4>,
	<ironchest:iron_shulker_box_silver:3>,
	<ironchest:iron_shulker_box_silver:2>,
	<ironchest:iron_shulker_box_silver:1>,
	<ironchest:iron_shulker_box_silver:0>,
	<ironchest:iron_shulker_box_white:6>,
	<ironchest:iron_shulker_box_white:5>,
	<ironchest:iron_shulker_box_white:4>,
	<ironchest:iron_shulker_box_white:3>,
	<ironchest:iron_shulker_box_white:2>,
	<ironchest:iron_shulker_box_white:1>,
	<ironchest:iron_shulker_box_white:0>,
	<ironchest:iron_shulker_box_yellow:6>,
	<ironchest:iron_shulker_box_yellow:5>,
	<ironchest:iron_shulker_box_yellow:4>,
	<ironchest:iron_shulker_box_yellow:3>,
	<ironchest:iron_shulker_box_yellow:2>,
	<ironchest:iron_shulker_box_yellow:1>,
	<ironchest:iron_shulker_box_yellow:0>,
	<ironchest:silver_gold_shulker_upgrade:0>,
	<ironchest:vanilla_copper_shulker_upgrade:0>,
	<ironchest:vanilla_iron_shulker_upgrade:0>
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
}
