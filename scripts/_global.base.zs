//Make this script top execution priority
#priority 851

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

global STAGES as string[string] = {
	tutorial : "tutorial",
	zero: : "zero",
	zeroMob : "zero_mob",
	one : "one",
	oneMob : "one_mob",
	two : "two",
	twoMob : "two_mob",
	three : "three",
	threeMob : "three_mob",
	four : "four",
	fourMob : "four_mob",
	five : "five",
	fiveMob : "five_mob"
};

global defaultArmorDropChance as double = 0.15;

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
global stick as IItemStack = <minecraft:stick>;
global stone as IItemStack = <minecraft:stone>;
global str as IItemStack = <minecraft:string>;
global wool as IOreDictEntry = <ore:wool>;
