import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<twilightforest:spiral_bricks:0>
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

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
