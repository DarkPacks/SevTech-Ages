//Alchemy Array

//mods.bloodmagic.AlchemyArray.addRecipe(IItemStack output, IItemStack catalyst, IItemStack output, @Optional string textureLocation);
//mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:stick>, <minecraft:grass>, <minecraft:diamond>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");
//mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:stick>, <minecraft:grass>, <minecraft:diamond>);

//mods.bloodmagic.AlchemyArray.removeRecipe(IItemStack input, IItemStack catalyst);
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate:3>);

mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:sigil_divination>, <betterwithaddons:tweakmat>, <bloodmagic:slate>);


//Blood Altar

//mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
//mods.bloodmagic.BloodAltar.addRecipe(<minecraft:glass>, <minecraft:stick>, 0, 20,30,40);

//mods.bloodmagic.BloodAltar.removeRecipe(IItemStack input);
//mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);


mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}));
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}));

mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <tconstruct:edible:3>, 0, 2000,2,1);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <abyssalcraft:cpearl>, 1, 5000,5,5);


mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:sanguine_book>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:sanguine_book>, <primal:plant_cloth>, 0, 1000,20,0);



//Hellfire Forge

//inputs has a max size of 4
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
//mods.bloodmagic.TartaricForge.addRecipe(<minecraft:diamond>,[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>], 10,10);


//inputs has a max size of 4
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);


mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gunpowder>, <pickletweaks:dye_powder>, <minecraft:coal:1>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone>, <minecraft:torch>, <minecraft:redstone>, <minecraft:redstone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ice>, <minecraft:snowball>, <minecraft:snowball>, <minecraft:redstone>]);



mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:arcane_ashes>,[<betterwithaddons:tweakmat>, <minecraft:gunpowder>, <pickletweaks:dye_powder>, <minecraft:coal:1>], 0,0);

mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:11>,[<betterwithmods:candle:*>, <minecraft:torch>, <betterwithaddons:tweakmat>, <betterwithaddons:tweakmat>], 300,10);

mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:32>,[<minecraft:snow>, <minecraft:snowball>, <minecraft:snowball>, <betterwithaddons:tweakmat>], 80,10);


