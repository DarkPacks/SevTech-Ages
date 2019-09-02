#priority 4100

/*
	SevTech: Ages Global Base Script

	This script is for creating globals to be referenced in other scripts. Should ONLY contain
	useful globals nothing like cobblestone or sticks *cough* Darkosto >.<

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;

// Variables for Better with Mods miniBlock siding
global sidingHardenedclay as IIngredient = MiniBlocks.getMiniBlock("siding", <ore:blockStainedHardenedClay>);
global mouldingHardenedclay as IIngredient = MiniBlocks.getMiniBlock("moulding", <ore:blockStainedHardenedClay>);
global cornerHardenedclay as IIngredient = MiniBlocks.getMiniBlock("corner", <ore:blockStainedHardenedClay>);
global sidingSandstone as IIngredient = MiniBlocks.getMiniBlock("siding", <ore:sandstone>);
global mouldingSandstone as IIngredient = MiniBlocks.getMiniBlock("moulding", <ore:sandstone>);
global cornerSandstone as IIngredient = MiniBlocks.getMiniBlock("corner", <ore:sandstone>);
global sidingWood as IIngredient = MiniBlocks.getMiniBlock("siding", <ore:plankWood>);
global mouldingWood as IIngredient = MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
global cornerWood as IIngredient = MiniBlocks.getMiniBlock("corner", <ore:plankWood>);
global sidingAcacia as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:4>);
global sidingBirch as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:2>);
global sidingDarkoak as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:5>);
global sidingJungle as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:3>);
global sidingOak as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:0>);
global sidingSpruce as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:1>);

// The filled bucket "main" item
global buckets as IItemStack[] = [
	<ceramics:clay_bucket:0>,
	<forge:bucketfilled:0>,
	<thebetweenlands:bl_bucket:1>,
	<thebetweenlands:bl_bucket:0>
];

global tanks as IItemStack[] = [
	<immersiveengineering:jerrycan:0>
];

// Minecraft Dye Id table (Kinda says what it's used for Kappa)
global minecraftDyeIdTable as string[int] = {
	0: "black",
	1: "red",
	2: "green",
	3: "brown",
	4: "blue",
	5: "purple",
	6: "cyan",
	7: "lightGray",
	8: "gray",
	9: "pink",
	10: "lime",
	11: "yellow",
	12: "lightBlue",
	13: "magenta",
	14: "orange",
	15: "white"
};

global minecraftDyeIdTableAlternate as string[int] = {
	0: "black",
	1: "red",
	2: "green",
	3: "brown",
	4: "blue",
	5: "purple",
	6: "cyan",
	7: "silver",
	8: "gray",
	9: "pink",
	10: "lime",
	11: "yellow",
	12: "lightBlue",
	13: "magenta",
	14: "orange",
	15: "white"
};

// Array listing containing all the Vanilla Dyes.
global minecraftDyes as IItemStack[] = [
	<minecraft:dye:1>,
	<minecraft:dye:2>,
	<minecraft:dye:3>,
	<minecraft:dye:5>,
	<minecraft:dye:6>,
	<minecraft:dye:7>,
	<minecraft:dye:8>,
	<minecraft:dye:9>,
	<minecraft:dye:10>,
	<minecraft:dye:11>,
	<minecraft:dye:12>,
	<minecraft:dye:13>,
	<minecraft:dye:14>,
	<minecraft:dye:15>,
	<minecraft:dye:0>
];

// Parachute Dye Id table. Because they need to be special and use their own order...
global parachuteDyeIdTable as string[int] = {
	0: "white",
	1: "black",
	2: "lightBlue",
	3: "lime",
	4: "brown",
	5: "blue",
	6: "gray",
	7: "green",
	8: "lightGray",
	9: "magenta",
	10: "orange",
	11: "pink",
	12: "purple",
	13: "red",
	14: "cyan",
	15: "yellow"
};
