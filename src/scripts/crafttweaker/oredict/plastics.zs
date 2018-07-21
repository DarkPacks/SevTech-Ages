#priority 2600

/*
	SevTech: Ages OreDict Plactic Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

/*
	Plastics
*/
var coloredPlastics as IItemStack[string] = {
	black: <pneumaticcraft:plastic:0>,
	red: <pneumaticcraft:plastic:1>,
	green: <pneumaticcraft:plastic:2>,
	brown: <pneumaticcraft:plastic:3>,
	blue: <pneumaticcraft:plastic:4>,
	purple: <pneumaticcraft:plastic:5>,
	cryan: <pneumaticcraft:plastic:6>,
	lightGray: <pneumaticcraft:plastic:7>,
	gray: <pneumaticcraft:plastic:8>,
	pink: <pneumaticcraft:plastic:9>,
	lime: <pneumaticcraft:plastic:10>,
	yellow: <pneumaticcraft:plastic:11>,
	lightBlue: <pneumaticcraft:plastic:12>,
	magenta: <pneumaticcraft:plastic:13>,
	orange: <pneumaticcraft:plastic:14>,
	white: <pneumaticcraft:plastic:15>
};

for color, plastic in coloredPlastics {
	oreDict.get("plastic" + color).remove(plastic);

	<ore:plasticColored>.add(plastic);
	oreDict.get("plasticColored" + color).add(plastic);
}
