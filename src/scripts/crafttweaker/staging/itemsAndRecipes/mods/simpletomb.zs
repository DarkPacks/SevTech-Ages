import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static hiddenRemove as IIngredient[] = [
	<simpletomb:grave_key:0>
];

function init() {
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
