import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<rustic:log:1>,
		<rustic:log:0>,
		<rustic:sapling_apple:0>,
		<rustic:sapling:1>,
		<rustic:sapling:0>,
		<rustic:slate:0>,
		<rustic:wildberries:0>,
		<rustic:wildberry_bush:0>
	],

	stageZero.stage: [
		<rustic:aloe_vera:0>,
		<rustic:apple_seeds:0>,
		<rustic:bee:0>,
		<rustic:beeswax:0>,
		<rustic:blood_orchid:0>,
		<rustic:chamomile:0>,
		<rustic:chili_pepper_seeds:0>,
		<rustic:chili_pepper:0>,
		<rustic:cloudsbluff:0>,
		<rustic:cohosh:0>,
		<rustic:core_root:0>,
		<rustic:deathstalk_mushroom:0>,
		<rustic:ginseng:0>,
		<rustic:grape_stem:0>,
		<rustic:grapes:0>,
		<rustic:honeycomb:0>,
		<rustic:horsetail:0>,
		<rustic:ironberries:0>,
		<rustic:ironwood_slab_item:0>,
		<rustic:leaves_apple:0>,
		<rustic:leaves:1>,
		<rustic:leaves:0>,
		<rustic:marsh_mallow:0>,
		<rustic:mooncap_mushroom:0>,
		<rustic:olive_slab_item:0>,
		<rustic:olives:0>,
		<rustic:painted_wood_black:0>,
		<rustic:painted_wood_blue:0>,
		<rustic:painted_wood_brown:0>,
		<rustic:painted_wood_cyan:0>,
		<rustic:painted_wood_gray:0>,
		<rustic:painted_wood_green:0>,
		<rustic:painted_wood_light_blue:0>,
		<rustic:painted_wood_lime:0>,
		<rustic:painted_wood_magenta:0>,
		<rustic:painted_wood_orange:0>,
		<rustic:painted_wood_pink:0>,
		<rustic:painted_wood_purple:0>,
		<rustic:painted_wood_red:0>,
		<rustic:painted_wood_silver:0>,
		<rustic:painted_wood_white:0>,
		<rustic:painted_wood_yellow:0>,
		<rustic:planks:1>,
		<rustic:planks:0>,
		<rustic:tallow:0>,
		<rustic:tomato_seeds:0>,
		<rustic:tomato:0>,
		<rustic:wind_thistle:0>
	],

	stageOne.stage: [
		// Fences and Doors
		<rustic:clay_wall_cross:0>,
		<rustic:clay_wall_diag:0>,
		<rustic:clay_wall:0>,
		<rustic:fence_gate_ironwood:0>,
		<rustic:fence_gate_olive:0>,
		<rustic:fence_ironwood:0>,
		<rustic:fence_olive:0>,
		<rustic:ironwood_door:0>,
		<rustic:olive_door:0>,

		// Misc
		<rustic:andesite_pillar:0>,
		<rustic:apiary:0>,
		<rustic:beehive:0>,
		<rustic:book:0>,
		<rustic:cabinet:0>,
		<rustic:chair_acacia:0>,
		<rustic:chair_big_oak:0>,
		<rustic:chair_birch:0>,
		<rustic:chair_ironwood:0>,
		<rustic:chair_jungle:0>,
		<rustic:chair_oak:0>,
		<rustic:chair_olive:0>,
		<rustic:chair_spruce:0>,
		<rustic:crop_stake:0>,
		<rustic:crushing_tub:0>,
		<rustic:diorite_pillar:0>,
		<rustic:evaporating_basin:0>,
		<rustic:granite_pillar:0>,
		<rustic:rope:0>,
		<rustic:slate_brick:0>,
		<rustic:slate_brick_slab_item:0>,
		<rustic:slate_chiseled:0>,
		<rustic:slate_pillar:0>,
		<rustic:slate_roof:0>,
		<rustic:slate_roof_slab_item:0>,
		<rustic:slate_tile:0>,
		<rustic:stairs_ironwood:0>,
		<rustic:stairs_olive:0>,
		<rustic:stairs_slate_brick:0>,
		<rustic:stairs_slate_roof:0>,
		<rustic:stone_pillar:0>,
		<rustic:table_acacia:0>,
		<rustic:table_big_oak:0>,
		<rustic:table_birch:0>,
		<rustic:table_ironwood:0>,
		<rustic:table_jungle:0>,
		<rustic:table_oak:0>,
		<rustic:table_olive:0>,
		<rustic:table_spruce:0>,
		<rustic:vase:0>
	],

	stageTwo.stage: [
		<rustic:barrel:0>,
		<rustic:brewing_barrel:0>,
		<rustic:candle:0>,
		<rustic:chain:0>,
		<rustic:chandelier:0>,
		<rustic:condenser_advanced:0>,
		<rustic:condenser:0>,
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]}),
		<rustic:elixir:0>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "ale", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "applejuice", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "cider", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "ironwine", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "mead", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "wildberrywine", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:fluid_bottle:0>.withTag({Fluid: {FluidName: "wine", Amount: 1000, Tag: {Quality: 0.75 as float}}}),
		<rustic:gargoyle:0>,
		<rustic:iron_lantern:0>,
		<rustic:iron_lattice:0>,
		<rustic:liquid_barrel:0>,
		<rustic:retort_advanced:0>,
		<rustic:retort:0>
	],

	stageThree.stage: [
		<rustic:elixir:0>,
		<rustic:fluid_bottle:0>
	]
};

static hiddenItems as IIngredient[] = [
	<rustic:dust_tiny_iron>
];

static hiddenRemove as IIngredient[] = [
	<rustic:candle_gold>,
	<rustic:chain_gold>,
	<rustic:chandelier_gold>,
	<rustic:golden_lantern>
];

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
