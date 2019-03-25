import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<betterwithaddons:bag:17>,
		<betterwithaddons:bundle:3>,
		<betterwithaddons:bundle:4>,
		<betterwithaddons:bundle:5>,
		<betterwithaddons:bundle:6>,
		<betterwithaddons:bundle:7>,
		<betterwithaddons:bundle:8>,
		<betterwithaddons:bundle:0>,
		<betterwithaddons:congealed:1>,
		<betterwithaddons:congealed:2>,
		<betterwithaddons:congealed:3>,
		<betterwithaddons:congealed:4>,
		<betterwithaddons:congealed:0>,
		<betterwithaddons:food_amanita_baked:0>,
		<betterwithaddons:food_beetroot_baked:0>,
		<betterwithaddons:food_carrot_baked:0>,
		<betterwithaddons:food_fugu_sac:0>,
		<betterwithaddons:food_ground_meat:0>,
		<betterwithaddons:food_mulberry:0>,
		<betterwithaddons:food_mushroom_baked:0>,
		<betterwithaddons:food_pufferfish_cooked:0>,
		<betterwithaddons:food_pufferfish_prepared:0>,
		<betterwithaddons:food_sashimi:0>,
		<betterwithaddons:japanmat:1>,
		<betterwithaddons:japanmat:4>,
		<betterwithaddons:japanmat:5>,
		<betterwithaddons:japanmat:0>,
		<betterwithaddons:leaves_mulberry:0>,
		<betterwithaddons:leaves_sakura:0>,
		<betterwithaddons:log_mulberry:0>,
		<betterwithaddons:log_sakura:0>,
		<betterwithaddons:planks_mulberry:0>,
		<betterwithaddons:planks_sakura:0>,
		<betterwithaddons:salt:0>,
		<betterwithaddons:sapling_mulberry:0>,
		<betterwithaddons:sapling_sakura:0>,
		<betterwithaddons:tweakmat:0>,
		<betterwithaddons:wood_lamp:0>,
		<betterwithaddons:wool:1>,
		<betterwithaddons:wool:2>,
		<betterwithaddons:wool:3>,
		<betterwithaddons:wool:4>,
		<betterwithaddons:wool:5>,
		<betterwithaddons:wool:6>,
		<betterwithaddons:wool:7>,
		<betterwithaddons:wool:8>,
		<betterwithaddons:wool:9>,
		<betterwithaddons:wool:10>,
		<betterwithaddons:wool:11>,
		<betterwithaddons:wool:12>,
		<betterwithaddons:wool:13>,
		<betterwithaddons:wool:14>,
		<betterwithaddons:wool:15>,
		<betterwithaddons:wool:0>
	],

	stageOne.stage: [
		<betterwithaddons:adobe:1>,
		<betterwithaddons:adobe:2>,
		<betterwithaddons:adobe:3>,
		<betterwithaddons:adobe:4>,
		<betterwithaddons:adobe:5>,
		<betterwithaddons:adobe:6>,
		<betterwithaddons:adobe:7>,
		<betterwithaddons:adobe:8>,
		<betterwithaddons:adobe:9>,
		<betterwithaddons:adobe:10>,
		<betterwithaddons:adobe:11>,
		<betterwithaddons:adobe:12>,
		<betterwithaddons:adobe:13>,
		<betterwithaddons:adobe:14>,
		<betterwithaddons:adobe:15>,
		<betterwithaddons:adobe:0>,
		<betterwithaddons:aqueduct:*>,
		<betterwithaddons:aqueduct:1>,
		<betterwithaddons:aqueduct:2>,
		<betterwithaddons:aqueduct:3>,
		<betterwithaddons:aqueduct:4>,
		<betterwithaddons:aqueduct:5>,
		<betterwithaddons:aqueduct:6>,
		<betterwithaddons:aqueduct:7>,
		<betterwithaddons:aqueduct:8>,
		<betterwithaddons:aqueduct:9>,
		<betterwithaddons:aqueduct:10>,
		<betterwithaddons:bag:*>,
		<betterwithaddons:bag:1>,
		<betterwithaddons:bag:2>,
		<betterwithaddons:bag:3>,
		<betterwithaddons:bag:4>,
		<betterwithaddons:bag:5>,
		<betterwithaddons:bag:8>,
		<betterwithaddons:bag:9>,
		<betterwithaddons:bag:10>,
		<betterwithaddons:bag:13>,
		<betterwithaddons:bag:0>,
		<betterwithaddons:bolt:1>,
		<betterwithaddons:bolt:6>,
		<betterwithaddons:bolt:0>,
		<betterwithaddons:box:0>,
		<betterwithaddons:brick_stained:1>,
		<betterwithaddons:brick_stained:2>,
		<betterwithaddons:brick_stained:3>,
		<betterwithaddons:brick_stained:4>,
		<betterwithaddons:brick_stained:5>,
		<betterwithaddons:brick_stained:6>,
		<betterwithaddons:brick_stained:7>,
		<betterwithaddons:brick_stained:8>,
		<betterwithaddons:brick_stained:9>,
		<betterwithaddons:brick_stained:10>,
		<betterwithaddons:brick_stained:11>,
		<betterwithaddons:brick_stained:12>,
		<betterwithaddons:brick_stained:13>,
		<betterwithaddons:brick_stained:14>,
		<betterwithaddons:brick_stained:15>,
		<betterwithaddons:brick_stained:0>,
		<betterwithaddons:bricks_stained:*>,
		<betterwithaddons:chute:0>,
		<betterwithaddons:crate:*>,
		<betterwithaddons:crate:1>,
		<betterwithaddons:crate:2>,
		<betterwithaddons:crate:3>,
		<betterwithaddons:crate:4>,
		<betterwithaddons:crate:5>,
		<betterwithaddons:crate:6>,
		<betterwithaddons:crate:7>,
		<betterwithaddons:crate:8>,
		<betterwithaddons:crate:9>,
		<betterwithaddons:crate:10>,
		<betterwithaddons:crate:11>,
		<betterwithaddons:crate:0>,
		<betterwithaddons:elytra_magma:0>,
		<betterwithaddons:food_beetroot_cooked:0>,
		<betterwithaddons:food_carrot_cooked:0>,
		<betterwithaddons:food_egg_cooked:0>,
		<betterwithaddons:food_meatballs:0>,
		<betterwithaddons:food_potato_cooked:0>,
		<betterwithaddons:fusuma:0>,
		<betterwithaddons:inverted_gearbox:0>,
		<betterwithaddons:japanmat:8>,
		<betterwithaddons:japanmat:9>,
		<betterwithaddons:japanmat:10>,
		<betterwithaddons:japanmat:11>,
		<betterwithaddons:japanmat:35>,
		<betterwithaddons:japanmat:36>,
		<betterwithaddons:laxative:0>,
		<betterwithaddons:leaves_luretree:0>,
		<betterwithaddons:log_luretree_face:0>,
		<betterwithaddons:log_luretree:0>,
		<betterwithaddons:loom:0>,
		<betterwithaddons:material:1>,
		<betterwithaddons:material:2>,
		<betterwithaddons:material:3>,
		<betterwithaddons:material:5>,
		<betterwithaddons:sapling_luretree:0>,
		<betterwithaddons:scaffold:0>,
		<betterwithaddons:shoji:0>,
		<betterwithaddons:spindle:0>,
		<betterwithaddons:thorn_rose:0>,
		<betterwithaddons:weight_stone:0>,
		<betterwithaddons:weight_wood:0>,
		<betterwithaddons:zen_ironsand:0>,
		<betterwithaddons:zen_redsand:0>,
		<betterwithaddons:zen_sand:0>
	],

	stageTwo.stage: [
		// Gold Stuff
		<betterwithaddons:gold_carpentersaw:0>,
		<betterwithaddons:gold_kukri:0>,
		<betterwithaddons:gold_machete:0>,
		<betterwithaddons:gold_masonpick:0>,
		<betterwithaddons:gold_matchpick:0>,
		<betterwithaddons:gold_spade:0>,

		// Misc
		<betterwithaddons:aqueduct:0>,
		<betterwithaddons:artifact_frame:0>,
		<betterwithaddons:bolt:2>,
		<betterwithaddons:bundle:1>,
		<betterwithaddons:crate:12>,
		<betterwithaddons:decomat:1>,
		<betterwithaddons:decomat:2>,
		<betterwithaddons:decomat:0>,
		<betterwithaddons:food_pie_amanita:0>,
		<betterwithaddons:food_pie_meat:0>,
		<betterwithaddons:food_pie_melon:0>,
		<betterwithaddons:food_pie_mushroom:0>,
		<betterwithaddons:iron_carpentersaw:0>,
		<betterwithaddons:iron_kukri:0>,
		<betterwithaddons:iron_machete:0>,
		<betterwithaddons:iron_masonpick:0>,
		<betterwithaddons:iron_spade:0>,
		<betterwithaddons:lattice:0>,
		<betterwithaddons:monument:0>,
		<betterwithaddons:paper_wall:0>,
		<betterwithaddons:pcb_block:0>,
		<betterwithaddons:redstone_emitter:0>,
		<betterwithaddons:tweakmat:1>,
		<betterwithaddons:unbaked:1>,
		<betterwithaddons:unbaked:2>,
		<betterwithaddons:unbaked:3>,
		<betterwithaddons:unbaked:0>,
		<betterwithaddons:wet_soap:0>,
		<betterwithaddons:whitebrick:1>,
		<betterwithaddons:whitebrick:2>,
		<betterwithaddons:whitebrick:3>,
		<betterwithaddons:whitebrick:0>
	],

	stageThree.stage: [
		<betterwithaddons:ancestry_bottle:0>,
		<betterwithaddons:ancestry_infuser:0>,
		<betterwithaddons:ancestry_sand:0>,
		<betterwithaddons:bag:6>,
		<betterwithaddons:bag:7>,
		<betterwithaddons:bag:11>,
		<betterwithaddons:bag:12>,
		<betterwithaddons:bag:14>,
		<betterwithaddons:bag:15>,
		<betterwithaddons:bag:16>,
		<betterwithaddons:bamboo:0>,
		<betterwithaddons:banner_detector:0>,
		<betterwithaddons:block_matcher:0>,
		<betterwithaddons:boots_paper:0>,
		<betterwithaddons:bundle:2>,
		<betterwithaddons:chandelier:0>,
		<betterwithaddons:cherrybox:1>,
		<betterwithaddons:cherrybox:0>,
		<betterwithaddons:chest_paper:0>,
		<betterwithaddons:congealed:5>,
		<betterwithaddons:crop_tea:0>,
		<betterwithaddons:ecksie_sapling:1>,
		<betterwithaddons:ecksie_sapling:2>,
		<betterwithaddons:ecksie_sapling:3>,
		<betterwithaddons:ecksie_sapling:4>,
		<betterwithaddons:ecksie_sapling:5>,
		<betterwithaddons:ecksie_sapling:6>,
		<betterwithaddons:ecksie_sapling:7>,
		<betterwithaddons:ecksie_sapling:8>,
		<betterwithaddons:ecksie_sapling:0>,
		<betterwithaddons:greatarrow_destruction:0>,
		<betterwithaddons:greatarrow_lightning:0>,
		<betterwithaddons:greatarrow:0>,
		<betterwithaddons:greatbow:0>,
		<betterwithaddons:helmet_paper:0>,
		<betterwithaddons:iron_matchpick:0>,
		<betterwithaddons:iron_sand:0>,
		<betterwithaddons:japanmat:6>,
		<betterwithaddons:japanmat:7>,
		<betterwithaddons:japanmat:12>,
		<betterwithaddons:japanmat:13>,
		<betterwithaddons:japanmat:14>,
		<betterwithaddons:japanmat:15>,
		<betterwithaddons:japanmat:16>,
		<betterwithaddons:japanmat:17>,
		<betterwithaddons:japanmat:18>,
		<betterwithaddons:japanmat:19>,
		<betterwithaddons:japanmat:20>,
		<betterwithaddons:japanmat:21>,
		<betterwithaddons:japanmat:22>,
		<betterwithaddons:japanmat:23>,
		<betterwithaddons:japanmat:24>,
		<betterwithaddons:japanmat:25>,
		<betterwithaddons:japanmat:26>,
		<betterwithaddons:japanmat:27>,
		<betterwithaddons:japanmat:28>,
		<betterwithaddons:japanmat:29>,
		<betterwithaddons:japanmat:30>,
		<betterwithaddons:katana:0>,
		<betterwithaddons:kera:0>,
		<betterwithaddons:legendarium:0>,
		<betterwithaddons:legs_paper:0>,
		<betterwithaddons:material:0>,
		<betterwithaddons:nabe:0>,
		<betterwithaddons:netted_screen:0>,
		<betterwithaddons:pavement:0>,
		<betterwithaddons:shinai:0>,
		<betterwithaddons:slat:0>,
		<betterwithaddons:soulsand_pile:0>,
		<betterwithaddons:steel_carpentersaw:0>,
		<betterwithaddons:steel_kukri:0>,
		<betterwithaddons:steel_machete:0>,
		<betterwithaddons:steel_masonpick:0>,
		<betterwithaddons:steel_matchpick:0>,
		<betterwithaddons:steel_spade:0>,
		<betterwithaddons:tanto:0>,
		<betterwithaddons:tatara:0>,
		<betterwithaddons:tea_leaves:0>.withTag({type: "assam"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "bancha"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "ceylon"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "end"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "gyokuro"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "nether"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "sencha"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "tencha"}),
		<betterwithaddons:tea_leaves:0>.withTag({type: "white"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "assam"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "bancha"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "ceylon"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "end"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "gyokuro"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "houjicha"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "matcha"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "nether"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "sencha"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "tencha"}),
		<betterwithaddons:tea_powder:0>.withTag({type: "white"}),
		<betterwithaddons:tea_soaked:0>.withTag({type: "bancha"}),
		<betterwithaddons:tea_soaked:0>.withTag({type: "gyokuro"}),
		<betterwithaddons:tea_soaked:0>.withTag({type: "sencha"}),
		<betterwithaddons:tea_soaked:0>.withTag({type: "tencha"}),
		<betterwithaddons:tea_wilted:0>.withTag({type: "assam"}),
		<betterwithaddons:tea_wilted:0>.withTag({type: "ceylon"}),
		<betterwithaddons:tea_wilted:0>.withTag({type: "end"}),
		<betterwithaddons:tea_wilted:0>.withTag({type: "nether"}),
		<betterwithaddons:tea_wilted:0>.withTag({type: "white"}),
		<betterwithaddons:teacup:0>,
		<betterwithaddons:wakizashi:0>,
		<betterwithaddons:wrought_bars:0>,
		<betterwithaddons:wrought_lamp:0>,
		<betterwithaddons:ya:0>,
		<betterwithaddons:yumi:0>,
		<betterwithaddons:zen_soulsand:0>
	],

	stageFive.stage: [
		//Diamond Stuff
		<betterwithaddons:diamond_carpentersaw:0>,
		<betterwithaddons:diamond_kukri:0>,
		<betterwithaddons:diamond_machete:0>,
		<betterwithaddons:diamond_masonpick:0>,
		<betterwithaddons:diamond_matchpick:0>,
		<betterwithaddons:diamond_spade:0>,

		// Misc
		<betterwithaddons:world_scale_active:0>,
		<betterwithaddons:world_scale_ore:1>,
		<betterwithaddons:world_scale_ore:0>,
		<betterwithaddons:world_scale:0>,
		<betterwithaddons:worldshard:0>
	],

	stageDisabled.stage: [
		<betterwithaddons:crop_rice:0>,
		<betterwithaddons:food_bowl_rice:0>,
		<betterwithaddons:food_cooked_rice:0>,
		<betterwithaddons:japanmat:2>,
		<betterwithaddons:japanmat:3>,
		<betterwithaddons:tatami:0>
	]
};

static hiddenItems as IIngredient[] = [
	<betterwithaddons:boots_samurai:0>,
	<betterwithaddons:chest_samurai:0>,
	<betterwithaddons:crop_rush:0>,
	<betterwithaddons:decomat:3>,
	<betterwithaddons:extra_grass:1>,
	<betterwithaddons:extra_grass:2>,
	<betterwithaddons:extra_grass:3>,
	<betterwithaddons:extra_grass:0>,
	<betterwithaddons:food_clownfish_cooked:0>,
	<betterwithaddons:food_pufferfish_baked:0>,
	<betterwithaddons:helmet_samurai:0>,
	<betterwithaddons:leafpile_sakura:0>,
	<betterwithaddons:legs_samurai:0>,
	<betterwithaddons:poisoned_ya:0>,
	<betterwithaddons:rotten_food:0>,
	<betterwithaddons:wheatmat:0>
];

static hiddenRemove as IIngredient[] = [
	<betterwithaddons:bag:10>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:4>,
	<betterwithaddons:bolt:5>,
	<betterwithaddons:ink_and_quill:0>,
	<betterwithaddons:japanmat:31>,
	<betterwithaddons:japanmat:32>,
	<betterwithaddons:japanmat:33>,
	<betterwithaddons:japanmat:34>,
	<betterwithaddons:log_termite>,
	<betterwithaddons:material:4>,
	<betterwithaddons:material:5>,
	<betterwithaddons:material:6>,
	<betterwithaddons:rail_rusted:0>,
	<betterwithaddons:tatami_full:0>,
	<betterwithaddons:writing_table:1>,
	<betterwithaddons:writing_table:2>,
	<betterwithaddons:writing_table:3>,
	<betterwithaddons:writing_table:4>,
	<betterwithaddons:writing_table:5>,
	<betterwithaddons:writing_table:0>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
