#priority 2400

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

zenClass RecipeUtil {
    zenConstructor() {
    }

    /*
        Process Method to handle Shapless Recipes.
    */
    function process(map as IIngredient[][][string][IItemStack]) {
        for item, itemRecipes in map {
            for recipeName, recipesInner in itemRecipes {
                for recipe in recipesInner {
                    if (recipeName == "nameless") {
                        recipes.addShapeless(item, recipe);
                    } else {
                        recipes.addShapeless(recipeName, item, recipe);
                    }
                }
            }
        }
    }

    /*
        Process Method to handle Shaped and Mirrored Recipes.
    */
    function process(map as IIngredient[][][][string][IItemStack], isMirrored as bool) {
        for item, itemRecipes in map {
            for recipeName, recipesInner in itemRecipes {
                for recipe in recipesInner {
                    if (recipeName == "nameless") {
                        if (isMirrored) {
                            recipes.addShapedMirrored(item, recipe);
                        } else {
                            recipes.addShaped(item, recipe);
                        }
                    } else {
                        if (isMirrored) {
                            recipes.addShapedMirrored(recipeName, item, recipe);
                        } else {
                            recipes.addShaped(recipeName, item, recipe);
                        }
                    }
                }
            }
        }
    }

    /*
        Removes recipes simple as baking a cake!
    */
    function removeRecipes(removals as IIngredient[]) {
        for toRemove in removals {
            recipes.remove(toRemove);
        }
    }
}
