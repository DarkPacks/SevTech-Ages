import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.utils;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageDisabled;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<mekanism:salt:0>
	],

	stageThree.stage: [
		<mekanism:balloon:1>,
		<mekanism:balloon:2>,
		<mekanism:balloon:3>,
		<mekanism:balloon:4>,
		<mekanism:balloon:5>,
		<mekanism:balloon:6>,
		<mekanism:balloon:7>,
		<mekanism:balloon:8>,
		<mekanism:balloon:9>,
		<mekanism:balloon:10>,
		<mekanism:balloon:11>,
		<mekanism:balloon:12>,
		<mekanism:balloon:13>,
		<mekanism:balloon:14>,
		<mekanism:balloon:15>,
		<mekanism:balloon:0>
	],

	stageFive.stage: [
		<mekanism:anchorupgrade:0>,
		utils.genGasMekIngredient(<mekanism:armoredjetpack:0>, "hydrogen", 24000),
		<mekanism:atomicalloy:0>,
		utils.genEnergyMekIngredient(<mekanism:atomicdisassembler:0>, 1000000.0),
		<mekanism:basicblock:2>,
		<mekanism:basicblock:4>,
		utils.genTieredMekIngredient(<mekanism:basicblock:6>, 3),
		<mekanism:basicblock:7>,
		<mekanism:basicblock:8>,
		<mekanism:basicblock:9>,
		<mekanism:basicblock:10>,
		<mekanism:basicblock:11>,
		<mekanism:basicblock:14>,
		<mekanism:basicblock:15>,
		<mekanism:basicblock2:1>,
		<mekanism:basicblock2:2>,
		utils.genTieredMekIngredient(<mekanism:basicblock2:3>, 3),
		utils.genTieredMekIngredient(<mekanism:basicblock2:4>, 3),
		<mekanism:basicblock2:5>,
		<mekanism:basicblock2:6>,
		<mekanism:basicblock2:7>,
		<mekanism:basicblock2:8>,
		<mekanism:basicblock2:9>,
		<mekanism:basicblock2:0>,
		<mekanism:biofuel:0>,
		utils.genMekIngredient(<mekanism:cardboardbox:0>),
		<mekanism:compressedcarbon:0>,
		<mekanism:compresseddiamond:0>,
		<mekanism:compressedobsidian:0>,
		<mekanism:compressedredstone:0>,
		utils.genMekIngredient(<mekanism:configurationcard:0>),
		<mekanism:configurator:0>,
		<mekanism:controlcircuit:1>,
		<mekanism:controlcircuit:2>,
		<mekanism:controlcircuit:3>,
		<mekanism:controlcircuit:0>,
		utils.genMekIngredient(<mekanism:craftingformula:0>),
		<mekanism:dictionary:0>,
		<mekanism:dust:2>,
		utils.genEnergyMekIngredient(<mekanism:electricbow:0>, 120000.0),
		<mekanism:electrolyticcore:0>,
		utils.genTieredEnergyMekIngredient(<mekanism:energycube:0>, 3, [2000000.0, 8000000.0, 3.2E7, 1.28E8]),
		<mekanism:energytablet:0>,
		<mekanism:energyupgrade:0>,
		<mekanism:enrichedalloy:0>,
		<mekanism:enrichediron:0>,
		<mekanism:filterupgrade:0>,
		utils.genGasMekIngredient(<mekanism:flamethrower:0>, "hydrogen", 24000),
		utils.genEnergyMekIngredient(<mekanism:freerunners:0>, 64000.0),
		<mekanism:gasmask:0>,
		<mekanism:gastank:*>,
		<mekanism:gasupgrade:0>,
		utils.genMekIngredient(<mekanism:gaugedropper:0>),
		<mekanism:glowpanel:*>,
		<mekanism:glowplasticblock:*>,
		<mekanism:ingot:1>,
		<mekanism:ingot:3>,
		<mekanism:ingot:0>,
		utils.genGasMekIngredient(<mekanism:jetpack:0>, "hydrogen", 24000),
		<mekanism:machineblock:1>,
		<mekanism:machineblock:2>,
		<mekanism:machineblock:3>,
		<mekanism:machineblock:5>.withTag({recipeType: 0}),
		<mekanism:machineblock:5>.withTag({recipeType: 1}),
		<mekanism:machineblock:5>.withTag({recipeType: 2}),
		<mekanism:machineblock:5>.withTag({recipeType: 3}),
		<mekanism:machineblock:5>.withTag({recipeType: 4}),
		<mekanism:machineblock:5>.withTag({recipeType: 5}),
		<mekanism:machineblock:5>.withTag({recipeType: 6}),
		<mekanism:machineblock:5>.withTag({recipeType: 7}),
		<mekanism:machineblock:5>.withTag({recipeType: 8}),
		<mekanism:machineblock:6>.withTag({recipeType: 0}),
		<mekanism:machineblock:6>.withTag({recipeType: 1}),
		<mekanism:machineblock:6>.withTag({recipeType: 2}),
		<mekanism:machineblock:6>.withTag({recipeType: 3}),
		<mekanism:machineblock:6>.withTag({recipeType: 4}),
		<mekanism:machineblock:6>.withTag({recipeType: 5}),
		<mekanism:machineblock:6>.withTag({recipeType: 6}),
		<mekanism:machineblock:6>.withTag({recipeType: 7}),
		<mekanism:machineblock:6>.withTag({recipeType: 8}),
		<mekanism:machineblock:7>.withTag({recipeType: 0}),
		<mekanism:machineblock:7>.withTag({recipeType: 1}),
		<mekanism:machineblock:7>.withTag({recipeType: 2}),
		<mekanism:machineblock:7>.withTag({recipeType: 3}),
		<mekanism:machineblock:7>.withTag({recipeType: 4}),
		<mekanism:machineblock:7>.withTag({recipeType: 5}),
		<mekanism:machineblock:7>.withTag({recipeType: 6}),
		<mekanism:machineblock:7>.withTag({recipeType: 7}),
		<mekanism:machineblock:7>.withTag({recipeType: 8}),
		<mekanism:machineblock:8>,
		<mekanism:machineblock:9>,
		<mekanism:machineblock:10>,
		<mekanism:machineblock:11>,
		<mekanism:machineblock:12>,
		<mekanism:machineblock:13>,
		<mekanism:machineblock:14>,
		<mekanism:machineblock:15>,
		<mekanism:machineblock:0>,
		<mekanism:machineblock2:1>,
		<mekanism:machineblock2:2>,
		<mekanism:machineblock2:3>,
		<mekanism:machineblock2:4>,
		<mekanism:machineblock2:5>,
		<mekanism:machineblock2:6>,
		<mekanism:machineblock2:7>,
		<mekanism:machineblock2:8>,
		<mekanism:machineblock2:9>,
		<mekanism:machineblock2:10>,
		<mekanism:machineblock2:11>,
		utils.genTieredMekIngredient(<mekanism:machineblock2:11>, 3),
		<mekanism:machineblock2:12>,
		<mekanism:machineblock2:13>,
		<mekanism:machineblock2:14>,
		<mekanism:machineblock2:15>,
		<mekanism:machineblock2:0>,
		<mekanism:machineblock3:1>,
		<mekanism:machineblock3:4>,
		<mekanism:machineblock3:5>,
		<mekanism:machineblock3:6>,
		utils.genMekIngredient(<mekanism:machineblock3:0>),
		<mekanism:mufflingupgrade:0>,
		utils.genEnergyMekIngredient(<mekanism:networkreader:0>, 60000.0),
		<mekanism:nugget:3>,
		<mekanism:nugget:0>,
		<mekanism:obsidiantnt:0>,
		<mekanism:otherdust:4>,
		<mekanism:otherdust:5>,
		<mekanism:otherdust:6>,
		<mekanism:plasticblock:*>,
		<mekanism:plasticfence:*>,
		<mekanism:polyethene:1>,
		<mekanism:polyethene:2>,
		<mekanism:polyethene:3>,
		<mekanism:polyethene:0>,
		utils.genEnergyMekIngredient(<mekanism:portableteleporter:0>, 1000000.0),
		<mekanism:reinforcedalloy:0>,
		<mekanism:reinforcedplasticblock:*>,
		<mekanism:roadplasticblock:*>,
		utils.genEnergyMekIngredient(<mekanism:robit:0>, 100000.0),
		utils.genGasMekIngredient(<mekanism:scubatank:0>, "oxygen", 24000),
		utils.genEnergyMekIngredient(<mekanism:seismicreader:0>, 12000.0),
		<mekanism:slickplasticblock:*>,
		<mekanism:speedupgrade:0>,
		<mekanism:substrate:0>,
		<mekanism:teleportationcore:0>,
		<mekanism:tierinstaller:1>,
		<mekanism:tierinstaller:2>,
		<mekanism:tierinstaller:3>,
		<mekanism:tierinstaller:0>,
		utils.genTieredMekIngredient(<mekanism:transmitter:1>, 3),
		utils.genTieredMekIngredient(<mekanism:transmitter:2>, 3),
		utils.genTieredMekIngredient(<mekanism:transmitter:3>, 3),
		utils.genTieredMekIngredient(<mekanism:transmitter:4>, 0),
		utils.genTieredMekIngredient(<mekanism:transmitter:5>, 0),
		utils.genTieredMekIngredient(<mekanism:transmitter:6>, 3),
		utils.genTieredMekIngredient(<mekanism:transmitter:0>, 3),
		utils.genMekIngredient(<mekanism:walkietalkie:0>),
		<mekanism:walkietalkie:0>.withTag({mekData: {channel: 1}})
	],

	stageCreative.stage: [
		<mekanism:energycube:0>.withTag({tier: 4}),
		<mekanism:energycube:0>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
		<mekanism:machineblock2:11>.withTag({tier: 4}),
		<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}})
	],

	stageCreativeUnused.stage: [
		<mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}),
		<mekanism:machineblock2:11>,
		utils.genMekIngredient(<mekanism:machineblock3:3>)
	]
};

static hiddenItems as IIngredient[] = [
	<mekanism:machineblock:4>, //Bye bye miner!
	<mekanism:oreblock:1>,
	<mekanism:oreblock:2>
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

	// Hide empty energy cube instead of staging to creative_unusued
	// This prevents conflicts where the filled cube appeared staged to creative_unused
	mods.jei.JEI.hide(<mekanism:energycube:0>.withTag({tier: 4, mekData: {}}));
}
