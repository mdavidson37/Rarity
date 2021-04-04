local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local legionToys = {
	["Arcano-Shower"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Arcano-Shower"],
		itemId = 141297,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Ash-Covered Horn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ash-Covered Horn"],
		itemId = 104329,
		npcs = {72898},
		chance = 72,
		coords = {
			{m = 554, x = 35, y = 32.4, n = L["High Priest of Ordos"]},
			{m = 554, x = 45, y = 26, n = L["High Priest of Ordos"]},
			{m = 554, x = 50.6, y = 23.4, n = L["High Priest of Ordos"]},
			{m = 554, x = 57.6, y = 26.4, n = L["High Priest of Ordos"]},
			{m = 554, x = 49.6, y = 33.6, n = L["High Priest of Ordos"]},
			{m = 554, x = 56.6, y = 34.2, n = L["High Priest of Ordos"]}
		}
	},
	["Battle Horn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Battle Horn"],
		itemId = 86565,
		npcs = {51059},
		chance = 5,
		coords = {
			{m = 376, x = 32.8, y = 62.8, n = L["Blackhoof"]},
			{m = 376, x = 34.6, y = 59.6, n = L["Blackhoof"]},
			{m = 376, x = 37.8, y = 60.6, n = L["Blackhoof"]},
			{m = 376, x = 39.6, y = 57.6, n = L["Blackhoof"]}
		}
	}, -- Ordon Candlekeeper drops the Battle Horn too with a 0.5% chance
	["Bottled Tornado"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Bottled Tornado"],
		itemId = 134023,
		npcs = {50749},
		chance = 5,
		coords = {{m = 390, x = 14, y = 58.6, n = L["Kal'tik the Blight"]}}
	},
	["Burgy Blackheart's Handsome Hat"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Burgy Blackheart's Handsome Hat"],
		itemId = 134022,
		npcs = {50052},
		chance = 100,
		coords = {{m = 205, x = 57.6, y = 69.8}}
	},
	["Chain Pet Leash"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Chain Pet Leash"],
		itemId = 89139,
		items = {89125, 93148, 93147, 93146, 93149, 94207, 91086, 116062, 98095},
		chance = 2
	},
	["Displacer Meditation Stone"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Displacer Meditation Stone"],
		itemId = 141298,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Don Carlos' Famous Hat"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Don Carlos' Famous Hat"],
		itemId = 134019,
		npcs = {28132},
		chance = 10,
		coords = {{m = 274, x = 45.4, y = 55.6}}
	},
	["Eternal Warrior's Sigil"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Eternal Warrior's Sigil"],
		itemId = 86578,
		npcs = {50739},
		chance = 7,
		coords = {
			{m = 422, x = 35.6, y = 30.8, n = L["Gar'lok"]},
			{m = 422, x = 37.8, y = 29.6, n = L["Gar'lok"]},
			{m = 422, x = 39.2, y = 41.8, n = L["Gar'lok"]}
		}
	},
	["Faintly Glowing Flagon of Mead"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Faintly Glowing Flagon of Mead"],
		itemId = 129113,
		npcs = {91892},
		chance = 20,
		coords = {{m = 696, x = 41, y = 72}}
	},
	["Fal'dorei Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Fal'dorei Egg"],
		itemId = 140780,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	['Goren "Log" Roller'] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION, -- Why not WOD?
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L['Goren "Log" Roller'],
		itemId = 119180,
		npcs = {87352},
		chance = 7,
		questId = 37380,
		coords = {{m = 525, x = 66.6, y = 25.4, n = L["Gibblette the Cowardly"]}}
	},
	["Helpful Wikky's Whistle"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Helpful Wikky's Whistle"],
		itemId = 86594,
		npcs = {50840},
		chance = 5,
		coords = {{m = 390, x = 31, y = 91.6, n = L["Major Nanners"]}}
	},
	["Kaldorei Light Globe"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Kaldorei Light Globe"],
		itemId = 141299,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Ley Spider Eggs"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Ley Spider Eggs"],
		itemId = 140786,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Salyin Battle Banner"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Salyin Battle Banner"],
		itemId = 86583,
		npcs = {50783},
		chance = 7,
		coords = {
			{m = 376, x = 67.6, y = 60, n = L["Salyin Warscout"]},
			{m = 376, x = 71, y = 52.4, n = L["Salyin Warscout"]},
			{m = 376, x = 75.8, y = 46.4, n = L["Salyin Warscout"]}
		}
	},
	["Sassy Imp"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Sassy Imp"],
		itemId = 127655,
		npcs = {90429},
		chance = 3,
		questId = 38026,
		coords = {{m = 534, x = 31.6, y = 72.8, n = L["Imp-Master Valessa"]}}
	},
	["Sira's Extra Cloak"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Sira's Extra Cloak"],
		itemId = 147843,
		items = {152107},
		chance = 20,
		coords = {{m = CONSTANTS.UIMAPIDS.AZSUNA}}
	},
	["Unstable Powder Box"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Unstable Powder Box"],
		itemId = 141301,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Wisp in a Bottle"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Wisp in a Bottle"],
		itemId = 141306,
		chance = 33,
		questId = 43943,
		coords = {{m = 680}}
	},
	["Pilfered Sweeper"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Pilfered Sweeper"],
		itemId = 147867,
		chance = 100,
		coords = {{m = 646, x = 47.8, y = 67.3}}
	},
	["Stormforged Vrykul Horn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Stormforged Vrykul Horn"],
		itemId = 140160,
		items = {141069},
		chance = 33,
		coords = {
			{m = CONSTANTS.UIMAPIDS.SKYHOLD}
		}
	},
	["Skull of Corruption"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Skull of Corruption"],
		itemId = 143544,
		npcs = {99999},
		tooltipNpcs = {105503, 111022}, -- Gul'dan / The Demon Within (Mythic only)
		groupSize = 3,
		equalOdds = true,
		chance = 30,
		enableCoin = true,
		disableForClass = {
			["DEATHKNIGHT"] = true,
			["DRUID"] = true,
			["HUNTER"] = true,
			["MAGE"] = true,
			["MONK"] = true,
			["PALADIN"] = true,
			["PRIEST"] = true,
			["ROGUE"] = true,
			["SHAMAN"] = true,
			["WARLOCK"] = true,
			["WARRIOR"] = true
		},
		statisticId = {10977, 10979, 10980, 10978},
		coords = {{m = 772, i = true}}
	},
	-- 7.2 Toys

	["Golden Hearthstone Card: Lord Jaraxxus"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Golden Hearthstone Card: Lord Jaraxxus"],
		itemId = 119211,
		npcs = {99999},
		tooltipNpcs = {
			105503,
			104154, -- Gul'dan (normal)
			-- todo test LFR
			-- todo bonus roll
			111022
		}, -- Gul'dan / The Demon Within (Mythic only)
		groupSize = 3,
		equalOdds = true,
		chance = 275,
		statisticId = {10977, 10979, 10980, 10978},
		coords = {{m = 772, i = true}}
	},
	-- 7.3 Toys

	["Baarut the Brisk"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Baarut the Brisk"],
		itemId = 153193,
		npcs = {126862},
		chance = 3,
		questId = 48700,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.65, y = 60.72, n = L["Baarut the Bloodthirsty"]}
		}
	},
	["Legion Communication Orb"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Legion Communication Orb"],
		itemId = 153194,
		npcs = {127703},
		chance = 10,
		questId = 48968,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 58.49, y = 11.80, n = L["Doomcaster Suprax"]}
		}
	},
	["Blue Conservatory Scroll"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blue Conservatory Scroll"],
		itemId = 153179,
		npcs = {126900},
		chance = 9,
		questId = 48718,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"]}
		}
	},
	["Yellow Conservatory Scroll"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Yellow Conservatory Scroll"],
		itemId = 153180,
		npcs = {126900},
		chance = 9,
		questId = 48718,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"]}
		}
	},
	["Red Conservatory Scroll"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Red Conservatory Scroll"],
		itemId = 153181,
		npcs = {126900},
		chance = 9,
		questId = 48718,
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 61.72, y = 50.31, n = L["Instructor Tarahna"]}
		}
	},
	["Spire of Spite"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Spire of Spite"],
		itemId = 153124,
		npcs = {123464},
		chance = 12,
		questId = 48565,
		coords = {
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 53.94, y = 31.39, n = L["Sister Subversia"]}
		}
	},
	["S.F.E. Interceptor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["S.F.E. Interceptor"],
		itemId = 153253,
		npcs = {127700},
		chance = 7,
		questId = 48967,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 83.72, y = 81.14, n = L["Squadron Commander Vishax"]}
		}
	},
	["Micro-Artillery Controller"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Micro-Artillery Controller"],
		itemId = 153126,
		npcs = {126338},
		chance = 5,
		questId = 48814,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 61.77, y = 64.53, n = L["Wrath-Lord Yarez"]}
		}
	},
	["Sightless Eye"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Sightless Eye"],
		itemId = 153293,
		npcs = {127706},
		chance = 10,
		questId = 48971,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 65.03, y = 82.31, n = L["Rezira the Seer"]}
		}
	},
	["Holy Lightsphere"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Holy Lightsphere"],
		itemId = 153182,
		items = {152923},
		chance = 8,
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES},
			{m = CONSTANTS.UIMAPIDS.KROKUUN},
			{m = CONSTANTS.UIMAPIDS.MACAREE}
		}
	},
	["Barrier Generator"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Barrier Generator"],
		itemId = 153183,
		npcs = {126865, 126866},
		chance = 50,
		questId = {48703, 48704},
		defeatAllQuests = true,
		defeatSteps = {
			[48703] = L["Vigilant Thanos"],
			[48704] = L["Vigilant Kuro"]
		},
		sourceText = format(
			L["Has a chance to drop from either %s or %s on Argus. Each can be looted once per day."],
			L["Vigilant Thanos"],
			L["Vigilant Kuro"]
		),
		coords = {
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 63.88, y = 64.25, n = L["Vigilant Kuro"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 36.32, y = 23.71, n = L["Vigilant Thanos"]}
		}
	},
	["Big Red Raygun"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		isToy = true,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Big Red Raygun"],
		itemId = 142265,
		npcs = {15552},
		chance = 33,
		coords = {
			{m = 70, x = 76, y = 18.6, n = L["Doctor Weavil"]}
		}
	},
	["Fel-Spotted Egg"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.LEGION,
		type = CONSTANTS.ITEM_TYPES.ITEM,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Fel-Spotted Egg"],
		itemId = 153190,
		npcs = {
			126898,
			126208,
			126419
		},
		chance = 2.5,
		unique = false,
		sourceText = L[
			"Dropped by the panthara rares on Argus. Has a chance to hatch into one of four Mana Ray mounts as well as one of two Skyfin pets after five days."
		],
		coords = {
			{m = CONSTANTS.UIMAPIDS.ANTORAN_WASTES, x = 64.32, y = 48.62, n = L["Varga"]},
			{m = CONSTANTS.UIMAPIDS.KROKUUN, x = 70.21, y = 34.38, n = L["Naroua"]},
			{m = CONSTANTS.UIMAPIDS.MACAREE, x = 43.55, y = 49.19, n = L["Sabuul"]}
		}
	}
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.toys, legionToys)
