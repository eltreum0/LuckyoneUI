local E, L, V, P, G = unpack(ElvUI)
local L1UI = E:GetModule('LuckyoneUI');

function L1UI:GetOmniCDProfile()

OmniCDDB = {
	["version"] = 2,
	["cooldowns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		[E.mynameRealm] = "Luckyone DPS/TANK",
	},
	["profiles"] = {
		["Luckyone Healing"] = {
			["Party"] = {
				["general"] = {
					["tooltip"] = true,
				},
				["spells"] = {
					["spell200166"] = true,
					["spell114051"] = true,
					["spell152277"] = true,
					["spell121471"] = true,
					["spell102558"] = true,
					["spell46924"] = true,
					["spell201318"] = true,
					["spell108271"] = true,
					["spell86659"] = true,
					["spell740"] = true,
					["spell116849"] = true,
					["spell196555"] = true,
					["spell265187"] = true,
					["spell2094"] = true,
					["spell190319"] = true,
					["spell79140"] = true,
					["spell235219"] = true,
					["spell204018"] = true,
					["spell271466"] = true,
					["spell33891"] = true,
					["spell114018"] = true,
					["spell114050"] = true,
					["spell205636"] = true,
					["spell12472"] = true,
					["spell80240"] = true,
					["spell12042"] = true,
					["spell205180"] = true,
					["spell198664"] = true,
					["spell1022"] = true,
					["spell216331"] = true,
					["spell105809"] = true,
					["spell194223"] = true,
					["spell193530"] = true,
					["spell47536"] = true,
					["spell47568"] = true,
					["spell2825"] = true,
					["spell288613"] = true,
					["spell107574"] = true,
					["spell129597"] = true,
					["spell1122"] = true,
					["spell102543"] = true,
					["spell47788"] = true,
					["spell113858"] = true,
					["spell31821"] = true,
					["spell227847"] = true,
					["spell115310"] = true,
					["spell113860"] = true,
					["spell184364"] = true,
					["spell186265"] = true,
					["spell122470"] = true,
					["spell45438"] = true,
					["spell198067"] = true,
					["spell13750"] = true,
					["spell106951"] = true,
					["spell187827"] = true,
					["spell123904"] = true,
					["spell73325"] = true,
					["spell33206"] = true,
					["spell49206"] = true,
					["spell114052"] = true,
					["spell137639"] = true,
					["spell196718"] = true,
					["spell228049"] = true,
					["spell122278"] = true,
					["spell31224"] = true,
					["spell104773"] = true,
					["spell152173"] = true,
					["spell115203"] = true,
					["spell62618"] = true,
					["spell108199"] = true,
					["spell212182"] = false,
					["spell47585"] = true,
					["spell12975"] = true,
					["spell204150"] = true,
					["spell115080"] = true,
					["spell179057"] = false,
					["spell31884"] = true,
					["spell279302"] = true,
					["spell122783"] = true,
					["spell152279"] = true,
					["spell231895"] = true,
					["spell871"] = true,
					["spell19574"] = true,
					["spell243435"] = true,
					["spell228920"] = true,
					["spell6940"] = true,
					["spell102560"] = true,
					["spell191634"] = true,
					["spell642"] = true,
					["spell108280"] = true,
					["spell97462"] = true,
					["spell42650"] = true,
					["spell1719"] = true,
					["spell15286"] = true,
				},
				["icons"] = {
					["scale"] = 1.1,
					["paddingY"] = 1,
					["paddingX"] = 1,
				},
				["noDefault"] = true,
				["position"] = {
					["manual"] = {
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["anchor"] = "TOPRIGHT",
					},
					["party"] = {
						["attachMore"] = "LEFT",
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["growUpward"] = false,
						["anchor"] = "TOPRIGHT",
					},
					["locked"] = true,
					["arena"] = {
						["noTheme"] = true,
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["offsetX"] = 1,
						["anchor"] = "TOPRIGHT",
					},
				},
				["highlight"] = {
					["glowBuffs"] = false,
					["glowBuffTypes"] = {
						["immunity"] = false,
						["defensive"] = false,
					},
					["markEnhanced"] = false,
				},
				["visibility"] = {
					["scenario"] = true,
					["finder"] = true,
					["none"] = true,
				},
				["manualPos"] = {
					[5] = {
						["y"] = 473.2440201214122,
						["x"] = 383.6454376241891,
					},
				},
			},
		},
		["Luckyone DPS/TANK"] = {
			["Party"] = {
				["general"] = {
					["tooltip"] = true,
				},
				["spells"] = {
					["spell200166"] = true,
					["spell187827"] = true,
					["spell152277"] = true,
					["spell121471"] = true,
					["spell102558"] = true,
					["spell46924"] = true,
					["spell201318"] = true,
					["spell108271"] = true,
					["spell86659"] = true,
					["spell740"] = true,
					["spell116849"] = true,
					["spell196555"] = true,
					["spell243435"] = true,
					["spell2094"] = true,
					["spell190319"] = true,
					["spell79140"] = true,
					["spell235219"] = true,
					["spell204018"] = true,
					["spell271466"] = true,
					["spell33891"] = true,
					["spell114018"] = true,
					["spell114050"] = true,
					["spell205636"] = true,
					["spell12472"] = true,
					["spell204150"] = true,
					["spell1719"] = true,
					["spell228920"] = true,
					["spell104773"] = true,
					["spell107574"] = true,
					["spell216331"] = true,
					["spell105809"] = true,
					["spell194223"] = true,
					["spell871"] = true,
					["spell97462"] = true,
					["spell191634"] = true,
					["spell12975"] = true,
					["spell288613"] = true,
					["spell80240"] = true,
					["spell129597"] = true,
					["spell265187"] = true,
					["spell102543"] = true,
					["spell47788"] = true,
					["spell113858"] = true,
					["spell205180"] = true,
					["spell227847"] = true,
					["spell115310"] = true,
					["spell113860"] = true,
					["spell184364"] = true,
					["spell186265"] = true,
					["spell198067"] = true,
					["spell108280"] = true,
					["spell47568"] = true,
					["spell2825"] = true,
					["spell115080"] = true,
					["spell114051"] = true,
					["spell13750"] = true,
					["spell122470"] = true,
					["spell33206"] = true,
					["spell49206"] = true,
					["spell114052"] = true,
					["spell152279"] = true,
					["spell123904"] = true,
					["spell73325"] = true,
					["spell179057"] = false,
					["spell642"] = true,
					["spell31224"] = true,
					["spell152173"] = true,
					["spell108199"] = true,
					["spell62618"] = true,
					["spell115203"] = true,
					["spell212182"] = false,
					["spell47585"] = true,
					["spell122278"] = true,
					["spell228049"] = true,
					["spell196718"] = true,
					["spell137639"] = true,
					["spell31884"] = true,
					["spell279302"] = true,
					["spell122783"] = true,
					["spell106951"] = true,
					["spell231895"] = true,
					["spell45438"] = true,
					["spell19574"] = true,
					["spell31821"] = true,
					["spell1122"] = true,
					["spell6940"] = true,
					["spell102560"] = true,
					["spell47536"] = true,
					["spell193530"] = true,
					["spell1022"] = true,
					["spell198664"] = true,
					["spell42650"] = true,
					["spell12042"] = true,
					["spell15286"] = true,
				},
				["icons"] = {
					["scale"] = 1.09,
				},
				["noDefault"] = true,
				["position"] = {
					["manual"] = {
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["anchor"] = "TOPRIGHT",
					},
					["party"] = {
						["attachMore"] = "LEFT",
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["growUpward"] = false,
						["anchor"] = "TOPRIGHT",
					},
					["locked"] = true,
					["arena"] = {
						["noTheme"] = true,
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["offsetX"] = 1,
						["anchor"] = "TOPRIGHT",
					},
				},
				["highlight"] = {
					["glowBuffs"] = false,
					["glowBuffTypes"] = {
						["immunity"] = false,
						["defensive"] = false,
					},
					["markEnhanced"] = false,
				},
				["visibility"] = {
					["scenario"] = true,
					["finder"] = true,
					["none"] = true,
				},
				["manualPos"] = {
					[5] = {
						["y"] = 538.6662453170684,
						["x"] = 317.5119774036411,
					},
				},
			},
		},
		["Default"] = {
			["Party"] = {
				["icons"] = {
					["displayBorder"] = false,
				},
				["position"] = {
					["party"] = {
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["anchor"] = "TOPRIGHT",
					},
					["uf"] = "ElvUI",
				},
				["visibility"] = {
					["scenario"] = true,
					["finder"] = true,
					["none"] = true,
				},
			},
		},
	},
}

end
