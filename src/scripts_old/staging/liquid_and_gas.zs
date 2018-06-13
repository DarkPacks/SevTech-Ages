import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//Liquid "Items"
var liquidItemsForStage as IItemStack[][string] = {
	STAGES.zero : [
		<primal:bitumen>,
		<primal:bitumen_boiling>,
		<primal:brine_netjry>,
		<primal:magma_basaltic>,
		<primal:ovis_atre_milk>,
		<primal:paraffin>,
		<primal:tannin>,
		<primal:urushi>,
		<primal:waste>,
		<rustic:ale_wort>,
		<rustic:apple_juice>,
		<rustic:grape_juice>,
		<rustic:honey>,
		<rustic:ironberry_juice>,
		<rustic:olive_oil>,
		<rustic:wildberry_juice>,
		<thebetweenlands:rubber>,
		<thebetweenlands:stagnant_water>,
		<thebetweenlands:swamp_water>,
		<thebetweenlands:tar>
	],

	STAGES.one : [
		<abyssalcraft:antiwater>,
		<abyssalcraft:cwater>
	],

	STAGES.three : [
		<car:glycerin>,
		<cyclicmagic:milk>,
		<cyclicmagic:poison>,
		<cyclicmagic:xpjuice>,
		<immersiveengineering:fluidbiodiesel>,
		<immersiveengineering:fluidconcrete>,
		<immersiveengineering:fluidcreosote>,
		<immersiveengineering:fluidethanol>,
		<immersiveengineering:fluidplantoil>,
		<galacticraftcore:crude_oil_still>,
		<pneumaticcraft:fluid.kerosene>,
	],

	STAGES.four : [
		<car:bio_diesel>,
		<car:canola_methanol_mix>,
		<car:canola_oil>,
		<car:methanol>,
		<galacticraftcore:fuel>,
		<pneumaticcraft:fluid.etchacid>,
		<pneumaticcraft:fluid.lpg>
	],

	STAGES.five : [
		<actuallyadditions:block_canola_oil>,
		<actuallyadditions:block_crystal_oil>,
		<actuallyadditions:block_empowered_oil>,
		<actuallyadditions:block_refined_canola_oil>
	]
};

for stage, liquidItems in liquidItemsForStage {
	for liquidItem in liquidItems {
		mods.ItemStages.addItemStage(stage, liquidItem);
	}
}

//Liquids
var liquidsForStage as ILiquidStack[][string] = {
	STAGES.zero : [
		<liquid:lava>,
		<liquid:water>
	],

	STAGES.one : [
		<liquid:ale>,
		<liquid:blood>,
		<liquid:cider>,
		<liquid:clay>,
		<liquid:dirt>,
		<liquid:ironwine>,
		<liquid:lifeessence>,
		<liquid:mead>,
		<liquid:stone>,
		<liquid:wildberrywine>,
		<liquid:wine>
	],

	STAGES.two : [
		<liquid:astralsorcery.liquidstarlight>,
		<liquid:ender_pearl>,
		<liquid:fiery>,  //Depricated will be removed in 3.1.0
		<liquid:fiery_essence>,
		<liquid:fierymetal>,
		<liquid:glass>,
		<liquid:knightmetal>,
		<liquid:rubber>,
		<liquid:stagnant_water>,
		<liquid:swamp_water>,
		<liquid:tar>
	],

	STAGES.three : [
		<liquid:biodiesel>,
		<liquid:blueslime>,
		<liquid:canolaoil>,
		<liquid:concrete>,
		<liquid:creosote>,
		<liquid:diesel>,
		<liquid:dist_water>,
		<liquid:ethanol>,
		<liquid:gasoline>,
		<liquid:glowstone>,
		<liquid:glycerin>,
		<liquid:kerosene>,
		<liquid:lubricant>,
		<liquid:napalm>,
		<liquid:naphtha>,
		<liquid:obsidian>,
		<liquid:oil>,
		<liquid:plantoil>,
		<liquid:plastic>,
		<liquid:propene>,
		<liquid:purpleslime>,
		<liquid:redstone>,
		<liquid:slime>,
		<liquid:steam>
	],

	STAGES.four : [
		<liquid:bio_diesel>,
		<liquid:biofuel>,
		<liquid:canola_methanol_mix>,
		<liquid:canola_oil>,
		<liquid:essence>,
		<liquid:etchacid>,
		<liquid:fuel>,
		<liquid:if.pink_slime>,
		<liquid:if.protein>,
		<liquid:latex>,
		<liquid:liquidchorus>,
		<liquid:lpg>,
		<liquid:meat>,
		<liquid:menrilresin>,
		<liquid:methanol>,
		<liquid:sewage>,
		<liquid:sludge>
	],

	STAGES.five : [
		<liquid:argon>,
		<liquid:bacterialsludge>,
		<liquid:base_essence>,
		<liquid:brine>,
		<liquid:carbondioxide>,
		<liquid:clean_water_fluid>,
		<liquid:emerald>,
		<liquid:frozen_water_fluid>,
		<liquid:glowstone_fluid>,
		<liquid:heavywater>,
		<liquid:helium>,
		<liquid:hydrogen>,
		<liquid:infected_water_fluid>,
		<liquid:inferium>,
		<liquid:intermedium>,
		<liquid:liquid_caramel_fluid>,
		<liquid:liquid_chocolate_fluid>,
		<liquid:liquid_hydrocarbon_fluid>,
		<liquid:liquidargon>,
		<liquid:liquidchlorine>,
		<liquid:liquiddeuterium>,
		<liquid:liquidethene>,
		<liquid:liquidfusionfuel>,
		<liquid:liquidhydrogen>,
		<liquid:liquidhydrogenchloride>,
		<liquid:liquidlithium>,
		<liquid:liquidmethane>,
		<liquid:liquidnitrogen>,
		<liquid:liquidoxygen>,
		<liquid:liquidsodium>,
		<liquid:liquidsulfurdioxide>,
		<liquid:liquidsulfurtrioxide>,
		<liquid:liquidtritium>,
		<liquid:magma_fluid>,
		<liquid:methane>,
		<liquid:methane_fluid>,
		<liquid:nitrogen>,
		<liquid:nitrogen_fluid>,
		<liquid:nitrogen_ice_fluid>,
		<liquid:osmium>,
		<liquid:oxygen>,
		<liquid:prudentium>,
		<liquid:pure_matter>,
		<liquid:radioactive_water_fluid>,
		<liquid:salt_fluid>,
		<liquid:soulium>,
		<liquid:sulphuricacid>,
		<liquid:superium>,
		<liquid:supremium>
	]
};

for stage, liquidStacks in liquidsForStage {
	for liquidStack in liquidStacks {
		mods.ItemStages.stageLiquid(stage, liquidStack);

		//Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.crafting_utils.getBucketIngredient(liquidStack));
	}
}

var liquidsNamesForBucketStaging as string[][string] = {
	STAGES.three : [
		"milk"
	]
};

for stage, liquidNames in liquidsNamesForBucketStaging {
	for liquidName in liquidNames {
		mods.ItemStages.addItemStage(stage, scripts.crafting_utils.getBucketIngredientFromName(liquidName));
	}
}
