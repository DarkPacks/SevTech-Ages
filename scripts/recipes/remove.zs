import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<appliedenergistics2:material:40>,
	<appliedenergistics2:quartz_glass>,
	<betterwithaddons:decomat:3>,
	<betterwithmods:aesthetic:8>,
	<ceramics:unfired_clay>,
	<charcoalblock:charcoal_block>,
	<industrialforegoing:conveyor:3>,
	<industrialforegoing:conveyor:8>,
	<minecraft:bed:*>,
	<minecraft:book>,
	<minecraft:bucket>,
	<minecraft:coal:1>,
	<minecraft:coal>,
	<minecraft:coal_block>,
	<minecraft:diamond>,
	<minecraft:glass>,
	<minecraft:glass_pane>,
	<minecraft:leather>,
	<minecraft:water_bucket>,
	<rustic:fertile_soil>,
	<tconstruct:clear_glass>,
	<tconstruct:clear_stained_glass:*>,
	<tconstruct:soil>
];

for item in removeItems {
	recipes.remove(item);
}

var removeRecipes as string[] = [
	"betterwithaddons:glass_bottle",
	"betterwithmods:higheff/item_frame",
	"betterwithmods:decompress/melon_decompress",
	"extraplanets:chest",
	"extraplanets:chest_alt.*",
	"natura:common/glass_bottle",
	"pneumaticcraft:color_drone",
	"pneumaticcraft:logistic_to_drone",
	"rustic:bottle_emptying"
];

for recipeRegex in removeRecipes {
	recipes.removeByRegex(recipeRegex);
}
