NHudDarkRP = NHudDarkRP or {}
NHudDarkRP.Config = {}

// Affiche le système de fin
NHudDarkRP.Config.Hunger = true 

// Affiche le système de Notification 
NHudDarkRP.Config.Notify = true 

// Couleur générale de l'hud | https://marketplace.visualstudio.com/items?itemName=venner.vscode-glua-enhanced
NHudDarkRP.Config.Colors = {
    ["Background"] = Color(59, 1, 1),
    ["Bbackground"] = Color(5, 5, 5),
    ["AmmoText"] = Color(255, 255, 255),
}

NHudDarkRP.Config.Materials = {
    ["health"] = Material("noah/hud/health.png", "smooth"),
    ["armor"] = Material("noah/hud/armor.png", "smooth"),
    ["hunger"] = Material("noah/hud/hunger.png", "smooth"),
    ["money"] = Material("noah/hud/salary.png", "smooth"),
    ["salary"] = Material("noah/hud/salary.png", "smooth"),
}

--[[---------------------------------------------------------
   Name: noah_hud
   Author : Noah
   Desc: Hud DarkRP
   Version : 2
   Last update : 01/12/2024
   Discord : noah_ballas // https://discord.gg/DPKw69GhTq 
-----------------------------------------------------------]]