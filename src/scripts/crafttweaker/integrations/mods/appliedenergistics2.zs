/*
	SevTech: Ages Applied Energistics 2 Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.crafttweaker.utils;

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
		basic: <refinedstorage:processor:0>,
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
	// Re-create silicon recipe
	appliedEnergistics.removeInscribe(ae.printed.silicon);
	appliedEnergistics.addInscribe(ae.printed.silicon, <ore:itemSilicon>, true, ae.press.silicon);

	// Use GC heavy plating as alternative recipe for printed engineering
	appliedEnergistics.addInscribe(ae.printed.engineering, <galacticraftcore:heavy_plating:0>, true, ae.press.engineering);

	// ==============================================
	// Refined Storage re-creation
	appliedEnergistics.addInscribe(<refinedstorage:fluid_interface:0>, <refinedstorage:interface:0>, false, <minecraft:bucket:0>, <minecraft:redstone:0>);

	appliedEnergistics.addInscribe(<refinedstorage:grid:2>, <refinedstorage:grid:0>, false, ae.processor.engineering, <refinedstorage:pattern:0>);
	appliedEnergistics.addInscribe(<refinedstorage:grid:3>, <refinedstorage:grid:0>, false, ae.processor.engineering, <minecraft:bucket:0>);

	appliedEnergistics.addInscribe(<refinedstorage:storage:0>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:storage_part:0>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:1>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:storage_part:1>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:2>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:storage_part:2>);
	appliedEnergistics.addInscribe(<refinedstorage:storage:3>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:storage_part:3>);

	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:0>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:0>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:1>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:1>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:2>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:2>);
	appliedEnergistics.addInscribe(<refinedstorage:fluid_storage:3>, <refinedstorage:machine_casing:0>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:3>);

	appliedEnergistics.addInscribe(<refinedstorage:upgrade:1>, <refinedstorage:upgrade:0>, false, <minecraft:ender_pearl:0>, <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:2>, <refinedstorage:upgrade:0>, false, <minecraft:sugar:0>, <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:3>, <refinedstorage:upgrade:0>, false, <ore:workbench>, <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:6>, <refinedstorage:upgrade:0>, false,
			<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:silk_touch>.makeEnchantment(1)).ench}), <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:7>, <refinedstorage:upgrade:0>, false,
			<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:fortune>.makeEnchantment(1)).ench}), <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:8>, <refinedstorage:upgrade:0>, false,
			<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:fortune>.makeEnchantment(2)).ench}), <minecraft:redstone:0>);
	appliedEnergistics.addInscribe(<refinedstorage:upgrade:9>, <refinedstorage:upgrade:0>, false,
			<minecraft:enchanted_book:0>.withTag({StoredEnchantments: utils.makeJeidTag(<enchantment:minecraft:fortune>.makeEnchantment(3)).ench}), <minecraft:redstone:0>);

	appliedEnergistics.addGrindstone(<minecraft:dye:15> * 2, <death_compass:death_compass>.withTag({})); // Death Compass -> Bone Meal
}
