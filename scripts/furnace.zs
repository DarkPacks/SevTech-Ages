import crafttweaker.item.IItemStack;

var outputToRemove = [
	<abyssalcraft:copperingot>,
	<abyssalcraft:tiningot>,
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_misc:5>,

	//Ceramics
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel>,
	<ceramics:clay_bucket>,
	<embers:ingot_tin>,
	<embers:plate_caminite>,
	<immersiveengineering:metal>,
	<improvedbackpacks:tanned_leather>,//TODO: Needed here as well? JEI Removed and Hidden
	<minecraft:bread>,
	<minecraft:brick>,

	//Charcoal Revamp
	<minecraft:coal:1>,

	//Glass Revamp
	<minecraft:glass>,
	<minecraft:gold_ingot>,
	<minecraft:gold_nugget>,
	<minecraft:iron_ingot>,
	<minecraft:iron_nugget>,
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
] as IItemstack[][];

for items in recipesToAdd {
	furnace.addRecipe(items[0], items[1]);
}

//furnace.remove(<exsartagine:breadfine>);
//furnace.remove(<rockhounding_oretiers:tiers_items:5>);
//furnace.addRecipe(<rockhounding_oretiers:tiers_items:4> ,<ore:logWood>);
