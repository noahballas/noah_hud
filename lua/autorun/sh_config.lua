NHudDarkRP = NHudDarkRP or {}
NHudDarkRP.Config = {}

// Armes pour lesquelles l'HUD munition n'est affiché
NHudDarkRP.Config.NoAmmoHUD = {
    ["weapon_physgun"] = true, 
    ["gmod_camera"] = true, 
    ["weapon_fists"] = true, 
    ["gmod_tool"] = true, 
    ["stunstick"] = true, 
    ["lockpick"] = true, 
}

// Retire l'hud
NHudDarkRP.Config.KeyRemoveHUD = "F8"

// Active/désactive l'hud avec une touche d'une clavier ? 
NHudDarkRP.Config.RemoveHUD = true

// Affiche le système de faim
NHudDarkRP.Config.Hunger = true 

// Affiche le système de Notification 
NHudDarkRP.Config.Ammo = true 

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