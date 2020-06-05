import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<twilightforest:spiral_bricks:0>,
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "COMMON"})
	],

	stageThree.stage: [
		<twilightforest:shader:0>.withTag({shader_type: "IKELOS"}),
		<twilightforest:shader:0>.withTag({shader_type: "Taken"}),
		<twilightforest:shader:0>.withTag({shader_type: "The Kindled"}),
		<twilightforest:shader:0>.withTag({shader_type: "Usurper"}),
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "EPIC"}),
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "IE:MASTERWORK"}),
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "RARE"}),
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "TWILIGHT"}),
		<twilightforest:shader_bag:0>.withTag({shader_rarity: "UNCOMMON"})
	],

	stageDisabled.stage: [
		<twilightforest:ore_map_empty:0>
	]
};

static hidden as IIngredient[] = [
	<twilightforest:twilight_plant:5>
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

	recipeUtil.hideItems(hidden as IIngredient[], false);
}
