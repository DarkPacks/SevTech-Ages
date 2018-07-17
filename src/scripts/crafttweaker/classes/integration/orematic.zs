#priority 3400

/*
	SevTech: Ages OreMatic Script

	This script is a zenClass to allow easy interation with the MM OreMatic Machine.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.crafttweaker.utils.createRecipeName;

/*
    OreMatic Class to intergrate with the custom machine even easier!
*/
zenClass OreMatic {
    var machine_name as string = "orematic5000";
    var energyScalingMultiplier as int[] = [4, 5, 10];
    var default_priority as int[] = [125, 250, 500];
    var default_ticktime as int = 125;
    var default_type as string = "";

    zenConstructor() {
    }

    /*
        Forms the basic recipe for all tiers

        This is essentially Tier 1 that then can be built on top of as deemed necessary
    */
    function formBaseRecipe(tier as int, tickTime as int, oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry, secondaryChance as float) as RecipePrimer {
        return formBaseRecipe(tier, tickTime, oreInput, dustOutput, default_type, secondaryOuput, secondaryChance, 0);
    }
    function formBaseRecipe(tier as int, tickTime as int, oreInput as IOreDictEntry, dustOutput as IItemStack, type as string, secondaryOuput as IOreDictEntry, secondaryChance as float, priority as int) as RecipePrimer {
        var machine_slug = tier > 1 ? machine_name ~ "_mk" ~ tier : machine_name;

        var builder = RecipeBuilder.newBuilder(
            createRecipeName(machine_name ~ "_mk" ~ tier, oreInput.name ~ "_processing" ~ type),
            machine_slug, tickTime, priority
        )
            .addEnergyPerTickInput(60 * energyScalingMultiplier[tier - 1])
            .addItemInput(oreInput)
            .addFluidInput(<liquid:water> * 250)
            .addGasInput("oxygen", 150)
            .addItemOutput(dustOutput * (3 + tier - 1));

        if (!isNull(secondaryOuput) & tier > 2) {
            builder
                .addItemOutput(secondaryOuput)
                .addItemOutput(secondaryOuput)
                .setChance(secondaryChance);
        }

        return builder;
    }

    /*
        Forms the basic recipes for all tiers.

        This is essentially Tier 1 that then can be built on top of as deemed necessary also adds the optional fluids which lower or increase the
        secondary outputs.
    */
    function formBaseRecipe(tier as int, oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry) as RecipePrimer[] {
        var allowGasoline = tier > 2;

        return [
            // 0 - Basic
            formBaseRecipe(tier, default_ticktime, oreInput, dustOutput, secondaryOuput, 0.5f),
            // 1 - Lube
            formBaseRecipe(tier, 0.8 * default_ticktime, oreInput, dustOutput, "_lubricant", secondaryOuput, 0.5f, -125)
                .addFluidInput(<liquid:lubricant> * 50),
            // 2 - Gasoline
            allowGasoline ? formBaseRecipe(tier, default_ticktime, oreInput, dustOutput, "_gasoline", secondaryOuput, 0.75f, -250)
                .addFluidInput(<liquid:gasoline> * 150) : null,
            // 3 - Lube & Gasoline
            allowGasoline ? formBaseRecipe(tier, 0.7 * default_ticktime, oreInput, dustOutput, "_gasoline_lubricant", secondaryOuput, 0.75f, -500)
                .addFluidInput(<liquid:gasoline> * 150)
                .addFluidInput(<liquid:lubricant> * 50): null
        ] as RecipePrimer[];
    }

    /*
        Tier One (Base): Processing. This allows for 3 times dust production from Ores. This tier requires only Water and Oxygen.
    */
    function addTier1(oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry) {
        var baseRecipes = formBaseRecipe(1, oreInput, dustOutput, secondaryOuput);
        for baseRecipe in baseRecipes {
            if (!isNull(baseRecipe)) {
                baseRecipe.build();
            }
        }
    }

    /*
        Tier Two: Processing. This allows for 4 times dust production from Ores. This tier requires only Water, Oxygen and Hydrogen Cholride.
    */
    function addTier2(oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry) {
        var baseRecipes = formBaseRecipe(2, oreInput, dustOutput, secondaryOuput);
        for baseRecipe in baseRecipes {
            if (!isNull(baseRecipe)) {
                baseRecipe
                    .addGasInput("hydrogenChloride", 200)
                    .build();
            }
        }
    }

    /*
        Tier Three: Processing. This allows for 5 times dust production from Ores. This tier requires only Water, Oxygen, Hydrogen Cholride
        and Sulfuric Acid.

        This tier also has the option to allow adding Lube or Gasoline to increase the speed and enable getting secondary output from the ores
        your processing.
    */
    function addTier3(oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry) {
        var baseRecipes = formBaseRecipe(3, oreInput, dustOutput, secondaryOuput);
        for baseRecipe in baseRecipes {
            baseRecipe
                .addGasInput("hydrogenChloride", 200)
                .addGasInput("sulfuricAcid", 120)
                .build();
        }
    }

    /*
        Adds ore processing recipe to all tiers
    */
    function addAllTiers(oreInput as IOreDictEntry, dustOutput as IItemStack, secondaryOuput as IOreDictEntry) {
        addTier1(oreInput, dustOutput, secondaryOuput);
        addTier2(oreInput, dustOutput, secondaryOuput);
        addTier3(oreInput, dustOutput, secondaryOuput);
    }
}
