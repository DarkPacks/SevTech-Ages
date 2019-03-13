import crafttweaker.item.IIngredient;

import scripts.crafttweaker.classes.utils.recipeUtil;

static hidden as IIngredient[] = [
	<immersivepetroleum:metal_multiblock>,
	<immersivepetroleum:dummy>
];

function init() {
	recipeUtil.hideItems(hidden as IIngredient[], false);
}
