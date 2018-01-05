import crafttweaker.item.IItemStack;

var STAGE = STAGES.tutorial;

var stageTutorialItems as IItemStack[] = [
	<antiqueatlas:empty_antique_atlas>,
	<horsepower:chopping_block>,
	<immcraft:chest>,
	<immcraft:rock>,
	<minecraft:beef>,
	<minecraft:bone>,
	<minecraft:carrot>,
	<minecraft:chicken>,
	<minecraft:cobblestone>,
	<minecraft:dirt>,
	<minecraft:fish:1>,
	<minecraft:fish>,
	<minecraft:flint>,
	<minecraft:log2:1>,
	<minecraft:log2>,
	<minecraft:log:1>,
	<minecraft:log:2>,
	<minecraft:log:3>,
	<minecraft:log>,
	<minecraft:melon>,
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:4>,
	<minecraft:planks:5>,
	<minecraft:planks>,
	<minecraft:porkchop>,
	<minecraft:potato>,
	<minecraft:stick>,
	<minecraft:stone>,
	<minecraft:wheat>,
	<pickletweaks:grass_mesh>,
	<primal:flint_hatchet>,
	<primal:flint_knapp>,
	<primal:flint_pickaxe>,
	<primal:flint_workblade>,
	<primal:plant_cordage>,
	<primal:plant_fiber>,
	<primal:sharp_bone>,
	<primal_tech:bone_club>,
	<primal_tech:fibre_torch>,
	<primal_tech:fibre_torch_lit>,
	<primal_tech:fire_sticks>,
	<primal_tech:stone_club>,
	<primal_tech:wood_club>,
	<primal_tech:work_stump>,
	<progressiontweaks:fire_pit_unlit>,
	<progressiontweaks:spear>,
	<progressiontweaks:tomahawk>
];

for item in stageTutorialItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
