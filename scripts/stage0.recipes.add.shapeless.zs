import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Shorthand
var ip = <ore:plateIron>;
var cp = <ore:plateCopper>;
var lp = <ore:plateLead>;
var np = <ore:plateNickel>;
var tp = <ore:plateTin>;
var sp = <ore:plateSteel>;
var gp = <ore:plateGold>;
var bp = <ore:plateBronze>;
var cgear = <ore:gearCopper>;
var tgear = <ore:gearTin>;
var bgear = <ore:gearBronze>;
var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var emerald = <minecraft:emerald>;
var redstone = <minecraft:redstone>;
var coal = <minecraft:coal>;
var charcoal = <minecraft:coal:1>;
var shears = <ore:shears>;
var clayball = <minecraft:clay_ball>;
var log = <ore:logWood>;
var flint = <minecraft:flint>;
var plank = <ore:plankWood>;
var stick = <minecraft:stick>;
var stone = <minecraft:stone>;
var bone = <minecraft:bone>;
var leather = <minecraft:leather>;
var cobblestone = <minecraft:cobblestone>;
var cordage = <ore:cordageGeneral>;
var cane = <minecraft:reeds>;
var wool = <ore:wool>;
var str = <minecraft:string>;

var shapelessRecipes = {
	<actuallyadditions:item_booklet> : [
		[<actuallyadditions:item_coffee_seed>, <minecraft:paper>]
	],
	<actuallyadditions:item_coffee_seed> : [
		[<actuallyadditions:item_coffee_beans>]
	],
	<actuallyadditions:item_rice_seed> : [
		[<actuallyadditions:item_food:16>]
	],
	<minecraft:farmland> : [
		[<minecraft:dirt>, <minecraft:dye:15>]
	],
	<minecraft:gunpowder> : [
		[<roots:fairy_dust>, <actuallyadditions:item_misc:17>, <minecraft:dye:15>]
	]
} as IIngredient[][][IItemStack];

for item in shapelessRecipes {
	var recipesForItem = shapelessRecipes[item];

	for recipe in recipesForItem {
		recipes.addShapeless(item, recipe);
	}
}
