import crafttweaker.item.IItemStack;

var STAGE = STAGES.creative;

var creativeItems = [
<betterwithmods:creative_generator>,
<buildcraftcore:engine:3>,
<embers:creative_ember_source>,
<immersiveengineering:metal_device0:3>,
<ironjetpacks:creative_cell>,
<ironjetpacks:creative_thruster>,
<ironjetpacks:creative_capacitor>,
<ironjetpacks:creative_jetpack>,
<modularmachinery:itemconstructtool>,
<pneumaticcraft:creative_compressor>,
<stevescarts:cartmodule:96>,
<stevescarts:cartmodule:97>,
<storagedrawers:upgrade_creative>,
<storagedrawers:upgrade_creative:1>,
<tconstruct:materials:50>,
<totemic:ceremony_cheat>

] as IItemStack[];

for item in creativeItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
