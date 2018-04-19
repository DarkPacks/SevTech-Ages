#priority -2000

/*
	Removes stages from all items that are hidden.

	Staged items will be "un hidden" when the item's set stage is obtained by the player.
	Removing the stages stops this behavior.
*/
for item in scripts.recipes.hide.hideIngredients {
	mods.ItemStages.removeItemStage(item);
}

for item in scripts.recipes.remove_and_hide.removeAndHideItems {
	mods.ItemStages.removeItemStage(item);
}
