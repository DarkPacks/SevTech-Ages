import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<astralsorcery:blockaltar:0>,
		<astralsorcery:blockmarble:1>,
		<astralsorcery:blockmarble:2>,
		<astralsorcery:blockmarble:3>,
		<astralsorcery:blockmarble:4>,
		<astralsorcery:blockmarble:5>,
		<astralsorcery:blockmarble:6>,
		<astralsorcery:blockmarble:0>,
		<astralsorcery:blockmarbleslab:0>,
		<astralsorcery:blockmarblestairs:0>,
		<astralsorcery:itemcraftingcomponent:5>,
		<astralsorcery:itemcraftingcomponent:0>,
		<astralsorcery:itemjournal:0>
	],

	stageTwo.stage: [
		<astralsorcery:blockaltar:1>,
		<astralsorcery:blockaltar:2>,
		<astralsorcery:blockaltar:3>,
		<astralsorcery:blockattunementaltar:0>,
		<astralsorcery:blockattunementrelay:0>,
		<astralsorcery:blockblackmarble:*>,
		<astralsorcery:blockbore:0>,
		<astralsorcery:blockborehead:0>,
		<astralsorcery:blockcelestialcollectorcrystal:*>,
		<astralsorcery:blockcelestialcrystals:*>,
		<astralsorcery:blockcelestialgateway:0>,
		<astralsorcery:blockcollectorcrystal:*>,
		<astralsorcery:blockcustomflower:0>,
		<astralsorcery:blockcustomore:*>,
		<astralsorcery:blockcustomsandore:0>,
		<astralsorcery:blockgemcrystals:0>,
		<astralsorcery:blockgemcrystals:1>,
		<astralsorcery:blockgemcrystals:2>,
		<astralsorcery:blockgemcrystals:3>,
		<astralsorcery:blockgemcrystals:4>,
		<astralsorcery:blockgeolosyssamplecluster:0>,
		<astralsorcery:blockinfusedwood:*>,
		<astralsorcery:blocklens:0>,
		<astralsorcery:blockmachine:*>,
		<astralsorcery:blockmapdrawingtable:0>,
		<astralsorcery:blockprism:0>,
		<astralsorcery:blockrituallink:0>,
		<astralsorcery:blockritualpedestal:0>,
		<astralsorcery:blockstarlightinfuser:0>,
		<astralsorcery:blocktreebeacon:0>,
		<astralsorcery:blockwell:0>,
		<astralsorcery:blockworldilluminator:0>,
		<astralsorcery:itemarchitectwand:0>,
		<astralsorcery:itemcape:*>,
		<astralsorcery:itemcape:0>,
		<astralsorcery:itemcape:0>.withTag({astralsorcery: {}}),
		<astralsorcery:itemcelestialcrystal:0>,
		<astralsorcery:itemchargedcrystalaxe:*>,
		<astralsorcery:itemchargedcrystalpickaxe:*>,
		<astralsorcery:itemchargedcrystalshovel:*>,
		<astralsorcery:itemchargedcrystalsword:*>,
		<astralsorcery:itemcoloredlens:*>,
		<astralsorcery:itemconstellationpaper:*>,
		<astralsorcery:itemcraftingcomponent:1>,
		<astralsorcery:itemcraftingcomponent:2>,
		<astralsorcery:itemcraftingcomponent:3>,
		<astralsorcery:itemcraftingcomponent:4>,
		<astralsorcery:itemcrystalaxe:*>,
		<astralsorcery:itemcrystalpickaxe:*>,
		<astralsorcery:itemcrystalshovel:*>,
		<astralsorcery:itemcrystalsword:*>,
		<astralsorcery:itemgrapplewand:0>,
		<astralsorcery:itemhandtelescope:0>,
		<astralsorcery:itemilluminationwand:0>,
		<astralsorcery:iteminfusedglass:*>,
		<astralsorcery:itemknowledgeshare:*>,
		<astralsorcery:itemlinkingtool:0>,
		<astralsorcery:itemperkgem:0>.withTag({astralsorcery: {modifiers: [{mode: 1, baseValue: 0.06940986 as float, idMost: -3500271140658593275 as long, type: "astralsorcery.projectileattackdamage", idLeast: -5690853214501329548 as long}, {mode: 1, baseValue: 0.06523435 as float, idMost: -2094018233178700936 as long, type: "astralsorcery.maxhealth", idLeast: -5799080309016450669 as long}, {mode: 1, baseValue: 0.051517107 as float, idMost: -8549864506479328231 as long, type: "astralsorcery.movespeed", idLeast: -6323431257470054066 as long}]}}),
		<astralsorcery:itemperkgem:1>.withTag({astralsorcery: {modifiers: [{mode: 1, baseValue: 0.053532366 as float, idMost: 8383532414938792242 as long, type: "astralsorcery.maxhealth", idLeast: -5746197697084733003 as long}, {mode: 1, baseValue: 0.0526237 as float, idMost: -3021617303100896076 as long, type: "astralsorcery.attackspeed", idLeast: -5303091824141759005 as long}]}}),
		<astralsorcery:itemperkgem:2>.withTag({astralsorcery: {modifiers: [{mode: 1, baseValue: 0.05758308 as float, idMost: 6815915475742640333 as long, type: "astralsorcery.projectileattackdamage", idLeast: -8343551605423860456 as long}, {mode: 1, baseValue: 0.08 as float, idMost: -26675097360904430 as long, type: "astralsorcery.armor", idLeast: -8806404208308977082 as long}]}}),
		<astralsorcery:itemperkseal>,
		<astralsorcery:itemrockcrystalsimple:0>,
		<astralsorcery:itemshiftingstar:0>,
		<astralsorcery:itemshiftingstar:0>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}),
		<astralsorcery:itemshiftingstar:0>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}),
		<astralsorcery:itemshiftingstar:0>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}),
		<astralsorcery:itemshiftingstar:0>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}),
		<astralsorcery:itemshiftingstar:0>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}),
		<astralsorcery:itemskyresonator:0>,
		<astralsorcery:itemtunedcelestialcrystal:*>,
		<astralsorcery:itemtunedrockcrystal:*>,
		<astralsorcery:itemusabledust:*>,
		<astralsorcery:itemwand:0>,
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.armara"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.discidia"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.evorsio"}}),
		<astralsorcery:itemwand:0>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}})
	],

	stageThree.stage: [
		<astralsorcery:blockborehead:1>,
		<astralsorcery:blockchalice:0>,
		<astralsorcery:blockobservatory:0>,
		<astralsorcery:itemenchantmentamulet:0>.withTag({astralsorcery: {}})
	],

	stageFive.stage: [
		<astralsorcery:itemexchangewand:0>
	],

	stageDisabled.stage: [
		<astralsorcery:itemsextant:0>.withTag({astralsorcery: {advanced: 1 as byte}}),
		<astralsorcery:itemsextant:0>.withTag({astralsorcery: {}})
	]
};

static hiddenItems as IIngredient[] = [
	<astralsorcery:blockflarelight:0>
];

static hiddenRemove as IIngredient[] = [
];

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
