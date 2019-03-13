import crafttweaker.item.IIngredient;

static hidden as IIngredient[] = [
	<immersivepetroleum:metal_multiblock>,
	<immersivepetroleum:dummy>
];

function init() {
	recipeUtil.hideItems(hidden as IIngredient[], false);
}
