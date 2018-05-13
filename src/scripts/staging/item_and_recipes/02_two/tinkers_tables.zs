#priority -2

var STAGE = STAGES.two;

for subItem in <tconstruct:tooltables>.definition.subItems {
	mods.ItemStages.addItemStage(STAGE, subItem);
	mods.recipestages.Recipes.setRecipeStage(STAGE, subItem);
}
