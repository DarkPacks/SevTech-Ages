import crafttweaker.item.IItemStack;

//Must be item not oreDict
var removeItems = [
	<betterwithmods:aesthetic:8>,
	<ceramics:unfired_clay>,
	<charcoalblock:charcoal_block>,
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
	<minecraft:stick>,
	<minecraft:water_bucket>,
	<roots:herblore_book>,
	<roots:spellcraft_book>,
	<rustic:fertile_soil>,
	<tconstruct:soil>

	//<minecraft:bookshelf>,
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
