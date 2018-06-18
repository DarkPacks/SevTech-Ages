import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][Stage] = {
	stageZero: [
		<totemic:bark_stripper>,
		<totemic:buffalo_items:1>,
		<totemic:buffalo_items>,
		<totemic:buffalo_meat>,
		<totemic:cedar_leaves>,
		<totemic:cedar_log>,
		<totemic:cedar_plank>,
		<totemic:cedar_sapling>,
		<totemic:cooked_buffalo_meat>,
		<totemic:drum>,
		<totemic:eagle_bone_whistle>,
		<totemic:eagle_drops:1>,
		<totemic:eagle_drops>,
		<totemic:flute:1>,
		<totemic:flute>,
		<totemic:jingle_dress>,
		<totemic:nether_pipe>,
		<totemic:rattle>,
		<totemic:stripped_cedar_log>,
		<totemic:sub_items:1>,
		<totemic:tipi>,
		<totemic:totem_base:1>,
		<totemic:totem_base:2>,
		<totemic:totem_base:3>,
		<totemic:totem_base:4>,
		<totemic:totem_base:5>,
		<totemic:totem_base:6>,
		<totemic:totem_base>,
		<totemic:totem_pole:1>,
		<totemic:totem_pole:2>,
		<totemic:totem_pole:3>,
		<totemic:totem_pole:4>,
		<totemic:totem_pole:5>,
		<totemic:totem_pole:6>,
		<totemic:totem_pole>,
		<totemic:totem_torch>,
		<totemic:totem_whittling_knife>,
		<totemic:totemic_staff>,
		<totemic:totempedia>,
		<totemic:wind_chime>
	]
};

function init() {
	for stage, items in scripts.crafttweaker.staging.itemsAndRecipes.totemic.stagedItems {
		stage.addIngredients(items);
	}
}
