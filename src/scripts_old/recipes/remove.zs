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
	"natura:common/glass_bottle",
	"pneumaticcraft:color_drone",
	"pneumaticcraft:logistic_to_drone",
	"rustic:bottle_emptying"
];

for recipeRegex in removeRecipes {
	recipes.removeByRegex(recipeRegex);
}
