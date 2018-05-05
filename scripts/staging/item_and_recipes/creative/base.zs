#priority -3

import crafttweaker.item.IItemStack;

var STAGE = STAGES.creative;

var creativeItems as IItemStack[] = [
	<ironjetpacks:creative_cell>,
	<ironjetpacks:creative_jetpack>,
	<ironjetpacks:creative_thruster>,
	<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
	<mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}),
	<pneumaticcraft:creative_compressor>,
	<tconstruct:materials:50>
];

for item in creativeItems {
	mods.ItemStages.addItemStage(STAGE, item);
}

var creativeUnusedItems as IItemStack[] = [
	<appliedenergistics2:creative_energy_cell>,
	<appliedenergistics2:creative_storage_cell>.withTag({}),
	<betterwithmods:creative_generator>,
	<bibliocraft:bookcasecreative:*>,
	<bloodmagic:activation_crystal:2>,
	<bloodmagic:altar_maker>,
	<bloodmagic:sacrificial_dagger:1>,
	<buildcraftcore:engine:3>,
	<enderutilities:endercapacitor:3>,
	<enderutilities:enderpart:30>,
	<enderutilities:enderpart:81>,
	<extendedcrafting:recipe_maker>.withTag({Shapeless: 0 as byte}),
	<extendedcrafting:recipe_maker>.withTag({Shapeless: 1 as byte}),
	<extraplanets:item_tier4_rocket:4>,
	<extraplanets:item_tier5_rocket:4>,
	<extraplanets:item_tier6_rocket:4>,
	<extraplanets:item_tier7_rocket:4>,
	<extraplanets:item_tier8_rocket:4>,
	<extraplanets:item_tier9_rocket:4>,
	<extraplanets:item_tier10_electric_rocket:4>,
	<extraplanets:item_tier10_rocket:4>,
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
	<mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 4, mekData: {}}),
	<mekanism:machineblock2:11>,
	<modularmachinery:itemconstructtool>,
	<refinedstorage:controller:1>,
	<refinedstorage:fluid_storage:4>,
	<refinedstorage:fluid_storage_disk:4>,
	<refinedstorage:portable_grid:1>,
	<refinedstorage:storage:4>,
	<refinedstorage:storage_disk:4>,
	<refinedstorage:wireless_crafting_monitor:1>,
	<refinedstorage:wireless_fluid_grid:1>,
	<refinedstorage:wireless_grid:1>,
	<refinedstorageaddons:network_bag:1>,
	<refinedstorageaddons:network_picker:1>,
	<refinedstorageaddons:wireless_crafting_grid:1>,
	<rftools:creative_screen>,
	<rftools:powercell_creative>,
	<stevescarts:cartmodule:61>,
	<stevescarts:cartmodule:72>,
	<stevescarts:cartmodule:76>,
	<stevescarts:cartmodule:96>,
	<stevescarts:cartmodule:97>,
	<stevescarts:upgrade:14>,
	<storagedrawers:upgrade_creative:1>,
	<storagedrawers:upgrade_creative>,
	<totemic:ceremony_cheat>,
	<vc:airships/item_creative_airship_v1>,
	<vc:airships/item_creative_airship_v2>,
	<vc:airships/item_creative_airship_v3>,
	<vc:airships/item_creative_airship_v4>,
	<vc:modules/item_module_creative>,
	<waterstrainer:super_worm>
];

for item in creativeUnusedItems {
	mods.ItemStages.addItemStage("creative_unused", item);
}
