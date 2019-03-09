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

// This item does everything apparently..
<ore:dyeBlack>.remove(<primal:sinuous_resin:0>);

// Add to then be removed
<ore:dyeBrown>.add(<betterwithmods:material:5>);
<ore:dyeBlack>.add(<nex:wither_dust:0>);

// Flowers and Lapis no longer are just dye!
<ore:dye>.remove(<minecraft:dye:*>);

<ore:dyeBlack>.remove(<actuallyadditions:item_misc:17>);
<ore:dyeBlack>.remove(<minecraft:dye:0>);
<ore:dyeBlack>.remove(<nex:wither_dust:0>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<betterwithmods:material:5>);
<ore:dyeBrown>.remove(<industrialforegoing:fertilizer:0>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeCyan>.remove(<minecraft:dye:6>);
<ore:dyeGray>.remove(<minecraft:dye:8>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyeLightBlue>.remove(<minecraft:dye:12>);
<ore:dyeLightGray>.remove(<minecraft:dye:7>);
<ore:dyeLightGray>.remove(<rustic:ironberries>);
<ore:dyeLime>.remove(<minecraft:dye:10>);
<ore:dyeMagenta>.remove(<minecraft:dye:13>);
<ore:dyeOrange>.remove(<minecraft:dye:14>);
<ore:dyePink>.remove(<minecraft:dye:9>);
<ore:dyePurple>.remove(<minecraft:dye:5>);
<ore:dyePurple>.remove(<primal:sinuous_resin:0>);
<ore:dyePurple>.remove(<rustic:grapes>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeRed>.remove(<rustic:wildberries:0>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);

// Natura Dye
<ore:dyeBlue>.add(<natura:materials:8>);
<ore:dyeBlue>.remove(<natura:materials:8>);
