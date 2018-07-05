#priority 3500

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
global sidingOak as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks>);
global sidingSpruce as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:1>);

//The filled bucket "main" item
global buckets as IItemStack[] = [
	<ceramics:clay_bucket>,
	<forge:bucketfilled>,
	<thebetweenlands:bl_bucket:1>,
	<thebetweenlands:bl_bucket>
];
