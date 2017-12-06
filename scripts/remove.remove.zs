import crafttweaker.item.IItemStack;

//Must be item not oreDict
var removeItems = [
	<betterwithmods:aesthetic:8>,
	<carryon:tile_item>,
	<ceramics:unfired_clay>,
	<charcoalblock:charcoal_block>,
	<embers:plate_aluminum>,
	<embers:plate_bronze>,
	<embers:plate_copper>,
	<embers:plate_dawnstone>,
	<embers:plate_dawnstone>,
	<embers:plate_gold>,
	<embers:plate_iron>,
	<embers:plate_lead>,
	<embers:plate_nickel>,
	<embers:plate_silver>,
	<embers:plate_tin>,
	<extendedcrafting:material:2>,
	<extendedcrafting:material:3>,
	<extendedcrafting:material>,
	<immersiveengineering:metal:10>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:11>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:12>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:13>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:14>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:15>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:16>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:18>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:19>, //IE grit no longer made with a hammer
	<immersiveengineering:metal:30>,
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:35>,
	<immersiveengineering:metal:36>,
	<immersiveengineering:metal:37>,
	<immersiveengineering:metal:38>,
	<immersiveengineering:metal:39>,
	<immersiveengineering:metal:40>,
	<immersiveengineering:metal:9>, //IE grit no longer made with a hammer
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
