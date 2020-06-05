import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<extendedcrafting:guide:0>,
		<extendedcrafting:handheld_table:0>,
		<extendedcrafting:material:8>,
		<extendedcrafting:material:14>,
		<extendedcrafting:table_basic:0>
	],

	stageThree.stage: [
		<extendedcrafting:frame:0>,
		<extendedcrafting:lamp:1>,
		<extendedcrafting:lamp:0>,
		<extendedcrafting:material:7>,
		<extendedcrafting:material:9>,
		<extendedcrafting:material:15>,
		<extendedcrafting:pedestal:0>,
		<extendedcrafting:storage:1>,
		<extendedcrafting:table_advanced:0>,
		<extendedcrafting:trimmed:1>,
		<extendedcrafting:trimmed:0>
	],

	stageFour.stage: [
		<extendedcrafting:ender_alternator:0>,
		<extendedcrafting:ender_crafter:0>,
		<extendedcrafting:interface:0>,
		<extendedcrafting:material:10>,
		<extendedcrafting:material:16>,
		<extendedcrafting:material:36>,
		<extendedcrafting:material:37>,
		<extendedcrafting:material:40>,
		<extendedcrafting:material:41>,
		<extendedcrafting:material:48>,
		<extendedcrafting:material:49>,
		<extendedcrafting:storage:5>,
		<extendedcrafting:storage:6>,
		<extendedcrafting:storage:7>,
		<extendedcrafting:table_elite:0>
	],

	stageFive.stage: [
		<extendedcrafting:compressor:0>,
		<extendedcrafting:crafting_core:0>,
		<extendedcrafting:material:11>,
		<extendedcrafting:material:12>,
		<extendedcrafting:material:13>,
		<extendedcrafting:material:17>,
		<extendedcrafting:material:18>,
		<extendedcrafting:material:19>,
		<extendedcrafting:material:24>,
		<extendedcrafting:material:25>,
		<extendedcrafting:material:32>,
		<extendedcrafting:material:33>,
		<extendedcrafting:material:128>,
		<extendedcrafting:material:129>,
		<extendedcrafting:material:140>,
		<extendedcrafting:singularity_custom:1>,
		<extendedcrafting:singularity_custom:2>,
		<extendedcrafting:singularity_custom:3>,
		<extendedcrafting:singularity_custom:4>,
		<extendedcrafting:singularity_custom:5>,
		<extendedcrafting:singularity_custom:6>,
		<extendedcrafting:singularity_custom:7>,
		<extendedcrafting:singularity_custom:8>,
		<extendedcrafting:singularity_ultimate:0>,
		<extendedcrafting:singularity:*>,
		<extendedcrafting:storage:2>,
		<extendedcrafting:storage:3>,
		<extendedcrafting:storage:4>,
		<extendedcrafting:table_ultimate:0>,
		<extendedcrafting:trimmed:2>,
		<extendedcrafting:trimmed:3>,
		<extendedcrafting:trimmed:4>,
		<extendedcrafting:trimmed:5>
	],

	stageCreativeUnused.stage: [
		<extendedcrafting:recipe_maker:0>.withTag({Shapeless: 0 as byte}),
		<extendedcrafting:recipe_maker:0>.withTag({Shapeless: 1 as byte})
	]
};

static hiddenItems as IIngredient[] = [
	<extendedcrafting:crafting_table:0>
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
