import crafttweaker.item.IItemStack;

/*
// Extended Crafting CraftTweaker syntax
// Combination crafting
// rfPerTick is pretty much used to say how many ticks it should take to craft (rfCost/rfPerTick), might make it optional and add a configurable default for C O N V E N I E N C E
// inputStack is the item you put on the Crafting Core
// pedestalStack is one of the items you place on a pedestal to be combined with the input; you can have up to 48 of these, not sure why anyone would want that (and you probably wouldnt be able to see the ingredients in jei)
mods.extendedcrafting.CombinationCrafting.addRecipe(<outputStack>, rfCost, rfPerTick, <inputStack>, [<pedestalStack>, <pedestalStack>]);

// Table Crafting
// Shapeless - this is the same for all of them, with the size of the input deciding which table it's for, max is 81 stacks
// I most likely will make it so you can optionally set a recipe to a specific tier
mods.extendedcrafting.TableCrafting.addShapeless(<outputStack>, [<inputStack>, <inputStack>]);

// Shaped - same syntax for all of them, also note that the recipes will work in all the tables with enough slots
// Probably gonna add the ability to set a tier for these as well
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);
mods.extendedcrafting.TableCrafting.addShaped(<>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);

// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);
*/

recipes.remove(<vc:airship_ignition>);
recipes.remove(<vc:airship_engine>);
recipes.remove(<vc:airship_balloon>);

//Viescraft Airship Ignition
mods.extendedcrafting.TableCrafting.addShaped(<vc:airship_ignition>,
	[[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <minecraft:blaze_rod>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
	[<immersiveengineering:metal:39>, <minecraft:quartz>, <contenttweaker:material_part:32>, <minecraft:quartz>, <immersiveengineering:metal:39>],
	[<immersiveengineering:material:1>, <contenttweaker:material_part:32>, <stevescarts:cartmodule:0>, <contenttweaker:material_part:32>, <immersiveengineering:material:1>],
	[<immersiveengineering:metal:39>, <minecraft:quartz>, <contenttweaker:material_part:32>, <minecraft:quartz>, <immersiveengineering:metal:39>],
	[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <minecraft:blaze_rod>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>]]);

//Viescraft Ship Engine
mods.extendedcrafting.TableCrafting.addShaped(<vc:airship_engine>,
	[[<immersiveengineering:metal:38>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <immersiveengineering:metal:38>],
	[<immersiveengineering:metal:39>, <contenttweaker:material_part:47>, <contenttweaker:material_part:47>, <contenttweaker:material_part:47>, <immersiveengineering:metal:39>],
	[<immersiveengineering:metal:39>, <contenttweaker:material_part:38>, <stevescarts:cartmodule:44>, <contenttweaker:material_part:38>, <immersiveengineering:metal:39>],
	[<immersiveengineering:metal:39>, <contenttweaker:material_part:55>, <contenttweaker:material_part:55>, <contenttweaker:material_part:55>, <immersiveengineering:metal:39>],
	[<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <minecraft:redstone_block>, <immersiveengineering:metal:38>, <immersiveengineering:metal:38>]]);

//Viescraft Ship Balloon
mods.extendedcrafting.TableCrafting.addShaped(<vc:airship_balloon>,
	[[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>],
	[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
	[<betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>],
	[<minecraft:string>, <betterwithmods:material:4>, <betterwithmods:material:4>, <betterwithmods:material:4>, <minecraft:string>],
	[<betterwithmods:rope>, <minecraft:string>, <betterwithmods:material:4>, <minecraft:string>, <betterwithmods:rope>]]);



//
//
//Compression
//
//

// Compression crafting
// inputStack is the stack that gets consumed, inputCount is how much of that stack is required to make the thing
// catalystStack is the recipe identifier item, does not get consumed (might make it possible to be though)
// rfCost is how much RF is needed to convert the input into the output once the correct inputCount is met
// Currently the compressor runs at 500rf a tick and I need to make it changeable on a per recipe basis still
//mods.extendedcrafting.CompressionCrafting.addRecipe(<outputStack>, <inputStack>, inputCount, <catalystStack>, rfCost);

// [<firstOutput>, <firstInput>]
var compressionCraftingPairs = [
  [<overloaded:compressed_cobblestone>, <minecraft:cobblestone>],
  [<overloaded:compressed_obsidian>, <minecraft:obsidian>],
  [<overloaded:compressed_dirt>, <minecraft:dirt>],
  [<overloaded:compressed_gravel>, <minecraft:gravel>],
  [<overloaded:compressed_stone>, <minecraft:stone>],
  [<overloaded:compressed_sand>, <minecraft:sand>]
] as IItemStack[][];

var rfRates = [
	200,
	250,
	300,
	400,
	500,
	600,
	700,
	800,
	1000,
	1200,
	1400,
	1600,
	1750,
	1850,
	2000,
	2500
] as int[];

for pair in compressionCraftingPairs {
  for i in 0 to 15 {
		var output = pair[0].definition.makeStack(i);
		var input = pair[1];
	  var obsidian = <overloaded:compressed_obsidian>.definition.makeStack(i); // For no better solution to match obsidian.

		//Calculate RF Cost
		var baseCost = (pow(2, i) * 1000) as int;

		if (i != 0) {
			//If not the initial/standard block to 1x
      input = pair[0].definition.makeStack(i - 1);
    }

		//Default catalyst
		var catalystMeta = 8;

		//Set catalystMeta based on criteria
	  if (i <= 7) {
	    if (output.matches(obsidian)) {
				catalystMeta = 11;
	    }
	  } else if (i <= 11) {
			catalystMeta = output.matches(obsidian) ? 12 : 11;
	  } else {
			catalystMeta = 13;
	  }

		//Now that we have the meta wanted for the catalyst, create the item
		var catalyst = <extendedcrafting:material>.definition.makeStack(catalystMeta);

		//Add compression crafting recipe to compress
		mods.extendedcrafting.CompressionCrafting.addRecipe(output, input, 9, catalyst, baseCost, rfRates[i]);

	  //Add standard crafting recipe to decompress
	  recipes.addShapeless(input * 9, [output]);
  }
}
