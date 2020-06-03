#priority 4100

import crafttweaker.item.IIngredient;

//Metal unification
/*
	METAL_TYPE: {
		block: ITEM_STACK,
		dust: ITEM_STACK,
		gear: ITEM_STACK,
		ingot: ITEM_STACK,
		liquid: <liquid:lava>,
		nugget: ITEM_STACK,
		plate: ITEM_STACK,
		rod: ITEM_STACK
	}
*/
global metalItems as IIngredient[string][string] = {
	abyssalnite: {
		block: <abyssalcraft:ingotblock:0>,
		dust: <acintegration:dust:0>,
		gear: null,
		ingot: <abyssalcraft:abyingot:0>,
		liquid: <liquid:moltenabyssalnite>,
		nugget: <abyssalcraft:ingotnugget:0>,
		plate: null,
		rod: null
	},
	aluminum: {
		block: <immersiveengineering:storage:1>,
		dust: <immersiveengineering:metal:10>,
		gear: null,
		ingot: <immersiveengineering:metal:1>,
		liquid: <liquid:aluminum>,
		nugget: null,
		plate: <immersiveengineering:metal:31>,
		rod: <immersiveengineering:material:3>
	},
	aluminumBrass: {
		block: <tconstruct:metal:5>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:5>,
		liquid: <liquid:alubrass>,
		nugget: <tconstruct:nuggets:5>,
		plate: null,
		rod: null
	},
	ardite: {
		block: <tconstruct:metal:1>,
		dust: <materialpart:ardite:dust>,
		gear: null,
		ingot: <tconstruct:ingots:1>,
		liquid: <liquid:ardite>,
		nugget: <tconstruct:nuggets:1>,
		plate: null,
		rod: null
	},
	blackIron: {
		block: <extendedcrafting:storage:0>,
		dust: null,
		gear: null,
		ingot: <extendedcrafting:material:0>,
		liquid: null,
		nugget: null,
		plate: <extendedcrafting:material:2>,
		rod: <extendedcrafting:material:3>
	},
	bronze: {
		block: <mekanism:basicblock:1>,
		dust: null,
		gear: <materialpart:bronze:gear>,
		ingot: <mekanism:ingot:2>,
		liquid: <liquid:bronze>,
		nugget: null,
		plate: <materialpart:bronze:plate>,
		rod: <materialpart:bronze:rod>
	},
	cobalt: {
		block: <tconstruct:metal:0>,
		dust: <materialpart:cobalt:dust>,
		gear: <materialpart:cobalt:gear>,
		ingot: <tconstruct:ingots:0>,
		liquid: <liquid:cobalt>,
		nugget: <tconstruct:nuggets:0>,
		plate: <materialpart:cobalt:plate>,
		rod: <materialpart:cobalt:rod>
	},
	compressedIron: {
		block: <pneumaticcraft:compressed_iron_block:0>,
		dust: null,
		gear: <materialpart:compressed_iron:gear>,
		ingot: <pneumaticcraft:ingot_iron_compressed:0>,
		liquid: null,
		nugget: null,
		plate: <materialpart:compressed_iron:plate>,
		rod: <materialpart:compressed_iron:rod>
	},
	constantan: {
		block: <immersiveengineering:storage:6>,
		dust: <immersiveengineering:metal:15>,
		gear: null,
		ingot: <immersiveengineering:metal:6>,
		liquid: <liquid:constantan>,
		nugget: <immersiveengineering:metal:26>,
		plate: <immersiveengineering:metal:36>,
		rod: null
	},
	copper: {
		block: <immersiveengineering:storage:0>,
		clump: <mekanism:clump:3>,
		crystal: <mekanism:crystal:3>,
		dirtyDust: <mekanism:dirtydust:3>,
		dust: <immersiveengineering:metal:9>,
		gear: <materialpart:copper:gear>,
		ingot: <immersiveengineering:metal:0>,
		liquid: <liquid:copper>,
		nugget: null,
		plate: <immersiveengineering:metal:30>,
		rod: <materialpart:copper:rod>,
		shard: <mekanism:shard:3>
	},
	dreadium: {
		block: <abyssalcraft:ingotblock:2>,
		dust: <acintegration:dust:2>,
		gear: null,
		ingot: <abyssalcraft:dreadiumingot:0>,
		liquid: <liquid:moltendreadium>,
		nugget: <abyssalcraft:ingotnugget:2>,
		plate: null,
		rod: null
	},
	electrum: {
		block: <immersiveengineering:storage:7>,
		dust: <immersiveengineering:metal:16>,
		gear: null,
		ingot: <immersiveengineering:metal:7>,
		liquid: <liquid:electrum>,
		nugget: <immersiveengineering:metal:27>,
		plate: <immersiveengineering:metal:37>,
		rod: null
	},
	enhancedGalgadorian: {
		block: <stevescarts:blockmetalstorage:2>,
		dust: null,
		gear: <materialpart:enhanced_galgadorian:gear>,
		ingot: <stevescarts:modulecomponents:49>,
		liquid: <liquid:enhanced_galgadorian>,
		nugget: null,
		plate: <materialpart:enhanced_galgadorian:plate>,
		rod: <materialpart:enhanced_galgadorian:rod>
	},
	ethaxium: {
		block: <abyssalcraft:ingotblock:3>,
		dust: null,
		gear: null,
		ingot: <abyssalcraft:ethaxiumingot:0>,
		liquid: null,
		nugget: <abyssalcraft:ingotnugget:3>,
		plate: null,
		rod: null
	},
	fiery: {
		block: <twilightforest:block_storage:1>,
		dust: null,
		gear: <materialpart:fiery:gear>,
		ingot: <twilightforest:fiery_ingot:0>,
		liquid: <liquid:fierymetal>,
		nugget: null,
		plate: <materialpart:fiery:plate>,
		rod: <materialpart:fiery:rod>
	},
	galgadorian: {
		block: <stevescarts:blockmetalstorage:1>,
		dust: null,
		gear: <materialpart:galgadorian:gear>,
		ingot: <stevescarts:modulecomponents:47>,
		liquid: <liquid:galgadorian>,
		nugget: null,
		plate: <materialpart:galgadorian:plate>,
		rod: <materialpart:galgadorian:rod>
	},
	gold: {
		block: <minecraft:gold_block:0>,
		clump: <mekanism:clump:1>,
		crystal: <mekanism:crystal:1>,
		dirtyDust: <mekanism:dirtydust:1>,
		dust: <immersiveengineering:metal:19>,
		gear: <materialpart:gold:gear>,
		ingot: <minecraft:gold_ingot:0>,
		liquid: <liquid:gold>,
		nugget: <minecraft:gold_nugget:0>,
		plate: <immersiveengineering:metal:40>,
		rod: <primal:golden_stick:0>,
		shard: <mekanism:shard:1>
	},
	invar: {
		block: <materialpart:invar:block>,
		dust: null,
		gear: <materialpart:invar:gear>,
		ingot: <materialpart:invar:ingot>,
		liquid: <liquid:invar>,
		nugget: null,
		plate: <materialpart:invar:plate>,
		rod: <materialpart:invar:rod>,
	},
	iron: {
		block: <minecraft:iron_block:0>,
		clump: <mekanism:clump:0>,
		crystal: <mekanism:crystal:0>,
		dirtyDust: <mekanism:dirtydust:0>,
		dust: <immersiveengineering:metal:18>,
		gear: <materialpart:iron:gear>,
		ingot: <minecraft:iron_ingot:0>,
		liquid: <liquid:iron>,
		nugget: <minecraft:iron_nugget:0>,
		plate: <immersiveengineering:metal:39>,
		rod: <immersiveengineering:material:1>,
		shard: <mekanism:shard:0>
	},
	knightslime: {
		block: <tconstruct:metal:3>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:3>,
		liquid: <liquid:knightslime>,
		nugget: null,
		plate: null,
		rod: null
	},
	lead: {
		block: <immersiveengineering:storage:2>,
		clump: <mekanism:clump:6>,
		crystal: <mekanism:crystal:6>,
		dirtyDust: <mekanism:dirtydust:6>,
		dust: <immersiveengineering:metal:11>,
		gear: <materialpart:lead:gear>,
		ingot: <immersiveengineering:metal:2>,
		liquid: <liquid:lead>,
		nugget: <immersiveengineering:metal:22>,
		plate: <immersiveengineering:metal:32>,
		rod: <materialpart:lead:rod>,
		shard: <mekanism:shard:6>
	},
	manyullyn: {
		block: <tconstruct:metal:2>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:2>,
		liquid: <liquid:manyullyn>,
		nugget: <tconstruct:nuggets:2>,
		plate: null,
		rod: null
	},
	meteoricIron: {
		block: <galacticraftcore:basic_block_core:12>,
		dust: <materialpart:meteoric_iron:dust>,
		gear: null,
		ingot: <galacticraftcore:item_basic_moon:0>,
		nugget: null,
		plate: null,
		rod: null
	},
	modularium: {
		block: null,
		dust: null,
		gear: <materialpart:modularium:gear>,
		ingot: <modularmachinery:itemmodularium:0>,
		liquid: <liquid:modularium>,
		nugget: null,
		plate: <materialpart:modularium:plate>,
		rod: <materialpart:modularium:rod>
	},
	nickel: {
		block: <immersiveengineering:storage:4>,
		dust: <immersiveengineering:metal:13>,
		gear: null,
		ingot: <immersiveengineering:metal:4>,
		liquid: <liquid:nickel>,
		nugget: <immersiveengineering:metal:24>,
		plate: <immersiveengineering:metal:34>,
		rod: null
	},
	osmium: {
		block: <mekanism:basicblock:0>,
		clump: <mekanism:clump:2>,
		crystal: <mekanism:crystal:2>,
		dirtyDust: <mekanism:dirtydust:2>,
		dust: <mekanism:dust:2>,
		gear: null,
		ingot: <mekanism:ingot:1>,
		nugget: <mekanism:nugget:1>,
		plate: null,
		rod: null,
		shard: <mekanism:shard:2>
	},
	pigiron: {
		block: <tconstruct:metal:4>,
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:4>,
		liquid: <liquid:pigiron>,
		nugget: null,
		plate: null,
		rod: null
	},
	platinum: {
		block: <materialpart:platinum:block>,
		dust: <materialpart:platinum:dust>,
		gear: <materialpart:platinum:gear>,
		ingot: <materialpart:platinum:ingot>,
		liquid: <liquid:platinum>,
		nugget: null,
		plate: <materialpart:platinum:plate>,
		rod: <materialpart:platinum:rod>
	},
	redstoneAlloy: {
		block: <materialpart:redstone_alloy:block>,
		dust: null,
		gear: <materialpart:redstone_alloy:gear>,
		ingot: <materialpart:redstone_alloy:ingot>,
		liquid: <liquid:redstone_alloy>,
		nugget: null,
		plate: <materialpart:redstone_alloy:plate>,
		rod: <materialpart:redstone_alloy:rod>
	},
	refinedCoralium: {
		block: <abyssalcraft:ingotblock:1>,
		dust: <acintegration:dust:1>,
		gear: null,
		ingot: <abyssalcraft:cingot:0>,
		liquid: <liquid:moltenrefinedcoralium>,
		nugget: <abyssalcraft:ingotnugget:1>,
		plate: null,
		rod: null
	},
	reinforcedMetal: {
		block: <stevescarts:blockmetalstorage:0>,
		dust: null,
		gear: <materialpart:reinforced_metal:gear>,
		ingot: <stevescarts:modulecomponents:22>,
		liquid: <liquid:reinforced_metal>,
		nugget: null,
		plate: <materialpart:reinforced_metal:plate>,
		rod: <materialpart:reinforced_metal:rod>
	},
	silver: {
		block: <immersiveengineering:storage:3>,
		clump: <mekanism:clump:5>,
		crystal: <mekanism:crystal:5>,
		dirtyDust: <mekanism:dirtydust:5>,
		dust: <immersiveengineering:metal:12>,
		gear: <materialpart:silver:gear>,
		ingot: <immersiveengineering:metal:3>,
		liquid: <liquid:silver>,
		nugget: <immersiveengineering:metal:23>,
		plate: <immersiveengineering:metal:33>,
		rod: <materialpart:silver:rod>,
		shard: <mekanism:shard:5>
	},
	spacePlatinum: {
		block: <extraplanets:kepler22b:14>,
		dust: <materialpart:space_platinum:dust>,
		gear: null,
		ingot: <extraplanets:tier11_items:5>,
		liquid: null,
		nugget: null,
		plate: null,
		rod: null
	},
	steel: {
		block: <immersiveengineering:storage:8>,
		dust: <immersiveengineering:metal:17>,
		gear: <materialpart:steel:gear>,
		ingot: <immersiveengineering:metal:8>,
		liquid: <liquid:steel>,
		nugget: <immersiveengineering:metal:28>,
		plate: <immersiveengineering:metal:38>,
		rod: <immersiveengineering:material:2>
	},
	steeleaf: {
		block: <twilightforest:block_storage:2>,
		dust: null,
		gear: <materialpart:steeleaf:gear>,
		ingot: <twilightforest:steeleaf_ingot:0>,
		liquid: <liquid:steeleaf>,
		nugget: null,
		plate: <materialpart:steeleaf:plate>,
		rod: <materialpart:steeleaf:rod>
	},
	tin: {
		block: <mekanism:basicblock:13>,
		clump: <mekanism:clump:4>,
		crystal: <mekanism:crystal:4>,
		dirtyDust: <mekanism:dirtydust:4>,
		dust: <mekanism:dust:4>,
		gear: <materialpart:tin:gear>,
		ingot: <mekanism:ingot:6>,
		liquid: <liquid:tin>,
		nugget: null,
		plate: <materialpart:tin:plate>,
		rod: <materialpart:tin:rod>,
		shard: <mekanism:shard:4>
	},
	titanium: {
		block: <galacticraftplanets:asteroids_block:7>,
		dust: <galacticraftplanets:item_basic_asteroids:9>,
		gear: null,
		ingot: <galacticraftplanets:item_basic_asteroids:0>,
		liquid: <liquid:titanium>,
		nugget: null,
		plate: null,
		rod: null
	},
	uranium: {
		block: <immersiveengineering:storage:5>,
		dust: <immersiveengineering:metal:14>,
		gear: null,
		ingot: <immersiveengineering:metal:5>,
		liquid: <liquid:uranium>,
		nugget: null,
		plate: <immersiveengineering:metal:35>,
		rod: null
	},
	zinc: {
		block: <extraplanets:neptune:7>,
		dust: <primal:zinc_dust:0>,
		gear: null,
		ingot: <extraplanets:tier8_items:5>,
		liquid: <liquid:zinc>,
		nugget: null,
		plate: null,
		rod: null
	}
};
