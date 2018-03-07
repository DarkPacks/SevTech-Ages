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
	<primal:carbonate_stone>
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
