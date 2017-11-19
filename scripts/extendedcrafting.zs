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

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone>, <minecraft:cobblestone>, 9, <extendedcrafting:material:8>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:1>, <overloaded:compressed_cobblestone>, 9, <extendedcrafting:material:8>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:2>, <overloaded:compressed_cobblestone:1>, 9, <extendedcrafting:material:8>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:3>, <overloaded:compressed_cobblestone:2>, 9, <extendedcrafting:material:8>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:4>, <overloaded:compressed_cobblestone:3>, 9, <extendedcrafting:material:8>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:5>, <overloaded:compressed_cobblestone:4>, 9, <extendedcrafting:material:8>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:6>, <overloaded:compressed_cobblestone:5>, 9, <extendedcrafting:material:8>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:7>, <overloaded:compressed_cobblestone:6>, 9, <extendedcrafting:material:8>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:8>, <overloaded:compressed_cobblestone:7>, 9, <extendedcrafting:material:11>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:9>, <overloaded:compressed_cobblestone:8>, 9, <extendedcrafting:material:11>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:10>, <overloaded:compressed_cobblestone:9>, 9, <extendedcrafting:material:11>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:11>, <overloaded:compressed_cobblestone:10>, 9, <extendedcrafting:material:11>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:12>, <overloaded:compressed_cobblestone:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:13>, <overloaded:compressed_cobblestone:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:14>, <overloaded:compressed_cobblestone:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_cobblestone:15>, <overloaded:compressed_cobblestone:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian>, <minecraft:obsidian>, 9, <extendedcrafting:material:11>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:1>, <overloaded:compressed_obsidian>, 9, <extendedcrafting:material:11>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:2>, <overloaded:compressed_obsidian:1>, 9, <extendedcrafting:material:11>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:3>, <overloaded:compressed_obsidian:2>, 9, <extendedcrafting:material:11>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:4>, <overloaded:compressed_obsidian:3>, 9, <extendedcrafting:material:11>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:5>, <overloaded:compressed_obsidian:4>, 9, <extendedcrafting:material:11>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:6>, <overloaded:compressed_obsidian:5>, 9, <extendedcrafting:material:11>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:7>, <overloaded:compressed_obsidian:6>, 9, <extendedcrafting:material:11>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:8>, <overloaded:compressed_obsidian:7>, 9, <extendedcrafting:material:12>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:9>, <overloaded:compressed_obsidian:8>, 9, <extendedcrafting:material:12>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:10>, <overloaded:compressed_obsidian:9>, 9, <extendedcrafting:material:12>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:11>, <overloaded:compressed_obsidian:10>, 9, <extendedcrafting:material:12>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:12>, <overloaded:compressed_obsidian:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:13>, <overloaded:compressed_obsidian:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:14>, <overloaded:compressed_obsidian:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_obsidian:15>, <overloaded:compressed_obsidian:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt>, <minecraft:dirt>, 9, <extendedcrafting:material:8>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:1>, <overloaded:compressed_dirt>, 9, <extendedcrafting:material:8>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:2>, <overloaded:compressed_dirt:1>, 9, <extendedcrafting:material:8>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:3>, <overloaded:compressed_dirt:2>, 9, <extendedcrafting:material:8>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:4>, <overloaded:compressed_dirt:3>, 9, <extendedcrafting:material:8>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:5>, <overloaded:compressed_dirt:4>, 9, <extendedcrafting:material:8>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:6>, <overloaded:compressed_dirt:5>, 9, <extendedcrafting:material:8>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:7>, <overloaded:compressed_dirt:6>, 9, <extendedcrafting:material:8>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:8>, <overloaded:compressed_dirt:7>, 9, <extendedcrafting:material:11>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:9>, <overloaded:compressed_dirt:8>, 9, <extendedcrafting:material:11>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:10>, <overloaded:compressed_dirt:9>, 9, <extendedcrafting:material:11>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:11>, <overloaded:compressed_dirt:10>, 9, <extendedcrafting:material:11>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:12>, <overloaded:compressed_dirt:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:13>, <overloaded:compressed_dirt:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:14>, <overloaded:compressed_dirt:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_dirt:15>, <overloaded:compressed_dirt:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel>, <minecraft:gravel>, 9, <extendedcrafting:material:8>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:1>, <overloaded:compressed_gravel>, 9, <extendedcrafting:material:8>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:2>, <overloaded:compressed_gravel:1>, 9, <extendedcrafting:material:8>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:3>, <overloaded:compressed_gravel:2>, 9, <extendedcrafting:material:8>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:4>, <overloaded:compressed_gravel:3>, 9, <extendedcrafting:material:8>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:5>, <overloaded:compressed_gravel:4>, 9, <extendedcrafting:material:8>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:6>, <overloaded:compressed_gravel:5>, 9, <extendedcrafting:material:8>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:7>, <overloaded:compressed_gravel:6>, 9, <extendedcrafting:material:8>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:8>, <overloaded:compressed_gravel:7>, 9, <extendedcrafting:material:11>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:9>, <overloaded:compressed_gravel:8>, 9, <extendedcrafting:material:11>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:10>, <overloaded:compressed_gravel:9>, 9, <extendedcrafting:material:11>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:11>, <overloaded:compressed_gravel:10>, 9, <extendedcrafting:material:11>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:12>, <overloaded:compressed_gravel:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:13>, <overloaded:compressed_gravel:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:14>, <overloaded:compressed_gravel:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_gravel:15>, <overloaded:compressed_gravel:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone>, <minecraft:stone>, 9, <extendedcrafting:material:8>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:1>, <overloaded:compressed_stone>, 9, <extendedcrafting:material:8>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:2>, <overloaded:compressed_stone:1>, 9, <extendedcrafting:material:8>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:3>, <overloaded:compressed_stone:2>, 9, <extendedcrafting:material:8>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:4>, <overloaded:compressed_stone:3>, 9, <extendedcrafting:material:8>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:5>, <overloaded:compressed_stone:4>, 9, <extendedcrafting:material:8>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:6>, <overloaded:compressed_stone:5>, 9, <extendedcrafting:material:8>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:7>, <overloaded:compressed_stone:6>, 9, <extendedcrafting:material:8>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:8>, <overloaded:compressed_stone:7>, 9, <extendedcrafting:material:11>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:9>, <overloaded:compressed_stone:8>, 9, <extendedcrafting:material:11>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:10>, <overloaded:compressed_stone:9>, 9, <extendedcrafting:material:11>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:11>, <overloaded:compressed_stone:10>, 9, <extendedcrafting:material:11>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:12>, <overloaded:compressed_stone:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:13>, <overloaded:compressed_stone:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:14>, <overloaded:compressed_stone:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_stone:15>, <overloaded:compressed_stone:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);

mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand>, <minecraft:sand>, 9, <extendedcrafting:material:8>, 1000, 200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:1>, <overloaded:compressed_sand>, 9, <extendedcrafting:material:8>, 2000, 250);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:2>, <overloaded:compressed_sand:1>, 9, <extendedcrafting:material:8>, 4000, 300);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:3>, <overloaded:compressed_sand:2>, 9, <extendedcrafting:material:8>, 8000, 400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:4>, <overloaded:compressed_sand:3>, 9, <extendedcrafting:material:8>, 16000, 500);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:5>, <overloaded:compressed_sand:4>, 9, <extendedcrafting:material:8>, 32000, 600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:6>, <overloaded:compressed_sand:5>, 9, <extendedcrafting:material:8>, 64000, 700);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:7>, <overloaded:compressed_sand:6>, 9, <extendedcrafting:material:8>, 128000, 800);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:8>, <overloaded:compressed_sand:7>, 9, <extendedcrafting:material:11>, 256000, 1000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:9>, <overloaded:compressed_sand:8>, 9, <extendedcrafting:material:11>, 512000, 1200);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:10>, <overloaded:compressed_sand:9>, 9, <extendedcrafting:material:11>, 1024000, 1400);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:11>, <overloaded:compressed_sand:10>, 9, <extendedcrafting:material:11>, 2048000, 1600);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:12>, <overloaded:compressed_sand:11>, 9, <extendedcrafting:material:13>, 4096000, 1750);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:13>, <overloaded:compressed_sand:12>, 9, <extendedcrafting:material:13>, 8192000, 1850);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:14>, <overloaded:compressed_sand:13>, 9, <extendedcrafting:material:13>, 16384000, 2000);
mods.extendedcrafting.CompressionCrafting.addRecipe(<overloaded:compressed_sand:15>, <overloaded:compressed_sand:14>, 9, <extendedcrafting:material:13>, 32768000, 2500);