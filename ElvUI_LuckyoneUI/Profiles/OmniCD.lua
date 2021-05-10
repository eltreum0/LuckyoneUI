local L1UI, E, L, V, P, G = unpack(select(2, ...))
if not L1UI.Retail then return end

-- OmniCD Profile
function L1UI:GetOmniCDProfile()

	OmniCDDB = {
		["version"] = 2.51,
		["cooldowns"] = {},
		["namespaces"] = {},
		["global"] = {
			["oodVer"] = 2511,
			["oodChk"] = 210206,
			["disableElvMsg"] = true,
		},
		["profileKeys"] = {
			[E.mynameRealm] = "Luckyone DPS/TANK",
		},
		["profiles"] = {
			["Luckyone Healing"] = {
				["General"] = {
					["textures"] = {
						["statusBar"] = {
							["BG"] = "Minimalist",
							["bar"] = "Minimalist",
						},
					},
					["fonts"] = {
						["statusBar"] = {
							["flag"] = "OUTLINE",
							["font"] = "Expressway",
							["size"] = 18,
						},
						["icon"] = {
							["size"] = 12,
							["font"] = "Expressway",
						},
						["anchor"] = {
							["flag"] = "OUTLINE",
							["font"] = "Expressway",
						},
					},
				},
				["Party"] = {
					["party"] = {
						["extraBars"] = {
							["raidCDBar"] = {
								["enabled"] = false,
							},
							["interruptBar"] = {
								["columns"] = 10,
								["scale"] = 0.6000000000000001,
								["statusBarWidth"] = 280,
								["barColors"] = {
									["classColor"] = false,
									["activeColor"] = {
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
								},
								["textColors"] = {
									["classColor"] = true,
									["useClassColor"] = {
										["inactive"] = true,
										["recharge"] = true,
										["active"] = true,
									},
								},
								["locked"] = true,
								["hideSpark"] = true,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
									["useClassColor"] = {
										["recharge"] = true,
										["active"] = true,
									},
								},
								["paddingY"] = 4,
							},
						},
						["manualPos"] = {
							["interruptBar"] = {
								["y"] = 381.5112071547264,
								["x"] = 385.7774832996984,
							},
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
						["position"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["offsetX"] = 3,
							["anchor"] = "TOPRIGHT",
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["198589"] = false,
							["322109"] = true,
							["312202"] = true,
							["8143"] = false,
							["12975"] = true,
							["279302"] = true,
							["202138"] = true,
							["115750"] = false,
							["22812"] = false,
							["212295"] = false,
							["187650"] = false,
							["8122"] = false,
							["235219"] = false,
							["329554"] = true,
							["205180"] = true,
							["328923"] = true,
							["48020"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["5246"] = false,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["213602"] = false,
							["317320"] = false,
							["102560"] = true,
							["107574"] = true,
							["108968"] = false,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["328278"] = true,
							["137639"] = true,
							["325028"] = true,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["48707"] = false,
							["324143"] = true,
							["210256"] = false,
							["338142"] = true,
							["102558"] = true,
							["323639"] = true,
							["47482"] = false,
							["23920"] = false,
							["198111"] = false,
							["236320"] = false,
							["327104"] = true,
							["31230"] = false,
							["194223"] = true,
							["204336"] = false,
							["307443"] = true,
							["152279"] = true,
							["31935"] = false,
							["228049"] = false,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["327661"] = true,
							["51052"] = false,
							["205604"] = false,
							["122470"] = false,
							["324386"] = true,
							["198838"] = false,
							["19236"] = false,
							["202137"] = true,
							["265202"] = false,
							["55342"] = true,
							["215982"] = false,
							["204018"] = true,
							["314791"] = true,
							["316958"] = true,
							["328231"] = true,
							["321792"] = true,
							["62618"] = false,
							["323546"] = true,
							["265187"] = true,
							["86659"] = true,
							["324724"] = true,
							["324128"] = true,
							["64044"] = false,
							["325886"] = true,
							["325640"] = true,
							["326860"] = true,
							["77761"] = true,
							["19574"] = true,
							["47568"] = true,
							["197268"] = false,
							["109248"] = true,
							["114051"] = true,
							["308491"] = true,
							["50334"] = true,
							["1856"] = false,
							["853"] = false,
							["323673"] = true,
							["320674"] = true,
							["12042"] = true,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["342245"] = false,
							["6789"] = false,
							["113858"] = true,
							["109304"] = false,
							["108271"] = false,
							["193530"] = true,
							["102342"] = false,
							["106951"] = true,
							["108199"] = true,
							["198067"] = true,
							["47536"] = false,
							["114556"] = false,
							["205636"] = true,
							["323436"] = false,
							["20711"] = false,
							["227847"] = true,
							["86949"] = false,
							["324149"] = true,
							["2094"] = false,
							["304971"] = true,
							["228260"] = true,
							["123904"] = true,
							["114018"] = true,
							["325216"] = true,
							["310454"] = true,
							["328204"] = true,
							["12472"] = true,
							["322118"] = true,
							["307865"] = true,
							["104773"] = false,
							["102543"] = true,
							["108238"] = false,
							["275699"] = true,
							["5277"] = false,
							["243435"] = false,
							["319454"] = false,
							["288613"] = true,
							["108280"] = true,
							["323764"] = true,
							["311648"] = true,
							["49206"] = true,
							["323654"] = true,
							["325013"] = true,
							["192249"] = true,
							["122783"] = false,
							["199452"] = false,
							["152173"] = true,
							["121471"] = true,
							["315443"] = true,
							["324220"] = true,
							["317009"] = true,
							["328305"] = true,
							["55233"] = true,
							["184364"] = false,
						},
						["icons"] = {
							["scale"] = 1.1,
							["showTooltip"] = true,
						},
						["general"] = {
							["showPlayer"] = true,
						},
					},
					["noneZoneSetting"] = "party",
					["arena"] = {
						["extraBars"] = {
							["interruptBar"] = {
								["enabled"] = true,
								["columns"] = 10,
								["scale"] = 0.6000000000000001,
								["statusBarWidth"] = 280,
								["barColors"] = {
									["classColor"] = false,
									["activeColor"] = {
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
								},
								["textColors"] = {
									["classColor"] = true,
									["useClassColor"] = {
										["inactive"] = true,
										["recharge"] = true,
										["active"] = true,
									},
								},
								["locked"] = true,
								["hideSpark"] = true,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
									["useClassColor"] = {
										["recharge"] = true,
										["active"] = true,
									},
								},
								["paddingY"] = 4,
							},
						},
						["general"] = {
							["zoneSelected"] = "party",
							["showPlayer"] = true,
						},
						["position"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["offsetX"] = 3,
							["anchor"] = "TOPRIGHT",
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["198589"] = false,
							["322109"] = true,
							["312202"] = true,
							["8143"] = false,
							["12975"] = true,
							["279302"] = true,
							["202138"] = true,
							["115750"] = false,
							["22812"] = false,
							["212295"] = false,
							["187650"] = false,
							["8122"] = false,
							["235219"] = false,
							["329554"] = true,
							["205180"] = true,
							["328923"] = true,
							["48020"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["5246"] = false,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["213602"] = false,
							["317320"] = false,
							["102560"] = true,
							["107574"] = true,
							["108968"] = false,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["328278"] = true,
							["137639"] = true,
							["122783"] = false,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["48707"] = false,
							["324143"] = true,
							["210256"] = false,
							["338142"] = true,
							["102558"] = true,
							["323639"] = true,
							["47482"] = false,
							["23920"] = false,
							["198111"] = false,
							["236320"] = false,
							["327104"] = true,
							["31230"] = false,
							["194223"] = true,
							["204336"] = false,
							["307443"] = true,
							["152279"] = true,
							["31935"] = false,
							["228049"] = false,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["327661"] = true,
							["51052"] = false,
							["205604"] = false,
							["122470"] = false,
							["324386"] = true,
							["198838"] = false,
							["184364"] = false,
							["202137"] = true,
							["121471"] = true,
							["55342"] = true,
							["215982"] = false,
							["204018"] = true,
							["314791"] = true,
							["152173"] = true,
							["47568"] = true,
							["321792"] = true,
							["199452"] = false,
							["325013"] = true,
							["324220"] = true,
							["86659"] = true,
							["265202"] = false,
							["55233"] = true,
							["324724"] = true,
							["104773"] = false,
							["325640"] = true,
							["328305"] = true,
							["311648"] = true,
							["19574"] = true,
							["109248"] = true,
							["197268"] = false,
							["316958"] = true,
							["288613"] = true,
							["323436"] = false,
							["50334"] = true,
							["243435"] = false,
							["853"] = false,
							["323673"] = true,
							["324128"] = true,
							["108271"] = false,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["108238"] = false,
							["102342"] = false,
							["113858"] = true,
							["109304"] = false,
							["323546"] = true,
							["193530"] = true,
							["123904"] = true,
							["326860"] = true,
							["106951"] = true,
							["20711"] = false,
							["47536"] = false,
							["114556"] = false,
							["342245"] = false,
							["205636"] = true,
							["6789"] = false,
							["227847"] = true,
							["86949"] = false,
							["324149"] = true,
							["304971"] = true,
							["2094"] = false,
							["228260"] = true,
							["198067"] = true,
							["322118"] = true,
							["325216"] = true,
							["310454"] = true,
							["320674"] = true,
							["12472"] = true,
							["108280"] = true,
							["307865"] = true,
							["328231"] = true,
							["325886"] = true,
							["12042"] = true,
							["275699"] = true,
							["5277"] = false,
							["1856"] = false,
							["319454"] = false,
							["114051"] = true,
							["62618"] = false,
							["323764"] = true,
							["77761"] = true,
							["64044"] = false,
							["114018"] = true,
							["323654"] = true,
							["192249"] = true,
							["328204"] = true,
							["49206"] = true,
							["308491"] = true,
							["325028"] = true,
							["315443"] = true,
							["265187"] = true,
							["317009"] = true,
							["102543"] = true,
							["108199"] = true,
							["19236"] = false,
						},
						["icons"] = {
							["scale"] = 1.1,
							["showTooltip"] = true,
						},
						["manualPos"] = {
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
							["interruptBar"] = {
								["y"] = 381.5112071547264,
								["x"] = 385.7774832996984,
							},
						},
					},
					["visibility"] = {
						["none"] = true,
						["scenario"] = true,
						["finder"] = true,
					},
					["scenarioZoneSetting"] = "party",
				},
			},
			["Luckyone DPS/TANK"] = {
				["Party"] = {
					["noneZoneSetting"] = "party",
					["party"] = {
						["extraBars"] = {
							["interruptBar"] = {
								["hideSpark"] = true,
								["statusBarWidth"] = 213,
								["barColors"] = {
									["classColor"] = false,
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
									["activeColor"] = {
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
								},
								["locked"] = true,
								["paddingY"] = 4,
								["columns"] = 10,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
									["useClassColor"] = {
										["recharge"] = true,
										["active"] = true,
									},
								},
								["textColors"] = {
									["classColor"] = true,
									["useClassColor"] = {
										["inactive"] = true,
										["recharge"] = true,
										["active"] = true,
									},
								},
								["scale"] = 0.6000000000000001,
							},
							["raidCDBar"] = {
								["enabled"] = false,
							},
						},
						["general"] = {
							["showPlayer"] = true,
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["198589"] = false,
							["322109"] = true,
							["312202"] = true,
							["8143"] = false,
							["12975"] = true,
							["279302"] = true,
							["202138"] = true,
							["115750"] = false,
							["22812"] = false,
							["212295"] = false,
							["187650"] = false,
							["8122"] = false,
							["235219"] = false,
							["329554"] = true,
							["205180"] = true,
							["328923"] = true,
							["48020"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["5246"] = false,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["213602"] = false,
							["317320"] = false,
							["102560"] = true,
							["107574"] = true,
							["108968"] = false,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["328278"] = true,
							["137639"] = true,
							["47568"] = true,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["48707"] = false,
							["324143"] = true,
							["51052"] = false,
							["308491"] = true,
							["199452"] = false,
							["338142"] = true,
							["323436"] = false,
							["323639"] = true,
							["47482"] = false,
							["23920"] = false,
							["198111"] = false,
							["236320"] = false,
							["152173"] = true,
							["325886"] = true,
							["31230"] = false,
							["194223"] = true,
							["204336"] = false,
							["184364"] = false,
							["307443"] = true,
							["152279"] = true,
							["31935"] = false,
							["2094"] = false,
							["228049"] = false,
							["121471"] = true,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["327661"] = true,
							["322118"] = true,
							["123904"] = true,
							["122470"] = false,
							["324386"] = true,
							["114018"] = true,
							["108238"] = false,
							["202137"] = true,
							["55342"] = true,
							["215982"] = false,
							["64044"] = false,
							["314791"] = true,
							["104773"] = false,
							["328305"] = true,
							["321792"] = true,
							["62618"] = false,
							["49206"] = true,
							["324220"] = true,
							["86659"] = true,
							["323654"] = true,
							["324128"] = true,
							["108199"] = true,
							["324724"] = true,
							["325640"] = true,
							["198838"] = false,
							["311648"] = true,
							["19574"] = true,
							["210256"] = false,
							["197268"] = false,
							["325013"] = true,
							["114051"] = true,
							["265202"] = false,
							["50334"] = true,
							["1856"] = false,
							["853"] = false,
							["323673"] = true,
							["323546"] = true,
							["108271"] = false,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["19236"] = false,
							["6789"] = false,
							["113858"] = true,
							["109304"] = false,
							["204018"] = true,
							["193530"] = true,
							["342245"] = false,
							["102342"] = false,
							["198067"] = true,
							["47536"] = false,
							["114556"] = false,
							["328231"] = true,
							["320674"] = true,
							["12042"] = true,
							["227847"] = true,
							["86949"] = false,
							["324149"] = true,
							["102543"] = true,
							["304971"] = true,
							["228260"] = true,
							["55233"] = true,
							["326860"] = true,
							["325216"] = true,
							["310454"] = true,
							["327104"] = true,
							["12472"] = true,
							["122783"] = false,
							["307865"] = true,
							["205604"] = false,
							["106951"] = true,
							["288613"] = true,
							["275699"] = true,
							["5277"] = false,
							["243435"] = false,
							["319454"] = false,
							["20711"] = false,
							["108280"] = true,
							["323764"] = true,
							["77761"] = true,
							["102558"] = true,
							["205636"] = true,
							["192249"] = true,
							["325028"] = true,
							["315443"] = true,
							["265187"] = true,
							["317009"] = true,
							["109248"] = true,
							["328204"] = true,
							["316958"] = true,
						},
						["icons"] = {
							["scale"] = 1.1,
							["showTooltip"] = true,
						},
						["position"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["offsetX"] = 3,
							["anchor"] = "TOPRIGHT",
						},
						["manualPos"] = {
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
							["interruptBar"] = {
								["y"] = 381.5113373630629,
								["x"] = 320.3553462988748,
							},
						},
					},
					["arena"] = {
						["extraBars"] = {
							["interruptBar"] = {
								["hideSpark"] = true,
								["statusBarWidth"] = 213,
								["barColors"] = {
									["classColor"] = false,
									["inactiveColor"] = {
										["a"] = 0.800000011920929,
										["b"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["r"] = 0.05882352941176471,
									},
									["activeColor"] = {
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
								},
								["locked"] = true,
								["paddingY"] = 4,
								["enabled"] = true,
								["columns"] = 10,
								["bgColors"] = {
									["classColor"] = true,
									["activeColor"] = {
										["a"] = 0.800000011920929,
										["r"] = 0.05882352941176471,
										["g"] = 0.05882352941176471,
										["b"] = 0.05882352941176471,
									},
									["useClassColor"] = {
										["recharge"] = true,
										["active"] = true,
									},
								},
								["textColors"] = {
									["classColor"] = true,
									["useClassColor"] = {
										["inactive"] = true,
										["recharge"] = true,
										["active"] = true,
									},
								},
								["scale"] = 0.6000000000000001,
							},
						},
						["manualPos"] = {
							["interruptBar"] = {
								["y"] = 381.5113373630629,
								["x"] = 320.3553462988748,
							},
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
						["spells"] = {
							["326059"] = true,
							["118038"] = false,
							["114018"] = true,
							["322109"] = true,
							["312202"] = true,
							["8143"] = false,
							["12975"] = true,
							["279302"] = true,
							["202138"] = true,
							["115750"] = false,
							["22812"] = false,
							["212295"] = false,
							["187650"] = false,
							["8122"] = false,
							["235219"] = false,
							["329554"] = true,
							["205180"] = true,
							["328923"] = true,
							["104773"] = false,
							["1122"] = true,
							["102793"] = true,
							["113860"] = true,
							["5246"] = false,
							["215652"] = false,
							["114050"] = true,
							["306830"] = true,
							["319952"] = true,
							["210918"] = false,
							["118000"] = true,
							["108978"] = false,
							["46924"] = true,
							["213602"] = false,
							["205636"] = true,
							["102560"] = true,
							["107574"] = true,
							["108968"] = false,
							["325289"] = true,
							["314793"] = true,
							["1719"] = true,
							["109964"] = false,
							["328278"] = true,
							["137639"] = true,
							["122783"] = false,
							["10060"] = true,
							["132578"] = true,
							["53480"] = false,
							["63560"] = true,
							["13750"] = true,
							["325197"] = true,
							["312321"] = true,
							["48707"] = false,
							["324143"] = true,
							["64044"] = false,
							["308491"] = true,
							["316958"] = true,
							["338142"] = true,
							["47568"] = true,
							["102558"] = true,
							["323639"] = true,
							["47482"] = false,
							["265202"] = false,
							["198111"] = false,
							["236320"] = false,
							["327104"] = true,
							["109248"] = true,
							["31230"] = false,
							["194223"] = true,
							["204336"] = false,
							["307443"] = true,
							["152279"] = true,
							["31935"] = false,
							["228049"] = false,
							["328547"] = true,
							["205179"] = false,
							["325727"] = true,
							["327661"] = true,
							["51052"] = false,
							["23920"] = false,
							["304971"] = true,
							["123904"] = true,
							["122470"] = false,
							["324386"] = true,
							["121471"] = true,
							["325886"] = true,
							["202137"] = true,
							["55342"] = true,
							["215982"] = false,
							["204018"] = true,
							["314791"] = true,
							["108199"] = true,
							["325028"] = true,
							["321792"] = true,
							["199452"] = false,
							["108280"] = true,
							["265187"] = true,
							["86659"] = true,
							["152173"] = true,
							["328231"] = true,
							["317320"] = false,
							["20711"] = false,
							["325640"] = true,
							["328305"] = true,
							["77761"] = true,
							["19574"] = true,
							["55233"] = true,
							["197268"] = false,
							["49206"] = true,
							["288613"] = true,
							["108238"] = false,
							["50334"] = true,
							["243435"] = false,
							["853"] = false,
							["323673"] = true,
							["324724"] = true,
							["108271"] = false,
							["30884"] = false,
							["323547"] = true,
							["42650"] = true,
							["12042"] = true,
							["102342"] = false,
							["113858"] = true,
							["109304"] = false,
							["342245"] = false,
							["193530"] = true,
							["323546"] = true,
							["325013"] = true,
							["62618"] = false,
							["47536"] = false,
							["114556"] = false,
							["324128"] = true,
							["198067"] = true,
							["6789"] = false,
							["227847"] = true,
							["86949"] = false,
							["324149"] = true,
							["205604"] = false,
							["2094"] = false,
							["228260"] = true,
							["198838"] = false,
							["102543"] = true,
							["325216"] = true,
							["310454"] = true,
							["323654"] = true,
							["12472"] = true,
							["106951"] = true,
							["307865"] = true,
							["48020"] = false,
							["326860"] = true,
							["320674"] = true,
							["275699"] = true,
							["5277"] = false,
							["1856"] = false,
							["319454"] = false,
							["114051"] = true,
							["210256"] = false,
							["323764"] = true,
							["311648"] = true,
							["328204"] = true,
							["19236"] = false,
							["192249"] = true,
							["322118"] = true,
							["315443"] = true,
							["324220"] = true,
							["317009"] = true,
							["323436"] = false,
							["198589"] = false,
							["184364"] = false,
						},
						["icons"] = {
							["scale"] = 1.1,
							["showTooltip"] = true,
						},
						["position"] = {
							["attach"] = "TOPLEFT",
							["preset"] = "TOPLEFT",
							["offsetX"] = 3,
							["anchor"] = "TOPRIGHT",
						},
						["general"] = {
							["showPlayer"] = true,
							["zoneSelected"] = "party",
						},
					},
					["visibility"] = {
						["scenario"] = true,
						["finder"] = true,
						["none"] = true,
					},
					["scenarioZoneSetting"] = "party",
				},
				["General"] = {
					["textures"] = {
						["statusBar"] = {
							["BG"] = "Minimalist",
							["bar"] = "Minimalist",
						},
					},
					["fonts"] = {
						["statusBar"] = {
							["font"] = "Expressway",
							["flag"] = "OUTLINE",
							["size"] = 18,
						},
						["anchor"] = {
							["font"] = "Expressway",
							["flag"] = "OUTLINE",
						},
						["icon"] = {
							["font"] = "Expressway",
							["size"] = 12,
						},
					},
				},
			},
			["Default"] = {
				["Party"] = {
					["party"] = {
						["manualPos"] = {
							["interruptBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
							["raidCDBar"] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
						["general"] = {
							["showPlayer"] = true,
						},
					},
				},
			},
		},
	}

end
