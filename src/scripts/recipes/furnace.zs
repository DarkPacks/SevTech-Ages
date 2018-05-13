import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var outputToRemove as IIngredient[] = [
	<abyssalcraft:friedegg>,
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_misc:5>,
	<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel>,
	<ceramics:clay_bucket>,
	<improvedbackpacks:tanned_leather>,
	<industrialforegoing:plastic>,
	<minecraft:bread>,
	<minecraft:brick>,
	<minecraft:coal:1>, //Charcoal Revamp
	<minecraft:glass>, //Glass Revamp
	<minecraft:leather>,
	<minecraft:netherbrick>,
	<minecraft:diamond>,
	<minecraft:emerald>,
	<primal:carbonate_stone>,
	<primal:diamond_plate>,
	<primal:pelt_wolf>,
	<primal:ironglass>,
	<primal:valus_bread>,

	// Extraplanets Ores
	<extraplanets:ingot_mercury>,
	<extraplanets:tier10_items:5>,
	<extraplanets:tier11_items:1>,
	<extraplanets:tier11_items:1>,
	<extraplanets:tier11_items:2>,
	<extraplanets:tier11_items:3>,
	<extraplanets:tier11_items:4>,
	<extraplanets:tier11_items:5>,
	<extraplanets:tier11_items>,
	<extraplanets:tier4_items:5>,
	<extraplanets:tier5_items:5>,
	<extraplanets:tier5_items:8>,
	<extraplanets:tier6_items:5>,
	<extraplanets:tier7_items:5>,
	<extraplanets:tier7_items:7>,
	<extraplanets:tier8_items:6>,
	<extraplanets:tier9_items:5>,
	<galacticraftcore:basic_item:3>,
	<galacticraftcore:basic_item:5>,
	<galacticraftplanets:basic_item_venus:1>
];

for item in outputToRemove {
	furnace.remove(item);
}

var recipesToAdd as IIngredient[][IItemStack] = {
	<actuallyadditions:item_misc:5>: [<actuallyadditions:item_dust:7>],
	<minecraft:bread>: [<horsepower:dough>],
	<primal:shark_meat_cooked>: [<primal:shark_meat_raw>],
	<progressiontweaks:flat_bread>: [<horsepower:flour>],
	<quark:glass_shards>: [<betterwithmods:red_sand_pile>],
	<quark:glass_shards>: [<betterwithmods:sand_pile>],
	<ore:ingotSpacePlatinum>.firstItem: [<ore:oreSpacePlatinum>],
	metals.titanium.ingot.firstItem: [<ore:oreIlmenite>, <ore:shardTitanium>]
};

for output, inputs in recipesToAdd {
	for input in inputs {
		furnace.addRecipe(output, input);
	}
}

// Remove furnace recipes by input and output.
furnace.remove(<minecraft:coal_block>, <extraplanets:kepler22b:5>);
furnace.remove(<minecraft:quartz>, <galacticraftplanets:venus:9>);
furnace.remove(<extraplanets:tier11_items:5>, <extraplanets:kepler22b:13>);
