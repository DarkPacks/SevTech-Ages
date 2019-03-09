import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<infoaccessories:info_accessory:1>,
		<infoaccessories:info_accessory:2>,
		<infoaccessories:info_accessory:4>,
		<infoaccessories:info_accessory:5>,
		<infoaccessories:info_accessory:6>,
		<infoaccessories:info_accessory:0>
	]
};

static hiddenItems as IIngredient[] = [
	<infoaccessories:info_accessory:3>,
	<infoaccessories:info_accessory:7>,
	<infoaccessories:info_accessory:8>,
	<infoaccessories:info_accessory:9>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
}
