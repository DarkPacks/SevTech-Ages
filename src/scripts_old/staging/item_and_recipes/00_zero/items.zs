#priority -2

import crafttweaker.item.IIngredient;

import mods.sevtweaks.stager.Stage;

var stageZero as Stage = STAGES.zero;

var stageZeroItems as IIngredient[] = [
	<ore:blockCharcoal>,
	<ore:foodSalt>,
	<ore:blockSalt>,

	<astikoor:cargocart>,
	<astikoor:plowcart>,
	<astikoor:wheel>,
	<emberroot:owl_egg>,
	<immcraft:bookshelf>,
	<immcraft:cupboard>,
	<immcraft:shelf>,
	<primalchests:primal_chest>,
	<primalchests:primal_chest_advanced>,
	<progressiontweaks:broken_spear_shaft>,
	<progressiontweaks:broken_spear_tip>,
	<progressiontweaks:flat_bread>,
	<progressiontweaks:unfired_clay_bowl>,
	<spartanshields:shield_basic_stone>,
	<spartanshields:shield_basic_wood>,
	<trumpetskeleton:trumpet>,
	<wopper:wopper>,

	//Mortars
	<advancedmortars:mortar:1>,
	<advancedmortars:mortar>,

	//Horsepower
	<horsepower:chopper:*>,
	<horsepower:dough>,
	<horsepower:flour>,
	<horsepower:grindstone>,
	<horsepower:hand_grindstone>,
	<horsepower:press>,

	//Jarm
	<jarm:acacia_raft>,
	<jarm:birch_raft>,
	<jarm:dark_oak_raft>,
	<jarm:jungle_raft>,
	<jarm:oak_raft>,
	<jarm:spruce_raft>,

	//Tinker's Compliment
	<tcomplement:melter:8>,
	<tcomplement:melter>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter>,

	//Animalium
	<animalium:bear_claw>,
	<animalium:bear_claw_paxel>,
	<animalium:bear_meat>,
	<animalium:bear_meat_cooked>,
	<animalium:dog_boots>,
	<animalium:rat_meat>,
	<animalium:rat_meat_cooked>,
	<animalium:wild_dog_pelt>,

	//Primal Tech
	<primal_tech:bone_axe>,
	<primal_tech:bone_knife>,
	<primal_tech:bone_pickaxe>,
	<primal_tech:bone_shard>,
	<primal_tech:bone_shears>,
	<primal_tech:bone_shovel>,
	<primal_tech:bone_sword>,
	<primal_tech:charcoal_block>,
	<primal_tech:charcoal_hopper>,
	<primal_tech:clay_kiln>,
	<primal_tech:flint_block>,
	<primal_tech:flint_edged_disc>,
	<primal_tech:fluid_bladder>,
	<primal_tech:stick_bundle>,
	<primal_tech:stone_grill>,
	<primal_tech:twine>,
	<primal_tech:water_saw>,
	<primal_tech:wooden_hopper>,
	<primal_tech:work_stump_upgraded>,

	//Nature's Compass
	<naturescompass:naturescompass>
];

stageZero.addIngredients(stageZeroItems, false);
