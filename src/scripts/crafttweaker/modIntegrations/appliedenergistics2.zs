/*
	SevTech: Ages Applied Energistics 2 Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static ae as IItemStack[string][string] = {
	press: {
		engineering: <appliedenergistics2:material:14>,
		silicon: <appliedenergistics2:material:19>
	},
	printed: {
		calculation: <appliedenergistics2:material:16>,
		engineering: <appliedenergistics2:material:17>,
		logic: <appliedenergistics2:material:18>,
		silicon: <appliedenergistics2:material:20>
	},
	processor: {
		calculation: <appliedenergistics2:material:23>,
		engineering: <appliedenergistics2:material:24>,
		logic: <appliedenergistics2:material:22>
	}
};

static rs as IItemStack[string][string] = {
	printed: {
		advanced: <refinedstorage:processor:2>,
		basic: <refinedstorage:processor>,
		improved: <refinedstorage:processor:1>,
		silicon: <refinedstorage:processor:6>
	},
	processor: {
		advanced: <refinedstorage:processor:5>,
		basic: <refinedstorage:processor:3>,
		improved: <refinedstorage:processor:4>,
	}
};

function init() {
	var ae as IItemStack[string][string] = scripts.crafttweaker.modIntegrations.appliedenergistics2.ae;
	var rs as IItemStack[string][string] = scripts.crafttweaker.modIntegrations.appliedenergistics2.rs;

	// Re-create silicon recipe
	appliedEnergistics.removeInscribe(ae.printed.silicon);
	appliedEnergistics.addInscribe(ae.printed.silicon, <ore:itemSilicon>, true, ae.press.silicon);

	// Use GC heavy plating as alternative recipe for printed engineering
	appliedEnergistics.addInscribe(ae.printed.engineering, <galacticraftcore:heavy_plating>, true, ae.press.engineering);

	// ==============================================
	// Refined Storage re-creation
	appliedEnergistics.addInscribe(<refinedstorage:fluid_interface>, <refinedstorage:interface>, false, <minecraft:bucket>, <minecraft:redstone>);

	appliedEnergistics.addInscribe(<refinedstorage:grid:2>, <refinedstorage:grid>, false, ae.processor.engineering, <refinedstorage:pattern>);
	appliedEnergistics.addInscribe(<refinedstorage:grid:3>, <refinedstorage:grid>, false, ae.processor.engineering, <minecraft:bucket>);

	appliedEnergistics.addInscribe(<refinedstorage:storage>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:1>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:1>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:2>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:2>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:3>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:3>);

	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:1>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:1>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:2>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:2>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:3>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:3>);

	appliedEnergistics.addInscribe(<refinedstorage:upgrade:1>, <refinedstorage:upgrade>, false, <minecraft:ender_pearl>, <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:2>, <refinedstorage:upgrade>, false, <minecraft:sugar>, <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:3>, <refinedstorage:upgrade>, false, <ore:workbench>, <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:5>, <refinedstorage:upgrade>, false, <minecraft:nether_star>, <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:6>, <refinedstorage:upgrade>, false,
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}), <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:7>, <refinedstorage:upgrade>, false,
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}), <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:8>, <refinedstorage:upgrade>, false,
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}), <minecraft:redstone>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:9>, <refinedstorage:upgrade>, false,
			<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}), <minecraft:redstone>);
}
