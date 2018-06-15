#priority 4000

/*
	SevTech: Ages Stages preInit Script

	Functions or Global creations before other scripts are called.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stager;
import mods.sevtweaks.stager.Stage;

// ==================================
// Stage Naming
static stageNames as string[string] = {
	// Core Stages
	tutorial: "tutorial",
	zero: "zero",
	one: "one",
	two: "two",
	three: "three",
	four: "four",
	five: "five",
	creative: "creative",

	// Mob Stages
	zeroMob: "zero_mob",
	oneMob: "one_mob",
	twoMob: "two_mob",
	threeMob: "three_mob",
	fourMob: "four_mob",
	fiveMob: "five_mob",

	// Unique Stages
	baykok: "baykok",
	mapping: "mapping",

	// Unique stage intended to disable existing items/etc
	disabled: "disabled",

	// Stage for unused creative items
	creativeUnused: "creative_unused"
};

// ==================================
// Stage Creation
for key, stage in stageNames {
	Stager.initStage(stage);
}

// ==================================
// Logging
print("           `.:+osyo++:.     `.:++oo+:`");
print("        `:shhyssssssssyo/:+syyysssssyhs:`");
print("      `/yyo-+ssssyyyyssoshdsssssssss+:+yy-");
print("     .sysssoshhhhyyyyhhhhsyhosyyyyyyysyssy+`");
print("    -yysssyhyssssssssssssydmdhyyysyyyyyhhhdh:`");
print("   :yys+sssssssssyyysssoooosyyyssyyyyyyssssyhy/`");
print(" `odys+-yssssyyyo:.`         `:hs:..``     `.-oy/");
print("+yhhss.-yssyy/.`       `+hd+`  -o        -yds- .s/");
print("ysyyssossshds/.        :mhMd-  :o        hdmm+  /y");
print("ossssssssssssyhho-.`    `:-.`-/ds-...````.:/--:oh:");
print(".sssssssssssssyhhhhysooooosyhhhdyyhhyyyyyyyyyyhh:");
print("osssssssssssssssssyyyyyyysyddyssssssssssssssys:`");
print("ssssssssssssssssssssssyhhhyssssssyhhhhhhhyhh-");
print("sssssssssssssssssssssyyssssssssssssshysssssyy:");
print("sssssssssssssssssssssssssssssssssssssssssssssy:");
print("sssssssssssssyyyyyyyssssssssssssssssssssssssoyh-");
print("ssssssssssydhyyyyyyyhhhhhhhyyyyssssssssyhhddhhd+`");
print("ssssssssshdsssyyyhhyyyyyssyyyyhhhhhhhhyhysssyhs-");
print("sssssssyssdhyhhyhyyyyyssyyyyyyyyyyyyyyyyyyyyho`");
print("sssssssshhysssssssyyyyhhhhhhhhyyhhyyyyyyyyys+.");
print("ssssssssssyysssssssssssssssssssssssssshhs:`");
print("ddhdhhyyssssssssssssssssssssssssssyys+-");
print("hddhhhhhhhhhhhhyyyyyhhyyyyyssyhdms-`");
print("hhhhhhhhddddhhhdhhhhhhyhhhdddddhhdy/`");
print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdy-");
print("Loading SevTech: Ages: 3.1.0 ...");
