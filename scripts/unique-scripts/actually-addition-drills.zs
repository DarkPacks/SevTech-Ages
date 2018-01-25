/*
	Colored Drill Recipes
*/
recipes.addShapeless(
	"colored_drill",
	<actuallyadditions:item_drill:*>,
	[<ore:toolDrill>.marked("drill"), <ore:plasticColored>.marked("plastic")],
	function(out, ins, cInfo) {
		var drillMeta = 15 - ins.plastic.metadata;
		return out.definition.makeStack(drillMeta).withTag(ins.drill.tag);
	},
	null
);
