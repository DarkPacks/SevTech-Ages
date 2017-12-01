var backpack = <improvedbackpacks:backpack>;

//Base backpack
recipes.addShaped(backpack, [[leather, leather, leather], [leather, <immcraft:chest>, leather], [leather, <primal:leather_cordage>, leather]]);

//Backpack color recipes
for i in 0 to 16 {
	recipes.addShapeless(
		"ct-improvedbackpacks-backpack-color_" + i,
		backpack.withTag({Color: i}),
		[
			backpack.marked("bag"),
			<pickletweaks:dye_powder>.definition.makeStack(i)
		],

		//Recipe Function
		function(out, ins, cInfo) {
			var currentTag = ins.bag.tag;
			var mergeData = out.tag;
			var newTag = currentTag.update(mergeData);
			return out.withTag(newTag);
		},

		//recipeAction (null)
		null
	);
}
