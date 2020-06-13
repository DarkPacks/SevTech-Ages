/*
	SevTech: Ages Primal Tech Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;

function init() {
	/*
		Clay Kiln

		mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cooktime);
	*/
	var defaultKilnCookTime as int = 200;
	var defaultKilnCookTimeRecipes as IItemStack[][IItemStack] = {
		<betterwithmods:cooking_pot:1>: [
			<progressiontweaks:unfired_clay_bowl:0>
		],
		<ceramics:clay_barrel:0>: [
			<ceramics:clay_barrel_unfired:0>
		],
		<ceramics:clay_barrel:1>: [
			<ceramics:clay_barrel_unfired:1>
		],
		<ceramics:clay_bucket:0>: [
			<ceramics:clay_bucket_block:0>
		],
		<minecraft:brick:0>: [
			<minecraft:clay_ball:0>
		],
		<minecraft:stone:0>: [
			<minecraft:cobblestone:0>
		],
		<minecraft:stone:1>: [
			<betterwithmods:cobblestone:0>
		],
		<minecraft:stone:3>: [
			<betterwithmods:cobblestone:1>
		],
		<minecraft:stone:5>: [
			<betterwithmods:cobblestone:2>
		],
		<primal:mud_dried:0>: [
			<primal:mud_wet:0>
		],
		<primal:thatch:0>: [
			<primal:thatch_wet:0>
		],
		<primal_tech:flint_block>: [
			<minecraft:gravel:0>
		],
		<tconstruct:materials:0>: [
			<tconstruct:soil:0>
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
		[<minecraft:flint:0> * 4, <primal_tech:flint_block>],
		[<materialpart:stone:nugget>, <minecraft:stone:0>],
		[<minecraft:dye:4> * 9, <minecraft:lapis_block:0>],
		[<minecraft:redstone:0> * 9, <minecraft:redstone_block:0>],
		[<minecraft:dye:15>, <death_compass:death_compass>.withTag({})] // Death Compass -> Bone Meal
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

		TODO: Re-write this to be better and cleaner (artdude)

		mods.primaltech.WoodenBasin.addRecipe(IItemStack output, ILiquidStack inputFluid, IIngredient[] ingredients);
	*/
	var defaultWoodenBasinFluid as ILiquidStack = <liquid:water>;
	var defaultWoodenBasinRecipes as IIngredient[][][IItemStack] = {
		<actuallyadditions:item_misc:9> * 3: [
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire:0>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry:0>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock:0>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void:0>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <mekanism:salt:0>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_fire:0>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_netjry:0>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_rock:0>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <primal:salt_dust_void:0>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <mekanism:salt:0>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <primal:salt_dust_fire:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <primal:salt_dust_netjry:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <primal:salt_dust_rock:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <primal:salt_dust_void:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<betterwithaddons:japanmat:4>, <mekanism:salt:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<primal:salt_dust_fire:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<primal:salt_dust_netjry:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<primal:salt_dust_rock:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<primal:salt_dust_void:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>],
			[<mekanism:salt:0>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>, <betterwithaddons:japanmat:4>]
		],
		<betterwithaddons:japanmat:8> * 4: [
			[<betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>, <betterwithaddons:japanmat:36>]
		],
		<primal:hide_salted:0> * 3: [
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_fire:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_netjry:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_rock:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_void:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <mekanism:salt:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_fire:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_netjry:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_rock:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <primal:salt_dust_void:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:hide_raw:0>, <mekanism:salt:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:salt_dust_fire:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:salt_dust_netjry:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:salt_dust_rock:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <primal:salt_dust_void:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:hide_raw:0>, <mekanism:salt:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:salt_dust_fire:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:salt_dust_netjry:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:salt_dust_rock:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<primal:salt_dust_void:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>],
			[<mekanism:salt:0>, <primal:hide_raw:0>, <primal:hide_raw:0>, <primal:hide_raw:0>]
		],
		<primal:hide_tanned:0> * 3: [
			[<primal:hide_dried:0>, <primal:hide_dried:0>, <primal:hide_dried:0>, <primal:tannin_ground:0>],
			[<primal:hide_dried:0>, <primal:hide_dried:0>, <primal:tannin_ground:0>, <primal:hide_dried:0>],
			[<primal:hide_dried:0>, <primal:tannin_ground:0>, <primal:hide_dried:0>, <primal:hide_dried:0>],
			[<primal:tannin_ground:0>, <primal:hide_dried:0>, <primal:hide_dried:0>, <primal:hide_dried:0>]
		],
		<primal:mud_clump:0> * 4: [
			[<minecraft:dirt:0>, <minecraft:dirt:0>, <minecraft:dirt:0>, <minecraft:dirt:0>]
		],
		<primal:plant_fiber_pulp:0> * 3: [
			[<betterwithmods:material:12>, <betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:22>],
			[<betterwithmods:material:22>, <betterwithmods:material:12>, <betterwithmods:material:22>, <betterwithmods:material:22>],
			[<betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:12>, <betterwithmods:material:22>],
			[<betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:22>, <betterwithmods:material:12>]
		]
	};

	var doughRecipes = [] as IIngredient[][];
	var oreSalt = <ore:foodSalt>;
	var oreFlour = <ore:foodFlour>;

	for flour in oreFlour.items {
		for salt in oreSalt.items {
			doughRecipes += [flour, flour, flour, salt] as IIngredient[];
			doughRecipes += [flour, flour, salt, flour] as IIngredient[];
			doughRecipes += [flour, salt, flour, flour] as IIngredient[];
			doughRecipes += [salt, flour, flour, flour] as IIngredient[];
		}
	}

	defaultWoodenBasinRecipes[<horsepower:dough:0> * 3] = doughRecipes;

	for output, inputs in defaultWoodenBasinRecipes {
		for inputIngredients in inputs {
			WoodenBasin.addRecipe(output, defaultWoodenBasinFluid, inputIngredients);
		}
	}
}
