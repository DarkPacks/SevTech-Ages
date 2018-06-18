import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<ceramics:clay_barrel_unfired:1>,
		<ceramics:clay_barrel:1>,
		<ceramics:clay_soft>,
		<ceramics:unfired_clay:4>,
		<ceramics:unfired_clay:5>
	],

	stageOne: [
		<ceramics:channel>,
		<ceramics:clay_barrel_stained_extension:*>,
		<ceramics:clay_barrel_stained:*>,
		<ceramics:clay_barrel_unfired:2>,
		<ceramics:clay_barrel_unfired:3>,
		<ceramics:clay_barrel_unfired>,
		<ceramics:clay_barrel>,
		<ceramics:clay_boots>,
		<ceramics:clay_bucket_block>,
		<ceramics:clay_bucket>,
		<ceramics:clay_chestplate>,
		<ceramics:clay_hard:1>,
		<ceramics:clay_hard:2>,
		<ceramics:clay_hard:4>,
		<ceramics:clay_hard:5>,
		<ceramics:clay_hard:6>,
		<ceramics:clay_hard>,
		<ceramics:clay_helmet>,
		<ceramics:clay_leggings>,
		<ceramics:clay_shears>,
		<ceramics:clay_slab:1>,
		<ceramics:clay_slab:2>,
		<ceramics:clay_slab:4>,
		<ceramics:clay_slab:5>,
		<ceramics:clay_slab:6>,
		<ceramics:clay_slab>,
		<ceramics:clay_wall:1>,
		<ceramics:clay_wall:2>,
		<ceramics:clay_wall:3>,
		<ceramics:clay_wall:5>,
		<ceramics:clay_wall:6>,
		<ceramics:clay_wall:7>,
		<ceramics:clay_wall>,
		<ceramics:dark_bricks_stairs>,
		<ceramics:dragon_bricks_stairs>,
		<ceramics:faucet>,
		<ceramics:lava_bricks_stairs>,
		<ceramics:marine_bricks_stairs>,
		<ceramics:porcelain_barrel_extension:*>,
		<ceramics:porcelain_barrel:*>,
		<ceramics:porcelain_bricks_stairs>,
		<ceramics:porcelain:1>,
		<ceramics:porcelain:2>,
		<ceramics:porcelain:3>,
		<ceramics:porcelain:4>,
		<ceramics:porcelain:5>,
		<ceramics:porcelain:6>,
		<ceramics:porcelain:7>,
		<ceramics:porcelain:8>,
		<ceramics:porcelain:9>,
		<ceramics:porcelain:10>,
		<ceramics:porcelain:11>,
		<ceramics:porcelain:12>,
		<ceramics:porcelain:13>,
		<ceramics:porcelain:14>,
		<ceramics:porcelain:15>,
		<ceramics:porcelain>,
		<ceramics:rainbow_bricks_stairs>,
		<ceramics:rainbow_clay:1>,
		<ceramics:rainbow_clay:2>,
		<ceramics:rainbow_clay:3>,
		<ceramics:rainbow_clay:4>,
		<ceramics:rainbow_clay:5>,
		<ceramics:rainbow_clay:6>,
		<ceramics:rainbow_clay:7>,
		<ceramics:rainbow_clay>,
		<ceramics:unfired_clay:1>,
		<ceramics:unfired_clay:8>,
		<ceramics:unfired_clay:9>
	],

	stageTwo: [
		// Gold Stuff
		<ceramics:clay_hard:3>,
		<ceramics:clay_slab:3>,
		<ceramics:clay_wall:4>,
		<ceramics:golden_bricks_stairs>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.ceramics.stagedItems {
		stage.addIngredients(items);
	}
}
