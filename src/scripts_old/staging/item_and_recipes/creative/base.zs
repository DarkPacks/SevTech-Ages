#priority -3

import crafttweaker.item.IItemStack;

import mods.sevtweaks.stager.Stage;

/*
	Unused Creative Items
*/
var stageCreativeUnused as Stage = STAGES.creativeUnused;

var stageCreativeUnusedItems as IItemStack[] = [
	<buildcraftcore:engine:3>,
	<enderutilities:endercapacitor:3>,
	<enderutilities:enderpart:30>,
	<enderutilities:enderpart:81>,
	<extendedcrafting:recipe_maker>.withTag({Shapeless: 0 as byte}),
	<extendedcrafting:recipe_maker>.withTag({Shapeless: 1 as byte}),
	<immersiveengineering:metal_device0:3>,
	<ironjetpacks:creative_capacitor>,
	<mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 4, mekData: {}}),
	<mekanism:machineblock2:11>,
	<modularmachinery:itemconstructtool>,
	<vc:airships/item_creative_airship_v1>,
	<vc:airships/item_creative_airship_v2>,
	<vc:airships/item_creative_airship_v3>,
	<vc:airships/item_creative_airship_v4>,
	<vc:modules/item_module_creative>
];

stageCreativeUnused.addIngredients(stageCreativeUnusedItems, false);
