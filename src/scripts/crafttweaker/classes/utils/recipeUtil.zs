#priority 3400

/*
	SevTech: Ages Recipe Util Script

	This script is a zenClass "Util/Wrapper" for recipe adding. Which gives us an easier way
	to add recipes to the game in a clean script layout using Maps/Arrays.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageDisabled;

zenClass RecipeUtil {
	zenConstructor() {
	}

	/*
		Process Method to handle Shapless Recipes.
	*/
	function processNamed(map as IIngredient[][][string][IItemStack]) {
		for item, itemRecipes in map {
			for recipeName, recipesInner in itemRecipes {
				for i, recipe in recipesInner {
					var toName = recipeName;
					if (i > 0) {
						toName = toName ~ "_" ~ i;
					}
					if (recipeName == "nameless") {
						recipes.addShapeless(item, recipe);
					} else {
						recipes.addShapeless(toName, item, recipe);
					}
				}
			}
		}
	}

	function process(map as IIngredient[][][IItemStack]) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				recipes.addShapeless(item, recipe);
			}
		}
	}

	/*
		Process Method to handle Shaped and Mirrored Recipes.
	*/
	function processNamed(map as IIngredient[][][][string][IItemStack], isMirrored as bool) {
		for item, itemRecipes in map {
			for recipeName, recipesInner in itemRecipes {
				for i, recipe in recipesInner {
					var toName = recipeName;
					if (i > 0) {
						toName = toName ~ "_" ~ i;
					}

					if (recipeName == "nameless") {
						if (isMirrored) {
							recipes.addShapedMirrored(item, recipe);
						} else {
							recipes.addShaped(item, recipe);
						}
					} else {
						if (isMirrored) {
							recipes.addShapedMirrored(toName, item, recipe);
						} else {
							recipes.addShaped(toName, item, recipe);
						}
					}
				}
			}
		}
	}

	function process(map as IIngredient[][][][IItemStack], isMirrored as bool) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				if (isMirrored) {
					recipes.addShapedMirrored(item, recipe);
				} else {
					recipes.addShaped(item, recipe);
				}
			}
		}
	}

	/*
		Removes recipes simple as baking a cake!
	*/
	function removeRecipes(removals as IItemStack[]) {
		for toRemove in removals {
			recipes.remove(toRemove);
		}
	}
	function removeRecipes(removals as string[]) {
		for toRemove in removals {
			recipes.removeByRegex(toRemove);
		}
	}

	/*
		Process Method for handling Furnace Recipes.
	*/
	function processFurnace(recipesToAdd as IIngredient[][IItemStack]) {
		for output, inputs in recipesToAdd {
			for input in inputs {
				furnace.addRecipe(output, input);
			}
		}
	}

	/*
		Remove recipes from the Vanilla Furnace
	*/
	function removeFurnace(removals as IIngredient[]) {
		for toRemove in removals {
			furnace.remove(toRemove);
		}
	}
	function removeFurnace(removals as IIngredient[IIngredient]) {
		for input, output in removals {
			furnace.remove(input, output);
		}
	}

	/*
		Hide an item from JEI.

		You can also set true to the second param to remove the recipes also.
		This also sets the Stage to Disabled incase people still have them or find them.
	*/
	function hideItems(removals as IIngredient[]) {
		hideItems(removals, false);
	}
	function hideItems(removals as IIngredient[], removeRecipe as bool) {
		if (removeRecipe) {
			for toHide in removals {
				mods.jei.JEI.removeAndHide(toHide);
				ZenStager.getStage(stageDisabled.stage).addIngredient(toHide, false);
			}
		} else {
			for toHide in removals {
				for toHideItem in toHide.items {
					mods.jei.JEI.hide(toHideItem);
				}
			}
		}
	}
}
