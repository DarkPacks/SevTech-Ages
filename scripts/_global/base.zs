#priority 751

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;

global bone as IItemStack = <minecraft:bone>;
global cane as IItemStack = <minecraft:reeds>;
global charcoal as IItemStack = <minecraft:coal:1>;
global clayball as IItemStack = <minecraft:clay_ball>;
global coal as IItemStack = <minecraft:coal>;
global cobblestone as IItemStack = <minecraft:cobblestone>;
global cordage as IOreDictEntry = <ore:cordageGeneral>;
global diamond as IItemStack = <minecraft:diamond>;
global emerald as IItemStack = <minecraft:emerald>;
global flint as IItemStack = <minecraft:flint>;
global leather as IItemStack = <minecraft:leather>;
global log as IOreDictEntry = <ore:logWood>;
global plank as IOreDictEntry = <ore:plankWood>;
global plastic as IItemStack = <industrialforegoing:plastic>;
global redstone as IItemStack = <minecraft:redstone>;
global shears as IOreDictEntry = <ore:shears>;
global slag as IItemStack = <ore:itemSlag>.firstItem;
global stick as IItemStack = <ore:stickWood>.firstItem;
global stone as IItemStack = <minecraft:stone>;
global str as IItemStack = <minecraft:string>;
global wool as IOreDictEntry = <ore:wool>;

//The filled bucket "main" item
global buckets as IItemStack[] = [
	<ceramics:clay_bucket>,
	<forge:bucketfilled>,
	<thebetweenlands:bl_bucket:1>,
	<thebetweenlands:bl_bucket>
];

//AE Cores
global aeCores as IItemStack[string] = {
	annihilation: <appliedenergistics2:material:44>,
	formation: <appliedenergistics2:material:43>
};

//Adding globals to be used in place of oredict entries for Better with Mods Siding, Moulding, and Corners
global sidingWood as IIngredient = MiniBlocks.getMiniBlock("siding", <ore:plankWood>);
global mouldingWood as IIngredient = MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
global cornerWood as IIngredient = MiniBlocks.getMiniBlock("corner", <ore:plankWood>);
