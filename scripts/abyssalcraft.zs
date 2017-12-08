mods.abyssalcraft.InfusionRitual.addRitual("beneathritual", 0, 0, 1000, false, <beneath:teleporterbeneath>, <progressiontweaks:blank_teleporter>, [<embers:block_lantern>, <abyssalcraft:stone:7>, <abyssalcraft:stone:7>, <betterwithmods:material:18>, <abyssalcraft:stone:7>, <roots:fairy_dust>, <abyssalcraft:stone:7>,  <minecraft:dark_oak_fence_gate>], false, []);
game.setLocalization("ac.ritual.beneathritual", "Beneath Portal Creation Ritual");


//Astral Sorcery Table 1
mods.abyssalcraft.InfusionRitual.addRitual("ascraftingtable", 0, 0, 1000, false, <astralsorcery:blockaltar>, <minecraft:crafting_table>, [<ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>, <ore:stoneMarble>,  <astralsorcery:itemcraftingcomponent>], false, []);
game.setLocalization("ac.ritual.ascraftingtable", "Luminous Crafting Table Creation");
game.setLocalization("ac.ritual.ascraftingtable.desc", "This ritual can only be performed in Stage 2");
mods.abyssalcraft.RitualStages.addRitualStage("one", "ascraftingtable");


//Astral Sorcery Constellation Paper
mods.abyssalcraft.InfusionRitual.addRitual("constellationpaper", 0, 0, 500, false, <astralsorcery:itemconstellationpaper>, <astralsorcery:itemcraftingcomponent:5>, [<ore:asCrystal>, <astralsorcery:itemcraftingcomponent>, <minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent>, <ore:asCrystal>, <astralsorcery:itemcraftingcomponent>, <minecraft:gold_ingot>, <astralsorcery:itemcraftingcomponent>], false, []);
game.setLocalization("ac.ritual.constellationpaper", "Constellation Paper");
game.setLocalization("ac.ritual.constellationpaper.desc", "This ritual can only be performed in Stage 2");
mods.abyssalcraft.RitualStages.addRitualStage("two", "constellationpaper");






//mods.abyssalcraft.SummonRitual.addRitual("summonTest", 0, -1, 100, false, "minecraft:zombie", [<ore:plankWood>, <minecraft:obsidian>, <minecraft:string>]); //summons a zombie, you can either use registry names (eg "modid:name"), or paths to classes ("com.example.ExampleMob", if that was a thing)
//mods.abyssalcraft.GatewayKey.addOverride(10, 2); //adds a Gateway Key override for The Beneath, allowing you to place Omothol portals in there
//mods.abyssalcraft.Rituals.mapDimensionToBookType(10, 4); //maps The Beneath to Book Type 4 (the Abyssalnomicon), allowing that to do ritual stuff in the dimension
//mods.abyssalcraft.Rituals.mapDimensionToName(10, "The Beneath"); //maps the name "The Beneath" to the dimension ID for displaying in the Necronomicon for dimension-specific rituals
//mods.abyssalcraft.Rituals.mapDimensionToBookTypeAndName(10, 4, "The Beneath"); //Executes both of the above methods, instead of calling them one at a time
