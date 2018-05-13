//Remove and Hide Recipes
var modIDs as string[] = [
];

for id in modIDs {
	for item in loadedMods[id].items {
		mods.jei.JEI.removeAndHide(item);
	}
}

//Remove Recipes Only
var modIDs2 as string[] = [
	"antiqueatlas",
	"astikoor",
	"dungpipe",
	"horsepower",
	"improvedbackpacks",
	"ironchest",
	"natura",
	"overloaded",
	"primal",
	"primal_tech",
	"progressiontweaks",
	"spartanshields",
	"totemic",
	"prospectors",
	"wopper"
];

for id in modIDs2 {
	for item in loadedMods[id].items {
		recipes.remove(item);
	}
}

recipes.remove(plank);
recipes.remove(<ore:stickWood>);

//Compressed
recipes.removeShapeless(<minecraft:cobblestone>, [<overloaded:compressed_cobblestone>]);
recipes.removeShapeless(<minecraft:obsidian>, [<overloaded:compressed_obsidian>]);
recipes.remove(<overloaded:compressed_cobblestone:*>);

//Industrial Foregoing TBD
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens_inverted:*>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_base>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_drill>);
