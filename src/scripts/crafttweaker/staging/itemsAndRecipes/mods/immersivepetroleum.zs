import crafttweaker.item.IIngredient;

import scripts.crafttweaker.classes.utils.recipeUtil;

static hiddenRemove as IIngredient[] = [
	<immersivepetroleum:metal_multiblock>,
	<immersivepetroleum:dummy>
];

function init() {
	recipeUtil.hideItems(hiddenRemove as IIngredient[], false);
}
