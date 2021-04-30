local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- Shadow & Light Profile
function L1UI:GetSLEProfile()

	-- Shadow & Light Global DB
	E.global["sle"]["advanced"]["confirmed"] = true
	E.global["sle"]["advanced"]["gameMenu"]["enable"] = false
	E.global["sle"]["advanced"]["general"] = true

	-- Shadow & Light Private DB
	E.private["sle"]["install_complete"] = "4.18"
	E.private["sle"]["module"]["blizzmove"]["enable"] = true
	E.private["sle"]["module"]["screensaver"] = true
	E.private["sle"]["professions"]["deconButton"]["enable"] = false
	E.private["sle"]["skins"]["objectiveTracker"]["BGbackdrop"] = false
	E.private["sle"]["skins"]["objectiveTracker"]["color"]["g"] = 0.41960784313725
	E.private["sle"]["skins"]["objectiveTracker"]["color"]["r"] = 0.25882352941176
	E.private["sle"]["skins"]["objectiveTracker"]["texture"] = "Minimalist"
	E.private["sle"]["skins"]["objectiveTracker"]["underlineHeight"] = 2
	E.private["sle"]["skins"]["petbattles"]["enable"] = false

	-- Shadow & Light Profile DB
	E.db["sle"]["armory"]["character"]["background"]["overlay"] = false
	E.db["sle"]["armory"]["character"]["durability"]["display"] = "Hide"
	E.db["sle"]["armory"]["character"]["durability"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["durability"]["fontSize"] = 11
	E.db["sle"]["armory"]["character"]["enable"] = true
	E.db["sle"]["armory"]["character"]["enchant"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["enchant"]["fontSize"] = 10
	E.db["sle"]["armory"]["character"]["enchant"]["yOffset"] = -2
	E.db["sle"]["armory"]["character"]["gem"]["size"] = 11
	E.db["sle"]["armory"]["character"]["gem"]["xOffset"] = 4
	E.db["sle"]["armory"]["character"]["gradient"]["quality"] = true
	E.db["sle"]["armory"]["character"]["ilvl"]["colorType"] = "QUALITY"
	E.db["sle"]["armory"]["character"]["ilvl"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["ilvl"]["fontSize"] = 11
	E.db["sle"]["armory"]["inspect"]["background"]["overlay"] = false
	E.db["sle"]["armory"]["inspect"]["enable"] = true
	E.db["sle"]["armory"]["inspect"]["enchant"]["font"] = "Expressway"
	E.db["sle"]["armory"]["inspect"]["enchant"]["fontSize"] = 10
	E.db["sle"]["armory"]["inspect"]["enchant"]["yOffset"] = -2
	E.db["sle"]["armory"]["inspect"]["gem"]["size"] = 11
	E.db["sle"]["armory"]["inspect"]["gem"]["xOffset"] = 4
	E.db["sle"]["armory"]["inspect"]["gradient"]["quality"] = true
	E.db["sle"]["armory"]["inspect"]["ilvl"]["colorType"] = "QUALITY"
	E.db["sle"]["armory"]["inspect"]["ilvl"]["font"] = "Expressway"
	E.db["sle"]["armory"]["inspect"]["ilvl"]["fontSize"] = 11
	E.db["sle"]["armory"]["stats"]["catFonts"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["catFonts"]["outline"] = "OUTLINE"
	E.db["sle"]["armory"]["stats"]["itemLevel"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["itemLevel"]["outline"] = "OUTLINE"
	E.db["sle"]["armory"]["stats"]["itemLevel"]["size"] = 15
	E.db["sle"]["armory"]["stats"]["List"]["ATTACK_AP"] = true
	E.db["sle"]["armory"]["stats"]["List"]["ATTACK_DAMAGE"] = false
	E.db["sle"]["armory"]["stats"]["List"]["BLOCK"] = false
	E.db["sle"]["armory"]["stats"]["List"]["PARRY"] = false
	E.db["sle"]["armory"]["stats"]["statFonts"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["statFonts"]["outline"] = "OUTLINE"
	E.db["sle"]["armory"]["stats"]["statFonts"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["gossip"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["gossip"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["mail"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["mail"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["objective"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["objective"]["outline"] = "OUTLINE"
	E.db["sle"]["media"]["fonts"]["objective"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["objectiveHeader"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["objectiveHeader"]["outline"] = "OUTLINE"
	E.db["sle"]["media"]["fonts"]["pvp"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["size"] = 22
	E.db["sle"]["media"]["fonts"]["subzone"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["subzone"]["size"] = 24
	E.db["sle"]["media"]["fonts"]["zone"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["zone"]["size"] = 30
	E.db["sle"]["raidmarkers"]["enable"] = false
	E.db["sle"]["screensaver"]["date"]["font"] = "Expressway"
	E.db["sle"]["screensaver"]["height"] = 120
	E.db["sle"]["screensaver"]["keydown"] = true
	E.db["sle"]["screensaver"]["player"]["font"] = "Expressway"
	E.db["sle"]["screensaver"]["playermodel"]["distance"] = 5
	E.db["sle"]["screensaver"]["playermodel"]["enable"] = false
	E.db["sle"]["screensaver"]["subtitle"]["font"] = "Expressway"
	E.db["sle"]["screensaver"]["tips"]["font"] = "Expressway"
	E.db["sle"]["screensaver"]["tips"]["size"] = 14
	E.db["sle"]["screensaver"]["title"]["font"] = "Expressway"
	E.db["sle"]["screensaver"]["xpack"] = 192
	E.db["sle"]["skins"]["objectiveTracker"]["classHeader"] = true
	E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["b"] = 1
	E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["g"] = 0
	E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["r"] = 0.81960784313725
	E.db["sle"]["skins"]["objectiveTracker"]["underlineClass"] = true
	E.db["sle"]["skins"]["talkinghead"]["hide"] = true
end
