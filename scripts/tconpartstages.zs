//Thank you to Dawenzel for putting this script together!
import crafttweaker.item.IItemStack;

var parts = [
  <tconstruct:pick_head>,
  <tconstruct:shovel_head>,
  <tconstruct:axe_head>,
  <tconstruct:broad_axe_head>,
  <tconstruct:sword_blade>,
  <tconstruct:large_sword_blade>,
  <tconstruct:hammer_head>,
  <tconstruct:excavator_head>,
  <tconstruct:scythe_head>,
  <tconstruct:pan_head>,
  <tconstruct:sign_head>,
  <tconstruct:tool_rod>,
  <tconstruct:tough_tool_rod>,
  <tconstruct:binding>,
  <tconstruct:tough_binding>,
  <tconstruct:wide_guard>,
  <tconstruct:hand_guard>,
  <tconstruct:cross_guard>,
  <tconstruct:large_plate>,
  <tconstruct:knife_blade>,
  <tconstruct:bow_limb>,
  <tconstruct:bow_string>,
  <tconstruct:arrow_head>,
  <tconstruct:arrow_shaft>,
  <tconstruct:fletching>,
  <tconstruct:sharpening_kit>
] as IItemStack[];

var stageMaterial = [
  ["one", "wood"],
  ["one", "stone"],
  ["one", "flint"],
  ["one", "cactus"],
  ["one", "bone"],
  ["two", "copper"],
  ["two", "bronze"],
  ["two", "knightslime"],
  ["two", "slime"],
  ["two", "blueslime"],
  ["two", "prismarine"],
  ["two", "sponge"],
  ["two", "electrum"],
  ["two", "constantan"],
  ["two", "abyssalnite"],
  ["two", "refined_coralium"],
  ["two", "dreadium"],
  ["two", "silver"],
  ["two", "iron"],
  ["three", "paper"],
  ["three", "lead"],
  ["three", "firewood"],
  ["three", "magmaslime"],
  ["three", "netherrack"],
  ["three", "endstone"],
  ["three", "steel"],
  ["three", "treatedwood"],
  ["three", "obsidian"],
  ["four", "pigiron"],
  ["four", "cobalt"],
  ["four", "ardite"],
  ["four", "manyullyn"],
  ["four", "integrationforegoing.plastic"],
  ["four", "integrationforegoing.pink_slime"],
  ["five", "ma.prosperity"],
  ["five", "ma.soulium"],
  ["five", "ma.base_essence"],
  ["five", "ma.inferium"],
  ["five", "ma.prudentium"],
  ["five", "ma.intermedium"],
  ["five", "ma.superium"],
  ["five", "ma.supremium"]
] as string[][];

for part in parts {
  for array in stageMaterial {
    mods.ItemStages.addItemStage(array[0], part.withTag({Material: array[1]}));
  }
}