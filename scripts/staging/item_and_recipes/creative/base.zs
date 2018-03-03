#priority -1

import crafttweaker.item.IItemStack;

var STAGE = STAGES.creative;

var creativeItems as IItemStack[] = [
	<betterwithmods:creative_generator>,
	<bloodmagic:altar_maker>,
	<buildcraftcore:engine:3>,
	<enderutilities:endercapacitor:3>,
	<enderutilities:enderpart:30>,
	<enderutilities:enderpart:81>,
	<galacticraftcore:concealed_detector>,
	<galacticraftcore:dungeonfinder>,
	<galacticraftcore:infinite_battery>,
	<galacticraftcore:infinite_oxygen>,
	<galacticraftcore:rocket_t1:4>,
	<galacticraftplanets:rocket_t2:4>,
	<galacticraftplanets:rocket_t2:14>,
	<galacticraftplanets:rocket_t3:4>,
	<immersiveengineering:metal_device0:3>,
	<ironjetpacks:creative_capacitor>,
	<ironjetpacks:creative_cell>,
	<ironjetpacks:creative_jetpack>,
	<ironjetpacks:creative_thruster>,
	<mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
	<mekanism:energycube>.withTag({tier: 4, mekData: {}}),
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}),
	<modularmachinery:itemconstructtool>,
	<pneumaticcraft:creative_compressor>,
	<stevescarts:cartmodule:96>,
	<stevescarts:cartmodule:97>,
	<storagedrawers:upgrade_creative:1>,
	<storagedrawers:upgrade_creative>,
	<tconstruct:materials:50>,
	<totemic:ceremony_cheat>,
	<waterstrainer:super_worm>
];

for item in creativeItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
