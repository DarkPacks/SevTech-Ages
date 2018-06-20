import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<bibliocraft:plumbline>,
		<bibliocraft:shelf:1>,
		<bibliocraft:shelf:2>,
		<bibliocraft:shelf:3>,
		<bibliocraft:shelf:4>,
		<bibliocraft:shelf:5>,
		<bibliocraft:shelf:6>,
		<bibliocraft:shelf>,
		<bibliocraft:toolrack:*>
	],

	stageTwo.stage: [
		<bibliocraft:armorstand:1>,
		<bibliocraft:armorstand:2>,
		<bibliocraft:armorstand:3>,
		<bibliocraft:armorstand:4>,
		<bibliocraft:armorstand:5>,
		<bibliocraft:armorstand:6>,
		<bibliocraft:armorstand>,
		<bibliocraft:atlasbook>,
		<bibliocraft:bigbook>,
		<bibliocraft:bookcase:*>,
		<bibliocraft:bookcasecreative:*>,
		<bibliocraft:case:*>,
		<bibliocraft:compass>,
		<bibliocraft:desk:*>,
		<bibliocraft:fancysign:*>,
		<bibliocraft:fancyworkbench:*>,
		<bibliocraft:framedchest:*>,
		<bibliocraft:framingboard>,
		<bibliocraft:framingsaw>,
		<bibliocraft:framingsheet>,
		<bibliocraft:furniturepaneler:*>,
		<bibliocraft:handdrill>,
		<bibliocraft:label:*>,
		<bibliocraft:lampgold:*>,
		<bibliocraft:lampiron:*>,
		<bibliocraft:lanterngold:*>,
		<bibliocraft:lanterniron:*>,
		<bibliocraft:mapframe:*>,
		<bibliocraft:maptool>,
		<bibliocraft:paintingcanvas>,
		<bibliocraft:paintingframeborderless:*>,
		<bibliocraft:paintingframefancy:*>,
		<bibliocraft:paintingframeflat:*>,
		<bibliocraft:paintingframemiddle:*>,
		<bibliocraft:paintingframesimple:*>,
		<bibliocraft:recipebook>,
		<bibliocraft:seat:*>,
		<bibliocraft:seatback1:*>,
		<bibliocraft:seatback2:*>,
		<bibliocraft:seatback3:*>,
		<bibliocraft:seatback4:*>,
		<bibliocraft:seatback5:*>,
		<bibliocraft:slottedbook>.withTag({authorName: "by Sir Hidington"}),
		<bibliocraft:stockroomcatalog>,
		<bibliocraft:swordpedestal:*>,
		<bibliocraft:table:*>
	],

	stageThree.stage: [
		<bibliocraft:atlasplate>,
		<bibliocraft:bell>,
		<bibliocraft:bibliochase>,
		<bibliocraft:biblioclipboard>,
		<bibliocraft:bibliodrill>,
		<bibliocraft:biblioglasses:1>,
		<bibliocraft:biblioglasses:2>,
		<bibliocraft:biblioglasses>,
		<bibliocraft:clock:*>,
		<bibliocraft:cookiejar>,
		<bibliocraft:deathcompass>,
		<bibliocraft:dinnerplate>,
		<bibliocraft:discrack>,
		<bibliocraft:enchantedplate>,
		<bibliocraft:paintingpress>,
		<bibliocraft:potionshelf:*>,
		<bibliocraft:printingpress>,
		<bibliocraft:printplate>,
		<bibliocraft:tape>,
		<bibliocraft:tapemeasure>,
		<bibliocraft:typesettingtable>,
		<bibliocraft:typewriter:*>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.bibliocraft.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
