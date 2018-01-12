import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*
	mods.primaltech.StoneAnvil.addRecipe(Itemstack output, IIngredient input);
	mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cooktime);
	mods.primaltech.WaterSaw.addRecipe(IItemStack output, IIngredient input, int chopTime);
	mods.primaltech.WoodenBasin.addRecipe(IItemStack output, ILiquidStack inputFluid, IIngredient[] ingredients);
*/

/*
	Clay Kiln
*/
var defaultKilnCookTime as int = 200;
var defaultKilnCookTimeRecipes = {
	<betterwithmods:cooking_pot:1>: [
		<progressiontweaks:unfired_clay_bowl>
	],
	<ceramics:clay_barrel>: [
		<ceramics:clay_barrel_unfired>
	],
	<ceramics:clay_barrel:1>: [
		<ceramics:clay_barrel_unfired:1>
	],
	<ceramics:clay_bucket>: [
		<ceramics:clay_bucket_block>
	],
	<minecraft:brick>: [
		<minecraft:clay_ball>
	],
	<minecraft:stone>: [
		<minecraft:cobblestone>
	],
	<minecraft:stone:1>: [
		<betterwithmods:cobblestone>
	],
	<minecraft:stone:3>: [
		<betterwithmods:cobblestone:1>
	],
	<minecraft:stone:5>: [
		<betterwithmods:cobblestone:2>
	],
	<primal:mud_dried>: [
		<primal:mud_wet>
	],
	<primal:thatch>: [
		<primal:thatch_wet>
	],
	<primal_tech:flint_block>: [
		<minecraft:gravel>
	],
	<tconstruct:materials>: [
		<tconstruct:soil>
	]
} as IItemStack[][IItemStack];

for output, inputs in defaultKilnCookTimeRecipes {
	for input in inputs {
		mods.primaltech.ClayKiln.addRecipe(output, input, defaultKilnCookTime);
	}
}

//Add all logs to kiln to make low grade charcoal
for log in <ore:logWood>.items {
	mods.primaltech.ClayKiln.addRecipe(<primal_tech:charcoal_block>, log, defaultKilnCookTime);
}

/*
	Stone Anvil
*/
var stoneAnvilPair = [
	[<embers:plate_caminite>, <embers:brick_caminite>],
	[<minecraft:flint> * 4, <primal_tech:flint_block>],
	[<materialpart:stone:nugget>, stone]
] as IItemStack[][];

for pair in stoneAnvilPair {
	mods.primaltech.StoneAnvil.addRecipe(pair[0], pair[1]);
}

/*
	Water Powered Saw
*/
var defaultWaterSawChopTime as int = 80;
var defaultWaterSawChopTimeRecipes = [
	[<minecraft:planks> * 4, <minecraft:log>],
	[<minecraft:planks:1> * 4, <minecraft:log:1>],
	[<minecraft:planks:2> * 4, <minecraft:log:2>],
	[<minecraft:planks:3> * 4, <minecraft:log:3>],
	[<minecraft:planks:4> * 4, <minecraft:log2>],
	[<minecraft:planks:5> * 4, <minecraft:log2:1>]
] as IItemStack[][];

for pair in defaultWaterSawChopTimeRecipes {
	mods.primaltech.WaterSaw.addRecipe(pair[0], pair[1], defaultWaterSawChopTime);
}

/*
	Wooden Basin
	# output, input syntax is: modName:itemName,metaData,outputAmount#fluidName#modName:itemName,metaData (up to 4 input Items seperated with commas
*/

var defaultWoodenBasinFluid as ILiquidStack = <liquid:water>;
var defaultWoodenBasinRecipes = {
	<actuallyadditions:item_misc:9> * 3: [
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_fire>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_rock>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_void>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_fire>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_rock>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_void>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>]
	],
	<betterwithaddons:japanmat:8> * 4: [
		[<betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>]
	],
	<horsepower:dough> * 3: [
		[<horsepower:flour>, <horsepower:flour>, <horsepower:flour>, <primal:salt_dust_fire>],
		[<horsepower:flour>, <horsepower:flour>, <horsepower:flour>, <primal:salt_dust_netjry>],
		[<horsepower:flour>, <horsepower:flour>, <horsepower:flour>, <primal:salt_dust_rock>],
		[<horsepower:flour>, <horsepower:flour>, <horsepower:flour>, <primal:salt_dust_void>],
		[<horsepower:flour>, <horsepower:flour>, <primal:salt_dust_fire>, <horsepower:flour>],
		[<horsepower:flour>, <horsepower:flour>, <primal:salt_dust_netjry>, <horsepower:flour>],
		[<horsepower:flour>, <horsepower:flour>, <primal:salt_dust_rock>, <horsepower:flour>],
		[<horsepower:flour>, <horsepower:flour>, <primal:salt_dust_void>, <horsepower:flour>],
		[<horsepower:flour>, <primal:salt_dust_fire>, <horsepower:flour>, <horsepower:flour>],
		[<horsepower:flour>, <primal:salt_dust_netjry>, <horsepower:flour>, <horsepower:flour>],
		[<horsepower:flour>, <primal:salt_dust_rock>, <horsepower:flour>, <horsepower:flour>],
		[<horsepower:flour>, <primal:salt_dust_void>, <horsepower:flour>, <horsepower:flour>],
		[<primal:salt_dust_fire>, <horsepower:flour>, <horsepower:flour>, <horsepower:flour>],
		[<primal:salt_dust_netjry>, <horsepower:flour>, <horsepower:flour>, <horsepower:flour>],
		[<primal:salt_dust_rock>, <horsepower:flour>, <horsepower:flour>, <horsepower:flour>],
		[<primal:salt_dust_void>, <horsepower:flour>, <horsepower:flour>, <horsepower:flour>]
	],
	<primal:hide_salted> * 3: [
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_fire>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_netjry>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_rock>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_void>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_fire>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_netjry>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_rock>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_void>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_fire>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_netjry>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_rock>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_void>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_fire>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_netjry>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_rock>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_void>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>]
	],
	<primal:hide_tanned> * 3: [
		[<primal:hide_dried>, <primal:hide_dried>, <primal:hide_dried>, <primal:tannin_ground>],
		[<primal:hide_dried>, <primal:hide_dried>, <primal:tannin_ground>, <primal:hide_dried>],
		[<primal:hide_dried>, <primal:tannin_ground>, <primal:hide_dried>, <primal:hide_dried>],
		[<primal:tannin_ground>, <primal:hide_dried>, <primal:hide_dried>, <primal:hide_dried>]
	],
	<primal:mud_clump> * 4: [
		[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]
	],
	<primal:plant_fiber_pulp> * 3: [
		[<betterwithmods:material:12>, <betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:22>],
		[<betterwithmods:material:22>, <betterwithmods:material:12>, <betterwithmods:material:22>, <betterwithmods:material:22>],
		[<betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:12>, <betterwithmods:material:22>],
		[<betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:12>]
	]
} as IIngredient[][][IItemStack];

for output, inputs in defaultWoodenBasinRecipes {
	for inputIngredients in inputs {
		mods.primaltech.WoodenBasin.addRecipe(output, defaultWoodenBasinFluid, inputIngredients);
	}
}
