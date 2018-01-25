import crafttweaker.item.IItemStack;

var STAGE = STAGES.creative;

var creativeItems as IItemStack[] = [
	<betterwithmods:creative_generator>,
	<buildcraftcore:engine:3>,
	<enderutilities:endercapacitor:3>,
	<enderutilities:enderpart:30>,
	<enderutilities:enderpart:81>,
	<immersiveengineering:metal_device0:3>,
	<ironjetpacks:creative_capacitor>,
	<ironjetpacks:creative_cell>,
	<ironjetpacks:creative_jetpack>,
	<ironjetpacks:creative_thruster>,
	<modularmachinery:itemconstructtool>,
	<pneumaticcraft:creative_compressor>,
	<stevescarts:cartmodule:96>,
	<stevescarts:cartmodule:97>,
	<storagedrawers:upgrade_creative:1>,
	<storagedrawers:upgrade_creative>,
	<tconstruct:materials:50>,
	<totemic:ceremony_cheat>
];

for item in creativeItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
