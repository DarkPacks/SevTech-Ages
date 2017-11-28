//Make this script top execution priority
#priority 998

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
		rod: ITEM_STACK,
	}
*/
global metalItems as IIngredient[string][string] = {
	abyssalnite: {
		block: <abyssalcraft:ingotblock>,
		dust: <acintegration:dust>,
		gear: null,
		ingot: <abyssalcraft:abyingot>,
		liquid: <liquid:moltenabyssalnite>,
		nugget: <abyssalcraft:ingotnugget>,
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
		dust: null,
		gear: null,
		ingot: <tconstruct:ingots:1>,
		liquid: <liquid:ardite>,
		nugget: <tconstruct:nuggets:1>,
		plate: null,
		rod: null
	},
	bronze: {
		block: <embers:block_bronze>,
		dust: null,
		gear: <contenttweaker:material_part:25>,
		ingot: <embers:ingot_bronze>,
		liquid: <liquid:bronze>,
		nugget: <embers:nugget_bronze>,
		plate: <contenttweaker:material_part:26>,
		rod: <contenttweaker:material_part:29>
	},
	cobalt: {
		block: <tconstruct:metal>,
		dust: null,
		gear: <contenttweaker:material_part:20>,
		ingot: <tconstruct:ingots>,
		liquid: <liquid:cobalt>,
		nugget: <tconstruct:nuggets>,
		plate: <contenttweaker:material_part:21>,
		rod: <contenttweaker:material_part:24>
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
		block: <immersiveengineering:storage>,
		dust: <immersiveengineering:metal:9>,
		gear: <contenttweaker:material_part>,
		ingot: <immersiveengineering:metal>,
		liquid: <liquid:copper>,
		nugget: null,
		plate: <immersiveengineering:metal:30>,
		rod: <contenttweaker:material_part:4>
	},
	dawnstone: {
		block: <embers:block_dawnstone>,
		dust: null,
		gear: null,
		ingot: <embers:ingot_dawnstone>,
		liquid: <liquid:dawnstone>,
		nugget: <embers:nugget_dawnstone>,
		plate: <embers:plate_dawnstone>,
		rod: null
	},
	dreadium: {
		block: <abyssalcraft:ingotblock:2>,
		dust: <acintegration:dust:2>,
		gear: null,
		ingot: <abyssalcraft:dreadiumingot>,
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
	ethaxium: {
		block: <abyssalcraft:ingotblock:3>,
		dust: null,
		gear: null,
		ingot: <abyssalcraft:ethaxiumingot>,
		liquid: null,
		nugget: <abyssalcraft:ingotnugget:3>,
		plate: null,
		rod: null
	},
	fiery: {
		block: <twilightforest:block_storage:1>,
		dust: null,
		gear: <contenttweaker:material_part:43>,
		ingot: <twilightforest:fiery_ingot>,
		liquid: <liquid:fiery>,
		nugget: null,
		plate: <contenttweaker:material_part:44>,
		rod: <contenttweaker:material_part:47>,
	},
	gold: {
		block: <minecraft:gold_block>,
		dust: <immersiveengineering:metal:19>,
		gear: null,
		ingot: <minecraft:gold_ingot>,
		liquid: <liquid:gold>,
		nugget: <minecraft:gold_nugget>,
		plate: <immersiveengineering:metal:40>,
		rod: <primal:golden_stick>
	},
	iron: {
		block: <minecraft:iron_block>,
		dust: <immersiveengineering:metal:18>,
		gear: null,
		ingot: <minecraft:iron_ingot>,
		liquid: <liquid:iron>,
		nugget: <minecraft:iron_nugget>,
		plate: <immersiveengineering:metal:39>,
		rod: <immersiveengineering:material:1>
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
		dust: <immersiveengineering:metal:11>,
		gear: <contenttweaker:material_part:15>,
		ingot: <immersiveengineering:metal:2>,
		liquid: <liquid:lead>,
		nugget: <immersiveengineering:metal:22>,
		plate: <immersiveengineering:metal:32>,
		rod: <contenttweaker:material_part:19>
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
		block: <contenttweaker:sub_block_holder_0:1>,
		dust: null,
		gear: <contenttweaker:material_part:32>,
		ingot: <contenttweaker:material_part:37>,
		liquid: <liquid:platinum>,
		nugget: null,
		plate: <contenttweaker:material_part:33>,
		rod: <contenttweaker:material_part:36>
	},
	refinedCoralium: {
		block: <abyssalcraft:ingotblock:1>,
		dust: <acintegration:dust:1>,
		gear: null,
		ingot: <abyssalcraft:cingot>,
		liquid: <liquid:moltenrefinedcoralium>,
		nugget: <abyssalcraft:ingotnugget:1>,
		plate: null,
		rod: null
	},
	silver: {
		block: <immersiveengineering:storage:3>,
		dust: <immersiveengineering:metal:12>,
		gear: <contenttweaker:material_part:10>,
		ingot: <immersiveengineering:metal:3>,
		liquid: <liquid:silver>,
		nugget: <immersiveengineering:metal:23>,
		plate: <immersiveengineering:metal:33>,
		rod: <contenttweaker:material_part:14>
	},
	steel: {
		block: <immersiveengineering:storage:8>,
		dust: <immersiveengineering:metal:17>,
		gear: null,
		ingot: <immersiveengineering:metal:8>,
		liquid: <liquid:steel>,
		nugget: <immersiveengineering:metal:28>,
		plate: <immersiveengineering:metal:38>,
		rod: <immersiveengineering:material:2>
	},
	steeleaf: {
		block: <twilightforest:block_storage:2>,
		dust: null,
		gear: <contenttweaker:material_part:38>,
		ingot: <twilightforest:steeleaf_ingot>,
		liquid: <liquid:steeleaf>,
		nugget: null,
		plate: <contenttweaker:material_part:39>,
		rod: <contenttweaker:material_part:42>,
	},
	tin: {
		block: <embers:block_tin>,
		dust: null,
		gear: <contenttweaker:material_part:5>,
		ingot: <embers:ingot_tin>,
		liquid: <liquid:tin>,
		nugget: <embers:nugget_tin>,
		plate: <contenttweaker:material_part:6>,
		rod: <contenttweaker:material_part:9>
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
	}
};
