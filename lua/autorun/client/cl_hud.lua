RX = RX or function(x) return x / 1920 * ScrW() end
RY = RY or function(y) return y / 1080 * ScrH() end

surface.CreateFont("Noah:Hud:1", {
    font = "Montserrat-Bold",
    size = RY(20),
})

surface.CreateFont("Noah:Text:1", {
    font = "Montserrat-Bold",
    size = RY(20),
})

surface.CreateFont("Noah:Job:1", {
    font = "Montserrat-Bold",
    size = RY(20),
})


local lerpHealth = 0
local lerpArmor = 0
local lerpHunger = 0

hook.Add("HUDPaint", "Noah:DarkRP:HUD", function()
    local ft = FrameTime() * 1 
    local ply = LocalPlayer()

    if not IsValid(ply) then return end

    local health = math.Clamp(ply:Health(), 0, 200)
    local armor = math.Clamp(ply:Armor(), 0, 200)
    local hunger = math.Clamp(ply:getDarkRPVar("Energy") or 0, 0, 100)
    local money = ply:getDarkRPVar("money") or 0
    local job = ply:getDarkRPVar("job") or "Sans emploi"
    local numProps = ply:GetCount("props")

    if NHudDarkRP.Config.Ammo then

    if not LocalPlayer():Alive() then return end
    if not IsValid(LocalPlayer():GetActiveWeapon()) then return end

    draw.RoundedBox(20, ScrW() - 225, 1025, 210, 40, NHudDarkRP.Config.Colors["Background"])
    draw.RoundedBox(20, ScrW() - 220, 1030, 200, 30, NHudDarkRP.Config.Colors["Bbackground"])
    draw.SimpleText(LocalPlayer():GetActiveWeapon():Clip1() .. "/" .. LocalPlayer():GetAmmoCount(LocalPlayer():GetActiveWeapon():GetPrimaryAmmoType()), "Noah:Hud:1", ScrW() / 1.066, ScrH() - 36, NHudDarkRP.Config.Colors["AmmoText"], TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    lerpHealth = Lerp(ft, lerpHealth, health)
    lerpArmor = Lerp(ft, lerpArmor, armor)
    lerpHunger = Lerp(ft, lerpHunger, hunger)

    draw.RoundedBox(20, RX(7), RY(987), RX(657), RY(87), NHudDarkRP.Config.Colors["Background"])
    draw.RoundedBox(20, RX(10), RY(990), RX(650), RY(80), NHudDarkRP.Config.Colors["Bbackground"])

    draw.SimpleText(ply:Nick(), "Noah:Hud:1", RX(100), RY(1018), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
    draw.SimpleText(job:upper(), "Noah:Job:1", RX(100), RY(1040), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

    surface.SetDrawColor(color_white)
    surface.SetMaterial(NHudDarkRP.Config.Materials["health"])
    surface.DrawTexturedRect(RX(243), RY(1022), RX(16), RY(16))
    draw.SimpleText(math.Round(lerpHealth), "Noah:Text:1", RX(265), RY(1030), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

    surface.SetDrawColor(color_white)
    surface.SetMaterial(NHudDarkRP.Config.Materials["armor"])
    surface.DrawTexturedRect(RX(310), RY(1022), RX(16), RY(16))
    draw.SimpleText(math.Round(lerpArmor), "Noah:Text:1", RX(330), RY(1030), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)

    if NHudDarkRP.Config.Hunger then 
    surface.SetDrawColor(color_white)
    surface.SetMaterial(NHudDarkRP.Config.Materials["hunger"])
    surface.DrawTexturedRect(RX(373), RY(1022), RX(16), RY(16))
    draw.SimpleText(math.Round(lerpHunger), "Noah:Text:1", RX(395), RY(1030), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
    end 

    surface.SetDrawColor(color_white)
    surface.SetMaterial(NHudDarkRP.Config.Materials["money"])
    surface.DrawTexturedRect(RX(465), RY(1022), RX(16), RY(16))
    draw.SimpleText(DarkRP.formatMoney(money), "Noah:Text:1", RX(485), RY(1030), color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
end)

local Avatar = vgui.Create("AvatarImage", Panel)
Avatar:SetSize(RX(64), RY(64))
Avatar:SetPos(RX(25), RY(997))
Avatar:SetPlayer(LocalPlayer(), 64)


local HideElement = {
    ["CHudHealth"] = true,
    ["CHudBattery"] = true,
    ["CHudAmmo"] = true,
    ["CHudSecondaryAmmo"] = true,
    ["DarkRP_HUD"] = true,
    ["DarkRP_EntityDisplay"] = true,
    ["DarkRP_LocalPlayerHUD"] = true,
    ["DarkRP_Hungermod"] = true,
    ["DarkRP_Agenda"] = true,
    ["DarkRP_LockdownHUD"] = true,    
    ["DarkRP_ArrestedHUD"] = true,   
    ["DarkRP_ChatReceivers"] = true,
}

hook.Add("HUDShouldDraw", "ShouldDraw", function(name)
    if HideElement[name] then return false end
end)