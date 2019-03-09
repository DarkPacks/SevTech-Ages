/*
	SevTech: Ages Extended Crafting Ender Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static recipes as IIngredient[][][IItemStack] = {
	<galacticraftcore:rocket_workbench:0>: [
		[<galacticraftcore:basic_item:9>, <pneumaticcraft:assembly_io_unit:0>, <galacticraftcore:basic_item:9>],
		[<appliedenergistics2:material:22>, <extendedcrafting:table_basic:0>, <appliedenergistics2:material:24>],
		[<galacticraftcore:basic_item:9>, <pneumaticcraft:printed_circuit_board:0>, <galacticraftcore:basic_item:9>]
	]
};
