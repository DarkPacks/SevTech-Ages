import crafttweaker.item.IItemStack;

var outputToRemove = [
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_misc:5>,

	//Ceramics
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel>,
	<ceramics:clay_bucket>,

	<embers:plate_caminite>,
	<improvedbackpacks:tanned_leather>,//TODO: Needed here as well? JEI Removed and Hidden
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:coal:1>, //Charcoal Revamp
	<minecraft:glass>, //Glass Revamp
	<minecraft:leather>,
	<minecraft:netherbrick>,
	<primal:carbonate_stone>
] as IItemStack[];

for item in outputToRemove {
	furnace.remove(item);
}

var recipesToAdd = [
	[<actuallyadditions:item_misc:5> ,<actuallyadditions:item_dust:7>],
	[<minecraft:bread>, <horsepower:dough>],
	[<primal:shark_meat_cooked>, <primal:shark_meat_raw>],
	[<progressiontweaks:flat_bread>, <horsepower:flour>],
	[<quark:glass_shards>, <betterwithmods:red_sand_pile>],
	[<quark:glass_shards>, <betterwithmods:sand_pile>]
] as IItemStack[][];

for items in recipesToAdd {
	furnace.addRecipe(items[0], items[1]);
}

//furnace.remove(<exsartagine:breadfine>);
//furnace.remove(<rockhounding_oretiers:tiers_items:5>);
//furnace.addRecipe(<rockhounding_oretiers:tiers_items:4>, log);
