import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;

var ae as IItemStack[string][string] = {
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

var rs as IItemStack[string][string] = {
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

/*
	Inscriber

	addRecipe(IItemStack output, IIngredient input, boolean inscribe, @Optional IIngredient top, @Optional IIngredient bottom)
	removeRecipe(IItemStack output)
*/
//Re-create silicon recipe
Inscriber.removeRecipe(ae.printed.silicon);
Inscriber.addRecipe(ae.printed.silicon, <ore:itemSilicon>, true, ae.press.silicon);

//Use GC heavy plating as alternative recipe for printed engineering
Inscriber.addRecipe(ae.printed.engineering, <galacticraftcore:heavy_plating>, true, ae.press.engineering);

//==============================================
//Refined Storage re-creation
Inscriber.addRecipe(<refinedstorage:fluid_interface>, <refinedstorage:interface>, false, <minecraft:bucket>, <minecraft:redstone>);

Inscriber.addRecipe(<refinedstorage:grid:2>, <refinedstorage:grid>, false, ae.processor.engineering, <refinedstorage:pattern>);
Inscriber.addRecipe(<refinedstorage:grid:3>, <refinedstorage:grid>, false, ae.processor.engineering, <minecraft:bucket>);

Inscriber.addRecipe(<refinedstorage:storage>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part>);
Inscriber.addRecipe(<refinedstorage:storage:1>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:1>);
Inscriber.addRecipe(<refinedstorage:storage:2>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:2>);
Inscriber.addRecipe(<refinedstorage:storage:3>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:storage_part:3>);

Inscriber.addRecipe(<refinedstorage:fluid_storage>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part>);
Inscriber.addRecipe(<refinedstorage:fluid_storage:1>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:1>);
Inscriber.addRecipe(<refinedstorage:fluid_storage:2>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:2>);
Inscriber.addRecipe(<refinedstorage:fluid_storage:3>, <refinedstorage:machine_casing>, false, ae.processor.logic, <refinedstorage:fluid_storage_part:3>);

Inscriber.addRecipe(<refinedstorage:upgrade:1>, <refinedstorage:upgrade>, false, <minecraft:ender_pearl>, <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:2>, <refinedstorage:upgrade>, false, <minecraft:sugar>, <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:3>, <refinedstorage:upgrade>, false, <ore:workbench>, <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:5>, <refinedstorage:upgrade>, false, <minecraft:nether_star>, <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:6>, <refinedstorage:upgrade>, false,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}), <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:7>, <refinedstorage:upgrade>, false,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}), <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:8>, <refinedstorage:upgrade>, false,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}), <minecraft:redstone>);
Inscriber.addRecipe(<refinedstorage:upgrade:9>, <refinedstorage:upgrade>, false,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}), <minecraft:redstone>);
