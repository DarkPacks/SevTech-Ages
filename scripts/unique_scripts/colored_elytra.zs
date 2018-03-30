import crafttweaker.item.IItemStack;

/*
	Elytra
*/
recipes.removeByRecipeName("quark:elytra_dying");
recipes.addShapeless(
	"colored_elytra",
	<minecraft:elytra>.withTag({}),
	[<minecraft:elytra:*>.marked("elytra"), <ore:dye>.marked("dye")],
	function(out, ins, cInfo) {
		//Get dye color
		var color as string = scripts.unique_scripts.colored_elytra.getDyeColor(ins.dye);
		var colorID as int = scripts.unique_scripts.colored_elytra.getElytraDyeIDFromColor(color);

		var currentTag = ins.elytra.tag;
		var newTag = currentTag.update({"quark:elytraDye": colorID});

		return ins.elytra.withTag(newTag);
	},
	null
);

function getDyeColor(dye as IItemStack) as string {
	for dyeOredict in dye.ores {
		if (dyeOredict.name.startsWith("dye") & dyeOredict.name.length > 3) {
			return dyeOredict.name.substring(3);
		}
	}
}

function getElytraDyeIDFromColor(color as string) as int {
	for id, colorName in scripts.unique_scripts.dyes.minecraftDyeIDTable {
		if (colorName.toLowerCase() == color.toLowerCase()) {
			return id as int;
		}
	}
}
