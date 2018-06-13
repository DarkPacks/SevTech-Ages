import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;

/*
	Clay Kiln

	mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cooktime);
*/
var defaultKilnCookTime as int = 200;
var defaultKilnCookTimeRecipes as IItemStack[][IItemStack] = {
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
	],
	<ceramics:unfired_clay:5>: [
		<ceramics:unfired_clay:4>
	]
};

for output, inputs in defaultKilnCookTimeRecipes {
	for input in inputs {
		ClayKiln.addRecipe(output, input, defaultKilnCookTime);
	}
}

//Add all logs to kiln to make low grade charcoal
for log in <ore:logWood>.items {
	ClayKiln.addRecipe(<primal_tech:charcoal_block>, log, defaultKilnCookTime);
}

/*
	Stone Anvil

	mods.primaltech.StoneAnvil.addRecipe(Itemstack output, IIngredient input);
*/
//[output, input]
var stoneAnvilPair as IItemStack[][] = [
	[<minecraft:flint> * 4, <primal_tech:flint_block>],
	[<materialpart:stone:nugget>, stone],
	[<minecraft:dye:4> * 9, <minecraft:lapis_block>],
	[<minecraft:redstone> * 9, <minecraft:redstone_block>]
];

for pair in stoneAnvilPair {
	StoneAnvil.addRecipe(pair[0], pair[1]);
}

/*
	Water Powered Saw

	mods.primaltech.WaterSaw.addRecipe(IItemStack output, IIngredient input, int chopTime);
*/
/*
var defaultWaterSawChopTime as int = 80;
var defaultWaterSawChopTimeRecipes as IItemStack[][] = [
];

for pair in defaultWaterSawChopTimeRecipes {
	WaterSaw.addRecipe(pair[0], pair[1], defaultWaterSawChopTime);
}
*/

/*
	Wooden Basin

	mods.primaltech.WoodenBasin.addRecipe(IItemStack output, ILiquidStack inputFluid, IIngredient[] ingredients);
*/
var defaultWoodenBasinFluid as ILiquidStack = <liquid:water>;
var defaultWoodenBasinRecipes as IIngredient[][][IItemStack] = {
	<actuallyadditions:item_misc:9> * 3: [
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <mekanism:salt>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <mekanism:salt>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_fire>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_rock>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <primal:salt_dust_void>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<betterwithaddons:japanmat:4>, <mekanism:salt>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_fire>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_netjry>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_rock>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<primal:salt_dust_void>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
		[<mekanism:salt>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>]
	],
	<betterwithaddons:japanmat:8> * 4: [
		[<betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>]
	],
	<primal:hide_salted> * 3: [
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_fire>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_netjry>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_rock>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_void>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>, <mekanism:salt>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_fire>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_netjry>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_rock>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <primal:salt_dust_void>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:hide_raw>, <mekanism:salt>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_fire>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_netjry>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_rock>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <primal:salt_dust_void>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:hide_raw>, <mekanism:salt>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_fire>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_netjry>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_rock>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<primal:salt_dust_void>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>],
		[<mekanism:salt>, <primal:hide_raw>, <primal:hide_raw>, <primal:hide_raw>]
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
};

// Custom / Additional Flour which needs processing but we do not want to effect the ore dictionary.
var flourItems = [
	<natura:materials:1>
] as IIngredient[];

// Fill the flour items from the ore dictionary.
for flour in <ore:foodFlour>.items {
     flourItems += flour;
}

var doughRecipes = [] as IIngredient[][];
var oreSalt = <ore:foodSalt>;

for flour in flourItems {
	for salt in oreSalt.items {
		doughRecipes += [flour, flour, flour, salt] as IIngredient[];
		doughRecipes += [flour, flour, salt, flour] as IIngredient[];
		doughRecipes += [flour, salt, flour, flour] as IIngredient[];
		doughRecipes += [salt, flour, flour, flour] as IIngredient[];
	}
}

defaultWoodenBasinRecipes[<horsepower:dough> * 3] = doughRecipes;

for output, inputs in defaultWoodenBasinRecipes {
	for inputIngredients in inputs {
		WoodenBasin.addRecipe(output, defaultWoodenBasinFluid, inputIngredients);
	}
}
