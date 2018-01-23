import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
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
];

for item in removeItems {
	recipes.remove(item);
}
