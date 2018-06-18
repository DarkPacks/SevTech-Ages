import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<improvedbackpacks:backpack>,
		<improvedbackpacks:backpack>.withTag({Color: 0}),
		<improvedbackpacks:backpack>.withTag({Color: 1}),
		<improvedbackpacks:backpack>.withTag({Color: 2}),
		<improvedbackpacks:backpack>.withTag({Color: 3}),
		<improvedbackpacks:backpack>.withTag({Color: 4}),
		<improvedbackpacks:backpack>.withTag({Color: 5}),
		<improvedbackpacks:backpack>.withTag({Color: 6}),
		<improvedbackpacks:backpack>.withTag({Color: 7}),
		<improvedbackpacks:backpack>.withTag({Color: 8}),
		<improvedbackpacks:backpack>.withTag({Color: 9}),
		<improvedbackpacks:backpack>.withTag({Color: 10}),
		<improvedbackpacks:backpack>.withTag({Color: 11}),
		<improvedbackpacks:backpack>.withTag({Color: 12}),
		<improvedbackpacks:backpack>.withTag({Color: 13}),
		<improvedbackpacks:backpack>.withTag({Color: 14}),
		<improvedbackpacks:backpack>.withTag({Color: 15}),
		<improvedbackpacks:blank_upgrade>,
		<improvedbackpacks:upgrade:1>,
		<improvedbackpacks:upgrade>
	],

	stageTwo: [
		<improvedbackpacks:upgrade:2>,
		<improvedbackpacks:upgrade:3>
	],

	stageFive: [
		<improvedbackpacks:upgrade:4>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.improvedbackpacks.stagedItems {
		stage.addIngredients(items);
	}
}
