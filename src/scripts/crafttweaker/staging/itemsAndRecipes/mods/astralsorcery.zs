import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<astralsorcery:blockaltar>,
		<astralsorcery:blockmarble:1>,
		<astralsorcery:blockmarble:2>,
		<astralsorcery:blockmarble:3>,
		<astralsorcery:blockmarble:4>,
		<astralsorcery:blockmarble:5>,
		<astralsorcery:blockmarble:6>,
		<astralsorcery:blockmarble>,
		<astralsorcery:blockmarbleslab>,
		<astralsorcery:blockmarblestairs>,
		<astralsorcery:itemcraftingcomponent:5>,
		<astralsorcery:itemcraftingcomponent>,
		<astralsorcery:itemjournal>
	],

	stageTwo.stage: [
		<astralsorcery:blockaltar:1>,
		<astralsorcery:blockaltar:2>,
		<astralsorcery:blockaltar:3>,
		<astralsorcery:blockattunementaltar>,
		<astralsorcery:blockattunementrelay>,
		<astralsorcery:blockblackmarble:*>,
		<astralsorcery:blockbore>,
		<astralsorcery:blockborehead:*>,
		<astralsorcery:blockcelestialcollectorcrystal:*>,
		<astralsorcery:blockcelestialcrystals:*>,
		<astralsorcery:blockcelestialgateway>,
		<astralsorcery:blockcollectorcrystal:*>,
		<astralsorcery:blockcustomflower>,
		<astralsorcery:blockcustomore:*>,
		<astralsorcery:blockcustomsandore>,
		<astralsorcery:blockgeolosyssamplecluster>,
		<astralsorcery:blockinfusedwood:*>,
		<astralsorcery:blocklens>,
		<astralsorcery:blockmachine:*>,
		<astralsorcery:blockmapdrawingtable>,
		<astralsorcery:blockobservatory>,
		<astralsorcery:blockprism>,
		<astralsorcery:blockrituallink>,
		<astralsorcery:blockritualpedestal>,
		<astralsorcery:blockstarlightinfuser>,
		<astralsorcery:blocktreebeacon>,
		<astralsorcery:blockwell>,
		<astralsorcery:blockworldilluminator>,
		<astralsorcery:itemarchitectwand>,
		<astralsorcery:itemcape:*>,
		<astralsorcery:itemcelestialcrystal>,
		<astralsorcery:itemchargedcrystalaxe>,
		<astralsorcery:itemchargedcrystalpickaxe>,
		<astralsorcery:itemchargedcrystalshovel>,
		<astralsorcery:itemchargedcrystalsword>,
		<astralsorcery:itemcoloredlens:*>,
		<astralsorcery:itemconstellationpaper:*>,
		<astralsorcery:itemcraftingcomponent:1>,
		<astralsorcery:itemcraftingcomponent:2>,
		<astralsorcery:itemcraftingcomponent:3>,
		<astralsorcery:itemcraftingcomponent:4>,
		<astralsorcery:itemcrystalaxe>,
		<astralsorcery:itemcrystalpickaxe>,
		<astralsorcery:itemcrystalshovel>,
		<astralsorcery:itemcrystalsword>,
		<astralsorcery:itemenchantmentamulet>.withTag({astralsorcery: {amuletEnchantments: [{ench: "minecraft:depth_strider", level: 1, type: 0}, {ench: "minecraft:sharpness", level: 1, type: 1}], amuletColor: -6579}}),
		<astralsorcery:itemgrapplewand>,
		<astralsorcery:itemhandtelescope>,
		<astralsorcery:itemilluminationwand>,
		<astralsorcery:iteminfusedglass:*>,
		<astralsorcery:itemknowledgeshare:*>,
		<astralsorcery:itemlinkingtool>,
		<astralsorcery:itemrockcrystalsimple>,
		<astralsorcery:itemsextant>.withTag({astralsorcery: {advanced: 1 as byte}}),
		<astralsorcery:itemsextant>.withTag({astralsorcery: {}}),
		<astralsorcery:itemshiftingstar>,
		<astralsorcery:itemskyresonator>,
		<astralsorcery:itemtunedcelestialcrystal:*>,
		<astralsorcery:itemtunedrockcrystal:*>,
		<astralsorcery:itemusabledust:*>,
		<astralsorcery:itemwand>,
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {}})
	],

	stageThree.stage: [
		<astralsorcery:blockchalice>
	],

	stageFive.stage: [
		<astralsorcery:itemexchangewand>
	]
};

static hiddenItems as IIngredient[] = [
	<astralsorcery:blockmarbleslab>, // This is not a finshed Block; advised to not use it till completed.
	<astralsorcery:itemchargedcrystalpickaxe> // <-- like seriously? a pick that shows hidden ores. ples hellfirepvp >.<
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.astralsorcery.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.astralsorcery.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
