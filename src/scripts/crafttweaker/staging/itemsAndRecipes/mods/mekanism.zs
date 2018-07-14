import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<mekanism:salt>
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
		<mekanism:balloon>
	],

	stageFive.stage: [
		<mekanism:anchorupgrade>,
		<mekanism:armoredjetpack>.withTag({mekData: {}}),
		<mekanism:armoredjetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
		<mekanism:atomicalloy>,
		<mekanism:atomicdisassembler>.withTag({mekData: {}}),
		<mekanism:atomicdisassembler>.withTag({mekData: {energyStored: 1000000.0}}),
		<mekanism:basicblock:2>,
		<mekanism:basicblock:4>,
		<mekanism:basicblock:6>.withTag({tier: 0, mekData: {}}),
		<mekanism:basicblock:6>.withTag({tier: 1, mekData: {}}),
		<mekanism:basicblock:6>.withTag({tier: 2, mekData: {}}),
		<mekanism:basicblock:6>.withTag({tier: 3, mekData: {}}),
		<mekanism:basicblock:7>,
		<mekanism:basicblock:8>,
		<mekanism:basicblock:9>,
		<mekanism:basicblock:10>,
		<mekanism:basicblock:11>,
		<mekanism:basicblock:14>,
		<mekanism:basicblock:15>,
		<mekanism:basicblock2:1>,
		<mekanism:basicblock2:2>,
		<mekanism:basicblock2:3>.withTag({tier: 0, mekData: {}}),
		<mekanism:basicblock2:3>.withTag({tier: 1, mekData: {}}),
		<mekanism:basicblock2:3>.withTag({tier: 2, mekData: {}}),
		<mekanism:basicblock2:3>.withTag({tier: 3, mekData: {}}),
		<mekanism:basicblock2:4>.withTag({tier: 0}),
		<mekanism:basicblock2:4>.withTag({tier: 1}),
		<mekanism:basicblock2:4>.withTag({tier: 2}),
		<mekanism:basicblock2:4>.withTag({tier: 3}),
		<mekanism:basicblock2:5>,
		<mekanism:basicblock2:6>,
		<mekanism:basicblock2:7>,
		<mekanism:basicblock2:8>,
		<mekanism:basicblock2:9>,
		<mekanism:basicblock2>,
		<mekanism:biofuel>,
		<mekanism:cardboardbox>.withTag({mekData: {}}),
		<mekanism:compressedcarbon>,
		<mekanism:compresseddiamond>,
		<mekanism:compressedobsidian>,
		<mekanism:compressedredstone>,
		<mekanism:configurationcard>.withTag({mekData: {}}),
		<mekanism:configurator>,
		<mekanism:controlcircuit:1>,
		<mekanism:controlcircuit:2>,
		<mekanism:controlcircuit:3>,
		<mekanism:controlcircuit>,
		<mekanism:craftingformula>.withTag({mekData: {}}),
		<mekanism:dictionary>,
		<mekanism:dust:2>,
		<mekanism:electricbow>.withTag({mekData: {}}),
		<mekanism:electricbow>.withTag({mekData: {energyStored: 120000.0}}),
		<mekanism:electrolyticcore>,
		<mekanism:energycube>.withTag({tier: 0, mekData: {}}),
		<mekanism:energycube>.withTag({tier: 0, mekData: {energyStored: 2000000.0}}),
		<mekanism:energycube>.withTag({tier: 1, mekData: {}}),
		<mekanism:energycube>.withTag({tier: 1, mekData: {energyStored: 8000000.0}}),
		<mekanism:energycube>.withTag({tier: 2, mekData: {}}),
		<mekanism:energycube>.withTag({tier: 2, mekData: {energyStored: 3.2E7}}),
		<mekanism:energycube>.withTag({tier: 3, mekData: {}}),
		<mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 1.28E8}}),
		<mekanism:energytablet>,
		<mekanism:energyupgrade>,
		<mekanism:enrichedalloy>,
		<mekanism:enrichediron>,
		<mekanism:filterupgrade>,
		<mekanism:flamethrower>.withTag({mekData: {}}),
		<mekanism:flamethrower>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
		<mekanism:freerunners>.withTag({mekData: {}}),
		<mekanism:freerunners>.withTag({mekData: {energyStored: 64000.0}}),
		<mekanism:gasmask>,
		<mekanism:gastank:*>,
		<mekanism:gasupgrade>,
		<mekanism:gaugedropper>.withTag({mekData: {}}),
		<mekanism:glowpanel:*>,
		<mekanism:glowplasticblock:*>,
		<mekanism:ingot:1>,
		<mekanism:ingot:3>,
		<mekanism:ingot>,
		<mekanism:jetpack>.withTag({mekData: {}}),
		<mekanism:jetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
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
		<mekanism:machineblock:6>.withTag({recipeType: 0}),
		<mekanism:machineblock:6>.withTag({recipeType: 1}),
		<mekanism:machineblock:6>.withTag({recipeType: 2}),
		<mekanism:machineblock:6>.withTag({recipeType: 3}),
		<mekanism:machineblock:6>.withTag({recipeType: 4}),
		<mekanism:machineblock:6>.withTag({recipeType: 5}),
		<mekanism:machineblock:6>.withTag({recipeType: 6}),
		<mekanism:machineblock:6>.withTag({recipeType: 7}),
		<mekanism:machineblock:7>.withTag({recipeType: 0}),
		<mekanism:machineblock:7>.withTag({recipeType: 1}),
		<mekanism:machineblock:7>.withTag({recipeType: 2}),
		<mekanism:machineblock:7>.withTag({recipeType: 3}),
		<mekanism:machineblock:7>.withTag({recipeType: 4}),
		<mekanism:machineblock:7>.withTag({recipeType: 5}),
		<mekanism:machineblock:7>.withTag({recipeType: 6}),
		<mekanism:machineblock:7>.withTag({recipeType: 7}),
		<mekanism:machineblock:8>,
		<mekanism:machineblock:9>,
		<mekanism:machineblock:10>,
		<mekanism:machineblock:11>,
		<mekanism:machineblock:12>,
		<mekanism:machineblock:13>,
		<mekanism:machineblock:14>,
		<mekanism:machineblock:15>,
		<mekanism:machineblock>,
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
		<mekanism:machineblock2:11>.withTag({tier: 1, mekData: {}}),
		<mekanism:machineblock2:11>.withTag({tier: 2, mekData: {}}),
		<mekanism:machineblock2:11>.withTag({tier: 3, mekData: {}}),
		<mekanism:machineblock2:12>,
		<mekanism:machineblock2:13>,
		<mekanism:machineblock2:14>,
		<mekanism:machineblock2:15>,
		<mekanism:machineblock2>,
		<mekanism:machineblock3:1>,
		<mekanism:machineblock3:3>,
		<mekanism:machineblock3:4>,
		<mekanism:machineblock3:5>,
		<mekanism:machineblock3:6>,
		<mekanism:machineblock3>.withTag({mekData: {}}),
		<mekanism:mufflingupgrade>,
		<mekanism:networkreader>.withTag({mekData: {}}),
		<mekanism:networkreader>.withTag({mekData: {energyStored: 60000.0}}),
		<mekanism:nugget:3>,
		<mekanism:nugget>,
		<mekanism:obsidiantnt>,
		<mekanism:otherdust:4>,
		<mekanism:otherdust:5>,
		<mekanism:otherdust:6>,
		<mekanism:plasticblock:*>,
		<mekanism:plasticfence:*>,
		<mekanism:polyethene:1>,
		<mekanism:polyethene:2>,
		<mekanism:polyethene:3>,
		<mekanism:polyethene>,
		<mekanism:portableteleporter>.withTag({mekData: {}}),
		<mekanism:portableteleporter>.withTag({mekData: {energyStored: 1000000.0}}),
		<mekanism:reinforcedalloy>,
		<mekanism:reinforcedplasticblock:*>,
		<mekanism:roadplasticblock:*>,
		<mekanism:robit>.withTag({mekData: {}}),
		<mekanism:robit>.withTag({mekData: {energyStored: 100000.0}}),
		<mekanism:scubatank>.withTag({mekData: {}}),
		<mekanism:scubatank>.withTag({mekData: {stored: {amount: 24000, gasName: "oxygen"}}}),
		<mekanism:seismicreader>.withTag({mekData: {}}),
		<mekanism:seismicreader>.withTag({mekData: {energyStored: 12000.0}}),
		<mekanism:slickplasticblock:*>,
		<mekanism:speedupgrade>,
		<mekanism:substrate>,
		<mekanism:teleportationcore>,
		<mekanism:tierinstaller:1>,
		<mekanism:tierinstaller:2>,
		<mekanism:tierinstaller:3>,
		<mekanism:tierinstaller>,
		<mekanism:transmitter:1>,
		<mekanism:transmitter:1>.withTag({tier: 1}),
		<mekanism:transmitter:1>.withTag({tier: 2}),
		<mekanism:transmitter:1>.withTag({tier: 3}),
		<mekanism:transmitter:2>,
		<mekanism:transmitter:2>.withTag({tier: 1}),
		<mekanism:transmitter:2>.withTag({tier: 2}),
		<mekanism:transmitter:2>.withTag({tier: 3}),
		<mekanism:transmitter:3>.withTag({tier: 0}),
		<mekanism:transmitter:3>.withTag({tier: 1}),
		<mekanism:transmitter:3>.withTag({tier: 2}),
		<mekanism:transmitter:3>.withTag({tier: 3}),
		<mekanism:transmitter:4>.withTag({tier: 0}),
		<mekanism:transmitter:5>.withTag({tier: 0}),
		<mekanism:transmitter:6>.withTag({tier: 0}),
		<mekanism:transmitter:6>.withTag({tier: 1}),
		<mekanism:transmitter:6>.withTag({tier: 2}),
		<mekanism:transmitter:6>.withTag({tier: 3}),
		<mekanism:transmitter>.withTag({tier: 0}),
		<mekanism:transmitter>.withTag({tier: 1}),
		<mekanism:transmitter>.withTag({tier: 2}),
		<mekanism:transmitter>.withTag({tier: 3}),
		<mekanism:walkietalkie>.withTag({mekData: {channel: 1}})
	],

	stageCreative.stage: [
		<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
		<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}})
	]
};

static hiddenItems as IIngredient[] = [
	<mekanism:oreblock:1>,
	<mekanism:oreblock:2>,
	<mekanism:machineblock:4>, //Bye bye miner!
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.mekanism.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.mekanism.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}