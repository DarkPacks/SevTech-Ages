import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageCreativeUnused;
import scripts.crafttweaker.stages.stageBaykok;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<totemic:buffalo_items:1>,
		<totemic:buffalo_items:0>,
		<totemic:buffalo_meat:0>,
		<totemic:cedar_leaves:0>,
		<totemic:cedar_log:0>,
		<totemic:cedar_plank:0>,
		<totemic:cedar_sapling:0>,
		<totemic:cooked_buffalo_meat:0>,
		<totemic:drum:0>,
		<totemic:eagle_bone_whistle:0>,
		<totemic:eagle_drops:1>,
		<totemic:eagle_drops:0>,
		<totemic:flute:1>,
		<totemic:flute:0>,
		<totemic:jingle_dress:0>,
		<totemic:rattle:0>,
		<totemic:stripped_cedar_log:0>,
		<totemic:sub_items:1>,
		<totemic:tipi:0>,
		<totemic:totem_base:1>,
		<totemic:totem_base:2>,
		<totemic:totem_base:3>,
		<totemic:totem_base:4>,
		<totemic:totem_base:5>,
		<totemic:totem_base:6>,
		<totemic:totem_base:0>,
		<totemic:totem_pole:1>,
		<totemic:totem_pole:2>,
		<totemic:totem_pole:3>,
		<totemic:totem_pole:4>,
		<totemic:totem_pole:5>,
		<totemic:totem_pole:6>,
		<totemic:totem_pole:0>,
		<totemic:totem_torch:0>,
		<totemic:totem_whittling_knife:0>,
		<totemic:totemic_staff:0>,
		<totemic:totempedia:0>,
		<totemic:wind_chime:0>,
		<totemic:cedar_slab:0>,
		<totemic:wooden_pillar:*>,
		<totemic:wooden_pillar_base:*>,
	],

	stageOne.stage: [
		<totemic:cedar_fence_gate:0>,
		<totemic:cedar_fence:0>,
		<totemic:cedar_stairs:0>
	],

	stageBaykok.stage: [
		<totemic:baykok_bow:0>
	],

	stageCreativeUnused.stage: [
		<totemic:ceremony_cheat:0>,
		<totemic:nether_pipe:0>,
		<totemic:bark_stripper:0>
	]
};

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
}
