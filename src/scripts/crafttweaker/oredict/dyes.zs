#priority 2600

/*
	SevTech: Ages OreDict Dye Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

/*
	Remove oredicts on dyes
*/
for i in 0 to 16 {
	var artificialDye as IItemStack = <industrialforegoing:artificial_dye>.definition.makeStack(i);

	for oreDictEntry in artificialDye.ores {
		oreDictEntry.remove(artificialDye);
	}
}

// This item does everything apparently..
<ore:dyeBlack>.remove(<primal:sinuous_resin>);

// Add to then be removed
<ore:dyeBrown>.add(<betterwithmods:material:5>);
<ore:dyeBlack>.add(<nex:item_dust_wither>);

// Flowers and Lapis no longer are just dye!
<ore:dye>.remove(<minecraft:dye:*>);

<ore:dyeBlack>.remove(<actuallyadditions:item_misc:17>);
<ore:dyeBlack>.remove(<minecraft:dye>);
<ore:dyeBlack>.remove(<nex:item_dust_wither>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<betterwithmods:material:5>);
<ore:dyeBrown>.remove(<industrialforegoing:fertilizer>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBrown>.remove(<primal:earthwax_clump>);
<ore:dyeCyan>.remove(<minecraft:dye:6>);
<ore:dyeGray>.remove(<minecraft:dye:8>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyeLightBlue>.remove(<minecraft:dye:12>);
<ore:dyeLightGray>.remove(<minecraft:dye:7>);
<ore:dyeLime>.remove(<minecraft:dye:10>);
<ore:dyeMagenta>.remove(<minecraft:dye:13>);
<ore:dyeOrange>.remove(<minecraft:dye:14>);
<ore:dyePink>.remove(<minecraft:dye:9>);
<ore:dyePurple>.remove(<minecraft:dye:5>);
<ore:dyePurple>.remove(<primal:sinuous_resin>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeRed>.remove(<rustic:wildberries>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);

// Natura Dye
<ore:dyeBlue>.add(<natura:materials:8>);
<ore:dyeBlue>.remove(<natura:materials:8>);
