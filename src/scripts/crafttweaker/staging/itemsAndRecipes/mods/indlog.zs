import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<indlog:buffer:1>,
		<indlog:buffer:2>,
		<indlog:buffer:3>,
		<indlog:buffer:4>,
		<indlog:buffer:5>,
		<indlog:buffer:6>,
		<indlog:buffer:7>,
		<indlog:buffer:8>,
		<indlog:buffer:9>,
		<indlog:buffer:10>,
		<indlog:buffer:11>,
		<indlog:buffer:12>,
		<indlog:buffer:13>,
		<indlog:buffer:14>,
		<indlog:buffer:15>,
		<indlog:tank:1>,
		<indlog:tank:2>,
		<indlog:tank:3>,
		<indlog:tank:4>,
		<indlog:tank:5>,
		<indlog:tank:6>,
		<indlog:tank:7>,
		<indlog:tank:8>
	],

	stageDisabled.stage: [
		<indlog:tank:8>,
		<indlog:tank:9>,
		<indlog:tank:10>,
		<indlog:tank:11>,
		<indlog:tank:12>,
		<indlog:tank:13>,
		<indlog:tank:14>,
		<indlog:tank:15>
	]
};

static hiddenRemove as IIngredient[] = [
	<cd4017be_lib:m>,
	<indlog:tank:8>,
	<indlog:tank:9>,
	<indlog:tank:10>,
	<indlog:tank:11>,
	<indlog:tank:12>,
	<indlog:tank:13>,
	<indlog:tank:14>,
	<indlog:tank:15>
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
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
