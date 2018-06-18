import crafttweaker.item.IIngredient;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

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
		<astralsorcery:blockborehead>,
		<astralsorcery:blockcelestialcollectorcrystal:*>,
		<astralsorcery:blockcelestialcrystals:*>,
		<astralsorcery:blockcelestialgateway>,
		<astralsorcery:blockcollectorcrystal:*>,
		<astralsorcery:blockcustomflower>,
		<astralsorcery:blockcustomore:*>,
		<astralsorcery:blockcustomsandore>,
		<astralsorcery:blockgeolosyssamplecluster>,
		<astralsorcery:blocklens>,
		<astralsorcery:blockmachine:*>,
		<astralsorcery:blockmapdrawingtable>,
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
		<astralsorcery:itemgrapplewand>,
		<astralsorcery:itemhandtelescope>,
		<astralsorcery:itemilluminationwand>,
		<astralsorcery:iteminfusedglass:*>,
		<astralsorcery:itemknowledgeshare:*>,
		<astralsorcery:itemlinkingtool>,
		<astralsorcery:itemrockcrystalsimple>,
		<astralsorcery:itemshiftingstar>,
		<astralsorcery:itemskyresonator>,
		<astralsorcery:itemtunedcelestialcrystal:*>,
		<astralsorcery:itemtunedrockcrystal:*>,
		<astralsorcery:itemusabledust:*>,
		<astralsorcery:itemwand>,
		<astralsorcery:itemwand>.withTag({astralsorcery: {}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}),
		<astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}})
	],

	stageThree.stage: [
		<astralsorcery:blockchalice>
	],

	stageFive.stage: [
		<astralsorcery:itemexchangewand>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.astralsorcery.stagedItems {
		Stager.getStage(stageName).addIngredients(items);
	}
}
