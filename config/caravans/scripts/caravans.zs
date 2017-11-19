//Create an Entity
//var pig = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityPig");

//Create an Entity with custom NBT
//var cow = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityCow", "{ CustomName:Darkosto }");
//Add an Entity Trade
//mod.caravans.Merchant.addEntityTrade("Scott", pig, cow);

//Regist Entities
//var DartFrog = mod.caravans.Merchant.createEntity("com.animania.common.entities.amphibians.EntityDartFrogs");
//var Frog = mod.caravans.Merchant.createEntity("com.animania.common.entities.amphibians.EntityFrogs");
//var Toad = mod.caravans.Merchant.createEntity("com.animania.common.entities.amphibians.EntityToad");
//var MareDraftHorse = mod.caravans.Merchant.createEntity("com.animania.common.entities.horses.EntityMareDraftHorse");
//var BluePeacock = mod.caravans.Merchant.createEntity("com.animania.common.entities.peacocks.EntityPeacockBlue");
//var WhitePeacock = mod.caravans.Merchant.createEntity("com.animania.common.entities.peacocks.EntityPeacockWhite");
//var BluePeafowl = mod.caravans.Merchant.createEntity("com.animania.common.entities.peacocks.EntityPeafowlBlue");
//var WhitePeafowl = mod.caravans.Merchant.createEntity("com.animania.common.entities.peacocks.EntityPeafowlWhite");
//var GreyFerret = mod.caravans.Merchant.createEntity("com.animania.common.entities.rodents.EntityFerretGrey");
//var WhiteFerret = mod.caravans.Merchant.createEntity("com.animania.common.entities.rodents.EntityFerretWhite");
//var Hedgehog = mod.caravans.Merchant.createEntity("com.animania.common.entities.rodents.EntityHedgehog");
//var AlbinoHedgehog = mod.caravans.Merchant.createEntity("com.animania.common.entities.rodents.EntityHedgehogAlbino");
var PolarBear = mod.caravans.Merchant.createEntity("net.minecraft.entity.monster.EntityPolarBear");
var Horse = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityHorse");
var Llama = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityLlama");
var Mooshroom = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityMooshroom");
var Ocelot = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityOcelot");
var Rabbit = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityRabbit");
var Wolf = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityWolf");
var Cow = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityCow");
var Sheep = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntitySheep");
//var Deer = mod.caravans.Merchant.createEntity("teamroots.roots.entity.EntityDeer");
//var Fairy = mod.caravans.Merchant.createEntity("teamroots.roots.entity.EntityFairy");
//var Sprout = mod.caravans.Merchant.createEntity("teamroots.roots.entity.EntitySprout");
var Buffalo = mod.caravans.Merchant.createEntity("totemic_commons.pokefenn.entity.animal.EntityBuffalo");
var Pig = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityPig");
var Chicken = mod.caravans.Merchant.createEntity("net.minecraft.entity.passive.EntityChicken");






//mod.caravans.Caravan.registerCaravan(name, @Optional leaderModel, @Optional gamestage)

//mod.caravans.Caravan.addFollower(caravan, merchant, @Optional merchantModel)

//mod.caravans.Merchant.registerMerchant(name, icon)

//mod.caravans.Merchant.addTrade(merchant, input, output)

//Adding Animals
//addItemEntityTrade("Scott", <minecraft:dirt>, " net.minecraft.entity.passive.EntityCow ");

//People

mod.caravans.Merchant.registerMerchant("Scott", <minecraft:dirt>);
mod.caravans.Merchant.registerMerchant("Chunk from the Goonies", <minecraft:wheat>);
mod.caravans.Merchant.registerMerchant("Uncle Phil", <minecraft:cobblestone>);
mod.caravans.Merchant.registerMerchant("Joey from the Hit TV Show Friends", <minecraft:stone>);
mod.caravans.Merchant.registerMerchant("Uncle Jesse", <minecraft:redstone>);
mod.caravans.Merchant.registerMerchant("Rebecca Romijn Stamos", <minecraft:coal>);
mod.caravans.Merchant.registerMerchant("The Dude You Got a Dell Guy", <minecraft:coal>);
mod.caravans.Merchant.registerMerchant("The guy that told his wife that he shrunk their kids", <minecraft:planks>);
mod.caravans.Merchant.registerMerchant("Jake from State Farm", <minecraft:leather_leggings>);

mod.caravans.Merchant.registerMerchant("The baby from the TV show Dinosaurs", <minecraft:diamond>);
//mod.caravans.Merchant.registerMerchant("Tom from Myspace", <tconstruct:edible:10>);
mod.caravans.Merchant.registerMerchant("The Can You Hear Me Now Guy", <personalcars:suvblue>);
mod.caravans.Merchant.registerMerchant("MandaLiz the Birthday Grill", <minecraft:wool>);
mod.caravans.Merchant.registerMerchant("That kid Mikey who eats anything", <minecraft:golden_chestplate>);
mod.caravans.Merchant.registerMerchant("Flo from Progressive", <minecraft:stick>);
mod.caravans.Merchant.registerMerchant("His Name Is Robert Paulsen", <betterwithmods:cooked_mystery_meat>);

mod.caravans.Merchant.registerMerchant("Tom Hanks from the movie Castaway", <minecraft:string>);


//Item Trades
mod.caravans.Merchant.addTrade("Scott", <minecraft:bread>, <primal_tech:wood_club>, 1, 3);
mod.caravans.Merchant.addTrade("Uncle Jesse", <minecraft:fish>, <abyssalcraft:shadowfragment>, 5, 8);
mod.caravans.Merchant.addTrade("Joey from the Hit TV Show Friends", <minecraft:fish:1>, <primal_tech:fluid_bladder>, 1, 4);
mod.caravans.Merchant.addTrade("Uncle Phil", <minecraft:rotten_flesh>, <minecraft:double_plant:5>, 2, 5);




mod.caravans.Merchant.addTrade("Tom Hanks from the movie Castaway", <abyssalcraft:coralium>, <chisel:chisel_iron>, 2, 5);
mod.caravans.Merchant.addTrade("Tom Hanks from the movie Castaway", <actuallyadditions:item_misc:12>, <chisel:chisel_iron>, 2, 3);
mod.caravans.Merchant.addTrade("Tom Hanks from the movie Castaway", <embers:ingot_tin>, <chisel:chisel_iron>, 1, 1);



//
mod.caravans.Merchant.addTrade("Chunk from the Goonies", <minecraft:beetroot>, <roots:spellcraft_book>, 1, 3);
mod.caravans.Merchant.addTrade("Chunk from the Goonies", <minecraft:beetroot>, <roots:herblore_book>, 1, 3);
//


mod.caravans.Merchant.addTrade("Rebecca Romijn Stamos", <minecraft:skull>, <minecraft:experience_bottle>, 5, 15);
//mod.caravans.Merchant.addTrade("The Dude You Got a Dell Guy", <animania:riding_crop>, <minecraft:lead>, 1, 3);
//mod.caravans.Merchant.addTrade("The guy that told his wife that he shrunk their kids", <roots:straw>, <betterwithaddons:bowl>, 4, 12);
//mod.caravans.Merchant.addTrade("Jake from State Farm", <animania:raw_prime_beef>, <minecraft:leather_leggings>, 2, 4);




//Entity Trades
//mod.caravans.Merchant.addEntityTrade("The baby from the TV show Dinosaurs", GreyFerret, Pig);
//mod.caravans.Merchant.addEntityTrade("The baby from the TV show Dinosaurs", WhiteFerret, Pig);
//mod.caravans.Merchant.addEntityTrade("The baby from the TV show Dinosaurs", Sheep, Cow);


//mod.caravans.Merchant.addEntityTrade("Flo from Progressive", Sprout, Llama);
//mod.caravans.Merchant.addEntityTrade("Flo from Progressive", Fairy, Mooshroom);
//mod.caravans.Merchant.addEntityTrade("Flo from Progressive", Deer, Wolf);
//mod.caravans.Merchant.addEntityTrade("Flo from Progressive", Pig, Wolf);


//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", BluePeacock, PolarBear);
//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", BluePeafowl, Llama);
//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", BluePeacock, PolarBear);
//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", WhitePeacock, Llama);
//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", WhitePeafowl, PolarBear);
//mod.caravans.Merchant.addEntityTrade("That kid Mikey who eats anything", WhitePeacock, Llama);

//mod.caravans.Merchant.addEntityTrade("MandaLiz the Birthday Grill", Frog, Chicken);
//mod.caravans.Merchant.addEntityTrade("MandaLiz the Birthday Grill", Toad, Chicken);
//mod.caravans.Merchant.addEntityTrade("MandaLiz the Birthday Grill", DartFrog, Chicken);

//mod.caravans.Merchant.addEntityTrade("The Can You Hear Me Now Guy", Hedgehog, Horse);
//mod.caravans.Merchant.addEntityTrade("The Can You Hear Me Now Guy", AlbinoHedgehog, Horse);

//mod.caravans.Merchant.addEntityTrade("Tom from Myspace", Rabbit, Hedgehog);
//mod.caravans.Merchant.addEntityTrade("Tom from Myspace", Rabbit, Buffalo);


//mod.caravans.Merchant.addEntityTrade("His Name Is Robert Paulsen", Buffalo, Ocelot);
//mod.caravans.Merchant.addEntityTrade("His Name Is Robert Paulsen", Chicken, Llama);


//Caravans

//stage 1
mod.caravans.Caravan.registerCaravan("Fan Club of Cody from the TV Show Step by Step", "villager", 0);
mod.caravans.Caravan.addFollower("Fan Club of Cody from the TV Show Step by Step", "Scott", "spider");
mod.caravans.Caravan.addFollower("Fan Club of Cody from the TV Show Step by Step", "Chunk from the Goonies", "villager");
//mod.caravans.Caravan.addFollower("Fan Club of Cody from the TV Show Step by Step", "The baby from the TV show Dinosaurs", "creeper");
//mod.caravans.Caravan.addFollower("Fan Club of Cody from the TV Show Step by Step", "MandaLiz the Birthday Grill", "creeper");
mod.caravans.Caravan.addFollower("Fan Club of Cody from the TV Show Step by Step", "Tom from Myspace", "creeper");

mod.caravans.Caravan.registerCaravan("The Fun Train", "villager", 0);
mod.caravans.Caravan.addFollower("The Fun Train", "Rebecca Romijn Stamos", "skeleton");
mod.caravans.Caravan.addFollower("The Fun Train", "Uncle Jesse", "zombie");
//mod.caravans.Caravan.addFollower("The Fun Train", "The guy that told his wife that he shrunk their kids", "spider");
//mod.caravans.Caravan.addFollower("The Fun Train", "The Can You Hear Me Now Guy", "spider");

//mod.caravans.Caravan.registerCaravan("The Peeps With Pants", "villager", 0);
//mod.caravans.Caravan.addFollower("The Peeps With Pants", "The Dude You Got a Dell Guy", "creeper");
//mod.caravans.Caravan.addFollower("The Peeps With Pants", "Jake from State Farm", "villager");
//mod.caravans.Caravan.addFollower("The Peeps With Pants", "Flo from Progressive", "villager");


mod.caravans.Caravan.registerCaravan("The Caravan of LooOooOve", "villager", 0);
mod.caravans.Caravan.addFollower("The Caravan of LooOooOve", "Joey from the Hit TV Show Friends", "villager");
mod.caravans.Caravan.addFollower("The Caravan of LooOooOve", "Uncle Phil", "villager");
//mod.caravans.Caravan.addFollower("The Caravan of LooOooOve", "That kid Mikey who eats anything", "villager");
mod.caravans.Caravan.addFollower("The Caravan of LooOooOve", "His Name Is Robert Paulsen", "villager");


//stage 2
mod.caravans.Caravan.registerCaravan("Fresh Princes of Bel Air", "villager", 1);
mod.caravans.Caravan.addFollower("Fresh Princes of Bel Air", "Tom Hanks from the movie Castaway", "villager");

