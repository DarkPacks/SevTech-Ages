#priority 2501

/*
	SevTech: Ages Post Unifiy Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;

var allDyes as IIngredient =
	<ore:dyeWhite> |
	<ore:dyeOrange> |
	<ore:dyeMagenta> |
	<ore:dyeLightBlue> |
	<ore:dyeYellow> |
	<ore:dyeLime> |
	<ore:dyePink> |
	<ore:dyeGray> |
	<ore:dyeLightGray> |
	<ore:dyeCyan> |
	<ore:dyePurple> |
	<ore:dyeBlue> |
	<ore:dyeBrown> |
	<ore:dyeGreen> |
	<ore:dyeRed> |
	<ore:dyeBlack>;

for dyeItem in allDyes.items {
	<ore:dye>.add(dyeItem);
}
